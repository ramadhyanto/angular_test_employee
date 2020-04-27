'use strict';

var response = require('./res');
var connection = require('./conn');

exports.getEmployeeById = function(req, res) {
    var id = req.query.id
    connection.query(`SELECT * FROM employee WHERE id=` + `'` + id + `'` , function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.searchEmployee = function(req, res) {
    var status = req.query.status
    var group = req.query.grup
    connection.query(`SELECT * FROM employee WHERE status=` + `'` + status + `'` +` AND grup=` + `'` + group + `'`, function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.getEmployee = function(req, res) {
    connection.query('SELECT * FROM employee', function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

exports.index = function(req, res) {
    response.ok("Hello from the Node JS RESTful side!", res)
};