var mysql = require('promise-mysql')

function getAll (array) {
  let retour = {}
  var pool = mysql.createPool({
    host: '192.168.0.42',
    user: 'testuser',
    password: 'testuser',
    database: 'GestionTableConv',
    connectionLimit: 10
  })

  for (var i = 0; i < array.length; i++) {
    var test
    test = pool.query('select * from ' + array[i]).then(function (rows) {
      console.log('i=', i)
      console.log(rows)
      if (i === array.length) {
        pool.end()
      }
    })
    console.log(test)
  }
  return retour
}

//  Convention, Scenario, Joueur, Systeme, MotCle
var lol = getAll(['T_Convention', 'T_Association', 'T_Joueur', 'T_Systeme', 'T_MotCle'])

console.log(lol)
