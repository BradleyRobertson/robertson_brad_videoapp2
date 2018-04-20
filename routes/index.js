var express = require('express');
var connect = require('../utils/sqlConnect');
var videoController = require('../controllers/videoAppController');
var router = express.Router();

/* GET home page. */
router.get('/', videoController.get_all_movies);

// you would add the route handlers for adults and kids to the controller file, or you can do it here if you're not sure how to do that (just leave it as-is)

router.get('/adults', function(req, res, next){
res.render("movies");

});

router.get('/kidsmovies', function(req, res, next){
res.render("kids");

});

router.get('/movies/:id/:movie', videoController.get_one_movie );

router.post('/api', videoController.post_new_review);

module.exports = router;
