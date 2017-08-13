let connection = require('../config/db')

class Save {

  static create (content, callback) {
/*    console.log('=====!!!!!======')
    console.log(content.tableName)
    console.log('=====!!!!!======')
*/

    if (content.tableName === 'Systeme') {
      console.log("Inscription")
      connection.query('INSERT INTO T_Systeme SET Sys_Name=?, Sys_id_Editeur=4', [content.name],
            (err, res) => {
              if (err) throw err
              callback(res)
            })
    }

    callback(console.log(content))
/*    connection.query('INSERT INTO T_Association SET Ass_Name=?', [content],
      (err, res) => {
      if (err) throw err
      callback(res)
    })
*/
  }

}

module.exports = Save
