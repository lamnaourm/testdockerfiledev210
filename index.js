import express from 'express'

const app = express()


app.get('/data', (req, res) => {
    res.send('Reponse de /data : OK')
})

app.listen(3000)