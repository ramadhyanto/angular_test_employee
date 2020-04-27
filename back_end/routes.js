'use strict';

var response = require('./res');

module.exports = function (app) {
    var todoList = require('./controller');

    app.route('/')
        .get(todoList.index);

    app.route('/getEmployee')
        .get(todoList.getEmployee);

    app.route('/getEmployeeById')
        .get(todoList.getEmployeeById);

         app.route('/searchEmployee')
        .get(todoList.searchEmployee);


    // POST REQUEST

    var mysql = require('mysql');

    var db = mysql.createConnection({
        host: "localhost",
        user: "root",
        password: "",
        database: "angular_test"
    });

    db.connect(function (err) {
        if (err) throw err;
    });

    app.post('/addEmployee', (req, res) => {
        console.log("req", req.body)
        let sql = 'INSERT INTO employee SET ?'
        let post = {
            username: req.body.username,
            firstname: req.body.firstname,
            lastname: req.body.lastname,
            email: req.body.email,
            basicsalary: req.body.salary,
            status: req.body.status,
            grup: req.body.group,
            birthdate: req.body.birthdate,
            description: req.body.description
        }
        db.query(sql, post, (err, res) => {
            if (err) throw err;
        });
        return res.status(200).send({
            success: '200',
            message: 'Sukses Post Ke Database',
        });
    });

    app.put('/editEmployee', function (req, res) {
console.log("req", req.body)
   db.query('UPDATE `employee` SET `username`=?,`firstname`=?,`lastname`=?, `email`=?, `basicsalary`=?, `status`=?, `grup`=? , `birthdate`=?, `description`=? where `id`=?', [req.body.username,req.body.firstname, req.body.lastname, req.body.email, req.body.salary, req.body.status, req.body.group, req.body.birthdate, req.body.description, req.body.id], (err, res) => {
            if (err) throw err;
        });
        return res.status(200).send({
            success: '200',
            message: 'Sukses Edit Ke Database',
        });
});


    app.delete('/deleteEmployee/:id', function (req, res) {
        var id = req.params.id;
        console.log("id", id)
        let sql = 'DELETE FROM employee WHERE id=' + id
        //DELETE YOUR RECORD WITH YOUR PARAM.
        console.log(sql)
        db.query(sql, (err, res) => {
            if (err) throw err;
        });
        return res.status(200).send({
            success: '200',
            message: 'Sukses Hapus Ke Database',
        });
    });
};