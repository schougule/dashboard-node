var express = require('express');
var router = express.Router();
var fr = require('../util_modules/filereadmodule');
//var oracledb = require('../db_module/oracle_dbconnection');

// Home page route.
router.get('/parent', function (req, res) {
  var parent = require("../data/parent.json");
 
  
   res.send(parent);

});
router.get('/ofssa', function (req, res) {
  var ofssa = require("../data/ofssa.json");
 
 //var query =fr.fileread("../queries/ofssa.sql");
 //var data = oracledb.getData(query);
  res.send(ofssa);

});

router.get('/unhappy', function (req, res) {
   var unhappy = require("../data/unhappy.json");
    res.send(unhappy);

});

router.get('/vldat', function (req, res) {
   var vldat = require("../data/vldat.json");


  res.send(vldat);

});



module.exports = router;

