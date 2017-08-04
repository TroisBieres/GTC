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

app2.set('view engine', 'ejs')
app2.use('/assets', express.static('public'))

app2.get('/', (req, res) => {
  res.render('pages/test/index')
})

app2.get('/convention', (req, res) => {
  res.render('pages/test/convention')
})

app2.get('/association', (req, res) => {
  res.render('pages/test/association')
})
app2.get('/responsabilite', (req, res) => {
  res.render('pages/test/responsabilite')
})

app2.get('/editeur', (req, res) => {
  res.render('pages/test/editeur')
})

app2.get('/joueur', (req, res) => {
  res.render('pages/test/joueur')
})

app2.listen(8090, function () {
  console.log('Example app listening on port 8090!')
})
