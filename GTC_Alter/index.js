// Serveur principal

let express = require('express')
let app = express()

app.set('view engine', 'ejs')
app.use('/assets', express.static('public'))

app.get('/', (req, res) => {
  res.render('index')
})

app.listen(8080, function () {
  console.log('Example app listening on port 8080!')
})
