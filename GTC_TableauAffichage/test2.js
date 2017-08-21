/* var XMLHttpRequest = require('xmlhttprequest').XMLHttpRequest
var xhr = new XMLHttpRequest()
xhr.open('GET', 'http://localhost:3000/api/T_Associations', true)
xhr.onload = function (e) {
  if (xhr.readyState === 4) {
    if (xhr.status === 200) {
      console.log(xhr.responseText)
    } else {
      console.error(xhr.statusText)
    }
  }
}
xhr.onerror = function (e) {
  console.error(xhr.statusText)
}
xhr.send(null) */

var request = require('request-promise')

var uri = 'http://localhost:3000/api/' + 'T_Association' + 's'

request({
  'method': 'GET',
  'uri': uri,
  'json': true,
  'headers': {
    'User-Agent': 'My little demo app'
  }
}).then((res, body) => {
  console.log(res)
}, console.err)

// console.log(retour)
