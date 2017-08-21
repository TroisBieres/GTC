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

// Serveur secondaire pour les tests
let express2 = require('express')
let app2 = express2()
let bodyParser2 = require('body-parser')
let Save = require('./models/saveapi.js')

app2.set('view engine', 'ejs')
app2.use('/assets', express.static('public'))
app2.use(bodyParser2.urlencoded({ extended: false }))
app2.use(bodyParser2.json())

app2.get('/', (req, res) => {
  res.render('pages/test/index')
})

// Routing addXXX
app2.get('/Convention', (req, res) => {
  res.render('pages/test/addConvention', {'informations': ['lala', 'bidule']})
})

app2.get('/Disponibilite', (req, res) => {
  res.render('pages/test/addDisponibilite', {'informations': ['lala', 'bidule']})
})

app2.get('/MotCle', (req, res) => {
  res.render('pages/test/addMotCle', {'informations': ['lala', 'bidule']})
})

app2.get('/Partie', (req, res) => {
  res.render('pages/test/addPartie', {'Joueur': ['Patate', 'Banane']})
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

  // [{"id_Joueur":1,"Jou_FirstName":"Nom1","Jou_LastName":"Prenom1","Jou_Mail":"mail@joueur1.com","Jou_TelNumber":"0101010101"},{"id_Joueur":2,"Jou_FirstName":"Nom2","Jou_LastName":"Prenom2","Jou_Mail":"mail@joueur2.com","Jou_TelNumber":"22222"}]})


app2.post('/', (req, res) => {
  Save.create(req.body, function () {
    console.log(req.body)
  })
  res.redirect('/')
})

app2.listen(8090, function () {
  console.log('Example app listening on port 8090!')
})
