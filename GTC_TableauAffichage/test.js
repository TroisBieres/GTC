var mysql = require('promise-mysql')

function getAll (a) {
  var pool = mysql.createPool({
    host: '192.168.0.42',
    user: 'testuser',
    password: 'testuser',
    database: 'GestionTableConv',
    connectionLimit: 10
  })

  for (var i = 0; i < a.length; i++) {
    pool.query('select * from ' + a[i]).then(function (rows) {
    // Logs out a list of hobbits
      console.log(rows)
    })
  }
}

//  Convention, Scenario, Joueur, Systeme, MotCle
getAll(['T_Convention', 'T_Association', 'T_Joueur', 'T_Systeme', 'T_MotCle'])
