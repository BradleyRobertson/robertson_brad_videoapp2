var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();



/* GET home page. */
router.get('/', function(req, res, next) {

  console.log('get all the movies');
  connect.query(`SELECT * FROM tbl_name m, tbl_genre g, tbl_mov_genre mg WHERE m.movie_id = mg.movie_id AND g.genre_id = mg.genre_id`, (error, rows)=> {
    if (error) {
      console.log(error);
    } else {
      console.log(rows);
      res.render('home', {
        defaultMovie : rows[Math.floor(Math.random() * rows.length)],
        data : JSON.stringify(rows)
      });
    }
  });
});

router.get('/adults', function(req, res, next){
res.render("movies");

});

router.get('/kidsmovies', function(req, res, next){
res.render("kids");

});



module.exports = router;
