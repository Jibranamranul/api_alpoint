const express = require('express');
const routes = express.Router();
const db = require('../databases/connect')
const response = require('../response/response')


routes.get('/api_siswa', (req, res) => {
    db.query("SELECT * FROM tbl_siswa", (error, result) => {
        response(200, result, "GET ALL tabel siswa", res)
    })
})
routes.get('/api_ket_reward', (req, res) => {
    db.query("SELECT * FROM tbl_ket_reward", (error, result) => {
        res.send(result);
    })
})
routes.get('/api_ket_pelanggaran', (req, res) => {
    db.query("SELECT * FROM tbl_ket_pelanggaran", (error, result) => {
        res.send(result);
    })
})



routes.put('/api_reward', (req, res) => {
    const { id, id_name, id_reward } = req.body
    // const sql = `UPDATE tbl_reward SET id_name = '${id_name}', id_reward = '${id_reward}' WHERE id = ${id}`

    db.query(`UPDATE tbl_reward SET id_name = '${id_name}', id_reward = '${id_reward}' WHERE id = ${id}`, (err, result) => {
        console.log(result)
    })
    response(200,"test","test",res)
    
})

routes.get('/api_reward', (req, res) => {
    db.query("SELECT * FROM tbl_reward", (error, result) => {
        response(200, result, "GET ALL tabel reward", res)
    })
})
routes.post('/api_reward', (req, res) => {
    const { id_name, id_reward } = req.body

    console.log(req.body)
    const sql = `INSERT INTO tbl_reward (id_name, id_reward) VALUES ('${id_name}','${id_reward}' )`
    db.query(sql, (err, fields) => {
        if (err) throw err
        if (fields.affectedRows) { console.log("data masuk") }
        else { console.log("gak masuk") }
    })
    res.send("ok")
    // response(200, "THIS IS POST", "message", res)
})


routes.delete('/api_reward', (req, res) =>  {
    const {id} = req.body
    const sql = `DELETE FROM tbl_reward WHERE id = ${id}`
    db.query (sql, (err, fields) => {
     if (err) response(500, "INVALID ", "EROR", res)
        console.log(fields)
    })
      response(200, "DELETE TEST", "THIS DELETE DATA", res)
})






routes.get('/api_pelanggaran', (req, res) => {
    db.query("SELECT * FROM tbl_pelanggaran", (error, result) => {
        res.send(result);
    })
})
routes.post('/api_pelanggaran', (req, res) => {
    const { id_name, id_pelanggaran } = req.body

    console.log(req.body)
    const sql = `INSERT INTO tbl_pelanggaran (id_name, id_pelanggaran) VALUES ('${id_name}','${id_pelanggaran}' )`
    db.query(sql, (err, fields) => {
        if (err) throw err
        if (fields.affectedRows) { console.log("data masuk") }
        else { console.log("gak masuk") }
    })
    res.send("ok")
    // response(200, "THIS IS POST", "message", res)
})

routes.put('/api_pelanggaran', (req, res) => {
    const { id, id_name, id_pelanggaran } = req.body
    // const sql = `UPDATE tbl_pelanggaran SET id_name = '${id_name}', id_pelanggaran = '${id_pelanggaran}' WHERE id = ${id}`


    db.query(`UPDATE tbl_pelanggaran SET id_name = '${id_name}', id_pelanggaran = '${id_pelanggaran}' WHERE id = ${id}`, (err, result) => {
        console.log(result)
    })
    response(200,"test","test",res)
})


// routes.get("/tbl_kategori_reward/:id", (req, res) => {
//     const id = req.params.id
//     const sql = `SELECT * FROM tbl_kategori_reward WHERE id = $ {id}`
//     db.query(sql, (err, fields) => {
//         if (err) throw err
//         response(200, fields, "THIS IS TBL ", res)
//         response(200, `spesifik tbl_kategori_reward by id ${id}`, "get detail tbl", res)
//     })
// })

// routes.get("/test", (req, res) => {
//     db.query("SELECT * FROM tbl_kategori_reward", (err, result) => {
//         console.log(result);
//         res.send(result);
//     })
// })

// routes.post("/tbl_kategori_reward", (req, res) => {
// const { kategori } = req.body

// console.log(req.body)
// const sql = `INSERT INTO tbl_kategori_reward (kategori) VALUES ('${kategori}')`
// db.query(sql, (err, fields) => {
//     if (err) throw err
//     if (fields.affectedRows) { console.log("data masuk") }
//     else { console.log("gak masuk") }
// })
// res.send("ok")
// // response(200, "THIS IS POST", "message", res)
// })












module.exports = routes;