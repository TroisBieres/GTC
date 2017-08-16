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
let Save = require('./models/save.js')

app2.set('view engine', 'ejs')
app2.use('/assets', express.static('public'))
app2.use(bodyParser2.urlencoded({ extended: false }))
app2.use(bodyParser2.json())

app2.get('/', (req, res) => {
  res.render('pages/test/index')
})

app2.get('/test', (req, res) => {
//  Convention, Scenario, Joueur, Systeme, MotCle
  Save.getAllFrom('T_Association',
    res.render('pages/test/indextest', {informations: res}))
})

app2.post('/', (req, res) => {
  Save.create(req.body, function () {
    console.log(req.body)
  })
  res.redirect('/')
})

app2.listen(8090, function () {
  console.log('Example app listening on port 8090!')
})
