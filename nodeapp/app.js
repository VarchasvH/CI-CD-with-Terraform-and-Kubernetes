const express = require('express')
const app = express();
app.get("/", (req, res) =>{
    res.send("Server is running")
})
app.listen(80, () =>{
    console.log("Server is up")
})