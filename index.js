const express = require('express');
const port = 8000;
const app = express();
const db = require("./connect");
const bodyparser = require('body-parser')
const response = require("./response")
const routes = require('./routes/routes')


app.use(bodyparser.json())

app.get("/api_siswa", routes)


app.get("/api_ket_reward", routes)


app.get("/api_ket_pelanggaran", routes)



app.put("/api_pelanggaran", routes)

app.get("/api_pelanggaran", routes)
app.post("/api_pelanggaran", routes)

app.get("/api_reward", routes)
app.post("/api_reward", routes)




app.listen(port, function (err) {
    if (err) console.log(err);
    console.log(`Listening on port ${port}`);
})