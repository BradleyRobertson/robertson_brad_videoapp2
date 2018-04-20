var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();



/* GET home page. */
router.get('/', function(req, res, next) {

  console.log('working fine');
  // connect.query(`SELECT * FROM tbl_name m, tbl_genre g, tbl_mov_genre mg WHERE m.movie_id = mg.movie_id AND g.genre_id = mg.genre_id`, (error, rows)=> {
  //   if (error) {
  //     console.log(error);
  //   } else {
  //     console.log(rows);
  //     res.render('home', {
  //       defaultMovie : rows[Math.floor(Math.random() * rows.length)],
  //       data : JSON.stringify(rows)
  //     });
  //   }
  // });
  res.render('home');
});

router.get('/adults', function(req, res, next){
res.render("movies");

});

router.get('/kidsmovies', function(req, res, next){
res.render("kids");

});

var express = require('express');
var videoController = require('../controllers/videoAppController');
var router = express.Router();

/* GET home page. */
router.get('/', videoController.get_all_movies);

router.get('/movies/:id/:movie', videoController.get_one_movie );

router.post('/api', videoController.post_new_review);

module.exports = router;
