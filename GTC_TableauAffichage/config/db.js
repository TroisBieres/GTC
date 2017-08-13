let mysql = require('mysql')
let connection = mysql.createConnection({
  host: '192.168.0.42',
  user: 'testuser',
  password: 'testuser',
  database: 'GestionTableConv'
})

connection.connect()

module.exports = connection
