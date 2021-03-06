// Serveur principal

let express = require('express')
let app = express()
var SaveAPI = require('./models/saveapi.js')

app.set('view engine', 'ejs')
app.use('/assets', express.static('public'))

app.get('/', (req, res) => {
  res.render('pages/index')
})

app.get('/affichage', (req, res) => {
  SaveAPI.getAllFrom((res2) => {
    res.render('pages/affichage/affichage', {'res': res2})
  })
})

// /////////////////////////////////////////////////////////////////
//
//          Serveur secondaire pour l'accueil des joueurs
//
// /////////////////////////////////////////////////////////////////
app.get('/accueil', (req, res) => {
  SaveAPI.getAllFrom((res2) => {
    res.render('pages/accueilJoueur/index', {'res': res2})
  })
})

app.get('/accueil/jeu', (req, res) => {
  res.render('pages/accueilJoueur/pagejeu')
})

app.get('/accueil/login', (req, res) => {
  res.render('pages/accueilJoueur/connexion')
})

app.listen(8070, function () {
  console.log('Example app listening on port 8070!')
})
// /////////////////////////////////////////////////////////////////
//
//          Serveur secondaire pour l'administration
//
// /////////////////////////////////////////////////////////////////

let express2 = require('express')
let app2 = express2()
let bodyParser2 = require('body-parser')
var SaveAPI2 = require('./models/saveapi.js')

app2.set('view engine', 'ejs')
app2.use('/assets', express.static('public'))
app2.use(bodyParser2.urlencoded({ extended: false }))
app2.use(bodyParser2.json())

app2.get('/', (req, res) => {
  res.render('pages/test/index')
})

// Routing GET
app2.get('/Convention', (req, res) => {
  res.render('pages/test/addConvention')
})

app2.get('/Disponibilite', (req, res) => {
  SaveAPI2.getAllFrom('T_Convention', {}, (res2) => {
    SaveAPI2.getAllFrom('V_Scenario', res2, (res3) => {
      res.render('pages/test/addDisponibilite', res3)
    })
  })
})

app2.get('/MotCle', (req, res) => {
  res.render('pages/test/addMotCle')
})

app2.get('/Partie', (req, res) => {
  SaveAPI2.getAllFrom('T_Joueur', {}, (res2) => {
    SaveAPI2.getAllFrom('V_Disponibilite', res2, (res3) => {
      res.render('pages/test/addPartie', res3)
    })
  })
})

app2.get('/Scenario', (req, res) => {
  SaveAPI2.getAllFrom('T_Systeme', {}, (res2) => {
    res.render('pages/test/addScenario', res2)
  })
})

app2.get('/Systeme', (req, res) => {
  res.render('pages/test/addSysteme')
})

app2.get('/Theme', (req, res) => {
  SaveAPI2.getAllFrom('T_Systeme', {}, (res2) => {
    SaveAPI2.getAllFrom('T_MotCle', res2, (res3) => {
      res.render('pages/test/addTheme', res3)
    })
  })
})

  // Methodes POST

app2.post('/', (req, res) => {
  console.log(req.body.tableName)
  switch (req.body.tableName) {
    case 'T_MotCle':
      console.log('========req========')
      SaveAPI2.setMotCle(req.body.name, (req, res) => {
        console.log(req.body)
        res.redirect('/')
      })
      break
    default:
      res.redirect('/')
  }
})

app2.listen(8090, function () {
  console.log('Example app listening on port 8090!')
})
