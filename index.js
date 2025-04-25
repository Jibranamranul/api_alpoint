const express = require('express');
const port = 8000;
const app = express();
const bodyparser = require('body-parser')
const cors = require("cors");
const routes = require('./routes/routes')
const response = require('./response/response');

app.use(bodyparser.json());
app.use(cors());

app.get("/", (req, res) => {
    res.send("Hello World!")
})

app.get("/api_users", routes)

app.get("/api_siswa", routes)


app.get("/api_ket_reward", routes)


app.get("/api_ket_pelanggaran", routes)






app.get("/api_pelanggaran", routes)
app.post("/api_pelanggaran", routes)
app.put("/api_pelanggaran", routes)



app.get("/api_reward", routes)
app.post("/api_reward", routes)
app.put("/api_reward", routes)
app.delete("/api_reward", routes)





app.listen(port, function (err) {
    if (err) console.log(err);
    console.log(`Listening on port ${port}`);
})