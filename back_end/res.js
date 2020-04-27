'use strict';

exports.ok = function(values, res) {
  var data = values
  res.json(data);
  res.end();
};

exports.successPost = function(values,res) {
    var data = { status: 200 ,message: "Anda Berhasil" }
    res.json(data);
    res.end();
  };