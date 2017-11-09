let connection = require('../config/db')

class Save {
  static create (content, callback) {
    console.log('=====!!!!!======')
    console.log(content.tableName)
    console.log('=====!!!!!======')

    if (content.tableName === 'Systeme') {
      console.log('Inscription')
      connection.query('INSERT INTO T_Systeme SET Sys_Name=?, Sys_id_Editeur=4', [content.name],
            (err, res) => {
              if (err) throw err
              callback(res)
            })
    }
    callback(console.log(content))
  }
}

module.exports = Save

/*
SELECT *
FROM GestionTableConv.T_Disponibilite dis INNER JOIN GestionTableConv.T_Convention con INNER JOIN GestionTableConv.T_Scenario sce
WHERE sce.id_scenario = dis.id_scenario
AND con.id_convention = dis.id_convention
*/
