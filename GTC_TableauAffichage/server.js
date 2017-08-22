// Serveur principal

let express = require('express')
let app = express()

app.set('view engine', 'ejs')
app.use('/assets', express.static('public'))

app.get('/', (req, res) => {
  res.render('pages/index')
})

app.get('/affichage', (req, res) => {
  res.render('pages/affichage')
})
app.listen(8080, function () {
  console.log('Example app listening on port 8080!')
})

// Serveur secondaire pour l'administration
let express2 = require('express')
let app2 = express2()
let bodyParser2 = require('body-parser')
var SaveAPI = require('./models/saveapi.js')

app2.set('view engine', 'ejs')
app2.use('/assets', express.static('public'))
app2.use(bodyParser2.urlencoded({ extended: false }))
app2.use(bodyParser2.json())

app2.get('/', (req, res) => {
  res.render('pages/test/index')
})

// Routing GET
app2.get('/Convention', (req, res) => {
  res.render('pages/test/addConvention', {'informations': ['lala', 'bidule']})
})

app2.get('/Disponibilite', (req, res) => {
  SaveAPI.getAllFrom('T_Convention', {}, (res2) => {
    SaveAPI.getAllFrom('T_Scenario', res2, (res3) => {
      console.log(res3)
      res.render('pages/test/addDisponibilite', res3)
    })
  })
})

app2.get('/MotCle', (req, res) => {
  res.render('pages/test/addMotCle', {'informations': ['lala', 'bidule']})
})

app2.get('/Partie', (req, res) => {
  SaveAPI.getAllFrom('T_Joueur', {}, (res2) => {
    SaveAPI.getAllFrom('V_Disponibilite', res2, (res3) => {
      console.log(res3)
      res.render('pages/test/addPartie', res3)
    })
  })
})

app2.get('/Scenario', (req, res) => {
  res.render('pages/test/addScenario', {'informations': ['lala', 'bidule']})
})

app2.get('/Systeme', (req, res) => {
  res.render('pages/test/addSysteme', {'Joueur': 'Patate'})
})

app2.get('/Theme', (req, res) => {
  res.render('pages/test/addTheme', {'Joueur': 'Patate'})
})

  // Methodes POST

app2.post('/', (req, res) => {
  res.redirect('/')
})

app2.listen(8090, function () {
  console.log('Example app listening on port 8090!')
})
