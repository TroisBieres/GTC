class SaveAPI {
  static getAllFrom (table, entry, cb) {
    var request = require('request-promise')
    var uri = 'http://localhost:3000/api/' + table + 's'
    request({
      'method': 'GET',
      'uri': uri,
      'json': true,
      'headers': {
        'User-Agent': 'My little demo app'
      }
    }).then((res, body) => {
      entry[table] = res
      cb(entry)
    }, console.err)
  }
}

module.exports = SaveAPI
