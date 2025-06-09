const express = require('express');
const routes = express.Router();
const db = require('../databases/connect')
const jwt = require('jsonwebtoken')
const bcrypt = require('bcrypt')
const response = require('../response/response')


routes.post("/register", (req, res) => {
    const {name, id_posisi, id_account,password} = req.body;
    sql = "INSERT INTO tbl_user (name, id_posisi, id_account ,password) VALUES (?,?,?,?)"
    db.query(sql, [name, id_posisi, id_account, password], (err, result) => {
        response(200, result, "User berhasil di tambahkan", res)
    })
})


routes.post("/login", (req, res) => {
    const { username, password } = req.body

    db.query(`SELECT * FROM tbl_user WHERE name = ? AND password = ?`, [username, password], (err, result) => {

        if (err) {
            return response(500, null, "Error during login", res);
        }
        if (result.length === 0) {
            return response(401, null, "Invalid Credentials", res);
        }

        const user = result[0];
        const token = jwt.sign({ id: user.id, username: user.name }, 'GBLK', { expiresIn: 30 })

        response(200, { token, user: { id: user.id, username: user.name } }, "Login Success", res)

    })
})

routes.get('/api_users', (req, res) => {
    db.query("SELECT * FROM tbl_user", (error, result) => {
        response(200, result, "GET ALL tabel users", res)
    })
})

routes.get('/api_siswa', (req, res) => {
    // response(200, result, "GET ALL tabel siswa", res)
    db.query("SELECT * FROM tbl_siswa ORDER BY kelas desc;", (error, result) => {
        response(200, result, "GET ALL tabel siswa", res)
    })
})

routes.get('/selectSiswaByClasses', (req, res) => {
    db.query(`SELECT * FROM tbl_siswa where kelas = "${req.query.kelas}"`, (error, result) => {
        response(200, result, "GET tabel siswa by kelas", res)
    })
})

routes.get('/api_kategori_reward', (req, res) => {
    db.query("SELECT * FROM tbl_kategori_reward", (error, result) => {
        response(200, result, "GET ALL tabel kategori_pelanggaran", res)
    })
})
routes.get('/api_ket_reward', (req, res) => {
    db.query("SELECT * FROM tbl_ket_reward", (error, result) => {
        response(200, result, "GET ALL tabel ket_reward", res)
    })
})

routes.get('/api_selectRewardBySiswa', (req, res) => {
    sql = `SELECT r.id, s.nama, kr.name, kr.score
    FROM tbl_reward r
    JOIN tbl_siswa s ON r.id_name = s.id
    JOIN tbl_ket_reward kr ON r.id_reward = kr.id
    WHERE id_name = ${req.query.id_name}`

    db.query(sql, (error, result) => {
        response(200, result, "GET tabel reward by id siswa", res)
    })
})
routes.get("/api_selectPelanggaranBySiswa", (req, res) => {

    const sql = `SELECT p.id, s.id as id_name, kep.name as pelanggaran, kep.score, kap.kategori, p.date
    FROM tbl_pelanggaran p
    JOIN tbl_ket_pelanggaran kep ON p.id_pelanggaran = kep.id
    JOIN tbl_kategori_pelanggaran kap ON kep.kategori = kap.id
    JOIN tbl_siswa s ON p.id_name = s.id;`

    db.query(sql, (err, result) => {
        response(200, result, "GET tabel reward by id siswa", res)
    })
})


routes.get('/api_kategori_pelanggaran', (req, res) => {
    db.query("SELECT * FROM tbl_kategori_pelanggaran", (error, result) => {
        response(200, result, "GET ALL tabel kategori_pelanggaran", res)
    })
})
routes.get('/api_ket_pelanggaran', (req, res) => {
    // const sql = `SELECT ket.id, ket.name, ket.score, kat.kategori
    // FROM tbl_ket_pelanggaran ket
    // JOIN tbl_kategori_pelanggaran kat ON ket.kategori = kat.id`

    db.query("SELECT * FROM tbl_ket_pelanggaran", (error, result) => {
        response(200, result, "GET ALL tabel ket_pelanggaran", res)
    })
})



routes.put('/api_reward', (req, res) => {
    const { id, id_name, id_reward } = req.body

    db.query(`UPDATE tbl_reward SET id_name = '${id_name}', id_reward = '${id_reward}' WHERE id = ${id}`, (err, result) => {
        console.log(result)
    })
    response(200, "test", "test", res)

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


routes.delete('/api_reward', (req, res) => {
    const { id } = req.body
    const sql = `DELETE FROM tbl_reward WHERE id = ${id}`
    db.query(sql, (err, fields) => {
        if (err) response(500, "INVALID ", "EROR", res)
        console.log(fields)
    })
    response(200, "DELETE TEST", "THIS DELETE DATA", res)
})


routes.get('/api_pelanggaran', (req, res) => {
    // db.query("SELECT * FROM tbl_pelanggaran", (error, result) => {
    //     response(200, result, "GET ALL tabel pelanggaran", res)
    // })
    sql = `SELECT p.id, s.nama, kp.name AS pelanggaran, p.date 
        FROM tbl_pelanggaran p`
    db.query("SELECT * FROM tbl_pelanggaran", (error, result) => {
        response(200, result, "GET ALL tabel pelanggaran", res)
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
    response(200, "test", "test", res)
})

module.exports = routes;