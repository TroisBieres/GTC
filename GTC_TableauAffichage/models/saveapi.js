class SaveAPI {
  static getAllFrom (table, entry, cb) {
    var request = require('request-promise')
    var uri = 'http://localhost:5000/api/' + table + 's'
    request({
      'method': 'GET',
      'uri': uri,
      'json': true,
      'headers': {
        'User-Agent': 'My little pony'
      }
    }).then((res, body) => {
      entry[table] = res
      cb(entry)
    }, console.err)
  }

  static getAllPlays (cb) {
    var request = require('request-promise')
    var uri = 'http://localhost:5000/api/V_Parties'
    request({
      'method': 'GET',
      'uri': uri,
      'json': true,
      'headers': {
        'User-Agent': 'My little pony'
      }
    }).then((res, body) => {
      var result = []
      var h, m, d, dm, dh
      for (var i in res) {
        if (result.length === 0) {
          result[0] = res[i]
          // Parsing de la durée de jeu
          h = parseInt(result[0].Sce_Duration / 60)
          m = result[0].Sce_Duration % 60
          if (m > 10) {
            result[0].Sce_Duration = h.toString() + ' : ' + m.toString()
          } else {
            result[0].Sce_Duration = h.toString() + ' : 0' + m.toString()
          }
          // Parsing de l'heure de la Partie
          d = new Date(result[0].Dis_Schedule)
          dm = d.getMinutes()
          dh = d.getHours()
          if (dm > 10) {
            result[0].Dis_Schedule = dh.toString() + ' : ' + dm.toString()
          } else {
            result[0].Dis_Schedule = dh.toString() + ' : 0' + dm.toString()
          }
          // Création de la variable Occurence
          result[0].occurency = 1
          continue
        }

        for (var j in result) {
          var testbool = false
          if (result[j].id_Disponibilite === res[i].id_Disponibilite) {
            testbool = true
            result[j].occurency += 1
            break
          }
        }
        if (!testbool) {
          result[result.length] = res[i]
          h = parseInt(result[result.length - 1].Sce_Duration / 60)
          m = result[result.length - 1].Sce_Duration % 60
          if (m > 10) {
            result[result.length - 1].Sce_Duration = h.toString() + ' : ' + m.toString()
          } else {
            result[result.length - 1].Sce_Duration = h.toString() + ' : 0' + m.toString()
          }
          // Parsing de l'heure de la Partie
          d = new Date(result[result.length - 1].Dis_Schedule)
          dm = d.getMinutes()
          dh = d.getHours()
          if (dm > 10) {
            result[result.length - 1].Dis_Schedule = dh.toString() + ' : ' + dm.toString()
          } else {
            result[result.length - 1].Dis_Schedule = dh.toString() + ' : 0' + dm.toString()
          }
          // Création de la variable Occurence
          result[result.length - 1].occurency = 1
        }
      }
      cb({'V_Partie': result})
    }, console.err)
  }

  static setMotCle (mclname, cb) {
    var request = require('request-promise')
    var uri = 'http://localhost:5000/api/T_MotCles'
    console.log('/////////////////////////')
    var json = {
      'MCl_Name': mclname
    }
    console.log(mclname)
    console.log(json)
    console.log('/////////////////////////')
    request({
      'method': 'PUT',
      'uri': uri,
      'data': json,
      'headers': {
        'User-Agent': 'Accept: application/json'
      }
    }).then((res, body) => {
      cb()
    }, console.err)
  }
}

module.exports = SaveAPI
