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

app.post("/register", routes)

app.post("/login", routes)

app.get("/api_users", routes)

app.get("/api_siswa", routes)
app.get("/selectSiswaByClasses", routes)

app.get("/api_kategori_reward", routes)
app.get("/api_ket_reward", routes)

app.get("/api_selectRewardBySiswa", routes)
app.get("/api_selectPelanggaranBySiswa", routes)


app.get("/api_kategori_pelanggaran", routes)
app.get("/api_ket_pelanggaran", routes)



app.get("/api_pelanggaran", routes)
app.post("/api_pelanggaran", routes)
app.put("/api_pelanggaran", routes)



app.get("/api_reward", routes)
app.post("/api_reward", routes)
app.put("/api_reward", routes)
app.delete("/api_reward", routes)


app.get("/api_pelanggaranByUID", routes);
app.get("/api_rewardByUID", routes);

app.get("/totalScorePelanggaaranSiswa", routes);
app.get("/totalScoreRewardSiswa", routes);
app.get("/totalScoreSiswa", routes);



app.listen(port, function (err) {
    if (err) console.log(err);
    console.log(`Listening on port ${port}`);
})