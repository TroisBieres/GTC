var loopback = require('loopback')
var ds = loopback.createDataSource('GTC_Database', {
  'host': '192.168.0.42',
  'port': 3306,
  'database': 'GestionTableConv',
  'username': 'testuser',
  'password': 'testuser'
})

// Discover and build models from INVENTORY table
ds.discoverAndBuildModels('T_Association', {
  visited: {},
  associations: true
},

function (err, models) {
  if (err) throw err
  // Now we have a list of models keyed by the model name
  // Find the first record from the inventory
  models.Inventory.findOne({}, function (err, inv) {
    if (err) {
      console.error(err)
      return
    }
    console.log('\nInventory: ', inv)
    // Navigate to the product model
    // Assumes inventory table has a foreign key relationship to product table
    inv.product(function (err, prod) {
      if (err) throw err
      console.log('\nProduct: ', prod)
      console.log('\n ------------- ')
    })
  })
})
