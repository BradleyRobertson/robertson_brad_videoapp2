var express = require('express');
var connect = require('../utils/sqlConnect.js');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
console.query('SELECT * FROM movies', (err,  result) => {
  console.log('selecting movies');
  if(err){
    throw err; console.log(err);
  }else{
    console.log(result);

    res.render('movies', {
      title: 'Parent files',
      message: "The adult section",
      filmData : result
    });
  }
});
});

router.get('/', function(req, res, next) {
console.query('SELECT * FROM movies', (err,  result) => {
  console.log('selecting movies');
  if(err){
    throw err; console.log(err);
  }else{
    console.log(result);

    res.render('movies', {
      title: 'kids files',
      message: "The kids section",
      filmData : result
    });
  }
});
});

module.exports = router;
