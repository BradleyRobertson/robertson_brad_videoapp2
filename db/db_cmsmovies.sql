-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2018 at 04:28 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cmsmovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `user_comment` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Adventure'),
(2, 'Comedy'),
(3, 'Action'),
(4, 'Drama'),
(5, 'Horror'),
(6, 'Sci-fi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `movie_id` mediumint(8) NOT NULL,
  `genre_id` mediumint(8) NOT NULL,
  `age_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movie_id`, `genre_id`, `age_id`) VALUES
(1, 1, 6, 1),
(2, 2, 6, 1),
(3, 3, 1, 2),
(4, 4, 6, 1),
(5, 5, 4, 2),
(6, 6, 4, 2),
(7, 7, 4, 2),
(8, 8, 4, 2),
(9, 9, 6, 2),
(10, 10, 6, 2),
(11, 11, 6, 1),
(12, 12, 1, 1),
(13, 13, 6, 1),
(14, 14, 4, 2),
(15, 15, 4, 2),
(16, 16, 3, 1),
(17, 17, 6, 2),
(18, 18, 4, 2),
(19, 19, 5, 2),
(20, 20, 3, 2),
(21, 21, 3, 2),
(22, 22, 6, 1),
(23, 23, 3, 2),
(24, 24, 5, 2),
(25, 25, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name`
--

DROP TABLE IF EXISTS `tbl_name`;
CREATE TABLE IF NOT EXISTS `tbl_name` (
  `movie_id` mediumint(50) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(75) NOT NULL,
  `movie_description` varchar(500) NOT NULL,
  `movie_thumbnail` varchar(250) NOT NULL DEFAULT 'moviethumbnaildefault.jpg',
  `movie_trailers` varchar(150) NOT NULL,
  `movie_year` varchar(20) NOT NULL,
  `movie_runtime` varchar(25) NOT NULL,
  `movie_releasedate` varchar(20) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_name`
--

INSERT INTO `tbl_name` (`movie_id`, `movie_name`, `movie_description`, `movie_thumbnail`, `movie_trailers`, `movie_year`, `movie_runtime`, `movie_releasedate`) VALUES
(1, 'Avengers: Infinity War', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'infinitywar.jpg', 'infinitywar.mp4', '2018', '2 Hrs 36 m', 'April, 26th, 2018'),
(2, 'Ready Player One', 'When the creator of a virtual reality world called the OASIS dies, he releases a video in which he challenges all OASIS users to find his Easter Egg, which will give the finder his fortune.', 'readyplayerone.jpg', 'readyplayerone.mp4', '2018', '2Hr 20m', 'March 28th, 2018'),
(3, 'Tomb Raider', 'Lara Croft, the fiercely independent daughter of a missing adventurer, must push herself beyond her limits when she finds herself on the island where her father disappeared.', 'tombraider.jpg', 'tombraider.mp4', '2018', '1h 58min', 'March 14th, 2018'),
(4, 'Pacific Rim: Uprising', 'Jake Pentecost, son of Stacker Pentecost, reunites with Mako Mori to lead a new generation of Jaeger pilots, including rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.', 'pacificrimuprising.jpg', 'pacificrimuprising.mp4', '2018', '1h 51min', 'March 23rd, 2018'),
(5, 'Red Sparrow', 'Ballerina Dominika Egorova is recruited to \'Sparrow School,\' a Russian intelligence service where she is forced to use her body as a weapon. Her first mission, targeting a C.I.A. agent, threatens to unravel the security of both nations.', 'redsparrow.jpg', 'redsparrow.mp4', '2018', '2h 20min', 'March 1st, 2018'),
(6, 'The Shape of Water', 'At a top secret research facility in the 1960s, a lonely janitor forms a unique relationship with an amphibious creature that is being held in captivity.', 'shapeofwater.jpg', 'shapeofwater.mp4', '2018', '2h 31min', 'Febuary 14th, 2018'),
(7, 'Lady Bird', 'In 2002, an artistically inclined seventeen-year-old girl comes of age in Sacramento, California.', 'ladybird.jpg', 'ladybird.mp4', '2018', '1h 34min', 'Febuary 23rd, 2018'),
(8, 'Call Me by Your Name', 'In 1980s Italy, a romance blossoms between a seventeen year-old student and the older man hired as his father\'s research assistant.', 'callmebyyourname.jpg', 'callmebyyourname.mp4', '2017', '2h 12min', 'October 27th, 2018'),
(9, 'Alien', 'After a space merchant vessel perceives an unknown transmission as a distress call, its landing on the source moon finds one of the crew attacked by a mysterious lifeform, and they soon realize that its life cycle has merely begun.', 'alien.jpg', 'alien.mp4', '1979', '1h 56min', 'September 30th, 1979'),
(10, 'The Terminator', 'A seemingly indestructible Android is sent from 2029 to 1984 to assassinate a waitress, whose unborn son will lead humanity in a war against the machines, while a soldier from that war is sent to protect her at all cost', 'terminator.jpg', 'terminator.mp4', '1985', '1h 47min', 'January 11th, 1985'),
(11, 'Jurassic Park', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'jurassicpark.jpg', 'jurassicpark.mp4', '1993', '2h 7min', 'July 16th, 1993'),
(12, 'Indiana Jones and the Last Crusade', 'When Dr. Henry Jones, Sr. suddenly goes missing while pursuing the Holy Grail, eminent archaeologist Dr. Henry \"Indiana\" Jones, Jr. must follow in his father\'s footsteps to stop the Nazis from getting their hands on the Holy Grail first.', 'indianajonesandthelastcrusade.jpg', 'indianajonesandthelastcrusade.mp4', '1989', '2h 7min', 'June 30th, 1989'),
(13, 'Back to the Future', 'Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.', 'backtothefuture.jpg', 'backtothefuture.mp4', '1985', '1h 56min', 'December 4th, 1985'),
(14, 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'thegodfather.jpg', 'thegodfather.mp4', '1972', '2h 55min', 'Auguest 24th, 1972'),
(15, 'Forrest Gump', 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.', 'forrestgump.jpg', 'forrestgump.mp4', '1994', '2h 22min', 'October 7th, 1994'),
(16, 'The Dark Knight', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'thedarkknight.jpg', 'thedarkknight.mp4', '2008', '2h 32min', 'July 24th, 2008'),
(17, 'Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity\'s survival.', 'interstellar.jpg', 'interstellar.mp4', '2014', '2h 49min', 'November 7th, 2014'),
(18, 'The Prestige', 'After a tragic accident two stage magicians engage in a battle to create the ultimate illusion whilst sacrificing everything they have to outwit the other.', 'theprestige.jpg', 'theprestige.mp4', '2006', '2h 10min', 'November 10th, 2006'),
(19, 'Shutter Island', 'In 1954, a U.S. Marshal investigates the disappearance of a murderer, who escaped from a hospital for the criminally insane.', 'shutterisland.jpg', 'shutterisland.mp4', '2010', '2h 18min', 'March 12th, 2010'),
(20, 'Catch Me If You Cam', 'The story of Frank Abagnale Jr., before his 19th birthday, successfully forged millions of dollars\' worth of checks while posing as a Pan Am pilot, a doctor, and legal prosecutor as a seasoned and dedicated FBI agent pursues him.', 'catchmeifyoucan.jpg', 'catchmeifyoucan.mp4', '2002', '2h 21min', 'January 31st, 2002'),
(21, 'Django Unchained', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'djangounchained.jpg', 'djangounchained.mp4', '2012', '2h 45min', 'January 18th, 2014'),
(22, 'The Matrix', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'thematrix.jpg', 'thematrix.mp4', '1999', '2h 16min', 'June 11th, 1999'),
(23, 'Fight Club', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soapmaker, forming an underground fight club that evolves into something much, much more.', 'fightclub.jpg', 'fightclub.mp4', '1999', '2h 19min', 'November 12th, 1999'),
(24, 'The Silence of the Lambs', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'silenceofthelambs.jpg', 'silenceofthelambs.mp4', '1991', '1h 58min', 'May 31st, 1991'),
(25, 'se7en', 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'se7en.jpg', 'se7en.mp4', '1996', '2h 7min', 'January 5th, 1996'),
(26, 'beavertail2.jpg', 'test', '', '', '', '', ''),
(27, 'cosmos.jpg', 'Cosmos', '2018', '', '2h 27min', 'Journey Through the stars', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

DROP TABLE IF EXISTS `tbl_rating`;
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `negative_rating` tinyint(8) NOT NULL,
  `positive_rating` tinyint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(10) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(150) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'Justin Brunner', 'justiniscool', '12345', 'Justin@justin.ca', '2018-04-08 23:54:06', '::1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
