const express = require('express')
const app = express()
const port = 8080
const  human = {name: 'Ameer', age: 24, nationlity: 'Sudaness'}
    app.get('/', (req, res)=>{
        res.send('hello form docker')
    })

    app.get('/', (req, res)=>{
      res.json(human)
    })
    app.listen(port,()=>{
        console.log('server is listen on '+  port)
    })

    



