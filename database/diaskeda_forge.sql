-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2019 at 12:10 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diaskeda_forge`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`id`, `partner_id`, `title`, `content`, `date`, `user_id`) VALUES
(1, 14, 'Deny Appointment', 'distixos den mporo na sas parousiaso akomi autin tin ipiresia', '2019-06-17 14:59:45', 12),
(2, 14, 'Life coach', 'Καλωσόρισμα', '2019-06-17 10:03:21', 0),
(3, 13, 'Καλωσορίσατε', 'Ελάτε να γνωρίσουμε την φύση μας.', '2019-06-20 18:33:53', 0),
(7, 41, 'Επιχειρηματικά', 'Καλωσόρισμα', '2019-06-29 15:11:59', 0),
(6, 38, 'Γυμναστής', 'Καλωσόρισμα', '2019-06-26 19:34:49', 38),
(8, 40, 'Διαλογισμός - YOGA', 'Καλωσόρισμα', '2019-06-29 19:31:10', 0),
(9, 15, 'Accept Appointment(2019-07-20 07:00:00-2019-07-20 07:30:00)', 'thanks', '2019-07-19 15:14:54', 22),
(10, 15, 'Accept Appointment(2019-06-11 07:30:00-2019-06-11 08:00:00)', 'test', '2019-07-22 17:01:45', 22),
(11, 10, 'Accept Appointment(2019-04-08 16:30:00-2019-04-08 20:30:00)', 'hjuhu', '2019-07-22 17:38:07', 12),
(12, 54, 'Life coach', 'Καλωσόρισμα', '2019-07-28 13:26:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`) VALUES
(1, 'ΛΕΥΚΩΣΙΑ'),
(2, 'ΛΑΡΝΑΚΑ'),
(3, 'ΛΕΜΕΣΟΣ'),
(4, 'ΠΑΦΟΣ'),
(5, 'ΑΜΜΟΧΩΣΤΟΣ');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `popular` int(11) NOT NULL,
  `poster_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  `dislike` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `partner_id`, `title`, `content`, `summary`, `popular`, `poster_img`, `updated_at`, `created_at`, `like`, `dislike`, `status`) VALUES
(1, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', '“Colorlib Ltd’s ranking has gone up so much from the great work ', 4, 'img/article-img/43.jpg', '2019-08-26 08:46:46', '2019-03-15 00:00:00', 0, 0, 2),
(2, 0, 'my second article', 'Warning: Although String.prototype.substr(…) is not strictly deprecated (as in \"removed from the Web standards\"), it is considered a legacy function and should be avoided when possible. It is not part of the core JavaScript language and may be removed in the future. If at all possible, use the substring() method instead.', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 2, 'img/article-img/43.jpg', '2019-08-26 08:46:54', '2019-03-18 00:00:00', 0, 0, 2),
(3, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 3, 'img/article-img/43.jpg', '2019-08-26 08:47:01', '2019-03-09 00:00:00', 0, 0, 2),
(4, 0, 'my second article', 'Warning: Although String.prototype.substr(…) is not strictly deprecated (as in \"removed from the Web standards\"), it is considered a legacy function and should be avoided when possible. It is not part of the core JavaScript language and may be removed in the future. If at all possible, use the substring() method instead.', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 4, 'img/article-img/43.jpg', '2019-08-26 08:47:10', '2019-03-06 00:00:00', 0, 0, 2),
(5, 0, 'my second article', 'Warning: Although String.prototype.substr(…) is not strictly deprecated (as in \"removed from the Web standards\"), it is considered a legacy function and should be avoided when possible. It is not part of the core JavaScript language and may be removed in the future. If at all possible, use the substring() method instead.', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 2, 'img/article-img/43.jpg', '2019-08-26 08:47:15', '2019-03-07 00:00:00', 0, 0, 2),
(6, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 5, 'img/article-img/43.jpg', '2019-08-26 08:47:22', '2019-03-03 00:00:00', 0, 0, 2),
(7, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 5, 'img/article-img/43.jpg', '2019-08-26 08:47:28', '2019-03-05 00:00:00', 0, 0, 2),
(8, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 5, 'img/article-img/43.jpg', '2019-08-26 08:47:33', '2019-03-07 00:00:00', 0, 0, 2),
(9, 0, 'my second article', 'Warning: Although String.prototype.substr(…) is not strictly deprecated (as in \"removed from the Web standards\"), it is considered a legacy function and should be avoided when possible. It is not part of the core JavaScript language and may be removed in the future. If at all possible, use the substring() method instead.', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 2, 'img/article-img/43.jpg', '2019-08-26 08:47:41', '2019-03-04 00:00:00', 0, 0, 2),
(10, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 5, 'img/article-img/43.jpg', '2019-08-26 08:47:54', '2019-03-01 00:00:00', 0, 0, 2),
(11, 0, 'my first title', '<blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><span style=\"font-size: 1rem;\">“Colorlib </span><span style=\"font-size: x-large;\">Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”</span></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><span style=\"font-size: x-large;\">adsfasdfasdf</span></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><span style=\"font-size: x-large;\">asdfasdfasdf</span></blockquote></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 4, 'img/article-img/43.jpg', '2019-08-26 08:48:00', '2019-03-02 00:00:00', 0, 0, 2),
(12, 0, 'my first title', '“Colorlib Ltd’s ranking has gone up so much from the great work that your team has done and our brand get organic sales consistently from your efforts. We are happy that the results of your efforts were lasting and profitable.”', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 4, 'img/article-img/43.jpg', '2019-08-26 08:48:06', '2019-03-07 00:00:00', 0, 0, 2),
(13, 0, 'asdfasdf', 'asdfasdfasdfasdasdfasdfasdf<div>asdfasdfas</div><div>asf</div><div>asdf</div><div>asd</div><div>fasdfasdf</div>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/101554565104.jpg', '2019-08-26 08:48:13', '2019-04-06 15:38:28', 0, 0, 2),
(14, 0, 'asdfasdf', '<span style=\"font-size: xx-large;\">asdfasdfasdfasd</span><div><span style=\"font-size: xx-large;\">asdfasdfasdf</span></div><div><span style=\"font-size: xx-large;\">asdfasdfasdf</span></div><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><span style=\"font-size: xx-large;\">asdfasdfasdf</span></div></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><span style=\"font-size: xx-large;\">asdf</span></div></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><span style=\"font-size: xx-large;\">asdf</span></div></blockquote><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><div><span style=\"font-size: xx-large;\">sadf</span></div></blockquote></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/101554565104.jpg', '2019-08-26 08:48:19', '2019-04-06 15:38:59', 0, 0, 2),
(15, 0, 'Big bucky article', '<span style=\"font-weight: bold; font-style: italic; color: rgb(255, 0, 255);\">This Is bucky raticle.</span><div><span style=\"font-weight: bold; font-style: italic; color: rgb(255, 0, 255);\">asdfasdf</span></div><div><span style=\"font-weight: bold; font-style: italic; color: rgb(255, 0, 255);\">asdfasdf</span></div>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/101554734194.jpg', '2019-08-26 08:48:26', '2019-04-08 14:37:04', 0, 0, 2),
(16, 10, 'Social Μάρκετινγκ', 'ΤΙ ΕΙΝΑΙ ΔΙΚΤΥΑΚΟ ΜΑΡΚΕΤΙΝΓΚ\r\n\r\nMulti - Level Marketing-MLM ή Network Marketing \r\n\r\nΕίναι μια μέθοδος προώθησης προϊόντων ή υπηρεσιών απευθείας στους καταναλωτές διαμέσου ενός δικτύου συνεργατών ( μελών ), που συστήνουν πελάτες ή συνεργάτες. Οι συμμετέχοντες ανταμείβονται από αυτές τις συστάσεις ή και για τις πωλήσεις των συστημένων πελατών.\r\nΗ δύναμη είναι η απευθείας προώθηση χωρίς μεσάζοντες.\r\n\r\nΕίναι μια μέθοδος που εξασφαλίζει υψηλό εισόδημα μέσω «προώθησης» προιόντων ή υπηρεσίας εκπαιδεύοντας άλλα άτομα, που επιθυμούν να συμβάλουν στην προώθηση και την εκπαίδευση άλλων ατόμων, μέσων αυτής της προσπάθειας μπορούν να εξασφαλίζουν καλό εισόδημα κ.τ.λ\r\n', 'Είναι μια μέθοδος προώθησης προϊόντων ή υπηρεσιών απευθείας στους καταναλωτές...', 0, 'images/articles/arthromlm.jpg', '2019-08-26 08:48:32', '2019-05-22 07:43:40', 0, 0, 1),
(17, 0, 'Sport 1', '<span style=\"font-size: x-large;\">Sport 1&nbsp;</span><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/131556395892.jpg', '2019-08-26 08:48:38', '2019-04-27 20:11:57', 0, 0, 2),
(18, 0, 'Sport 2', '<span style=\"font-size: x-large;\">Sport 1&nbsp;</span><blockquote style=\"margin-bottom: 0px; margin-left: 40px; padding: 0px; border: none;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/131556395935.jpg', '2019-08-26 08:48:45', '2019-04-27 20:12:18', 0, 0, 2),
(19, 0, 'Sport 3', '<span style=\"font-size: x-large;\">Sport 3</span><blockquote style=\"margin-bottom: 0px; margin-left: 40px; padding: 0px; border: none;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/131556395951.jpg', '2019-08-26 08:48:51', '2019-04-27 20:12:38', 0, 0, 2),
(20, 13, 'Τσιμπήματα', 'Για τσιμπήματα μέλισσας, σφήκας ή κουνουπιού παίρνουμε μια λεπτή φέτα πατάτας, τη βάζουμε πάνω στο τσίμπημα, το καλύπτουμε με πλαστική μεμβράνη, το δένουμε και το αφήνουμε λίγες ώρες ή όλο το βράδυ. Η πατάτα έχει την ιδιότητα να απορροφά το δηλητήριο. Αυτή η ενέργεια ανακουφίζει την περιοχή του τσιμπήματος.  \r\n\r\n', 'Για τσιμπήματα μέλισσας, σφήκας ή κουνουπιού παίρνουμε μια λεπτή φέτα πατάτας...', 0, 'images/articles/tsimpima.jpg', '2019-08-26 08:46:29', '2019-05-01 20:12:50', 0, 0, 1),
(22, 0, 'Sport 1', '<span style=\"font-size: x-large;\">Sport 1&nbsp;</span><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/131556395892.jpg', '2019-08-26 08:48:57', '2019-04-27 20:11:57', 0, 0, 2),
(24, 0, 'Sport 3', '<span style=\"font-size: x-large;\">Sport 3</span><blockquote style=\"margin-bottom: 0px; margin-left: 40px; padding: 0px; border: none;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/131556395951.jpg', '2019-08-26 08:49:04', '2019-04-27 20:12:38', 0, 0, 2),
(25, 0, 'Sport 1', '<span style=\"font-size: x-large;\">Sport 1&nbsp;</span><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'Warning: Although String.prototype.substr(…) is not strictly deprecated ', 0, 'images/articles/131556395892.jpg', '2019-08-26 08:49:10', '2019-04-27 20:11:57', 0, 0, 2),
(26, 38, 'Bootcamp', ' Χαρακτηριστική πληροφόρηση:\r\nΤα προγράμματα «bootcamp» θα έχουν ένα μοναδικό χαρακτήρα ο οποίος θα βοηθά τον κάθε αθλούμενο να κατανοεί όχι μόνο καλύτερα την άσκηση αλλά και το πώς δουλεύει, δηλαδή τα οφέλη της προς τον οργανισμό το πώς και γιατί η δραστηριοποίηση του κάθε ατόμου είναι ζωτικής σημασίας και με συνδυασμό των κατευθύνσεων διατροφής που θα λαμβάνει από τους συνεργάτες των υπηρεσιών του τομέα υγείας της διασκεδάζω για να πετύχει κάθε επιθυμητό στόχο χωρίς να εξαντλείται σε υψηλών απαιτήσεων προγραμμάτων και διατροφής. \r\nΚυρίες και Κύριοι σας παρουσιάζω το μοντέλο ομαδικής εκγύμνασης από την επιστήμη στον άνθρωπο που φέρει το όνομα «bootcamp».\r\nΧαρακτήρας:\r\nΤο πρόγραμμα δεν θα διαρκεί περισσότερο της μίας ώρας και θα διεξάγεται σε οποιονδήποτε ανοιχτό χώρο ευκολίας και περιοχής που βολεύει τους πλείστους. Ο χαρακτήρας του είναι πολυδιάστατος και δεν χρειάζεται πολλά συμβαλλόμενα άτομα για να λειτουργήσει απλά να είναι τουλάχιστον ένας ή και δύο γυμναστές που θα δίνουν τις κ', 'Τα προγράμματα «bootcamp» θα έχουν ένα μοναδικό χαρακτήρα ο οποίος θα βοηθά τον κάθε', 0, 'images/articles/bootcamp.jpg', '2019-08-26 08:46:11', '2019-07-26 20:12:18', 0, 0, 1),
(27, 38, 'Άσκηση και Διατροφή', 'Τότε διαβάστε τον συνδυασμό άσκησης και διατροφής που σίγουρα θα θέλατε να μάθετε πώς να πετύχετε χωρίς τα καλούπια περιορισμού.\n\nΠραγματικά είναι σχεδόν αμέτρητα τα άρθρα και οι συμβουλές γύρω από το λεγόμενο συνδυασμό «άσκησης και διατροφής». \nΑν δεν σας είναι ακόμα ξεκάθαρο όμως, τότε διαβάστε παρακάτω απ’ όπου ξεκίνησε και πώς μέσω της εξέλιξης κατέληξε να μας μπερδεύει μέσω της καθημερινότητάς μας και τα όσα ακούμε γύρω.  \nΣτο τέλος,  ο καθένας θα κληθεί να αναρωτηθεί αν υπάρχει τελικά αυτό  το πρέπει που φοβίζει  τον καθένα για να αποκτήσει το επιθυμητό αποτέλεσμα. \nΤα τελευταία 30 τουλάχιστον χρόνια, έγινε μία μεταστροφή στην έκφραση όσον αφορά \nστην «δίαιτα» από την «διατροφή» και στην «φυσική κατάσταση» από το «Fitness». \nΕπικαλούμενοι σήμερα την δίαιτα εκφράζει ότι κάποιος κάνει μία αυστηρά υπο-θερμιδική διατροφή, όχι απλά για να μειώσει τη μάζα του,  αλλά για να πέσει αριθμητικά η ζυγαριά. \nΑπό την άλλη φυσική κατάσταση, ο ορισμός της και μόνο δεν διαφέρει καθόλου απ<div><br></div><div>asdfasdfasdfasdfasdf</div>', 'Ζητάτε αποτέλεσμα χωρίς τα πρέπει για τα θέλω σας; Τότε διαβάστε τον συνδυασμό άσκησης...\r\n ', 0, 'images/articles/gimnastiki.jpg', '2019-08-26 08:46:19', '2019-07-27 20:12:38', 0, 0, 1),
(28, 15, 'Life Coaching', 'Σύμφωνα με το International Coach Federation, το Life Coaching είναι η σύμπραξη σε μία δημιουργική διαδικασία σκέψης που εμπνέει τους ανθρώπους να μεγιστοποιήσουν τις προσωπικές και επαγγελματικές τους δυνατότητες. Το Coaching είναι μια ξεχωριστή υπηρεσία που διαφέρει από την ψυχοθεραπεία, τη συμβουλευτική, το mentoring και την εκπαίδευση. Έχει αναδειχθεί σε μια σημαντική επιστήμη και πρακτική που απελευθερώνει και αναπτύσσει τις ικανότητες των ανθρώπων. Απευθύνεται σε άτομα που είναι ψυχικά υγιείς που θέλουν να μεταφέρουν τη ζωή τους στο επόμενο επίπεδο. \r\nΜε απλά λόγια είναι ο τρόπος για να πας από το σημείο το οποίο βρίσκεσαι τώρα στη ζωή σου, στο σημείο που επιθυμείς να βρεθείς, γρήγορα και αποτελεσματικά! Το life coaching στηρίζεται στην λογική ότι οι λύσεις στα προβλήματα μας βρίσκονται μέσα μας. Η πραγματικά ουσιαστική αλλαγή στην ζωή μας έρχεται εστιάζοντας στον εαυτό μας, στις ανάγκες και στους στόχους μας, αναλαμβάνοντας έτσι στο 100% την ευθύνη για τη ζωή μας. \r\nΚατά την διά', 'Με απλά λόγια είναι ο τρόπος για να πας από το σημείο το οποίο βρίσκεσαι τώρα στη ζωή σου..', 0, 'images/articles/life.jpg', '2019-08-26 08:22:48', '2019-04-27 20:12:50', 0, 0, 1),
(30, 14, 'Σεμινάρια ', '<span style=\"font-size: x-large;\">Sport 3</span><blockquote style=\"margin-bottom: 0px; margin-left: 40px; padding: 0px; border: none;\"><h3><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfasdfasdfalsdfa</span></h3><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldfkasdf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdfaldfjalsdkfjasdfa</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">sdfalsdfjasldkfjasldf</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">asdflaksdjfalsdkfjalsdkfasdfjlaksdfasd</span></div><div><span style=\"font-size: x-large; font-family: &quot;comic sans ms&quot;, sans-serif;\">fasdlfkajsdflakdf</span></div></blockquote>', 'in progress', 0, 'images/articles/seminars.jpg', '2019-08-26 13:29:45', '2019-07-28 20:12:50', 0, 0, 2);
INSERT INTO `article` (`id`, `partner_id`, `title`, `content`, `summary`, `popular`, `poster_img`, `updated_at`, `created_at`, `like`, `dislike`, `status`) VALUES
(34, 69, 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', '<p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η οξεία ρήξη μηνίσκου συμβαίνει συνήθως σε νέους ασθενείς κατά τη διάρκεια μιας αθλητική δραστηριότητας, αλλά μπορεί να συμβεί και σε οποιαδήποτε άλλη δραστηριότητα όταν δρουν στροφικά και συμπιεστικά φορτία τα οποία υπερβαίνουν την αντοχή του μηνίσκου</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ασθενείς μεγαλύτερης ηλικίας είναι πιθανότερο να παρουσιάζουν εκφυλιστικές αλλοιώσεις στους μηνίσκους ως αποτέλεσμα μικροτραυματισμών, οι οποίοι είναι και πιο ευάλωτοι και μπορούν να υποστούν ρήξη και με πιο απλούς μηχανισμούς όπως την απλή έγερση από ένα βαθύ κάθισμα.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ανατομικά οι μηνίσκοι βρίσκονται μεταξύ του μηριαίου κνημιαίου κονδύλου έσω και έξω.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Είναι δύο σκληροί ελαστικοί ανατομικοί σχηματισμοί που αποτελούνται κυρίως από ίνες κολλαγόνου και νερό.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Έχουν σχήμα ημισελινοειδές (πεταλοειδές) και παρεμβάλλονται ανάμεσα στις αρθρικές επιφάνειες της κνήμης και των μηριαίων κονδύλων.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η χρήση τους είναι η απορρόφηση φορτίων ούτως ώστε να αποφορτίζεται ο αρθρικός χόνδρος κατά την βάδιση και άλλες δραστηριότητες των γονάτων.Επίσης βοηθούν στην σταθεροποίηση του γόνατος κάνοντας την κίνηση πιο ομαλή.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>ΜΗΧΑΝΙΣΜΟΣ ΡΗΞΗΣ</u></span></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ο μηχανισμός της ρήξης είναι συνήθως σε φόρτιση του λυγισμένο γόνατο με ταυτόχρονη στροφή και κάμψη.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Υπάρχουν διάφορα είδη ρήξης μηνίσκων που ταξινομούνται ανάλογα με το μέγεθος τους, την εντόπιση τους και το σχήμα της ρήξης του μηνίσκου.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Οι πιο συνήθεις περιλαμβάνουν επιμήκη ρήξη, ακτινωτή, εγκάρσια ρήξη, σε πιο νέα άτομα δίκην λαβής κάδου και τέλος σύνθετες ρήξεις( βλ. σχεδιάγραμμα). Με τη πάροδο του χρόνου η ρήξη&nbsp; μηνίσκου μπορεί να επιδεινωθεί , για παράδειγμα η επιμήκης ρήξη μπορεί να μετατραπεί σε τύπο δίκην λαβής κάδου, η ακτινωτή ρήξη σε δίκην ράμφους παπαγάλου και η οριζόντια ρήξη σε flap tear.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η ρήξη του έσω μηνίσκου είναι πιο συχνή από τη ρήξη του έξω μηνίσκου για καθαρά ανατομικούς λόγους.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>Συμπτώματα</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Την ώρα του τραυματισμού μπορεί να νιώσετε ή και να ακούσετε ένα θόρυβο σαν κάτι να έσπασε. Κάποιες φορές είναι δυνατό να συνεχίσει ο ασθενής τη δραστηριότητά του αλλά προοδευτικά&nbsp; μπορεί να πρηστεί το γόνατο και να γίνει δύσκαμπτο.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Το σημείο που προκαλεί πόνο είναι αρκετά συγκεκριμένο, όχι όμως πάντα. Γενικά, αν ο έσω μηνίσκος έχει υποστεί ρήξη, νιώθετε πόνο στο εσωτερικό του γόνατος , ή αντιθέτως πονάτε εξωτερικά, αν τη βλάβη έχει υποστεί ο έξω μηνίσκος.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Οι πόνοι είναι ξαφνικοί και απρόβλεπτοι, αν το τμήμα που υπέστει ρήξη κρατιέται μόνο από μια άκρη στην άρθρωση.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Όταν βρίσκεται στη φυσιολογική του θέση, δεν προκαλεί καμιά ενόχληση, ακόμα και κατά την άσκηση αθλήματος. Ωστόσο, κάθε φορά που «σφηνώνει» στο γόνατο, προκαλεί οξείς πόνους (μοιάζουν με χτύπημα από μαχαίρι).</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Αν ο μηνίσκος που υπέστει ρήξη, μείνει στριμωγμένος ανάμεσα στο μηριαίο οστό και την κνήμη, το γόνατο «κλειδώνει» και εμποδίζεται η πλήρης έκταση του γόνατος.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η άρθρωση υποφέρει και η φυσιολογική αντίδραση άμυνας της, είναι η παραγωγή υγρού. Για το λόγο αυτό, μερικές φορές το γόνατο πρήζεται. Σε περίπτωση παλαιάς ρήξης, οι ασθενείς δε χρησιμοποιούν φυσιολογικά το γόνατό τους, κυρίως εξαιτίας του πόνου : έχουν την τάση να κουτσαίνουν λίγο. Οι μύες του μηρού, που συγκρατούν την επιγονατίδα αποδυναμώνονται. Αυτό μπορεί να προκαλέσει μερικές φορές, έντονους πόνους στο μπροστινό μέρος του γόνατος.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Οι πόνοι αυτοί επιδεινώνονται κατά το ανέβασμα και κυρίως το κατέβασμα σκάλας, όταν σηκωνόμαστε μετά από αρκετή ώρα καθιστοί, ή όταν καθόμαστε στις πτέρνες. Οι πόνοι αυτοί οφείλονται σε δυσλειτουργία της επιγονατίδας.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>Τι εξετάσεις χρειάζονται ;</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ο γιατρός σας για να εξακριβώσει τη βλάβη του γόνατος, σας συστήνει εξετάσεις.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η ακτινογραφία είναι η τεχνική που χρησιμοποιεί ακτίνες (τις ακτίνες X) για να δούμε τα οστά στο εσωτερικό του σώματος.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Δεν επιτρέπει να δούμε τους μηνίσκους, εκτός εάν είναι καλυμμένοι από μια ουσία που μοιάζει με κιμωλία (ασβεστώσεις), γεγονός που παρατηρείται κυρίως σε ηλικιωμένους.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Μια πιο εξειδικευμένη εξέταση, όπως η μαγνητική τομογραφία, μας επιτρέπει να εντοπίσουμε τη ρήξη μηνίσκου, το μέγεθος και τη θέση της. Ωστόσο το πρόβλημα μπορεί να μη γίνει αντιληπτό εάν τη στιγμή της εξέτασης, το σημείο που έχει υποστεί ρήξη βρίσκεται στη φυσιολογική του θέση.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Στους ηλικιωμένους ασθενείς, είναι δύσκολο μερικές φορές να διακρίνουμε τη διαφορά μεταξύ ενός γερασμένου μηνίσκου και μιας πραγματικής ρήξης μικρού μεγέθους.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>ΘΕΡΑΠΕΙΑ – ΑΝΤΙΜΕΤΩΠΙΣΗ</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η αντιμετώπιση της ρήξης ενός μηνίσκου θα εξαρτηθεί από τον τύπο της ρήξης, το μέγεθος και την εντόπισή της. Το εξωτερικό 1/3 του μηνίσκου αιματώνεται επαρκώς (red zone). Η ρήξη σε αυτή τη περιοχή του μηνίσκου μπορεί να ιαθεί χωρίς χειρουργική επέμβαση. Οι επιμήκεις ρήξεις αποτελούν ένα καλό παράδειγμα ρήξεων με καλή πρόγνωση.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Αντιθέτως, τα έσω 2/3 του μηνίσκου δεν αιματώνονται επαρκώς (white zone) καθιστώντας την επούλωση δύσκολη εάν όχι αδύνατη.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Αυτοί οι σύνθετοι τραυματισμοί αφορούν έναν ήδη εκφυλισμένο μηνίσκο ο οποίος δεν δύναται να επουλωθεί από μόνος του, και στην πλειονότητα των περιπτώσεων απαιτεί την αφαίρεση των τραυματισμένων τεμαχίων.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Επιπλέον, πέρα από το είδος της κάκωσης, ο Ορθοπαιδικός λαμβάνει υπόψη την ηλικία και το επίπεδο δραστηριοτήτων του ασθενούς για να εφαρμόσει την κατάλληλη θεραπεία.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>Πότε χρειάζεται επέμβαση ;</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ένα απλό «σχίσιμο» δεν απαιτεί επέμβαση, εφόσον δεν προκαλεί παρά μόνο ελαφρύ πόνο και δεν εμπόδιζει τις δραστηριότητές σας, ακόμα και τις αθλητικές.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Σε περίπτωση εκτεταμένης ρήξης, μπορεί να σας προτείνουν χειρουργική επέμβαση εάν το γονατό σας χωλαίνει, δυσκολεύει τις κινήσεις σας, πονάει, γενικότερα δεν «αντέχετε άλλο».</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Η επέμβαση είναι επίσης αναγκαία εάν είστε νεαρής ηλικίας και ο μηνίσκος μπορεί να αποκατασταθεί.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>Ποιοι οι κίνδυνοι χωρίς θεραπεία ;</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ο πόνος μπορεί να επιδεινωθεί. Αν το γόνατο χωλαίνει (γεγονός που είναι πιθανό), ο μυς του μηρού κινδυνεύει από σταδιακή αποδυνάμωση.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Αυτή η δυσλειτουργία του γόνατος προκαλεί συχνά πόνους στο ύψος της επιγονατίδας.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Εάν είστε αθλητής υψηλού επιπέδου, ή αν το επάγγελμά σας είναι υψηλού κινδύνου (π.χ. πάνω σε σκαλωσιές), οι ξαφνικοί πόνοι στα γόνατα μπορεί να θέσουν σε κίνδυνο την ασφάλειά σας.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>ΣΥΝΤΗΡΗΤΙΚΗ ΑΝΤΙΜΕΤΩΠΙΣΗ </u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Εάν η ρήξη είναι μικρή και αφορά το εξωτερικό μέρος του μηνίσκου, μπορεί να μην χρειαστεί χειρουργική επέμβαση. Εφόσον τα συμπτώματα υφίενται (δεν επιμένουν) και το γόνατο είναι σταθερό η αντιμετώπιση είναι αμιγώς συντηρητική:</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><ol style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style-image: none; list-style-position: outside;\">-Ξεκούραση: Αποφόρτιση του σκέλους και αποφυγή των καθημερινών δραστηριοτήτων για μερικές ημέρες.</li>\n<li style=\"line-height: 24px; list-style-image: none; list-style-position: outside;\">-Παγοθεραπεία: Εφαρμογή πάγου ή ψυχρών επιθεμάτων για 20 λεπτά, αρκετές φορές την ημέρα.</li>\n<li style=\"line-height: 24px; list-style-image: none; list-style-position: outside;\">-Ελαστική περίδεση για την αποφυγή οιδήματος.</li>\n<li style=\"line-height: 24px; list-style-image: none; list-style-position: outside;\">-Ανάρροπη θέση του σκέλους (ψηλότερα από το υπόλοιπο σώμα).</li>\n<li style=\"line-height: 24px; list-style-image: none; list-style-position: outside;\">-Μη στεροειδή αντιφλεγμονώδη φέρμακα (π.χ. ιμπουπροφαίνη) που ελάττωνουν τον πόνο και το οίδημα που προκαλείται από την φλεγμονώδη αντίδραση.</li>\n</ol><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>ΧΕΙΡΟΥΡΓΙΚΗ ΑΝΤΙΜΕΤΩΠΙΣΗ</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Εάν τα συμπτώματα δεν υποχωρήσουν, τότε συνιστάται η χειρουργική αντιμετώπιση με αρθροσκοπική μέθοδο.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Επέμβαση: Η αρθροσκόπηση του γόνατος αποτελεί σήμερα μια από τις πιο διαδεδομένες επεμβάσεις στην Ορθοπαιδική. Μία ειδική κάμερα εισάγεται μέσω μιας μικρής τομής (πύλη εισόδου) και ο χειρουργός επισκοπεί την άρθρωση. Με ειδικά αρθροσκοπικά εργαλεία που εισάγονται από άλλες τομές αφαιρούνται ή επανακαθηλώνονται τα τεμάχια του ραγέντος μηνίσκου. Μερική μηνισκεκτομή: Με αυτή την επέμβαση ο εκφυλισμένος μηνίσκος αφαιρείται.Συρραφή μηνίσκου: Ορισμένες ρήξεις με συγκεκριμένα χαρακτηριστικά μπορούν να αντιμετωπιστούν με συρραφή. Το κατά πόσο θα επουλωθεί ο μηνίσκος μετά από συρραφή εξαρτάται από τον τύπο της ρήξης και την εντόπισή της. Ο χρόνος αποκατάστασης μετά από συρραφή του μηνίσκου είναι μεγαλύτερος από τον χρόνο που χρειάζεται μετά από αφαίρεσή του.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"font-weight: 700;\"><u>ΑΠΟΚΑΤΑΣΤΑΣΗ ΜΕΤΑ ΤΟ ΧΕΙΡΟΥΡΓΕΙΟ</u></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Γίνεται πάντα με συνενώσει με τον Ιατρό και με τον Φυσικοθεραπευτή. Ακολουθεί άμεσο πρόγραμμα κινησιοθεραπείας και φυσιοθεραπείας ώστε να γίνει πλήρης αποκατάσταση της κίνησης του κάτω άκρου.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Ο χρόνος αποθεραπείας εξαρτάται από το είδος της ρήξης και την αντιμετώπιση της δηλαδή σε μερική έσω ή έξω μηνισκεκτομή επανέρχεται στις καθημερινές του δραστηριότητες περίπου σε τρείς με τέσσερεις βδομάδες ενώ όταν έχει γίνει&nbsp; συρραφή μηνίσκου ο ασθενής επανέρχεται στις προηγούμενες του δραστηριότητες μετά τον τρίτο ή και τέταρτο μήνα.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 26px; margin-bottom: 0px; padding-bottom: 18px;\">Τέλος η θεραπεία ενός ασθενή θα εξαρτηθεί από την ηλικία, του ασθενή, τις δραστηριότητες που κάνει, επάγγελμα, φύλο και υπόλοιπο ιστορικό. Για παράδειγμα ασθενής άνω των εξήντα ετών με ραιβό γόνατο και εκφυλιστική ρήξη έσω μηνίσκου, η αρθροσκοπική αντιμετώπιση με μερική μηνισκεκτομή μπορεί να μην έχει τα αναμενόμενα αποτελέσματα λόγω ταυτόχρονης βλάβης του αρθρικού έσω μεσάρθριου χόνδρου και ο ασθενής τελικά να χρειαστεί ολική αρθροπλαστική γόνατος.</p>', 'Η οξεία ρήξη μηνίσκου συμβαίνει συνήθως σε νέους ασθενείς κατά τη διάρκεια μιας', 0, 'images/articles/691566135991.png', '2019-08-26 08:49:28', '2019-08-18 13:46:42', 0, 0, 1);
INSERT INTO `article` (`id`, `partner_id`, `title`, `content`, `summary`, `popular`, `poster_img`, `updated_at`, `created_at`, `like`, `dislike`, `status`) VALUES
(37, 69, 'Ψοΐτης μυς', '<p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο πόνος του μυός του Ψοΐτη δεν είναι αστείος. Μπορεί να προκαλέσει όχι μόνο βαθιά ενοχλήσει, αλλά να οδηγήσει και σε θέματα κινητικότητας και ευελιξίας ,τα οποία μπορούν να συνενωθούν και να οδηγήσουν σε ακόμη πιο χαμηλά σωματικά ζητήματα και τραυματισμούς.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο μεγάλος μυς του Ψοΐτη είναι ένας από τους δύο μυς που αποτελούν το λεγόμενο λαγονοψοΐτης. Αυτοί οι δύο μύες συγχωνεύονται στον ανώτερο μηρό και παρέχουν σταθερότητα και δομική ακεραιότητα στην οπίσθια αλυσίδα σας. Αυτό περιλαμβάνει όχι μόνο τη βουβωνική και ισχιακή περιοχή αλλά και τη χαμηλότερη περιοχή της πλάτη σας.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Αυτό συμβαίνει επειδή ο μυς Ψοΐτης συνδέεται με την κατώτερη οσφυϊκή χώρα σας και στη συνέχεια τρέχει κατευθείαν κάτω από τη βουβωνική χώρα πριν συνδεθεί στην κορυφή του μηρού σας.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο Ψοΐτης μυς είναι ο μόνος μυς στο σώμα που ενώνει το άνω μέρος του σώματος με το κάτω μέρος του σώματος. Σας επιτρέπει να κάμπτετε τα γόνατά σας προς τα εμπρός, φέρνοντας το άνω πόδι σας προς τον κορμό σας ενώ περπατάτε ή εκτελείτε καθημερινά καθήκοντα ή αθλητικές δραστηριότητες.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Αν έχετε σφιχτό ο Ψοΐτη μυς , μπορεί να εμφανίσει μια σειρά από διαφορετικά συμπτώματα πόνου.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ενώ κάποιος μπορεί να αντιμετωπίσει προβλήματα με τον Ψοΐτη χωρίς να έχει πόνο. Συνήθως επηρεάζει κυρίως εκείνους που είναι ιδιαίτερα ενεργοί, όπως οι αθλητές. Επιπλέον, εάν έχετε έναν καθιστό τρόπο ζωής που περιλαμβάνει μια εργασία γραφείου έχετε περισσότερες πιθανότητες να αντιμετωπίσετε προβλήματα.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><br style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\"><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Συμπτώματα πόνου του Ψοΐτης μυος.</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Υπάρχουν πολλά διαφορετικά συμπτώματα του πόνου των μυών του Ψοΐτη. Περιορίζοντας το συγκεκριμένο θέμα σας θα σας επιτρέψει να αντιμετωπίσετε καλύτερα τον τραυματισμό σας επιλέγοντας το σωστό σχέδιο αποκατάστασης.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ψοΐτης μυς χαμηλότερο πόνο στην πλάτη: Ψοΐτης μυς συνδέεται με το κάτω μέρος της σπονδυλικής σας στήλης όταν καθίσταται ανασταλτική και σφιχτή μπορεί να οδηγήσει σε συμπίεση στους κάτω οσφυϊκούς δίσκους και να συμβάλλει στον πόνο στην πλάτη.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Άνω πόνος στην πλάτη: Ενώ ο μυς Ψοΐτης δεν συνδέεται άμεσα με τους μύες της άνω πλάτης σας, εάν η κάτω πλάτη σας είναι σφιχτή και ανασταλεί, είναι πιθανό ότι θα αναπτύξετε κύφωση οδηγώντας σε υπερβολική καμπυλότητα και κτύπημα των ώμων και της άνω πλάτης. Αυτό με τη σειρά του οδηγεί σε πόνο.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ψοΐτης μυϊκός πόνος στην βουβωνική χώρα: όταν ο μυς Ψοΐτη κάνει φλεγμονή και ο περιβάλλοντος ιστός αρχίζει να αναπτύσσεται υπερβολική πίεση, μπορεί να οδηγήσει σε ερεθισμό και παγίδευση των λαγονοβουβωνικών και ιλιωδογαστρικών νεύρων που βοηθούν να σχηματίσουν το εσωτερικό κοιλιακό τοίχωμα της βουβωνικής περιοχής σας. Αυτή η αίσθηση μερικές φορές περιγράφεται ως θερμότητα ή τρεχούμενο νερό κατά μήκος του μπροστινού μέρους του μηρού.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ψοΐτης μυς στην κοιλιά: οι Ψοΐτες βρίσκονται βαθιά στην κοιλιακή περιοχή. όταν γίνεται σφιχτό και παρεμποδισμένο, μπορεί να οδηγήσει σε μια σειρά από συμπτώματα πόνου. Κυρίως πόνο στην κάτω περιοχή της κοιλιάς κοντά στη βουβωνική χώρα.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Πόνος βουβωνοειδούς συνδέσμου: Όταν ο μυς Ψοΐτης γίνει τόσο σφιχτός ώστε αρχίζει να περιορίζει την κίνηση του εσωτερικού κοιλιακού τοιχώματος (εγκάρσια κοιλιακή χώρα), μπορεί να οδηγήσει σε πλήθος προβλημάτων.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Δυσκοιλιότητα στο μπροστινό μέρος του ισχίου σας, κοντά στην υποδοχή</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Πόνος που ακτινοβολεί κάτω από το πόδι σας.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Περιορισμένη κίνηση και κινητικότητα των γοφών, ειδικά όταν το μηρό σας συναντά τους γοφούς σας στην υποδοχή</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο βαθύς πόνος στην περιοχή της πυέλου σας στην ίδια πλευρά που αισθάνεται σφιχτά.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Άσκηση κατά το περπάτημα</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><br style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\"><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Ψοΐτης θεραπεία μυϊκού πόνου</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ενώ ο πόνος των μυών Ψοΐτη μπορεί να είναι αιτία για πανικό, ευτυχώς είναι μια σχετικά εύκολη περίπτωση για θεραπεία από φυσικοθεραπευτική άποψη. Απλώς απαιτεί να διαβάσετε και να κατανοήσετε το σχέδιο θεραπείας και στη συνέχεια να το κολλήσετε.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><br style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\"><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong>Μασάζ στο Ψοΐτη μυ.</strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η λήψη ενός μασάζ είναι ένας πολύ καλός τρόπος για να ξεκινήσετε τη διαδικασία αποκατάστασής σας. Παίρνοντας ένα μασάζ βαθιάς ιστού στην περιοχή, θα αντιμετωπίσετε την ανακούφιση από τον πόνο και την αυξημένη κινητικότητα που θα σας επιτρέψει να εκτελέσετε καλύτερα τις εκτάσεις και τις ασκήσεις για μια μόνιμη ανάκαμψη από τον πόνο.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ενώ αυτή η μορφή φυσικής θεραπείας είναι αποτελεσματική για την ανακούφιση του πόνου, δεν θα σας δώσει διαρκή αποτελέσματα. Για αυτό, θα πρέπει να εκτελέσετε εκτάσεις και ασκήσεις για να αποκαταστήσετε ισορροπία, ευελιξία και δύναμη στην περιοχή του ισχίου σας. Με τη σειρά του, αυτό θα διορθώσει τα κακά σας πρότυπα κίνησης που προκάλεσαν τα ζητήματά σας στην πρώτη θέση.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Διατάσεις στο Ψοΐτη για την ανακούφιση του πόνου στην πλάτη.</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Λόγω της σύνδεσής του με την κάτω οσφυϊκή χώρα, ένας σφιχτός Ψοΐτη μπορεί να οδηγήσει σε σπασμούς ή άλλο πόνο και δυσφορία στη χαμηλότερη πλάτη συμπιέζοντας τους οσφυϊκούς δίσκους. Γνωρίζοντας αυτό, υπάρχει μια συγκεκριμένη έκταση που μπορείτε να εκτελέσετε για να αντιμετωπίσετε σχεδόν άμεση ανακούφιση από τον πόνο στην πλάτη.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">Ενώ κάθεστε στην άκρη μιας καρέκλας ή πάγκου, περιστρέψτε το πόδι σας και τοποθετήστε τη γωνία σας στο αντίθετο γόνατό σας, σαν να περνούσατε τα πόδια σας. Στη συνέχεια, παρέχετε εξωτερική περιστροφική πίεση&nbsp;στο ισχίο σας πατώντας κάτω αργά στο γόνατό σας θα πρέπει να αισθανθείτε μια βαθιά στροφή πέρα από το ισχίο και τη βουβωνική χώρα σας, αλλά και τη χαμηλότερη πλάτη επίσης. Κρατήστε τουλάχιστον 30 δευτερόλεπτα πριν εκτελέσετε το άλλο πόδι. φροντίστε να ολοκληρώσετε και τις δύο πλευρές ακόμη και αν έχετε μόνο πόνο στο μισό του σώματός σας.</span><br></p>', 'Ο πόνος του μυός του Ψοΐτη δεν είναι αστείος. Μπορεί να προκαλέσει όχι μόνο βαθι', 0, 'images/articles/691566136181.jpg', '2019-08-26 08:49:40', '2019-08-18 13:50:24', 0, 0, 1);
INSERT INTO `article` (`id`, `partner_id`, `title`, `content`, `summary`, `popular`, `poster_img`, `updated_at`, `created_at`, `like`, `dislike`, `status`) VALUES
(38, 69, 'Νευροπάθεια από Παγίδευση Νεύρου', '<p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Τι είναι η Νευροπάθεια από παγίδευση νεύρου;</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η νευροπάθεια από παγίδευση νεύρου προκαλείται από παρατεταμένη, φυσική συμπίεση ή ερεθισμό κάποιου νευρικού πλέγματος ή περιφερικού νεύρου. Το τελικό αποτέλεσμα είναι η νευρική δυσλειτουργία και ο χρόνιος νευροπαθητικός πόνος στην περιοχή νεύρωσης του πάσχοντος νεύρου. Σε ορισμένες θέσεις του σώματος, τα νεύρα είναι επιρρεπή σε συμπίεση από τους γύρω ανατομικούς ιστούς, σε παθολογικές αλλά και φυσιολογικές καταστάσεις. Σε μερικές περιπτώσεις συνυπάρχει και συμπίεση αγγείων, με αποτέλεσμα την εμφάνιση σημείων και συμπτωμάτων από την ελάττωση της περιφερικής αιματικής κυκλοφορία.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><br style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\"><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Συμπτώματα Συμπίεσης νευρών στα άνω άκρα.</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Λαιμός</strong>– σύνδρομο θωρακικής εξόδου</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Ώμος</strong>– παγίδευση του υπερπλάτιου νεύρου</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Αγκώνας</strong>– παγίδευση του ωλένιου, μέσου και κερκιδικού νεύρου</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Καρπός</strong>– σύνδρομο καρπιαίου σωλήνα, παγίδευση ωλένιου νεύρου</li>\n</ul><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Συμπτώματα Συμπίεσης νευρών στα κάτω άκρα.</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Ισχίο</strong>– σύνδρομο απιοειδούς μυός, παραισθητική μηραλγία</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Κατώτερο άκρο</strong>&nbsp;– σύνδρομο διαμερίσματος</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\"><strong style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Πόδι</strong>– πελματιαία απονευρωσίτιδα, εν τω βάθει περονιαία νευρίτιδα, σύνδρομο ταρσιαίου σωλήνα</li>\n</ul><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><br style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\"><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Νευροπάθεια του υπερπλάτιαιου νεύρου</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΑΙΤΙΑ</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Συμπίεση του υπερπλάτιου νεύρου στην περιοχή της ωμοπλάτης. Αυτό μπορεί να συμβεί από βαριά τσάντα που κρεμιέται στον ώμο για μεγάλα χρονικά διαστήματα, ή από άμεση πλήξη από πτώση.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΑΝΑΤΟΜΙΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Το υπερπλάτιο νεύρο είναι κλάδος του βραχιόνιου πλέγματος και σχηματίζεται από την 5η και 6η αυχενική ρίζα. Τα νεύρο πορεύεται προς τα κάτω και πίσω και διέρχεται μέσα από το υπερπλάτιο τρήμα κάτω από τον εγκάρσιο σύνδεσμο. Δίνει αισθητική νεύρωση στον ώμο και κινητική νεύρωση στον υπερακάνθιο και υπακάνθιο μυ. Στην πορεία του συνοδεύεται από την υπερπλάτια αρτηρία και φλέβα.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΣΥΜΠΤΩΜΑΤΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο ασθενής αισθάνεται μια βαθιά έντονη&nbsp; πίεση στην περιοχή της ωμοπλάτης, που μπορεί να αντανακλά από την κορυφή της ωμοπλάτης προς τον ώμο. Υπάρχει ευαισθησία στην πίεση του υπερπλάτιου τρήματος. Κίνηση του ώμου με ανασήκωση του βραχίονα προς το πρόσθιο θωρακικό τοίχωμα προκαλεί συνήθως πόνο στην ωμοπλάτη. Παρατεταμένη πίεση του νεύρου για μεγάλο χρονικό διαστήμα μπορεί να προκαλέσει αδυναμία μέχρι και ατροφία του υπερακάνθιου και υπακάνθιου μυός.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΔΙΑΓΝΩΣΤΙΚΕΣ ΕΞΕΤΑΣΕΙΣ</u></strong></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Ηλεκτρομυογράφημα<br style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">\n•&nbsp;&nbsp; &nbsp;Διαγνωστικός αποκλεισμός του υπερπλάτιου νεύρου με τοπικό αναισθητικό επιφέρει άμεση ανακούφιση από τον πόνο, για το διάστημα της διάρκειας δράσης του τοπικού αναισθητικού.</li>\n</ul><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong>&nbsp;</strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΘΕΡΑΠΕΙΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Ανάπαυση και απομάκρυνση – διακοπή επιβαρυντικών παραγόντων.</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Αποκλεισμός υπερπλάτιου νεύρου με τοπικό αναισθητικό και κορτιζόνη για την ελάττωση του οιδήματος και της φλεγμονής.</li>\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Φυσιοθεραπευτική αντιμετώπιση με αναλγητική αγωγή και διέγερση του νεύρου.<br style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">\n• &nbsp;Εφαρμογή παλμικής ραδιοσυχνότητας στο νεύρο.<br style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">\n•&nbsp;&nbsp; &nbsp;Χειρουργική αποσυμπίεση του νεύρου με διατομή του εγκάρσιου συνδέσμου που ασκεί την πίεση, όταν οι συντηρητικές ή λιγότερο επεμβατικές μέθοδοι αποτύχουν.</li></ul><div><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Σύνδρομο</u></strong> <strong><u>καρπιαίου</u></strong> <strong><u>σωλήνα </u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΑΝΑΤΟΜΙΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο εγκάρσιος καρπιαίος σύνδεσμος αποτελεί την οροφή του καρπιαίου σωλήνα μέσα από τον οποίο διέρχονται το μέσο νεύρο και οι καμπτήρες τένοντες των δακτύλων. Το μέσο νεύρο παρέχει αισθητική νεύρωση στο αντίχειρα, το δείκτη, το μέσο δάκτυλο και μισό από τον παράμεσο δάκτυλο, καθώς και κινητική νεύρωση σε μερικούς από τους μυς του χεριού.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><br style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΑΙΤΙΑ ΣΥΝΔΡΟΜΟΥ ΚΑΡΠΙΑΙΟΥ ΣΩΛΗΝΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η μείωση του χώρου του καρπιαίου σωλήνα από φλεγμονή και οίδημα, ή η υπερτροφία του συνδέσμου από την υπερβολική χρήση του, μπορεί να προκαλέσει μείωση του χώρου στον οποίο λειτουργεί το μέσο νεύρο και να προκληθεί δυσλειτουργία του.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΣΥΜΠΤΩΜΑΤΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο ασθενής αισθάνεται πόνο, μούδιασμα και τσιμπήματα σαν από βελόνες στα δάκτυλα που νευρώνονται από το μέσο νεύρο. Σε μερικούς ασθενείς ο πόνος ακτινοβολεί προς τον πήχυ, το βραχίονα, τον ώμο και το λαιμό. Στα δάχτυλα παρατηρείται έκπτωση της μυϊκής ισχύος. Ο πόνος μπορεί να αναπαραχθεί με πίεση του καρπιαίου σωλήνα με τον αντίχειρα του εξετάζοντος, για ένα περίπου λεπτό.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΔΙΑΓΝΩΣΤΙΚΕΣΣ ΕΞΕΤΑΣΕΙΣ</u></strong></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Ηλεκτρομυογράφημα</li>\n</ul><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΘΕΡΑΠΕΙΑ</u></strong></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Φυσιοθεραπευτική αντιμετώπιση βρίσκεται σε άρθρο μας για το καρπιαίο σωλήνα που μπορείτε να βρείτε στην ιστοσελίδα μας &nbsp;<a href=\"http://www.evagorasdamianou.com/\" style=\"color: rgb(44, 191, 217); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-stretch: 100%; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; line-height: 18px; outline-width: 0px; transition-duration: 0.3s; transition-property: color; transition-timing-function: cubic-bezier(0.42, 0, 0.58, 1);\">http://www.evagorasdamianou.com/</a></li>\n</ul><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong>&nbsp;</strong><strong><u>Νευροπάθεια του έξω μηροδερματικού νεύρου</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΑΙΤΙΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Προκαλείται α<strong>π</strong>ό συμπίεση του έξω μηροδερματικού νεύρου από το βουβωνικό σύνδεσμο συνήθως λόγω παχυσαρκίας ή εγκυμοσύνης ή από σφικτή ζώνη παντελονιού.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; text-decoration-line: underline;\">ΑΝΑΤΟΜΙΑ</span><br></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Το έξω μηροδερματικό νεύρο είναι κλάδος του οσφυϊκού πλέγματος και σχηματίζεται από κλάδους της Ο2 και Ο3 οσφυϊκής νωτιαίας ρίζας. Το νεύρο πορεύεται προς τα κάτω και διέρχεται κάτω από το βουβωνικό σύνδεσμο για να δώσει αμιγώς αισθητική νεύρωση στο δέρμα της πρόσθιο-πλάγιας επιφάνειας του μηρού μέχρι το γόνατο. Στο σημείο που το νεύρο περνάει κάτω από το βουβωνικό σύνδεσμο, μπορεί να υποστεί πίεση από το σύνδεσμο, ιδιαίτερα σε παχύσαρκα άτομα στα οποία ο σύνδεσμος είναι διογκωμένος. Ο βουβωνικός σύνδεσμος εκτείνεται από την πρόσθια άνω λαγόνια άκανθα ως την ηβική σύμφυση και είναι ψηλαφητός.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; text-decoration-line: underline;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><br style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span></span></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΣΥΜΠΤΩΜΑΤΑ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ο ασθενής παραπονείται για πόνο ενίοτε καυστικό, μούδιασμα και τσιμπήματα σαν από βελόνες στην πρόσθιο-πλάγια επιφάνεια του μηρού ως το γόνατο. Τα συμπτώματα μπορεί να αναπαραχθούν με την πίεση του βουβωνικού συνδέσμου περίπου 2 εκατοστά προς τα έσω της πρόσθιας άνω λαγόνιας άκανθας.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Ένα άλλο χαρακτηριστικό που συχνά παρατηρείται, είναι η βελτίωση των συμπτωμάτων με το κάθισμα στην καρέκλα και η επιδείνωση με την κατάκλιση σε ύπτια θέση και την έκταση της άρθρωσης του ισχίου. Αυτό μπορεί να εξηγηθεί μηχανικά, γιατί με την έκταση της άρθρωσης του ισχίου σε ύπτια θέση αυξάνεται η πίεση του νεύρου, επειδή αυτό έρχεται σε μεγαλύτερη επαφή με το βουβωνικό σύνδεσμο, σε αντίθεση με την καθιστή θέση στην οποία το νεύρο απομακρύνεται από το σύνδεσμο.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Συχνά η πάθηση η οποία προκαλεί δυσβάσταχτο πόνο, συγχέεται με την τροχαντηρίτιδα ή την ριζίτιδα από κήλη μεσοσπονδυλίου δίσκου, που πιθανόν να συνυπάρχει σε μαγνητική τομογραφία που ζητείται, αλλά στην ουσία πρόκειται για μια μορφολογική ανωμαλία χωρίς πραγματική ισχιαλγία από φλεγμονή ρίζας νεύρου.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η διαφοροδιάγνωση τίθεται με τη λήψη του καλού ιστορικού αφού χαρακτηριστικά η ισχιαλγία από κήλη δίσκου δεν ανακουφίζεται ποτέ με την καθιστική θέση και δεν επιδεινώνεται με την κατάκλιση. Επιπλέον ο ριζιτικός πόνος της μέσης σπανίως σταματά μέχρι το γόνατο. Επίσης η τροχαντηρίτιδα προκαλεί τοπικά πόνο στην περιοχή του μείζονα τροχαντήρα και όχι επιφανειακά στο δέρμα της πρόσθιο-πλάγιας επιφάνειας του μηρού μέχρι το γόνατο, περιοχή νεύρωσης του έξω μηροδερματικού νεύρου.</p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΔΙΑΓΝΩΣΤΙΚΕΣ ΕΞΕΤΑΣΕΙΣ</u></strong></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Αποκλεισμός του έξω μηροδερματικού νεύρου με τοπικό αναισθητικό, επιφέρει άμεση ανακούφιση από τον πόνο για τη χρονική διάρκεια δράσης του τοπικού αναισθητικού. Έτσι τίθεται η διάγνωση της παραισθητικής μηραλγίας<br style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">\n•&nbsp;&nbsp; &nbsp;Ηλεκτρομυογράφημα το οποίο καθορίζει το ύψος της βλάβης και της νευρική δυσλειτουργίας που στην περίπτωση της παραισθητικής μηραλγίας είναι περιφερικότερα της σπονδυλικής στήλης.</li>\n</ul><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΘΕΡΑΠΕΙΑ</u></strong></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Με την Φυσιοθεραπευτική προσέγγιση πάντα με την συνεργασία του ιατρού.</li>\n</ul><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>ΧΡΗΣΙΜΕΣ ΣΥΜΒΟΥΛΕΣ</u></strong></p><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; text-decoration-line: underline;\"><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span><span style=\"background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 400; text-decoration-line: none;\">\n</span></span></p><ul style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; list-style-position: inside; margin-bottom: 18px;\">\n<li style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">Απώλεια βάρους.<br style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">\n•&nbsp;&nbsp; &nbsp;Αποφυγή σφικτής περίδεση (ζώνης) στη μέση στη γραμμή του παντελονιού.<br style=\"line-height: 24px; list-style: disc inside url(&quot;http://www.evagorasdamianou.com/wp-content/themes/medicure/img/list_image.png&quot;);\">\n•&nbsp;&nbsp; &nbsp;Τοποθέτηση μαξιλαριού κάτω από τους μηρούς σε ύπτια θέση.</li></ul></div>', 'Τι είναι η Νευροπάθεια από παγίδευση νεύρου;\nΗ νευροπάθεια από παγίδευση νεύρου', 0, 'images/articles/691566136310.jpg', '2019-08-26 08:50:03', '2019-08-18 13:53:33', 0, 0, 1),
(39, 69, 'Στοχευόμενη Θεραπεία με την χρήση ραδιοσυχνότητες (Tecar)', '<p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Μεταφορά θεραπευτικής ενεργείας</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η συσκευή BTL-6000 TR-Therapy Elite μεταφέρει την υψηλής συχνότητας ηλεκτρομαγνητική ενέργεια στον επιθυμητό ιστό η οποία οδηγεί σε επιλεκτική θέρμανση του.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Χάρη σε αυτόν τον μηχανισμό οι ασθενείς βιώνουν ανακούφιση από τον στιγμιαίο πόνο, μυϊκή χαλάρωση , μείωση του οιδήματος καθώς και την αναγέννηση και επούλωση των ιστών.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Οι συχνότερες ενδείξεις περιλαμβάνουν : τον τοπικό μυϊκό σπασμό, τα trigger point, την μυαλγία, την τενοντίτιδα, τον αυχενικό πόνο, το μετά τραυματικό οίδημα κ.α.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η άμεση θεραπευτική επίδραση γίνεται αντιληπτή από τον ασθενή και διαρκεί για μεγάλο χρονικό διάστημα μετά τη θεραπεία. Ο συνδυασμός των χειρισμών του θεραπευτή καθώς και η χρήση της συσκευής BTL-6000 TR-Therapy Elite κάνει αυτή τη θεραπευτική μέθοδο την πιο σύγχρονη θεραπεία με εντυπωσιακά αποτελέσματα.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Ιατρικά αποτελέσματα</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><u>Μυϊκή Χαλάρωση</u></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Το ακριβές και επιδιωκόμενο αποτέλεσμα των ραδιοσυχνοτήτων στις ίνες ενός υπερτονικού μυ είναι η άμεση χαλάρωση τους. Η επίδραση της μυοχαλάρωσης βασίζεται κυρίως στην αγγειοδιαστολή , η οποία εμφανίζεται άμεσα κατά τη διάρκεια της θεραπείας και είναι υπεύθυνη για την υψηλότερη παροχή θρεπτικών ουσιών στον ιστό.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><u>Ανάπλαση και επούλωση ιστών</u></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Η βελτίωση του μεταβολισμού των ιστών είναι ένα φυσικό και πολύτιμο αποτέλεσμα της θεραπείας.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Οδηγεί σε ταχύτερη επούλωση του τραυματισμένου μαλακού ιστού και σε ταχύτερη απορρόφηση των αιματωμάτων μετά τον τραυματισμό.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><u>Μείωση οιδήματος</u></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Τα τοιχώματα των αρτηριδίων είναι σε αγγειοδιαστολή επιτρέποντας την αυξημένη τοπική αιμάτωση.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Αυτό οδηγεί σε αύξηση της λεμφικής παροχέτευσης και στη συνέχεια σε μείωση του οιδήματος.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><u>Ανακούφιση πόνου</u></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Το κύριο αποτέλεσμα της θεραπείας στοχευμένης ραδιοσυχνότητας είναι η ανακούφιση από τον πόνο, ως αποτέλεσμα της μυϊκής χαλάρωσης, της μείωσης του οιδήματος, της αναγέννησης των ιστών και της επούλωσης του.</p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\"><strong><u>Θερμικά αποτελέσματα</u></strong></p><span style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal;\">\n</span><p style=\"background-color: transparent; color: rgb(138, 138, 138); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 13px; font-variant-numeric: normal; font-variant-east-asian: normal; margin-bottom: 0px; padding-bottom: 18px;\">Τοπική υπερθερμία στην περιοχή θεραπείας εμφανίζεται στις θερμικές εικόνες που λήφθηκαν από μια υπέρυθρη κάμερα αμέσως μετά την θεραπεία, η υπερθερμία προκλήθηκε από την αγγειοδιαστολή, είναι ένα από τα αποτελέσματα της θεραπείας.</p>', 'Μεταφορά θεραπευτικής ενεργείας\nΗ συσκευή BTL-6000 TR-Therapy Elite μεταφέρει τη', 0, 'images/articles/691566136537.png', '2019-08-26 08:50:11', '2019-08-18 13:56:09', 0, 0, 1);
INSERT INTO `article` (`id`, `partner_id`, `title`, `content`, `summary`, `popular`, `poster_img`, `updated_at`, `created_at`, `like`, `dislike`, `status`) VALUES
(40, 70, 'Ονυχομυκητιάσεις', '<div class=\"wpb_row vc_row  vc_row-fluid  mk-fullwidth-false  attched-false vc_row-fluid\" style=\'margin: 0px -15px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><div class=\"vc_col-sm-12 wpb_column column_container \" style=\"margin: 0px; padding: 0px 15px; border: 0px; vertical-align: baseline; font-size: 14px; position: relative; min-height: 1px; box-sizing: border-box; float: left; width: 1090px;\"><div class=\"mk-text-block  \" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; box-sizing: border-box; text-align: left;\"><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">Ονυχομυκητίαση (μύκητες στους όνυχες) είναι μια συχνή πάθηση που ξεκινά ως ένα λευκό ή κίτρινο σημείο κάτω από την άκρη του όνυχα και μπορεί να επηρεάσει ολόκληρο το νύχι τόσο στην εγγυς όσο και στη περιφερική περιοχή. Καθώς η μυκητίαση εμβαθύνει, μπορεί να αποχρωματίσει τον όνυχα, μπορεί να τον παχύνει ή/και να τον θρυμματίσει, καθώς επίσης να προσβάλει τα υπόλοιπα νύχια ή/και το δέρμα.</p><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\"></p></h5><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59be8445a5c\" style=\"margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; text-align: left; letter-spacing: 0px;\"><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τα νύχια με μύκητες παρουσιάζονται συνήθως με:</span></h3><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box;\"></div><ul style=\"margin: 0px 0px 1em 1.5em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; list-style: disc; text-align: justify;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Πάχυνση</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Εύθραυστα ή τραχύ</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Παραμορφωμένα</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Θαμπά χωρίς λάμψη</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Κίτρινα, καφέ ή/και άσπρα</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Άσχημη οσμή</li></ul><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">Τέλος, μπορεί να παρουσιάζονται με αποκόλληση από το δέρμα (υπονύχιο) και το νύχι παρουσιάζεται κούφιο.</p><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\"></p></h5><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59be8445b53\" style=\"margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; text-align: left; letter-spacing: 0px;\"><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τι είναι οι μύκητες;</span></h3><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box;\"></div><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">Οι Ονυχομυκητιάσεις προκαλούνται συνήθως από έναν μύκητα δερματόφυτο (Trichophyton rubrum ή Trichophyton interdigitale).&nbsp;Είναι μικροσκοπικοί οργανισμοί που δεν χρειάζονται το φως του ήλιου για να επιβιώσουν.&nbsp;Ζουν σε θερμό, υγρό περιβάλλον, όπως πισίνες, ντους, αποδυτήρια, γυμναστήρια και μπορεί να εισβάλουν στο δέρμα μέσω μικροσκοπικών περικοπών που δεν μπορούμε να δούμε με γυμνό μάτι αλλά και μέσω ενός μικρού διαχωρισμού μεταξύ του όνυχα και του δέρματος.&nbsp;Επίσης, εισβάλουν κυρίως σε άτομα όπου τα νύχια τους εκτίθενται συχνά σε ζεστό, υγρό και σκοτεινό περιβάλλον.</p><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\"></p></h5><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59be8445c1f\" style=\"margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; text-align: left; letter-spacing: 0px;\"><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τα άτομα που είναι σε αυξημένο κίνδυνο να αναπτύξουν μύκητες στα νύχια είναι:</span></h3><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box;\"></div><ul style=\"margin: 0px 0px 1em 1.5em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; list-style: disc; text-align: justify;\"><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Ηλικιωμένα άτομα, όπου έχουν μειωμένη ροη αίματος στα πόδια και έχουν εκτεθεί με τα χρόνια σε περισσότερα είδη μυκητών</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Άτομα που παρουσιάζουν αυξημένη εφίδρωση</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Άντρες με οικογενειακό ιστορικό</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Άτομα που εργάζονται σε υγρό περιβάλλον</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Άτομα που χρησιμοποιούν υποδήματα ή και κέλτες που δεν αερίζονται ή και δεν απορροφούν τον ιδρώτα</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Ζώντας με κάποιον που έχει μύκητες στα πόδια ή στα νύχια</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Το περπάτημα χωρίς παπούτσια σε υγρούς κοινόχρηστους χώρους όπως πισίνες, γυμναστήρια και ντους</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Έχοντας μύκητες στα δέρμα (Πόδι του αθλητή athlete’s foot)</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Έχοντας σκασίματα στο δέρμα ή μια πάθηση του δέρματος όπως η ψωρίαση</li><li style=\"margin: 0px 0px 0px 0.85em; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px;\">Έχοντας Διαβήτη, ή προβλήματα με την κυκλοφορία του αίματος, αποδυναμωμένο ανοσοποιητικό σύστημα ή σε παιδιά&nbsp; ή σε άτομα με το σύνδρομο Down</li></ul><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box;\"></div></h5></div></div></div><div class=\"wpb_row vc_row  vc_row-fluid  mk-fullwidth-false  attched-false vc_row-fluid\" style=\'margin: 0px -15px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><div class=\"vc_col-sm-12 wpb_column column_container \" style=\"margin: 0px; padding: 0px 15px; border: 0px; vertical-align: baseline; font-size: 14px; position: relative; min-height: 1px; box-sizing: border-box; float: left; width: 1090px;\"><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box;\"></div><div class=\"mk-shortcode mk-padding-shortcode\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; box-sizing: border-box; height: 60px;\"></div><div class=\"clearboth\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box;\"></div></h5><div class=\"mk-text-block  \" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; box-sizing: border-box; text-align: left;\"><h3 style=\"margin: 0px 0px 10px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 24px; color: rgb(58, 49, 113); text-transform: none;\">Θεραπεία με Λέιζερ/Laser για μύκητες στα νύχια των Ποδιών</h3><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">To Lunula laser βασίζεται σε τεχνολογία λέιζερ χαμηλής έντασης και παρέχει αποτελεσματική θεραπεία στη ονυχομυκητίαση χωρίς τους κινδύνους και τις επιπλοκές που μπορεί να προκαλέσουν άλλες θεραπείες. Συνδυάζει δυο διαφορετικά μήκη κύματος, το ένα στα 405 nm για άμεση μυκητοκτόνο δράση και το άλλο στα 635nm διεγείροντας το ανοσοποιητικό συστήματα και την αιμάτωση, ενισχύοντας έτσι την αυτό-ιάση των νυχιών μέσα σε σχετικά σύντομο διάστημα (μέσα σε τρεις μήνες πρώτες ενδείξεις).</p><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">Σε μια πρόσφατη μελέτη, σε δείγμα 105 νυχιών, οι ερευνητές παρατήρησαν αύξηση του υγιούς νυχιού κατά 30% ( 5 μμ ) σε διάστημα 3 μηνών ενώ 37% ( 6,1μμ ) σε διάστημα 6 μηνών, ενισχύοντας την εγκυρότητα και την αξιοπιστία του Lunula Laser για την θεραπεία της Ονυχομυκητίασης.</p><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">Έχει σχεδιαστεί ειδικά για χρήση από επαγγελματίες υγείας, όπου απαιτεί λίγο χρόνο θεραπείας, χωρίς τη παρέμβαση του χειρίστη, με προκαθορισμένο χρόνο θεραπείας (12 λεπτά για κάθε πόδι) και δοσολογία εξαγωγής ενέργειας φωτός. Η καινοτόμος αυτή θεραπεία παρέχει αποτελεσματική ανακούφιση από τον πόνο, εάν υπάρχει, και η αντιαισθητική εικόνα του μύκητα των νυχιών αποκαθίσταται με την ανάπτυξη ενός υγιούς και όμορφου όνυχα σε σχετικά σύντομο χρονικό διάστημα.</p><p style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; text-align: justify;\">Η θεραπεία με laser δεν προκαλεί καθόλου πόνο αλλά και καμία παρενέργεια, όμως ο Ποδολόγος θα κρίνει εάν είστε σε ευάλωτες ομάδες ατόμων που δεν ενδείκνυται η χρήση λέιζερ.<br>Το πρωτόκολλο της θεραπεία της ονυχομυκητίασης των νυχιών γίνεται με το Λέιζερ Lunula στον όνυχα που έχει προσβληθεί με μύκητα, 2 φορές μέσα σε 1 εβδομάδα και 2 ακόμα θεραπείες για τις επόμενες 20 ημέρες, ολοκληρώνοντας έτσι ένα κύκλο θεραπείας. Εάν κρίνει ο Ποδολόγος σας ότι χρειάζεται και δεύτερο κύκλο θεραπείας τότε επαναλαμβάνεται με τον ίδιο τρόπο με χρονικό διάστημα ενάμισι μήνα από την ολοκλήρωση του 1ου κύκλου. Το πρωτόκολλο της θεραπείας έχει αναπτυχθεί σε συνδυασμό με ιατρούς Erchonia Corporation Researches και σύμβουλοι της IRB.</p></h5></div></div></div><h5 style=\'margin: 0px 0px 8px; text-align: left; color: rgb(64, 64, 64); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 16px; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'></h5>', 'Ονυχομυκητίαση (μύκητες στους όνυχες) είναι μια συχνή πάθηση που ξεκινά ως ένα λ', 0, 'images/articles/701566162588.jpg', '2019-08-26 08:50:19', '2019-08-18 21:09:52', 0, 0, 1),
(41, 70, 'Πτερναλγία', '<p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Η πτέρνα είναι ένα ειδικά κατασκευασμένο μέρος του σώματος μας έτσι ώστε να απορροφά τους κραδασμούς όταν περπατάμε ή όταν τρέχουμε. Ο πόνος στη πτέρνα, στις περισσότερες των περιπτώσεων οφείλετε στους επαναλαμβανόμενους τραυματισμούς που ασκούνται σε αυτή, σε μεγαλύτερη ταχύτητα απ’ ότι το σώμα μπορεί να αντεπεξέλθει. Υπάρχουν και περιπτώσεις που οι πόνοι στη πτέρνα μπορεί να προκαλούνται λόγω προηγουμένων τραυματισμών στη χαμηλή οσφύ ή/και από εκφυλιστικές/φλεγμονώδεις παθήσεις των αρθρώσεων.</p><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></p><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11cabb\" style=\'margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τι πρέπει να κάνω εάν έχω πόνο στη πτέρνα;</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Εάν ο πόνος είναι έντονος και παραμείνει για αρκετές μέρες ή/και εβδομάδες εμποδίζοντας σας να κάνετε τις καθημερινές δραστηριότητες σας, τότε είναι καλύτερα να ζητήσετε τη γνώμη του Ποδολόγο ή του Ορθοπεδικού ιατρού σας. Αυτό είναι αναγκαίο γιατί υπάρχουν διάφορες παθήσεις που μπορεί να προκαλούν πόνο στη πτέρνα και μπορεί να οφείλονται από διαφορετικές αιτίες που ίσως χρίζουν διαφορετικής αντιμετώπισης και θεραπείας.</p><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></p><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11cb65\" style=\'margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Σε ποιο επαγγελματία υγείας ή ιατρό να απευθυνθώ;</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Μέρος της ακαδημαϊκής εκπαίδευσης των Ποδολόγων είναι και οι παθήσεις της πτέρνας του άκρου πόδα, τα αίτια που την προκαλούν αλλά και οι αποτελεσματικοί&nbsp; τρόποι αντιμετώπισης της, τόσο βραχυπρόθεσμα όσο και μακροπρόθεσμα.</p><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></p><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11cc1d\" style=\'margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τι μπορεί να προκαλέσει πόνο στη πτέρνα;</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Οι πιο κάτω παθήσεις είναι μερικές από τις συνηθέστερες που μπορεί να προκαλέσουν το πόνο στη πτέρνα:</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11ccd6\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(α) Πελματιαία Απονευρωσίτιδα</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Είναι η πιο σύνηθες πάθηση που μπορεί να προκαλέσει το πόνο στη πτέρνα λόγω ρήξης των μαλακών μορίων της πελματιαίας περιτονίας, η οποία εκφύετε από το οστούν της πτέρνας και καταφύεται στις βάσεις των δάκτυλων. Ο πόνος παρουσιάζεται κυρίως στα πρώτα στάδια της βάδισης μετά από ξεκούραση και κυρίως στο πρώτο βήμα της ημέρας. Μπορεί να παρουσιαστεί σε άτομα κάθε ηλικίας. Η θεραπεία απαιτεί διατάσεις και ειδικά ορθοτικά πέλματα (ορθοπεδικοί πάτοι) τα οποία μπορούν να αλλάξουν αποτελεσματικά τη μηχανική λειτουργία του ποδιού σας και κατ’ επέκταση τη μείωση της πίεσης και του πόνου στη πτέρνα του ποδιού.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11cd98\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(β) Σύνδρομο Ταρσαίου Σωλήνα</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Σε αυτή την περίπτωση υπάρχει κάψιμο, πόνος ή/και αιμωδία (μούδιασμα) στη πτέρνα και στην έσω καμάρα/κάμψη του ποδιού. Επίσης μπορεί να υπάρχει έλλειψη της αίσθησης. Αυτό οφείλετε στη πίεση του κνημιαίου νεύρου το οποίο περνά στο έσω μέρος του ποδιού και κτυπώντας το μπορεί να προκαλέσει το λεγόμενο σημείο Tinel’s.&nbsp; Η χρήση ορθοτικών πελμάτων στα παπούτσια σας μπορεί να αλλάξει τη μηχανική λειτουργιά του ποδιού σας και να μειώσει σημαντικά τη πίεση στο νεύρο, τους πόνους αλλά και τις ενοχλήσεις.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11ce52\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(γ) Θυλακίτιδα πτέρνας</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Είναι μια φλεγμονή που δημιουργείται στη πτέρνα. Σε αυτή τη περίπτωση ο πόνος είναι στο κέντρο ακριβώς της πτέρνας (πελματιαία επιφάνεια) και χειροτερεύει με το πέρας της ημέρας. Φαρμακευτική αγωγή και υπέρηχοι μπορούν βραχυπρόθεσμα να μειώσουν τον πόνο όμως για μακρόχρονη λύση στο πρόβλημα, είναι αναγκαία η χρήση ορθοτικών πελμάτων.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11cf09\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(δ) Χρόνια Φλεγμονή της Ορογόνου Θύλακος της Πτέρνας</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Προκαλείται μετά από βαριά πρόσκρουση της πτέρνας ή λόγω ατροφίας του ορογόνου θύλακος της πτέρνας που μπορεί να προκαλέσει πόνους κατά την ορθοστασία και κατά τη βάδιση&nbsp; που χειροτερεύει με το πέρας της ημέρας.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11cfc7\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(ε) Κάταγμα Καταπόνησης</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Μπορεί να προκληθεί μετά από τραυματισμό, π.χ. μετά από πτώση. Εάν υπάρχει υποψία για κάταγμα τότε ενδείκνυται μια ακτινογραφία η οποία θα επιβεβαιώσει τη διάγνωση και θα δήξει την έκταση του κατάγματος αλλά και την ανάλογη θεραπευτική αγωγή. Σε αυτή την περίπτωση η συμβολή ορθοπεδικού χειρουργού είναι αναγκαία.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11d077\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(ζ) Πτερνιαία Αποφυσίτιδα</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Αυτή η πάθηση παρουσιάζεται σε δραστήρια παιδιά μεταξύ ηλικίας των 8-12 χρονών. Αυτό προκαλείται λόγω παροδικής μείωσης της αιμάτωσης στο οστούν της πτέρνας από επαναλαμβανόμενη καταπόνηση εφελκυσμού από τον Αχίλλειο Τένοντα με αποτέλεσμα τον έντονο πόνο και τη λεγόμενο Οστεοχονδρίτιδα. Με την επαναφορά της αιμάτωσης επέρχεται και η αποκατάσταση.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beb11d129\" style=\'margin: 0px 0px 16px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">(η) Αχίλλειος Τενοντίτιδα</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Προκαλείται όταν ασκούνται αυξημένες πιέσεις στον Αχίλλειο Τένοντα που έχει ως αποτέλεσμα τη ρήξη μερικών ινών του τένοντα. Αυτές οι ρήξεις μπορεί να υποστούν υποτροπές και μπορεί να προκαλέσουν οίδημα που έχει ως αποτέλεσμα τη δημιουργία φλεγμονής.&nbsp; Η θεραπεία απαιτεί ειδικές ασκήσεις διατάσεων και ορθοτικά πέλματα για μείωση της πίεσης στον Αχίλλειο τένοντα.</p>', 'Η πτέρνα είναι ένα ειδικά κατασκευασμένο μέρος του σώματος μας έτσι ώστε να απορ', 0, 'images/articles/701566162636.png', '2019-08-26 08:50:27', '2019-08-18 21:10:46', 0, 0, 1);
INSERT INTO `article` (`id`, `partner_id`, `title`, `content`, `summary`, `popular`, `poster_img`, `updated_at`, `created_at`, `like`, `dislike`, `status`) VALUES
(42, 70, 'Αρθρίτιδα στα Πόδια', '<p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Η αρθρίτιδα είναι μια γενική ορολογία που χρησιμοποιείται για φλεγμονή στις αρθρώσεις. Πολλοί άνθρωποι που έχουν αρθρίτιδα, υποφέρουν από πόνους και δυσκολία στη διακίνηση. Υπάρχουν πάνω από 200 διαφορετικούς τύπους αρθρίτιδας. Η αρθρίτιδα μπορεί να επηρεάσει άτομα κάθε ηλικίας, όμως παρουσιάζεται συνήθως σε ηλικιωμένα άτομα. Οι συνηθέστερες μορφές αρθρίτιδας είναι η Οστεοαρθρίτιδα και η Ρευματοειδής αρθρίτιδα οι οποίες πολύ συχνά επηρεάζουν τα πόδια.</p><h3 style=\'margin: 0px 0px 10px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 24px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h3><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beec35f69\" style=\'margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Οστεοαρθρίτιδα</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Η οστεοαρθρίτιδα&nbsp; είναι η συνηθέστερη μορφή αρθρίτιδας και προκαλείται λόγω τραύματος και τριβής στο χόνδρο της άρθρωσης. Δυσκαμψία και πόνος στις αρθρώσεις είναι τα κύρια συμπτώματα. Επηρεάζει περισσότερο τα ηλικιωμένα άτομα λόγω γενικής φθοράς και αλλοίωσης ή λόγω τραυματισμού και πολύ συχνά στα πόδια.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beec36009\" style=\'margin: 20px 0px 18px; font-weight: inherit; line-height: 16px; overflow-wrap: break-word; font-size: 16px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 16px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Πάντα υπάρχει λύση</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Αν έχετε είδη διαγνωστεί με Οστεοαρθρίτιδα, η&nbsp;θεραπεία πιθανός να εμπεριέχει μη στεροειδή αντιφλεγμονώδες φάρμακα, ορθοπεδικά υποδήματα, ορθοπεδικούς πάτους ή άλλη βοήθεια. Ζώντας όμως με πόνο είναι αναπόφευκτο και πάντα υπάρχει κάτι που μπορεί να βοηθήσει στη κατάσταση σας, γι αυτό μιλήστε με το Ιατρό ή το Ποδολόγο σας για το τι μπορεί να αλλάξει έτσι ώστε να βελτιωθεί η ποιότητα ζωής σας.</p><h3 style=\'margin: 0px 0px 10px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 24px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h3><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beec36092\" style=\'margin: 10px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Ρευματοειδής Αρθρίτιδα</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Η Ρευματοειδής αρθρίτιδα είναι από τις πιο σοβαρές μορφές αρθρίτιδας όμως είναι λιγότερο διαδεδομένη και παρουσιάζεται πολύ περισσότερο στις γυναίκες από τους στους άνδρες. Σε αυτή τη μορφή αρθρίτιδας, η φλεγμονές στις αρθρώσεις οφείλονται στο γεγονός ότι το ανοσοποιητικό σύστημα στρέφεται εναντίον του σώματος του, προκαλώντας αυτές τις φλεγμονές.</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beec36118\" style=\'margin: 20px 0px 18px; font-weight: inherit; line-height: 16px; overflow-wrap: break-word; font-size: 16px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 16px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τι μπορείτε να κάνετε;</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Υπάρχουν πολλά που μπορείτε να κάνετε για να βοηθήσετε τον εαυτό σας. Συστηματική άσκηση, κατάλληλα υποδήματα (παπούτσια), μείωση του σωματικού σας βάρους εάν έχετε περιττά κιλά και μια σωστή διατροφή μπορεί να κάνουν σημαντική διαφορά στη ζωή σας. Μιλήστε με το Ρευματολόγο σας η με το Ποδολόγο σας για το πώς μπορείτε σωστά να διαχειριστείτε την υγεία των ποδιών σας. Για περισσότερες πληροφορίες επισκεφτείτε την ιστοσελίδα<em style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; font-style: italic;\">&nbsp;<a style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; color: rgb(58, 49, 113); text-decoration: none; overflow-wrap: break-word; outline: 0px;\" href=\"http://www.rheumatism.org.cy/\" target=\"_blank\">www.rheumatism.org.cy</a></em></p><h4 style=\'margin: 0px 0px 9px; text-align: justify; color: rgb(58, 49, 113); text-transform: none; line-height: 1.3em; text-indent: 0px; letter-spacing: normal; font-family: \"Open Sans\"; font-size: 18px; font-style: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59beec361a1\" style=\'margin: 20px 0px 18px; font-weight: inherit; line-height: 16px; overflow-wrap: break-word; font-size: 16px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 16px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Περισσότερη Διαφώτιση</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Εάν έχετε διαγνωστεί με Ρευματοειδή αρθρίτιδα, είναι αναγκαίος ο συστηματικός έλεγχος των ποδιών σας τουλάχιστον μια φορά το χρόνο, με βάση τις Εθνικό Ινστιτούτου Κλινικής Αριστείας του Ηνωμένου Βασιλείου (NICE). Με την εξέλιξη των ιατρικών υπηρεσιών, περισσότερη βοήθεια είναι τώρα διαθέσιμη όσο ποτέ για βοήθεια σε άτομα με προβλήματα στα πόδια. Έγκυρες επιστημονικές έρευνες έχουν αποδείξει ότι η χρήση ορθοπεδικών υποδημάτων (παπουτσιών) και ορθοτικών πελμάτων (ορθοπεδικών πάτων), μπορεί να βοηθήσει σημαντικά την υγεία των ποδιών σε άτομα με αρθρίτιδα, κυρίως στα πρώτα χρόνια μετά τη διάγνωση της αρθρίτιδας. Ο Ποδολόγος μπορεί να βοηθήσει με την ευθυγράμμιση των αρθρώσεων σας, έτσι ώστε να μειωθούν οι πόνοι στα πόδια σας με τη χρήση ειδικών πάτων και υποδημάτων. Εάν όμως η αρθρίτιδα είναι σε προχωρημένο στάδιο, ίσως να χρειάζεται χειρουργικής επέμβασης από ορθοπεδικό χειρουργό.</p>', 'Η αρθρίτιδα είναι μια γενική ορολογία που χρησιμοποιείται για φλεγμονή στις αρθρ', 0, 'images/articles/701566162696.jpg', '2019-08-26 08:50:35', '2019-08-18 21:11:48', 0, 0, 1),
(43, 70, 'Κάλοι στα πόδια', '<p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Όταν περπατάμε ή όταν στεκόμαστε, η πτέρνα είναι το σημείο που πρώτα φορτίζεται με το βάρος του σώματος μας. Στη συνέχεια το βάρος μεταφέρεται στο μέσο και πρόσθιο τμήμα της πελματιαίας επιφάνειας, όπου το πέλμα παρουσιάζει ένα αυξημένο πάχος, για να αντέξει την αυξημένη πίεση κατά την βάδιση. Όταν αυτή η πίεση γίνει υπερβολική, τότε το σώμα αντιδρά/υπερκερατώνει την περιοχή και έχει ως αποτέλεσμα την δημιουργία κάλου, σκληροδερμίας ή τύλου.</p><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Ένας κάλος ή τύλωμα, εμφανίζεται σε περιοχές αυξημένης πίεσης και τριβής είτε λόγω της μηχανικής λειτουργίας του ποδιού κατά τη βάδιση που επιβαρύνει συγκεκριμένα σημεία του ποδιού, είτε λογω χρήσης στενών υποδημάτων, είτε λόγω δυσμορφίας/παραμόρφωσης του ποδιού, είτε λόγω του τύπου δέρματος του ατόμου. Παρουσιάζεται κυρίως στις ραχιαίες επιφάνειες των δακτύλων, στις πτέρνες, στις μεσοδακτύλιες περιοχές αλλά και στην πελματιαία επιφάνεια των μεταταρσίων (κάτω από τα δάκτυλα).</p><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Λόγω δερματικών αλλαγών που υπόκεινται με την πάροδο του χρόνου, τα ηλικιωμένα άτομα παρουσιάζουν κάλους κυρίως στις περιοχές των μεταταρσίων (κάτω από τα δάκτυλα).</p><h4 style=\'margin: 0px 0px 9px; font-weight: bold; line-height: 1.3em; overflow-wrap: break-word; font-size: 18px; color: rgb(58, 49, 113); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'></h4><h3 class=\"mk-shortcode mk-title-box  \" id=\"fancy-title-5d59bf2fcc674\" style=\'margin: 30px 0px 18px; font-weight: inherit; line-height: 18px; overflow-wrap: break-word; font-size: 18px; color: rgb(255, 255, 255); text-transform: none; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: 0px; orphans: 2; text-align: left; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'><span style=\"margin: 0px; padding: 4px 0px; border: 0px; vertical-align: baseline; font-size: 18px; border-radius: 15px; background-color: rgba(96, 96, 96, 0.69); box-shadow: rgba(96, 96, 96, 0.69) 8px 0px 0px, rgba(96, 96, 96, 0.69) -8px 0px 0px; line-height: 34px;\">Τι πρέπει να κάνω εάν έχω κάλο στα πόδια;</span></h3><div class=\"clearboth\" style=\'margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 14px; display: block; visibility: hidden; clear: both; overflow: hidden; width: 0px; height: 0px; box-sizing: border-box; color: rgb(37, 37, 37); font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\'></div><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Ενδείκνυται η ήπια χρήση ελαφρόπετρας ή ειδικής λίμας για το δέρμα μετά το μπάνιο αλλά και η καθημερινή χρήση κρέμας ενυδάτωσης για να μαλακώνει τη περιοχή. Εάν έχετε Σακχαρώδη Διαβήτη, προβλήματα με την κυκλοφορία του αίματος, ή άλλες σοβαρές ασθένειες, πρέπει προτού χρησιμοποιήσετε ελαφρόπετρα ή λίμα να συμβουλευτείτε τον ιατρό ή Ποδολόγο σας.</p><p style=\'margin: 0px 0px 20px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 16px; overflow-wrap: break-word; color: rgb(37, 37, 37); line-height: 1.66em; font-family: \"Open Sans\"; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; text-align: justify;\'>Εάν ο κάλος σας είναι επώδυνος τότε πιθανόν να χρειάζεται καθαρισμό / αφαίρεση από Ποδολόγο. Η διαδικασία είναι συνήθως ανώδυνη και σύντομη. Επίσης, ο Ποδολόγος θα μπορεί να σας προτείνει τρόπους πρόληψης της δημιουργίας του κάλου αλλά και αποτελεσματικής θεραπείας του.</p>', 'Όταν περπατάμε ή όταν στεκόμαστε, η πτέρνα είναι το σημείο που πρώτα φορτίζεται', 0, 'images/articles/701566162754.jpg', '2019-08-26 08:50:42', '2019-08-18 21:12:47', 0, 0, 1),
(44, 156, 'Το ιδανικό μέρος για να απολαύσεις την γευστική ζωή  με φίλους και οικογένεια', '<span style=\"display: inline !important; float: none; background-color: rgb(245, 243, 237); color: rgb(66, 66, 66); font-family: Lato,serif; font-size: 26px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">Η δημιουργία και έμπνευση του εστιατορίου προήλθε από το Πινάκιο. </span><span class=\"Apple-style-span\" style=\"box-sizing: border-box; color: rgb(66, 66, 66); font-family: Lato,serif; font-size: 26px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><strong style=\"box-sizing: border-box; font-weight: bold;\">Οι αρχαίοι Έλληνες σπάνια χρησιμοποιούσαν στα τραπέζια τους μαχαίρια και πιρούνια.</strong></span><span style=\"display: inline !important; float: none; background-color: rgb(245, 243, 237); color: rgb(66, 66, 66); font-family: Lato,serif; font-size: 26px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"> </span><span class=\"Apple-style-span\" style=\"box-sizing: border-box; color: rgb(66, 66, 66); font-family: Lato,serif; font-size: 26px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">Όταν οι τροφές ήταν υδαρείς, χρησιμοποιούσαν κουτάλια που τα ονόμαζαν «μόστρα» ή «γλώσσα». Χρήση κουταλιού μπορούσε να έχει κι ένα κομμάτι από κόρα ψωμιού, που το έλεγαν «μυστίλλη». Συνήθως οι αρχαίοι έπαιρναν τα φαγητά με τα δάχτυλα, τα οποία αργότερα καθάριζαν με μια ειδική ζύμη ή ψίχα ψωμιού, αφού δε χρησιμοποιούσαν πετσέτες. Το νερό, το κρασί, όπως και τον κυκεώνα τα έπιναν σε κύλικες (κύπελλα), που συνήθως ήταν πήλινα. Συχνά χρησιμοποιούσαν ξύλινα ή και μεταλλικά κύπελλα, ενώ στα πλούσια συμπόσια μπορούσε κάποιος να δει ασημένια ή και χρυσά κύπελλα. Τα πιάτα φαγητού τα ονόμαζαν ΠΙΝΑΚΙΑ και τα μικρότερα πιάτα «βατάνια».</span><span class=\"Apple-style-span\" style=\"box-sizing: border-box; color: rgb(66, 66, 66); font-family: Lato,serif; font-size: 26px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; orphans: 2; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">&nbsp; Έτσι γεννήθηκε το εστιατόριο μας!</span>', 'Η δημιουργία και έμπνευση του εστιατορίου προήλθε από το Πινάκιο. Οι αρχαίοι Έλλ', 0, 'images/articles/1561572294201.jpg', '2019-11-21 16:04:01', '2019-10-28 20:23:39', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adv_img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `img_url`, `adv_img`) VALUES
(1, 'ΕΣΤΙΑΤΟΡΙΑ', 'img/services/event.png', 'img/services/service_ad/event.jpg'),
(2, 'ΚΑΦΕΤΕΡΕΙΕΣ', 'img/services/seminar.png', 'img/services/service_ad/seminar.jpg'),
(3, 'ΓΥΜΝΑΣΤΗΡΙΑ', 'img/services/mind.png', 'img/services/service_ad/gym.jpg'),
(4, 'ΠΑΙΔΟΤΟΠΟΙ', 'img/services/discount.png', 'img/services/service_ad/discount.png'),
(5, 'BAR - CLUB', 'img/services/education.png', 'img/services/service_ad/education.jpg'),
(6, 'ΚΑΤΑΣΤΗΜΑΤΑ', 'img/services/medical.png', 'img/services/service_ad/medical.jpg'),
(7, 'ΥΠΗΡΕΣΙΕΣ', 'img/services/insurance.png', 'img/services/service_ad/insurance.jpg'),
(8, 'ΟΜΟΡΦΙΑ', 'img/services/car.png', 'img/services/service_ad/car.jpg'),
(9, 'ΥΓΕΙΑ', 'img/services/game.png', 'img/services/service_ad/game.png'),
(10, 'AYTOKINHTO', 'img/services/shop.png', 'img/services/service_ad/eshop.png'),
(11, 'ΨΥΧΑΓΩΓΙΑ', 'img/services/future.png', 'img/services/service_ad/future.jpg'),
(12, 'ΑΡΤΟΠΟΙΕΙΑ & ΖΑΧΑΡΟΠΛΑΣΤΙΚΗ', 'img/services/service.png', 'img/services/service_ad/service.jpg'),
(13, 'ΦΥΤΩΡΙΑ', 'img/services/service.png', 'img/services/service_ad/service.jpg'),
(14, 'ΛΙΑΝΙΚΟ ΕΜΠΟΡΙΟ', 'img/services/service.png', 'img/services/service_ad/service.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `area_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_cnt` int(11) DEFAULT NULL,
  `discount_info` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promote` tinyint(4) DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `slogan` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `communication` text COLLATE utf8mb4_unicode_ci,
  `company_video` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double NOT NULL DEFAULT '35.095192',
  `longitude` double NOT NULL DEFAULT '33.20343',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `logo_url`, `link_url`, `area_id`, `category_id`, `discount_cnt`, `discount_info`, `promote`, `description`, `slogan`, `user_id`, `communication`, `company_video`, `facebook`, `youtube`, `twitter`, `instagram`, `linkedin`, `address`, `latitude`, `longitude`, `email`, `created_at`, `updated_at`) VALUES
(97, 'SENSOSPA', 'images/logo/611565633488.jpg', NULL, '1', '8', 20, 'σε όλες τις υπηρεσίες', 0, 'σύντομα κοντά σας', 'Health & Beauty Center', 61, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-12 23:11:28', '2019-08-13 13:28:33'),
(98, 'PROTECH ELECTRICS LTD', 'images/logo/621565689545.jpg', NULL, '3', '7', 0, 'Σύντομα Κοντά σας', 0, 'Σύντομα Κοντά σας', 'σύντομα κοντά σας', 62, 'Protech@diaskedazw.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-13 14:45:45', '2019-08-13 14:45:45'),
(99, 'ΠΑΝΤΕΛΗΣ ΓΕΩΡΓΙΟΥ', 'images/logo/631566079063.jpg', NULL, '3', '10', 15, '10% - 15% αναλόγως της υπηρεσείας του συνεργείου.', 0, 'Σύντομα κοντά σας', 'Σύντομα κοντά σας', 63, 'pantelisgeorgiou@diaskedazwdiscounts.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-18 02:57:43', '2019-08-18 02:57:43'),
(100, 'ΠΑΡΚΟ ΠΑΝΩ ΠΟΛΕΜΙΔΙΩΝ', 'images/logo/651566125374.jpg', 'http://www.joyfulkid.com/listings/parko-pano-polemidion/', '3', '4', 0, 'Σύντομα κοντά σας', 0, 'The Park is part of Pano Polemidia Community. The cafeteria there caters for your parties and gatherings.', 'Σύντομα κοντά σας.', 65, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Parko-Pano-Polemidion-1607461709529308/', NULL, NULL, NULL, NULL, 'Πάνω Πολεμίδια, Κύπρος', 34.7091547, 32.99164780000001, 'panikospanayi74@gmail.com', '2019-08-18 15:49:34', '2019-11-27 19:06:24'),
(101, 'ΓΛΥΚΟΠΩΛΕΙΟ', 'images/logo/661566128872.jpg', NULL, '3', '12', 20, '20% σε όλες τις υπηρεσίες.', 0, 'Το σπίτι του πατροπαράδοτου λουκουμά. Ένα χώρος με αυθεντικό χαρακτήρα αφού στηρίζει την νοοτροπία των κυπριακών παραδοσιακών γλυκών.Και οχι μόνο!', 'Το σπίτι του πατροπαράδοτου λουκουμά..', 66, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/glykopolio.com.cy/', NULL, NULL, NULL, NULL, 'Νικόδημου Μυλωνά 1, Λεμεσός 3095', 35.095192, 33.20343, 'info@glykopolio.com', '2019-08-18 16:47:52', '2019-11-29 21:01:33'),
(102, 'SYNERGY HEALTH & NUTRITION', 'images/logo/671566131143.jpg', NULL, '3', '7', 0, 'Σύντομα κοντά σας.', 0, 'Σύντομα κοντά σας.', 'Σύντομα κοντά σας.', 67, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-18 17:25:43', '2019-08-18 17:25:43'),
(103, 'E&G PAROUSIASI DECORATION', 'images/logo/681566132881.jpg', 'https://parousiasi.com', '3', '15', 25, 'σε όλες τις υπηρεσίες της επιχείρησης.', 0, 'E&G Parousiasi Decoration Ltd proudly offers some of the highest quality products and worldwide known brands thanks to its partnership with leading manufactures.', 'expect nothing less than perfection!', 68, 'We’d love to help you out! Our competent, friendly and quick professional Customer Service is at your disposal.', 'videos/upload/681566133909.mp4', 'https://www.facebook.com/parousiasi.decoration/', 'https://www.youtube.com/channel/UCry3FJaRtgaaT8O81xdvMRg', NULL, NULL, NULL, 'Πάφου 16, Λεμεσός, Κύπρος', 34.6742275, 33.01582399999995, 'info@parousiasi.com', '2019-08-18 17:54:41', '2019-11-28 21:27:16'),
(104, 'ΦΥΣΙΚΟΘΕΡΑΠΕΥΤΗΡΙΟ ΕΥΑΓΟΡΑΣ Μ. ΔΑΜΙΑΝΟΥ', 'images/logo/691566135551.jpg', 'http://www.evagorasdamianou.com/', '3', '9', 20, 'σε όλες τις υπηρεσίες του Φυσικοθεραπευτηριου.', 0, 'Το φυσικοθεραπευτήριο μας προσφέρει ειδικά προγράμματα αποκατάστασης σε αθλητικές κακώσεις, ορθοπεδικές παθήσεις, αυχενικά σύνδρομα, δισκοπάθειες, αρθρίτιδες, ισχιαλγίες, οσφυαλγίες, σκολιώσεις, εγκεφαλικά και ημιπληγίες που προσαρμόζονται σύμφωνα με τις ιδιαιτερότητες του καθενός.', 'Στον προσεγμένο επαγγελματικό μας χώρο, αλλά και με κατ’ οίκον επισκέψεις, παρέχουμε την άριστη αποκατάσταση του προβλήματος σας.', 69, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/evagorasmdamianou/', NULL, NULL, NULL, NULL, 'Αγίας Φυλάξεως 269, Λεμεσός, Κύπρος', 34.7096717, 33.02446039999995, 'damianouevagoras@gmail.com', '2019-08-18 18:39:11', '2019-11-29 21:13:51'),
(105, 'PODIATRIC DIAGNOSIS', 'images/logo/701566162074.jpg', 'http://www.podiatricdiagnosis.com', '3', '9', 25, 'Σε όλες τις υπηρεσίες ποδιατρικής.', 0, 'Podiatric Diagnosis clinic provides podiatric care to people in need, using high-tech medical equipment and focuses on the prevention and treatment of diabetic foot complications (ulceration/amputation) with the use of custom-made foot orthotics and diabetic sandals, named Ortho-Flops®.', 'EXERCISE CHANGES your DNA in ways that MAKE you LIVE LONGER', 70, 'Send us a message with your questions or if you would like to book an appointment.', NULL, 'https://www.facebook.com/Podiatric-Diagnosis-Clinic-445952772109951/', NULL, NULL, NULL, NULL, 'marathovounou 8', 35.095192, 33.20343, 'test@diaskedazwdiscounts.com', '2019-08-19 02:01:14', '2019-11-21 20:29:43'),
(106, 'ENJOY LIFE GYM', 'images/logo/711566166568.png', NULL, '3', '3', 0, 'semi personal training\r\nαπο €120 => €80\r\nGroup: απο η ώρα 8 το\r\nβράδυ και μετά...απο €80\r\n=> € 60\r\nαπο 13:00 – 16:00 απο\r\n€80 => € 50', 0, 'At Enjoy Life, the focus is you. I will teach you safe and effective exercise that will improve your performance and fitness, decrease pain and injury and increase your vitality. There is not just one way to train you. It’s about finding what you need so you can achieve your goals – be it injury prevention, athletic performance, physical fitness, or just better health.', 'Imagination is Limitless so Do your WORKOUT', 71, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/enjoylifegym/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-08-19 03:16:08', '2019-08-19 03:21:43'),
(107, 'HOUSE OF HAIRCUTS', 'images/logo/721566224288.jpeg', NULL, '3', '8', 20, 'on treatments.', 0, 'Σύντομα κοντά σας', 'Σύντομα κοντά σας', 72, 'Σύντομα κοντά σας', NULL, 'https://www.facebook.com/HouseofHaircuts/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-19 19:18:08', '2019-08-19 19:18:08'),
(108, 'ΣΥΝΕΡΓΕΙΟ ΑΥΤΟΚΙΝΗΤΩΝ ΧΡΙΣΤΟΣ ΣΥΡΙΜΗΣ', 'images/logo/751566380760.jpg', NULL, '1', '10', 0, 'Σύντομα κοντά σας', 0, 'Σύντομα κοντά σας', 'Σύντομα κοντά σας', 75, 'Σύντομα κοντά σας', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-21 14:46:00', '2019-08-21 14:46:00'),
(109, 'BATTLE GROUND', 'images/logo/761566382309.jpg', NULL, '3', '11', 0, 'Πρωί επίσκεψη\r\n3 ώρες FREE\r\n5 ευρώ 4 ώρες\r\n10 ευρώ 9 ώρες', 0, 'BattlegroundCY is a gaming area located in the heart of Limassol, established on 2018.   \r\nSince then, Battleground ranks among the top gaming areas and internet cafes in the island.         \r\nWith a clear mission to educate the Cypriot gaming community and offer opportunities to  e-sport athletes, Battleground sets strong foundations for the future.\r\nA warm and friendly atmosphere is the main philosophy of our operation, while our two floors of 21 gaming computers and our private PlayStation room will keep you and your friends busy for hours!\r\nOur target is to provide a comfortable place with ultra-fast fiber internet and powerful computers,  for every gamer in Limassol, to play non-stop and enjoy every minute of it!\r\nCome and see for yourself! Join the action and become a part of the Battleground family!', 'Σύντομα κοντά σας', 76, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/battlegroundcy/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-08-21 15:11:49', '2019-08-21 15:27:18'),
(110, 'SIFOUNAS RACING PARTS AND DETAILING CENTER', 'images/logo/771566384154.png', NULL, '3', '10', 10, 'ανάλογα του είδους της προσφερόμενης υπηρεσίας.', 0, 'Πλύσιμο αυτοκινήτων · Αγορές και λιανική πώληση', 'Σύντομα κοντά σας.', 77, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/pg/sifounasdetailing/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-21 15:42:34', '2019-08-21 15:42:34'),
(111, 'SPA TONIC', 'images/logo/781566386939.jpg', 'https://www.spatoniccyprus.com/', '4', '8', 20, 'σε όλες τις υπηρεσίες SPA.', 0, 'Spa Tonic is a family run health club and spa based at the Crown Resorts Horizon in Coral Bay, Paphos. Over the last 10 years we have been building up a great reputation in fitness, beauty and hair, to make Spa Tonic the professional and friendly place it is today.Our facilities include: Fully air-conditioned gym, 25+ fitness classes, including Aqua Aerobics, Trampoline, Zumba (kids and adult), Yoga, Pilates, Dancercise and TRX training.\r\n\r\n', 'We look forward to seeing you!', 78, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/781566388242.mp4', 'https://www.facebook.com/SpaTonicHealthClub/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-08-21 16:28:59', '2019-08-21 17:43:21'),
(112, 'VETERINARY SURGEON S.K. Kyriakidi', 'images/logo/791566489392.jpg', 'https://hakunamatatavet.wixsite.com/veterinaryclinic', '1', '9', 0, 'Σύντομα κοντά σας', 0, 'Veterinary Clinic has been serving clients and their pets from Nicosia and surrounding areas. Our clinic is composed of a reception waiting area, a pet shop, a surgery,  examination room.We offer emergency service, boarding and grooming. We speak Greek, English and Russian languages.', 'Σύντομα κοντά σας', 79, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/S.K.Kyriakidi/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-22 20:56:32', '2019-08-22 20:56:32'),
(113, 'LAGROME TRADING LTD', 'images/logo/801566636119.jpg', 'lagrome.com.cy', '3', '10', 25, 'σε όλα τα ελαστικά Yokohama, Nexen, Torque, Sunfull.\r\nΔωρεάν μέτρημα τιμονιού με την αγορά 4 ελαστικών.', 0, 'Η Lagrome Trading Ltd ειδικεύεται στην εισαγωγή ελαστικών στην Κύπρο από το 1987.\r\nΚοντά μας θα βρείτε ελαστικά καθώς και υψηλής ποιότητας υπηρεσίες σε όλη την Κύπρο, μεταξύ άλλων και κινητή υπηρεσία ελαστικών ....', 'Χονδρικό Εμπόριο Ειδών Αυτοκινήτου.', 80, 'Για επικοινωνία σε σχέση με τη χονδρική αγορά, με ελαστικά, με ζάντες, με Μπαταρίες, επικοινωνήστε μαζί μας με μήνυμα και θα σας απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Yokohama-Motorsport-Cyprus-1772300859749089/', NULL, NULL, NULL, NULL, 'Ιαπετού, Άγιος Αθανάσιος, Κύπρος', 34.7048495, 33.067297300000064, 'lagrome@cytanet.com.cy', '2019-08-24 13:41:59', '2019-11-28 21:02:15'),
(114, 'PIMP MY BODY', 'images/logo/811566638534.jpg', NULL, '3', '6', 15, 'σε όλα τα προϊόντα.', 0, 'Σύντομα κοντά σας.', 'Σύντομα κοντά σας.', 81, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/www.pimpmybody.com.cy', NULL, NULL, NULL, NULL, 'Γλάδστωνος, Λεμεσός, Κύπρος', 34.681742, 33.04594159999999, 'evaggeloumichalis45@gmail.com', '2019-08-24 14:22:14', '2019-11-28 21:09:58'),
(115, 'DJ NICK SOUND AND VISION', 'images/logo/821566639687.jpg', NULL, '3', '6', 0, 'Σύντομα κοντά σας', 0, 'Looking for a Professional DJ for your next event? We provide the highest quality DJ Services in the market for your wedding, private party or event!', 'It\'s not about the loudness. It\'s all about the quality.', 82, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/821566639450.mp4', 'https://www.facebook.com/dj1nick/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-24 14:41:27', '2019-08-24 14:41:27'),
(116, 'THRILLER BOUTIQUE', 'images/logo/831566640920.jpg', NULL, '3', '6', 10, 'Εκτός περιόδου εκπτώσεων.', 0, 'Κατάστημα αντρικών ενδυμάτων.', 'Σύντομα κοντά σας.', 83, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Thriller-Boutique-716248691732769/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-24 15:02:00', '2019-08-24 15:02:00'),
(117, 'IL CASTELLO', 'images/logo/841566648249.jpg', NULL, '3', '1', 0, 'Στην καρδιά του κάστρου.', 0, 'Σύντομα κοντά σας.', 'Στην καρδιά του κάστρου.', 84, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/841566647958.mp4', 'https://www.facebook.com/ilcastellocaferestaurant/', NULL, NULL, NULL, NULL, 'Ειρήνης 23, Λεμεσός, Κύπρος', 34.6731616, 33.04203630000006, 'ilcastello2004@gmail.com', '2019-08-24 17:04:09', '2019-11-29 14:19:03'),
(118, 'PARIS SHOES', 'images/logo/851566649498.jpg', NULL, '3', '6', 10, 'Σε όλα τα προϊόντα εκτός και αν υπάρχει άλλη προσφορά', 0, 'Kατάστημα λιανικής πώλησης.', 'Σύντομα κοντά σας.', 85, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/851566649861.mp4', 'https://www.facebook.com/n.nparisshoes/', NULL, NULL, NULL, NULL, 'Ομόνοια, Λεμεσός, Κύπρος', 34.6670005, 33.0127645, 'eiriniasialem7@gmail.com', '2019-08-24 17:24:58', '2019-11-27 21:53:01'),
(119, 'STALO HAIR STUDIO', 'images/logo/861566652352.jpg', NULL, '3', '8', 0, 'Κομμωτήριο', 0, 'Κομμωτήριο', 'Σύντομα κοντά σας', 86, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/861566652168.mp4', 'https://www.facebook.com/stalohairstudio/', NULL, NULL, NULL, NULL, '50 Street, Κάτω Πολεμίδια, Κύπρος', 34.6806281, 33.001261399999976, 'stalo.rousou.84@gmail.com', '2019-08-24 18:12:32', '2019-11-28 20:56:47'),
(120, 'JACK`S PIZZA', 'images/logo/871566653260.jpg', 'http://jackspizzalimassol.com', '3', '1', 0, 'Πιτσαρία', 0, 'Great taste all the time, Proudly serving Since 1975', 'Serving Mouth - Watering Pizza since 1975', 87, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/871566653283.mp4', 'https://www.facebook.com/jackspizzalimassol/', NULL, NULL, NULL, NULL, 'Μιχαήλ Μιχαηλίδη 15, Λεμεσός, Κύπρος', 34.6867464, 33.0457887, 'androseid@live.com', '2019-08-24 18:27:40', '2019-11-29 18:53:30'),
(121, 'TAPS IRISH PUB BAR & GRILL', 'images/logo/881566657060.jpg', 'http://www.tapsbarlimassol.com/', '3', '5', 15, 'στον τελικό λογαριασμό', 0, 'Ιρλανδική παμπ.', 'Σύντομα κοντά σας.', 88, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/tapsirishpub/', NULL, NULL, NULL, NULL, 'B1, Αγ. Τύχων, Κύπρος', 34.7095781, 33.133730300000025, 'Info@tapsbarlimassol.com', '2019-08-24 19:31:00', '2019-11-29 18:07:02'),
(122, 'WOLFMAN GYM AND FITNESS CLUB', 'images/logo/891566657990.jpg', NULL, '3', '3', 10, 'στην μηνιαία συνδρομή Δεν ισχυεί για 3μηνες, 6μηνες και 12 μηνες συνδρομή Υπηρεσίες Personal Training χωρίς εξτρα χρέωση.', 0, 'Γυμναστήριο - Κέντρο σωματικής ευεξίας.', 'Σύντομα κοντά σας', 89, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/pages/Wolfman-Gym/535986056509360', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-24 19:46:30', '2019-08-24 19:46:30'),
(123, 'RUMOURS BAR', 'images/logo/901566667041.jpg', 'www.rumourscy.com/', '3', '5', 15, 'σε όλες τις υπηρεσίες της επιχείρησης.', 0, 'Located in the heart of Limassol’s Tourist Area, Rumours Bar has built and earned its reputation as one of the Islands\' favourite coastal bars since it opened its doors in 2000. The space has been developed throughout the years to create a distinctly unique, yet intimate atmosphere, with state-of-the-art lighting and sound technology.', 'The best drinks are the ones\r\nwe have with friends!', 90, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/rumoursbarcy/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-24 22:17:21', '2019-08-24 22:17:21'),
(124, 'BUFFALO WINGS & RINGS', 'images/logo/911566729550.jpg', 'www.bwr.com.cy', '3', '1', 20, 'Στον τελικό λογαριασμό.', 0, 'We’re a club-level sports restaurant experience where everyone is a VIP, worthy of the ultimate sports dining experience. With bright, inviting dining rooms, 50+ TVs, elevated fan experiences, chef-inspired recipes and of course our signature wings, Buffalo Wings & Rings is the ideal experience for socializing with friends & family over sports.', 'Since 1984', 91, 'TALK TO US, WHETHER YOU HAD A GREAT EXPERIENCE OR HAVE SOME FEEDBACK TO PROVIDE — WE’RE LISTENING', NULL, 'https://www.facebook.com/BuffaloCyprus/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-25 15:39:10', '2019-08-25 15:39:10'),
(125, 'MONASTIRAKI', 'images/logo/921566730525.jpg', NULL, '3', '1', 15, 'Στον τελικό λογαριασμό + 1 καράφα κρασί ΔΩΡΕΑΝ ανά 4 άτομα.', 0, 'Στον τελικό λογαριασμό + 1 καράφα κρασί ΔΩΡΕΑΝ ανά 4 άτομα.', 'Σύντομα κοντά σας', 92, 'Στον τελικό λογαριασμό + 1 καράφα κρασί ΔΩΡΕΑΝ ανά 4 άτομα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-25 15:55:25', '2019-08-25 15:55:25'),
(126, 'GUEST BAR', 'images/logo/931566731123.jpg', NULL, '3', '5', 20, 'Στα ροφήματα και στα ποτά. Εξαιρείται στο φαγητό και events.', 0, 'Σε ένα περιβάλλον που θυμίζει παλιά Αθήνα σας περιμένουμε να πιούμε παρέα, με μεζέδες και μουσική που θυμίζουν εκείνες τις αναμνήσεις γεύσεων και ήχων που δεν θέλουμε να ξεχάσουμε παρέα με ζωντανή μουσική!', 'Visit our hidden Paradise.', 93, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Guestmezebar/', NULL, NULL, NULL, NULL, 'Ζικ Ζακ 3036, Limassol, Κύπρος', 34.673263, 33.04289700000004, 'guestmezebar@gmail.com', '2019-08-25 16:05:23', '2019-11-29 20:09:26'),
(127, 'KINGZ PRODUCTION', 'images/logo/941566746882.jpg', NULL, '3', '7', 0, '€20 η πρώτη ώρα\r\n€10 η επόμενες\r\nΚάθε 3 ώρες η 4 η\r\nδωρεάν', 0, 'Ενας χωρος που σας προσφερει υπεροχο ηχο για να εκφραστειτε ελευθερα', 'Σύντομα κοντά σας', 94, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/pages/Kingz-Productions/786383051533721', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, 'KingzProductions.studios@gmail.com', '2019-08-25 20:28:02', '2019-11-29 19:38:31'),
(128, 'MAHMOUTS', 'images/logo/951566748353.jpg', NULL, '3', '1', 10, 'μόνο στους\r\nμεζέδες , δεν\r\nσυμπεριλαμβάνεται το\r\nποτό', 0, 'Η Κυπριακή ταβέρνα Mahmouts  προσφέρει μεζέδες με μόνο  €10 το άτομο.', 'Κυπριακή ταβέρνα με πλούσιους μεζέδες.', 95, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Mahmout-s-kebab-house-822452237927627/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-08-25 20:52:33', '2019-08-25 21:01:20'),
(129, 'G.b SAKURAYA SUSHI and HEALTHY', 'images/logo/961566749868.jpg', NULL, '1', '1', 10, 'Σε όλα τα προϊόντα.', 0, 'High-quality ingredients are the single most important factor in making our sushi premium, achieving value for money for our customers.', 'Fresh Sushi Everyday.', 96, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', '', 'https://www.facebook.com/thesushiworkshop/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-25 21:17:48', '2019-08-25 21:17:48'),
(130, 'Ανδρέας Κλεάνθους Goldsmith LTD', 'images/logo/971566750935.jpg', NULL, '1', '6', 0, 'JEWELLERIES', 0, 'Σύντομα κοντά σας.', 'JEWELLERIES', 97, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-25 21:35:35', '2019-08-25 21:35:35'),
(131, 'COFFEE TREE CUP', 'images/logo/981566756086.jpg', NULL, '1', '2', 10, 'Μοσχαμυρίζει καφές!', 0, 'Μοσχαμυρίζει καφές!', 'Μοσχαμυρίζει καφές!', 98, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/981566755966.mp4', 'https://www.facebook.com/coffeetreecup/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-25 23:01:26', '2019-08-25 23:01:26'),
(132, 'KROKAS RANCH', 'images/logo/991566756978.jpg', NULL, '1', '11', 0, 'HORSE EXPERIENCE', 0, 'Farm', 'HORSE EXPERIENCE', 99, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/991566756891.mp4', 'https://www.facebook.com/Krokas-Ranch-1911572579090536/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-25 23:16:18', '2019-08-25 23:16:18'),
(133, 'ΠΑΛΙΑ & ΣΗΜΕΡΑ', 'images/logo/1001567000410.jpg', NULL, '3', '5', 0, 'Cafeteria · Coffee shop · Bar', 0, 'Since 2015 that we started our shop , we use fresh local products. The shop is located in the city center of Limassol near the castle. \r\nLike good old days.', 'Since 2015.', 100, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Paliakaisimera/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-08-28 18:53:30', '2019-08-28 18:53:30'),
(134, 'PANORAMIC BALLOON DESIGNS', 'images/logo/1021567007080.jpg', 'http://www.panoramic.com.cy/', '3', '6', 0, 'Parties events \r\ndecorations newborn ball\r\noons  toys', 0, 'Η πολύχρονη εμπειρία μας, η σκληρή δουλειά, ο επαγγελματισμός και η ποιότητα των προιόντων μας είναι αυτά που μας κρατάνε στη κορυφή . Από το 1991 το κατάστημά μας προσφέρει μια μεγάλη ποικιλία από μπουλουκάκια, είδη για πάρτυ, βρεφικά, παιδικά παιχνίδια, ευχητήριες κάρτες και φυσικά όλων των ειδών διακοσμήσεις με μπαλόνια όπως γενέθλια, βαπτίσεις, γάμους, πάρτυ, εγκαίνια και ό,τι άλλο μας ζητηθεί. Σας καλωσορίζουμε σε ενα φανταστικό κόσμο γεμάτο με δημιουργίες από μπαλονια.!!!', 'Since 1991 Panoramic Balloon Designs Ltd. is the first company to introduce the art of balloon decorations in Cyprus.', 102, 'If you are interested by any of our products and/or decorations\r\ndo not hesitate to contact us using the form below. One of our\r\nrepresentatives will contact you back as soon as possible.', NULL, 'https://www.facebook.com/Panoramic.Balloon/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-08-28 20:44:40', '2019-08-28 21:04:31'),
(135, 'CRAZY JOE\'S', 'images/logo/1041567616708.jpg', NULL, '3', '2', 0, 'Coffee to go', 0, 'Crazy joes coffee open 7 days', 'open 7 days', 104, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-04 22:05:08', '2019-09-04 22:05:08'),
(136, 'FRENCH DEPOT', 'images/logo/1051567618833.jpg', NULL, '1', '6', 0, 'A LITTLE PIECE OF FRANCE', 0, 'When French Depot first opened, became point of reference for those were looking for great French wines. Now after 10 years, our commitment with our clients, to provide the best of what France has to offer in wines and delicatessen, is stronger than ever.', 'A LITTLE PIECE OF FRANCE', 105, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/FrenchDepot/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-04 22:40:33', '2019-09-04 22:40:33'),
(137, 'SURVIVAL FORCE', 'images/logo/1061567721473.jpg', NULL, '3', '3', 15, 'KRAV MAGA', 0, 'Η SURVIVAL FORCE ΕΙΝΑΙ ΜΙΑ ΣΥΓΧΡΟΝΗ ΑΚΑΔΗΜΙΑ ΑΥΤΟΑΜΥΝΑΣ ΚΑΙ ΕΚΓΥΜΝΑΣΗΣ .\r\nΣΕ ΕΝΑ ΟΜΟΡΦΟ ΚΑΙ ΕΙΔΙΚΑ ΔΙΑΜΟΡΦΩΜΕΝΟ ΧΩΡΟ ΓΙΝΟΝΤΑΙ ΕΚΠΑΙΔΕΥΣΕΙΣ ΑΥΤΟΑΜΥΝΑΣ ΚΑΙ ΔΥΝΑΜΙΚΑ ΠΡΟΓΡΑΜΜΑΤΑ ΕΚΓΥΜΝΑΣΗΣ ΚΑΙ ΕΝΔΥΝΑΜΩΣΗΣ ΜΥΑΛΟΥ ΚΑΙ ΣΩΜΑΤΟΣ .', 'TRAIN FIGHT SURVIVE', 106, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/survivalforcecy/', NULL, NULL, NULL, NULL, 'Άγιου Νεκτάριου 17, Λεμεσός, Κύπρος', 34.6891972, 33.03819320000002, 'marinos.gavr@gmail.com', '2019-09-06 03:11:13', '2019-11-26 15:54:02'),
(138, 'EVOM Computer Solutions', 'images/logo/1071567722017.jpg', NULL, '3', '6', 20, 'ΣΤΑ ΑCCESORIES', 0, 'Service store for PC\'s, Laptops, VGA Reflow, Mobile Phones and Tablets.', 'We fix any device', 107, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/EVOM-Computers-Solutions-372049699640321/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-09-06 03:20:17', '2019-09-06 03:24:50'),
(139, 'PSAROPOULOS FISH TAVERN', 'images/logo/1081567722792.jpg', NULL, '4', '1', 5, 'Στον τελικό λογαριασμό.', 0, 'Psaropoulos has been a family owned business for over 30 years.\r\nIt offers an idyllic view of latchi harbor with a variety of local, and fish specialties.', 'a unique and unforgettable experience.', 108, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Psaropoulos-Fish-Tavern-1619124325025766/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-06 03:33:12', '2019-09-06 03:33:12'),
(140, 'SUGAR & COFFEE', 'images/logo/1091567725031.jpg', NULL, '3', '2', 0, 'SUGAR & COFFEE', 0, 'SUGAR & COFFEE', 'Coffee', 109, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, 'Ιδαλίου 44, Λεμεσός, Κύπρος', 34.68367190000001, 33.03612470000007, 'andreaspier@outlook.com.gr', '2019-09-06 04:10:31', '2019-11-26 15:22:22'),
(141, 'TRIPPERS BAR', 'images/logo/1101567725682.jpg', 'http://www.trippersbar.com/', '3', '5', 15, 'ΣΕ ΣΥΝΔΥΑΣΜΟ\r\nΜΕ ΤΙΣ ΗΔΗ\r\nΥΠΑΡΧΟΥΣΕΣ\r\nΠΡΟΣΦΟΡΕΣ\r\nMAXIMUM', 0, 'ΣΕ ΣΥΝΔΥΑΣΜΟ\r\nΜΕ ΤΙΣ ΗΔΗ\r\nΥΠΑΡΧΟΥΣΕΣ\r\nΠΡΟΣΦΟΡΕΣ\r\nMAXIMUM', 'καλό φαγητό, ποτό, ποιοτική μουσική και αθλητικά γεγονότα.', 110, 'ΣΕ ΣΥΝΔΥΑΣΜΟ\r\nΜΕ ΤΙΣ ΗΔΗ\r\nΥΠΑΡΧΟΥΣΕΣ\r\nΠΡΟΣΦΟΡΕΣ\r\nMAXIMUM', NULL, 'https://www.facebook.com/Trippers-Limassol-1127603990599621/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-06 04:21:22', '2019-09-06 04:21:22'),
(142, 'AΝΟΔΟΣ', 'images/logo/1111567726355.jpg', 'https://allaboutlimassol.com/anodos', '3', '5', 0, 'LIVE ΜΟΥΣΙΚΗ', 0, 'LIVE ΜΟΥΣΙΚΗ', 'Περάστε αξέχαστα', 111, 'LIVE ΜΟΥΣΙΚΗ', NULL, 'https://www.facebook.com/anodoslivecy/', NULL, NULL, NULL, NULL, 'Ελευθερίας 132, Λεμεσός, Κύπρος', 34.6746626, 33.03808140000001, 'pamboszak@yahoo.com', '2019-09-06 04:32:35', '2019-11-26 15:16:51'),
(143, 'CROSSFIT COSMOS', 'images/logo/1121567726938.jpg', NULL, '3', '3', 0, '1 ΒΔΟΜΑΔΑ TRIAL', 0, 'CrossFit Cosmos follows the CrossFit philosophy and methodology. At GYMNASIUM, CrossFit Cosmos is delivered by its owner, Lambros Georgiou, who has an extensive fitness education and over 20 years of experience in New York.', 'This Is It...!', 112, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/crossfitcosmos/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-06 04:42:18', '2019-09-06 04:42:18'),
(144, 'AAB GRILL & KEBAB CORNER', 'images/logo/1131567727555.png', 'https://allaboutlimassol.com/aabgrillandkebabcorner', '3', '1', 0, 'Φαστφουντάδικο', 0, 'Ένας καινούργιος, όμορφος χώρος πλημμυρισμένος με την καθαρότητα του λευκού, το AAB GRILL & KEBAB CORNER δημιούργησε την πιο εύγευστη γωνία. Ανοιχτό καθημερινά εκτός Κυριακής, στο AAB GRILL & KEBAB CORNER, θα βρείτε όλες τις κλασσικές γεύσεις που αγαπάμε. Δοκιμάστε χορταστικές μερίδες κρεατικών, καλοψημένα και ζουμερά είδη σχάρας, αυθεντικές ελληνικές πίτες και ολόφρεσκες σαλάτες.', 'θα βρείτε όλες τις κλασσικές γεύσεις που αγαπάμε', 113, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/AAB-Grill-Kebab-Corner-1633673003573348/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-06 04:52:35', '2019-09-06 04:52:35'),
(145, 'MATINA FASHION', 'images/logo/1141567728455.jpg', NULL, '3', '6', 10, 'σε όλα τα προϊόντα εκτος απο τις εκπτώσεις.', 0, 'Κατάστημα', 'Σύντομα κοντά σας', 114, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-06 05:07:35', '2019-09-06 05:07:35'),
(146, 'COMIC BOOK PARADISE', 'images/logo/1151567779331.jpg', 'https://www.euro-comics.com/', '3', '6', 0, 'Βιβλιοπωλείο κόμικς', 0, 'Cyprus Comic Con is an annual, multi-genre convention full of exhilarating pop culture activities, including live performances, cosplay, artist exhibitions, gaming tournaments, panels, a film festival, exclusive shopping, international Special Guest stars and more!', 'something special for you', 115, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Comic-book-paradise-719393184862764/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-06 19:15:31', '2019-09-06 19:15:31'),
(147, 'NEW LINE', 'images/logo/1161567973550.jpg', NULL, '3', '8', 0, 'GELL απο €40 μόνο €30\r\nΣτρασάκια- σχεδιο \r\n€35\r\n2)Χτιστο\r\nνυχι/ψευτικο/σχεδιο/στρ\r\nασακια απο €45 μόνο €35\r\nΠεδικιούρ απο €20\r\nμόνο €15', 0, 'Mανικιούρ-πεντικιούρ', 'by Yioula Onisiforou', 116, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/yioulanewline/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-09-09 01:12:30', '2019-09-09 01:23:26'),
(148, 'MARIOS CHARI LTD', 'images/logo/1171567974854.jpg', 'http://www.marioschari.com/page/en/2/archikh', '3', '6', 0, 'τοποθετήσεις ξύλινων δαπέδων .', 0, 'Όλα τα προϊόντα και οι υπηρεσίες της εταιρείας μας καλύπτονται με εγγύηση, γι’ αυτό θα μας έχετε δίπλα σας και μετά την πώληση.', 'δίνοντας πάντα έμφαση στην τελειότητα.', 117, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/marioschariparquet/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-09 01:34:14', '2019-09-09 01:34:14'),
(149, 'DA VINCI BAR', 'images/logo/1181567978077.jpg', NULL, '3', '5', 10, 'for food ,drinks\r\nexluded shisha', 0, 'Σας καλωσορίζουμε στην επίσημη σελίδα του Da Vinci restaurant lounge cafe bar, στη καρδιά της Λεμεσού. Το καφεεστιατόρειο Da Vinci βρίσκετε σε ένα απο τα πιο πολυσύχναστα σημεία της πόλης μας τόσο το χειμώνα όσο και το καλοκαίρι.', 'ιδανικό για όλες τις ώρες', 118, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Davinciloungebarofficial/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-09 02:27:57', '2019-09-09 02:27:57'),
(150, 'ΜΑΡΙΕΛΛΑ ΑΝΔΡΕΟΥ ΗΛΙΑ', 'images/logo/1191567978828.png', 'https://marielladietcenter.webs.com', '3', '9', 15, 'Σε όλες τις υπηρεσίες.', 0, 'Καλωσορίσατε στην ιστοσελίδα μας.Εδω θα ενημερώνεστε για νέα στον τομέα της διατροφής.', 'Dieting is the only game where you win when you lose.', 119, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, 'Σύμης 4, Ζακάκι, Λεμεσός, Κύπρος', 34.6603062, 33.00307299999997, 'mariell_diet@hotmail.com', '2019-09-09 02:40:28', '2019-11-28 20:35:57'),
(151, 'Los Minos Cy', 'images/logo/1201567979802.png', NULL, '3', '6', 20, 'Σε όλα τα προϊόντα.', 0, 'Παιδικά ρούχα', 'Σύντομα κοντά σας', 120, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-09 02:56:42', '2019-09-09 02:56:42'),
(152, 'ADAMOS FISH TAVERN', 'images/logo/1211568039325.jpg', NULL, '3', '1', 0, 'Fish tavern', 0, 'Σύντομα κοντά σας', 'Φρέσκο Ψάρι', 121, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Adamos-Fish-Tavern-Gavernos-Beach-631937420154603/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-09 19:28:45', '2019-09-09 19:28:45'),
(153, 'INDUSTRY BAR & FOOD', 'images/logo/1221568043276.jpg', NULL, '3', '5', 0, 'Snack - Bar', 0, 'Snack - Bar', 'Σύντομα κοντά σας', 122, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/pages/Industry-Bar/288862787896941', NULL, NULL, NULL, NULL, 'Σαριπόλου 63, Λεμεσός, Κύπρος', 34.6752865, 33.043219799999974, 'info@industrybar.club', '2019-09-09 20:34:36', '2019-11-25 21:06:05'),
(154, 'SECUREXPERTS', 'images/logo/1231568043880.jpg', 'securexperts.com.cy', '3', '6', 0, 'ΣΥΣΤΗΜΑΤΑ ΑΣΦΑΛΕΙΑΣ', 0, 'ΣΥΣΤΗΜΑΤΑ ΑΣΦΑΛΕΙΑΣ', 'Εταιρεία στρατιωτικού εξοπλισμού', 123, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/SecureXperts-LTD-1668868656719941/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-09 20:44:40', '2019-09-09 20:44:40'),
(155, 'MORBIDEZZA', 'images/logo/1241568044560.png', 'https://www.beautynailhairsalons.com/CY/Limassol/519326594888955/Morbidezza-Beauty-Spot', '3', '8', 10, 'σε όλες τις\r\nυπηρεσίες του\r\nινστιτούτου.', 0, 'A LUXURY BEAUTY SPOT', 'Beauty Spot', 124, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Morbidezza-Beauty-Spot-519326594888955/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-09 20:56:00', '2019-09-09 20:56:00'),
(156, 'ΠΑΜΠΟΣ ΧΑΡΑΛΑΜΠΟΥΣ', 'images/logo/1271568394878.jpg', NULL, '3', '7', 15, 'Σε όλες τις υπηρεσίες', 0, 'ΨΥΧΤΙΚΟΣ(AIR-\r\nCONDITION) \r\nΥΔΡΑΥΛΙΚΟΣ', 'Σύντομα κοντά σας', 127, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-13 22:14:38', '2019-09-13 22:14:38'),
(157, 'LINGLONG TYRE', 'images/logo/1281568396413.jpg', 'http://www.tyreshop.com.cy/', '1', '10', 15, 'including fitting &amp;\r\nbalance', 0, 'Η εταιρία Γιάννης Κατσαμπάς Λτδ ιδρύθηκε το 1980, στη Λευκωσία. Αρχικά, η εταιρία δραστηριοποιήθηκε στον τομέα των εξαρτημάτων αυτοκινήτου. Στην συνέχεια, κινήθηκε στον τομέα των ζαντών αλουμινίου και ελαστικών αυτοκινήτου. Το 1998, ξεκίνησε την εισαγωγή της κινέζικης μάρκας LINGLONG.', 'Tyres - Alloy wheels - Car accessories', 128, 'For any inquiries please do not hesitate to contact us using the form below. One of our representatives will contact you as soon as possible.', 'videos/upload/1281568396259.mp4', 'https://www.facebook.com/Tyreshopcomcy/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-13 22:40:13', '2019-09-13 22:40:13'),
(158, 'THE HUB CAFE', 'images/logo/1291568397715.jpg', 'https://www.thehubcafe.eu/', '3', '2', 15, 'σε όλα τα\r\nπροιόντα', 0, 'At The Hub Café quality comes first and it is visible in all our products and services. It is not another coffee shop, it is the destination of experiencing coffee in all levels. Our blends are freshly made, having a full range of exclusive home-made selection and organic proposals. We endorse healthy living, trying to keep all the pleasure of a good taste and avoiding what is considered bad for the body.', 'visitors are falling in love with our tempting flavor!', 129, 'WE’D LOVE TO\r\nHEAR FROM YOU', 'videos/upload/1291568397518.mp4', 'https://www.facebook.com/thehubcafecy/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-13 23:01:55', '2019-09-13 23:01:55'),
(159, 'ΤΑΒΕΡΝΑ ΣΚΟΥΡΟΥΒΙΝΝΟΣ', 'images/logo/1301568398868.jpg', NULL, '3', '1', 10, 'Δευτέρα - Πέμπτη 4 άτομα και πάνω', 0, 'Receiving three Time Out Eating Awards(readers’ choice)whithin the last three years is no mean achievement! This is mainly due to the chef Yiannis,also the owner of the tavern; since 2001 he has been creating his inspirational dishes of more than 25 meze recipes which,together with his warm hospitality and plenty of Greek music make this a popular destination.', 'Every day Guitar music.', 130, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1301568398658.mp4', 'https://www.facebook.com/Skouruvinnos/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-13 23:21:08', '2019-09-13 23:21:08'),
(160, 'TΟ ΑΓΚΙΣΤΡΟ', 'images/logo/1311568406665.jpg', NULL, '3', '6', 15, 'σε όλα τα προϊόντα', 0, 'Κατάστημα ειδών ψαρέματος', 'ειδη αλειιας', 131, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/766982850313610/photos/p.778524169159478/778524169159478/?type=1&theater', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-14 01:31:05', '2019-09-14 01:31:05'),
(161, 'JULIA HAIR & BEAUTY SALON', 'images/logo/1321568410422.jpg', NULL, '3', '8', 25, 'ΚΕΡΑΤΙΝΗ ΑΠΟ €120 -\r\n€90', 0, 'Κομμωτήριο · Περιποίηση δέρματος · Μακιγέρ', 'Unisex', 132, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/La-Julia-Hair-Beauty-Salon-Unisex-996280980446502/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-14 02:33:42', '2019-09-14 02:33:42'),
(162, 'GPETFOOD', 'img/user-img/gpetfood.jpg', NULL, '1', '6', 20, 'σε όλα τα προϊόντα', 0, 'ΤΡΟΦΕΣ ΓΙΑ : ΣΚΥΛΟΥΣ, ΓΑΤΕΣ, ΚΟΥΝΕΛΙΑ, ΨΑΡΙΑ, ΠΟΥΛΙΑ.', 'Είδη για κατοικίδια', 133, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Gpetfood-241672926030633/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-14 02:45:29', '2019-09-14 02:45:29'),
(163, 'GENERAL FLOORING', 'images/logo/1341568416520.jpg', 'https://www.generalflooring.com.cy/', '1', '15', 0, 'Κατάστημα χαλιών & δαπέδων · Ανακαίνιση σπιτιού · Κατάστημα κουρτινών και περσίδων', 0, 'Στο κατάστημα μας θα βρείτε κουρτίνες, υφάσματα επίπλων, blinds, λευκά είδη, χαλία, παρκέ, πλαστικά πατώματα και wallpapers.', 'αγκαλιάζει το σπίτι σας', 134, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1341568416549.mp4', 'https://www.facebook.com/generalflooringcy/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-09-14 04:15:20', '2019-09-14 04:16:01'),
(164, 'ALETRI TAVERN', 'images/logo/1351568472781.jpg', 'https://aletri-tavern.business.site/', '3', '1', 10, 'ΣΤΟ ΤΕΛΙΚΟ\r\nΛΟΓΑΡΙΑΣΜΟ', 0, 'A Traditional Style Taverna serving excellent freshly cooked food from the traditional charcoal grill and oven. A warm and friendly atmosphere where guests are welcome to just have a drink from the bar or enjoy a meal.', 'Excellent value for money.', 135, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/aletritavern/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-14 19:53:01', '2019-09-14 19:53:01'),
(165, 'Luxury Beauty by Antonia', 'images/logo/1361568474072.jpg', 'https://2gis.com.cy/cyprus/firm/13089114698037254', '3', '8', 10, 'ΣΕ ΟΛΕΣ ΤΙΣ\r\nΥΠΗΡΕΣΙΕΣ', 0, 'Mανικιούρ-πεντικιούρ · Περιποίηση δέρματος · Μακιγέρ', 'Touch - Taste - Sound - Intuition', 136, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Luxury-Beauty-by-Antonia-187610358053973/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-14 20:14:32', '2019-09-14 20:14:32'),
(166, 'PEPPERONI PIZZA', 'images/logo/1371568487309.jpg', 'https://pepperonipizza.com.cy/', '3', '1', 0, 'Discover all our perfect dishes, crafted with love!', 0, 'AT OUR RESTAURANT, WE BRING YOU THE MOST AUTHENTIC RECIPES FOR A GREAT FOOD EXPERIENCE SINCE 1981.', 'THE AUTHENTIC ITALIAN TASTE', 137, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1371568487330.mp4', 'https://www.facebook.com/pepperonipizzacy/', NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-09-14 23:55:09', '2019-09-14 23:55:38'),
(167, 'ΑΝΘΙΜΟΣ ΣΤΑΥΡΟΥ', 'images/logo/1381568488470.jpg', NULL, '3', '10', 0, 'car tyre centre', 0, 'Σύντομα κοντά σας', 'car tyre centre', 138, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-15 00:14:30', '2019-09-15 00:14:30'),
(168, 'Γιάννη Φαίδωνος', 'images/logo/1391568488895.jpg', NULL, '3', '10', 20, 'σε όλες τις υπηρεσίες', 0, 'ΙΣΙΩΜΑΤΑ &\r\nΜΠΟΓΙΑΤΙΣΜΑΤΑ', 'ΙΣΙΩΜΑΤΑ &\r\nΜΠΟΓΙΑΤΙΣΜΑΤΑ', 139, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, 'Cyprus', 35.095192, 33.20343, '', '2019-09-15 00:21:35', '2019-09-15 00:37:21'),
(169, 'ΚΑΝΕΛΛΑ GRILL & BAR', 'images/logo/1401568489541.jpg', NULL, '3', '5', 0, 'Μπαρ και ψησταριά · Μπαρ · Εστιατόριο ευρωπαϊκής κουζίνας', 0, 'Μπαρ και ψησταριά · Μπαρ · Εστιατόριο ευρωπαϊκής κουζίνας', 'Μπαρ και ψησταριά', 140, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1401568489352.mp4', 'https://www.facebook.com/kanellabar/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-15 00:32:21', '2019-09-15 00:32:21'),
(170, 'ΚΩΣΤΑΣ ΜΑΛΑΚΤΟΣ', 'images/logo/1411568562506.png', NULL, '1', '10', 0, 'ΚΕΝΤΡΟ ΕΠΙΔΙΟΡΘΩΣΗΣ ΚΑΙ ΦΡΟΝΤΙΔΑΣ ΔΕΡΜΑΤΟΣ', 0, 'ΚΕΝΤΡΟ ΕΠΙΔΙΟΡΘΩΣΗΣ ΚΑΙ ΦΡΟΝΤΙΔΑΣ ΔΕΡΜΑΤΟΣ', 'ΚΕΝΤΡΟ ΕΠΙΔΙΟΡΘΩΣΗΣ ΚΑΙ ΦΡΟΝΤΙΔΑΣ ΔΕΡΜΑΤΟΣ', 141, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-15 20:48:26', '2019-09-15 20:48:26'),
(171, 'CELEBRITIES STUDIO', 'images/logo/1421568563518.jpg', NULL, '3', '9', 0, 'Υγεία/Ομορφιά', 0, 'Γυμναστητε σε ένα όμορφο και φιλικο περιβάλλον σε ένα καινούργιο χώρο με έμπειρους γυμναστές. Γνώρισε μας απλά κάνοντας μια βόλτα στο γυμναστήριο μας', 'μεγαλη γκαμα απο θεραπείες', 142, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/Celebrities-studio-503306719856113/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-15 21:05:18', '2019-09-15 21:05:18'),
(172, 'CHAMPIONS THE SOCCER ACADEMY', 'images/logo/1431568565424.jpg', 'allaboutsoccer.net/wp/?cat=294', '1', '4', 0, 'ΠΟΔΟΣΦΑΙΡΙΚΗ\r\nΑΚΑΔΗΜΙΑ(ΣΩΜΑΤΕΙΟ)', 0, 'ΠΟΔΟΣΦΑΙΡΙΚΗ\r\nΑΚΑΔΗΜΙΑ(ΣΩΜΑΤΕΙΟ)', 'ΠΑΙΞΕ ΜΠΑΛΑ ΜΑΖΙ ΜΑΣ ΠΑΙΞΕ ΣΑΝ ΠΡΩΤΑΘΛΗΤΗΣ', 143, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1431572220250.mp4', 'https://www.facebook.com/championslimassoll/', NULL, NULL, NULL, NULL, 'Πετρακη Γιαλλουρου 10, Ύψωνας, Cyprus', 34.6848711, 32.97344099999998, 'd_dimitriou7@hotmail.com', '2019-09-15 21:37:04', '2019-11-22 06:49:45'),
(173, 'GRILL fm', 'images/logo/1441568567624.png', NULL, '3', '1', 0, 'Ψητοπωλείο · Εστιατόριο με κουζίνα Μέσης Ανατολής · Μπαρ και ψησταριά', 0, 'Δοκιμάστε την πραγματική γεύση ζουμερών μπέργκερ, σουβλάκια στη πίτα, γύρους, μπριζόλες όπως και φρέσκιες σαλάτες.', 'πραγματική γεύση', 144, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1441568567435.mp4', 'https://www.facebook.com/grillfm.cy/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-15 22:13:44', '2019-09-15 22:13:44'),
(174, 'HUMAN CAPITAL PRO', 'images/logo/1451568645093.jpg', 'https://www.humancapitalpro.com/', '3', '7', 0, 'Get Proper Education', 0, 'The sum total of a person’s knowledge and skills, is one of the most important factors of production and provision of services. We strive to improve employee well-fare, providing low-cost default, or tailor-made, educational services for personal and professional development.', 'Get Proper Education', 145, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1451568645084.mp4', 'https://www.facebook.com/humancapitalpro/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-16 19:44:53', '2019-09-16 19:44:53'),
(175, 'KK CAR BATTERIES', 'images/logo/1471568727998.jpg', 'https://www.kkcarbatteries.com/?fbclid=IwAR3uPHHFUBzrvLReAfIK1irT3mMJRY7Ybq83pTU1wz1PWT0E2n9aKANYeyY', '3', '10', 30, 'Σε όλες τις υπηρεσίες', 0, 'H KK BATTERIES είναι μια κινητή μονάδα που αποτελείται από έμπειρο προσωπικό το οποίο ειδικεύεται στην εγκατάσταση όλων των τύπων μπαταριών (αυτοκινήτων, σκάφων, μοτοσυκλετών, γεννητριών κ.α)', 'GOT A FLAT BATTERY?', 147, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/kkbatteries/', NULL, NULL, NULL, NULL, 'Ηλία Ηλιάδη 12, Κάτω Πολεμίδια, Κύπρος', 34.6834558, 33.01378999999997, 'info@kkbatteries.com', '2019-09-17 18:46:38', '2019-11-28 20:47:55'),
(176, 'SMS DECO SOLUTIONS LTD', 'images/logo/1481568728800.png', NULL, '3', '15', 10, 'Σε όλες τις υπηρεσίες', 0, 'A building material consisting of rectangular sections usually made of a gypsum plaster core bonded between  layers of heavy paper,used especially in the construction of interior walls and ceilings.Also can be used to separate rooms or make a low ceiling for hidden lighting design.', 'Γυψοσανίδες/ Strech\r\nCeilings / Ανακαινίσεις', 148, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', NULL, 'https://www.facebook.com/S-M-S-Deco-Solutions-Ltd-2089561224589638/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-17 19:00:00', '2019-09-17 19:00:00'),
(177, 'Ambitus Fitness Gym', 'images/logo/1491568900862.png', 'http://www.ambitusfitness.com/', '1', '3', 0, 'Γυμναστήριο/Κέντρο σωματικής ευεξίας · Προπόνηση και γυμναστική · Γήπεδο, στάδιο και αθλητική εγκατάσταση', 0, 'Το Ambitus Fitness Gym, με άδεια λειτουργίας από τον Κυπριακό Οργανισμό Αθλητισμού, είναι πλήρως εξοπλισμένο με τελευταίου τύπου μηχανήματα γυμναστικής. Απαρτίζεται από άρτια εκπαιδευμένο και επιστημονικά καταρτισμένο προσωπικό που αγαπά τη δουλειά του και σέβεται τα μέλη όλων των ηλικιών.', 'όμορφο, υγιές σώμα.', 149, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1491568900702.mp4', 'https://www.facebook.com/ambitusfitness/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-19 18:47:42', '2019-09-19 18:47:42'),
(178, 'IHS TECHNOLOGY', 'images/logo/1501568920415.jpg', NULL, '1', '7', 20, 'Σε όλες τις υπηρεσίες', 0, 'Σύντομα κοντά σας', 'Σύντομα κοντά σας', 150, 'Σύντομα κοντά σας', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-20 00:13:35', '2019-09-20 00:13:35'),
(179, 'JOJO Fitness & Passion', 'images/logo/1511568921142.jpg', NULL, '1', '3', 0, 'Γυμναστήριο/Κέντρο σωματικής ευεξίας · Γυμναστής', 0, 'Γυμναστήριο/Κέντρο σωματικής ευεξίας · Γυμναστής', 'Κέντρο σωματικής ευεξίας', 151, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1511568921017.mp4', 'https://www.facebook.com/Jojo.Fitness.and.Passion/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-20 00:25:42', '2019-09-20 00:25:42'),
(180, 'OJO', 'images/logo/1521568921918.png', 'https://ojosunglasses.com/', '1', '6', 0, 'Κατάστημα οπτικών & γυαλιών ηλίου', 0, 'Κατάστημα οπτικών & γυαλιών ηλίου', 'sunglasses', 152, 'Μπορείτε να επικοινωνείτε καθημερινά μαζί μας ή αφήστε τα στοιχεία σας και θα απαντήσουμε άμεσα.', 'videos/upload/1521568921799.mp4', 'https://www.facebook.com/OJOSunglassesStavrou/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-09-20 00:38:38', '2019-09-20 00:38:38'),
(181, 'ΤΑΒΕΡΝΑ ΠΙΝΑΚΙΟ', 'images/logo/1561572293602.jpg', 'https://pinakio.com/', '3', '1', 0, 'Ταβερνα', 0, 'Στη καρδιά του Αγίου Αθανασίου στη πλακόστρωτη πλατεία του χωριού, η κυπριακή παράδοση ανταμώνει με την τέχνη της γαστρονομίας. Τα γνήσια υλικά από τη κυπριακή φύση που δια μέσω των αιώνων έχουν υιοθετηθεί στη μαγειρική, αναβιώνουν στη κουζίνα μας, με σύγχρονες τεχνικές και τεχνοτροπίες. Το χθες σερβίρετε στο σήμερα.\r\nΤο «Πινάκιο Γεύσεων» δημιουργήθηκε από την αγάπη, το πάθος και την απόλυτη αφοσίωση στη μαγειρική φιλοσοφία.  Αγνά Κυπριακά υλικά, όλων των εποχών, μεταμορφώνονται σε αξέχαστες γεύσεις και γαστρονομικές εμπειρίες.', 'Δημιουργώντας από την παράδοση', 156, 'Τρίτη - Σάββατο 19:00-23:00, Κυριακή 12:00-15:00', 'videos/upload/1561572293356.mp4', 'https://www.facebook.com/pinakiocytavern/', NULL, NULL, NULL, NULL, NULL, 35.095192, 33.20343, '', '2019-10-29 01:13:22', '2019-10-29 01:15:34'),
(182, 'test', 'images/logo/701574353964.jpg', 'test', ':2', ':3', 3, 'asdf', 0, 'asdf', 'asdf', 70, 'asdf', NULL, NULL, NULL, NULL, 'http://instagram.com', NULL, 'San Diego, CA, USA', 35.095192, -117.16108380000003, 'forwcj@gmail.com', '2019-11-21 22:32:44', '2019-11-21 22:32:44');
INSERT INTO `company` (`id`, `name`, `logo_url`, `link_url`, `area_id`, `category_id`, `discount_cnt`, `discount_info`, `promote`, `description`, `slogan`, `user_id`, `communication`, `company_video`, `facebook`, `youtube`, `twitter`, `instagram`, `linkedin`, `address`, `latitude`, `longitude`, `email`, `created_at`, `updated_at`) VALUES
(183, 'ESSENTIAL OILS & DIFFUSERS CY', 'images/logo/1591574952951.jpg', NULL, ':3', ':8:9', 20, 'Σε όλα τα προϊόντα.', 0, 'Το Essential Oil & Diffuser Cy, είναι ένα online κατάστημα που σας προσφέρει διαχυτές αιθέριων ελαίων σε μια σειρά με διάφορα σχέδια και χρώματα για όλους.', 'Αιθέρια Έλαια σε διάφορα αρώματα και Διαχυτές αιθέριων ελαίων.', 159, 'Πάντα ανοιχτά', 'videos/upload/1591574952604.mp4', 'https://www.facebook.com/pg/georgiafasko/about/?ref=page_internal', NULL, NULL, NULL, NULL, '1η Απριλίου 21 , Μέσα Γειτονιά 4003', 34.69212109999999, 32.99382360000004, 'georgiafasko@gmail.com', '2019-11-28 20:55:51', '2019-11-28 22:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `company_subscription`
--

CREATE TABLE `company_subscription` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('day','month','year','') COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_subscription`
--

INSERT INTO `company_subscription` (`id`, `user_id`, `type`, `start_time`, `end_time`) VALUES
(1, 77, 'day', '2019-09-13 21:51:02', '2019-09-14 21:51:02'),
(2, 102, 'year', '2019-08-29 14:26:57', '2020-08-30 14:26:57'),
(3, 134, 'day', '2019-09-13 23:18:40', '2019-09-14 23:18:40'),
(4, 137, 'day', '2019-09-14 19:03:53', '2019-09-15 19:03:53'),
(5, 132, 'month', '2019-10-05 19:32:55', '2019-11-05 19:32:55'),
(6, 104, 'day', '2019-10-19 16:57:17', '2019-10-20 16:57:17'),
(7, 143, 'month', '2019-10-27 23:44:45', '2019-11-27 23:44:45'),
(8, 133, 'month', '2019-10-28 19:37:54', '2019-11-28 19:37:54'),
(9, 156, 'month', '2019-10-28 20:16:58', '2019-11-28 20:16:58'),
(10, 159, 'month', '2019-11-28 15:10:10', '2019-12-28 15:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `company_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 110, '10% discount', '10% sto teliko logariasmo', '2019-11-29 18:46:42', '2019-11-30 00:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `event_start` datetime NOT NULL,
  `event_end` datetime NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `user_id`, `partner_id`, `event_start`, `event_end`, `title`, `type`, `status`, `created_at`, `updated_at`) VALUES
(13, 12, 10, '2019-04-05 11:30:00', '2019-04-05 17:00:00', 'abcd', 0, 0, '2019-04-05 10:08:34', '2019-04-05 10:08:34'),
(15, 12, 10, '2019-04-08 12:00:00', '2019-04-08 15:00:00', 'aaaa', 0, 0, '2019-04-08 14:23:08', '2019-04-08 14:23:08'),
(16, 12, 10, '2019-04-08 16:30:00', '2019-04-08 20:30:00', 'aaaa', 0, 1, '2019-04-08 14:23:11', '2019-07-22 17:38:07'),
(17, 12, 10, '2019-04-08 21:00:00', '2019-04-08 22:30:00', 'bbbb', 0, 0, '2019-04-08 14:23:14', '2019-04-08 14:23:14'),
(18, 12, 10, '2019-04-03 06:30:00', '2019-04-03 09:00:00', 'I want live streaming', 0, 0, '2019-04-08 14:42:22', '2019-04-08 14:42:22'),
(19, 12, 10, '2019-04-07 07:00:00', '2019-04-07 09:30:00', 'hello', 0, 0, '2019-04-08 14:42:31', '2019-04-08 14:42:31'),
(20, 12, 10, '2019-04-09 09:30:00', '2019-04-09 10:00:00', 'asdfasfd', 0, 0, '2019-04-09 06:30:13', '2019-04-09 06:30:13'),
(21, 12, 10, '2019-04-09 11:00:00', '2019-04-09 13:00:00', 'asdfasdfasdf', 0, 0, '2019-04-09 06:30:15', '2019-04-09 06:30:15'),
(22, 12, 10, '2019-04-05 06:00:00', '2019-04-05 07:30:00', 'aaaa', 0, 0, '2019-04-27 16:15:05', '2019-04-27 16:15:05'),
(23, 12, 10, '2019-04-27 07:00:00', '2019-04-27 08:30:00', 'Live streaming for sport', 0, 0, '2019-04-27 21:02:50', '2019-04-27 21:02:50'),
(24, 12, 14, '2019-04-29 06:30:00', '2019-04-29 08:00:00', 'aaaaaa', 0, 2, '2019-04-29 19:03:29', '2019-06-17 14:59:45'),
(25, 12, 13, '2019-04-29 07:00:00', '2019-04-29 08:30:00', 'live streaming', 0, 2, '2019-04-29 20:25:53', '2019-06-21 12:46:57'),
(26, 22, 13, '2019-06-04 07:00:00', '2019-06-04 07:30:00', 'test', 0, 0, '2019-06-12 07:57:02', '2019-06-12 07:57:02'),
(27, 22, 10, '2019-06-11 10:30:00', '2019-06-11 11:00:00', 'gia rantevou online', 0, 0, '2019-06-12 08:34:00', '2019-06-12 08:34:00'),
(28, 22, 10, '2019-06-12 07:30:00', '2019-06-12 08:00:00', 'ffdfdfd', 0, 0, '2019-06-12 08:55:01', '2019-06-12 08:55:01'),
(29, 22, 15, '2019-06-12 07:30:00', '2019-06-12 08:00:00', 'asdasdas', 0, 0, '2019-06-12 09:07:27', '2019-06-12 09:07:27'),
(30, 22, 15, '2019-06-11 07:30:00', '2019-06-11 08:00:00', 'test', 0, 1, '2019-06-12 09:07:28', '2019-07-22 17:01:45'),
(31, 22, 13, '2019-06-07 07:00:00', '2019-06-07 07:30:00', 'hello', 0, 1, '2019-06-12 15:13:25', '2019-06-20 23:47:17'),
(32, 22, 15, '2019-07-20 07:00:00', '2019-07-20 07:30:00', 'prosopiki anaptiksi', 1, 1, '2019-07-19 14:50:50', '2019-07-19 15:14:54'),
(33, 22, 15, '2019-07-19 07:30:00', '2019-07-19 08:00:00', 'skodewfwe', 1, 0, '2019-07-19 14:59:28', '2019-07-19 14:59:28'),
(34, 22, 15, '2019-07-19 06:00:00', '2019-07-19 06:30:00', 'deded', 0, 0, '2019-07-19 15:07:54', '2019-07-19 15:07:54'),
(35, 22, 15, '2019-07-11 07:00:00', '2019-07-11 07:30:00', 'fefefrf', 1, 0, '2019-07-19 15:13:13', '2019-07-19 15:13:13'),
(36, 22, 15, '2019-07-10 07:30:00', '2019-07-10 08:00:00', 'τεστ', 1, 0, '2019-07-22 16:59:30', '2019-07-22 16:59:30'),
(37, 10, 10, '2019-07-03 07:00:00', '2019-07-03 07:30:00', 'dgdd', 1, 0, '2019-07-22 17:37:05', '2019-07-22 17:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promote` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `partner_id`, `title`, `img_url`, `promote`, `created_at`, `updated_at`, `status`) VALUES
(12, 13, 'Sport 1', 'images/gallery/131556395990.jpg', 0, '2019-04-27 20:13:13', '2019-08-26 08:32:23', 2),
(13, 13, 'Sport 2', 'images/gallery/131556396002.jpg', 0, '2019-04-27 20:13:26', '2019-08-26 08:32:29', 2),
(14, 13, 'Sport 3', 'images/gallery/IMG_9510.jpg', 0, '2019-04-27 20:16:32', '2019-08-26 08:24:24', 1),
(15, 13, 'First Image', 'img/gallery-img/images/background5.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:32:35', 2),
(16, 13, 'First Image', 'img/gallery-img/images/background6.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:32:40', 2),
(17, 13, 'First Image', 'img/gallery-img/images/background7.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:07', 2),
(18, 14, 'First Image', 'img/gallery-img/images/background1.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:14', 2),
(19, 14, 'First Image', 'img/gallery-img/images/background2.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:19', 2),
(20, 14, 'First Image', 'img/gallery-img/images/background4.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:24', 2),
(21, 14, 'First Image', 'img/gallery-img/images/background5.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:29', 2),
(22, 14, 'art 2', 'images/gallery/IMG_9504.jpg', 0, '2019-04-08 14:37:37', '2019-08-26 08:29:05', 1),
(23, 14, 'First Image', 'img/gallery-img/images/background7.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:33', 2),
(24, 15, 'First Image', 'img/gallery-img/images/background3.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:38', 2),
(25, 15, 'First Image', 'img/gallery-img/images/background7.jpg', 0, '2019-03-31 01:14:38', '2019-08-26 08:33:42', 2),
(26, 15, 'asdfasdfasdfasdf', 'images/gallery/101554567039.jpg', 0, '2019-04-06 16:10:45', '2019-08-26 08:29:12', 1),
(27, 10, 'Η επιτυχία θέλει χαρακτήρα', 'images/gallery/101563823482.jpeg', 0, '2019-07-22 19:26:08', '2019-08-26 08:29:19', 1),
(28, 10, 'Το μέλλον ανήκει σε σένα', 'images/gallery/101564027242.jpeg', 0, '2019-07-25 04:04:59', '2019-08-26 08:29:46', 1),
(29, 10, 'Η επιτυχία σου είναι στα δικά σου χέρια!', 'images/gallery/101564028469.jpeg', 0, '2019-07-25 04:22:25', '2019-08-26 08:30:26', 1),
(30, 10, 'Lifestyle with Diaskedazw', 'images/gallery/101564673939.jpeg', 0, '2019-08-01 15:40:10', '2019-08-26 08:33:47', 2),
(31, 10, 'Πάντα θα μαθαίνουμε...', 'images/gallery/101564674061.jpeg', 0, '2019-08-01 15:42:41', '2019-08-26 08:32:13', 1),
(32, 10, 'You can change!', 'images/gallery/101564674282.jpeg', 0, '2019-08-01 15:45:05', '2019-08-26 08:33:54', 1),
(33, 63, '1', 'images/gallery/621565689620.jpg', 0, '2019-08-13 09:47:26', '2019-08-26 08:34:24', 1),
(34, 62, '2', 'images/gallery/621565689714.jpg', 0, '2019-08-13 09:48:38', '2019-08-26 08:59:22', 1),
(35, 62, '3', 'images/gallery/621565689738.jpg', 0, '2019-08-13 09:48:59', '2019-08-26 08:59:29', 1),
(36, 62, '4', 'images/gallery/621565689770.jpg', 0, '2019-08-13 09:49:33', '2019-08-26 08:59:34', 1),
(37, 62, '5', 'images/gallery/621565689817.jpg', 0, '2019-08-13 09:50:20', '2019-08-28 12:22:29', 1),
(38, 62, '5', 'images/gallery/621565690094.jpg', 0, '2019-08-13 09:54:59', '2019-08-28 12:22:38', 1),
(39, 63, '1', 'images/gallery/631566079256.jpg', 0, '2019-08-17 22:03:56', '2019-08-28 12:22:45', 1),
(40, 63, '2', 'images/gallery/631566079459.jpg', 0, '2019-08-17 22:04:23', '2019-08-28 12:22:53', 1),
(41, 63, '3', 'images/gallery/631566079475.jpg', 0, '2019-08-17 22:04:39', '2019-08-28 12:23:01', 1),
(42, 63, '4', 'images/gallery/631566079497.jpg', 0, '2019-08-17 22:05:00', '2019-08-28 12:23:08', 1),
(43, 63, '5', 'images/gallery/631566079515.jpg', 0, '2019-08-17 22:06:21', '2019-08-28 12:23:16', 1),
(44, 63, '6', 'images/gallery/631566079609.jpg', 0, '2019-08-17 22:06:53', '2019-08-28 12:23:23', 1),
(45, 63, '7', 'images/gallery/631566079633.jpg', 0, '2019-08-17 22:07:16', '2019-08-28 12:23:30', 1),
(46, 65, '1', 'images/gallery/651566125435.jpg', 0, '2019-08-18 10:50:39', '2019-08-28 12:23:36', 1),
(47, 65, '2', 'images/gallery/651566125451.jpg', 0, '2019-08-18 10:50:54', '2019-08-28 12:23:43', 1),
(48, 65, '3', 'images/gallery/651566125465.jpg', 0, '2019-08-18 10:51:08', '2019-08-28 12:23:51', 1),
(49, 65, '4', 'images/gallery/651566125482.jpg', 0, '2019-08-18 10:51:24', '2019-08-28 12:23:58', 1),
(50, 65, '5', 'images/gallery/651566125502.jpg', 0, '2019-08-18 10:51:46', '2019-08-28 12:24:05', 1),
(51, 65, '6', 'images/gallery/651566125520.jpg', 0, '2019-08-18 10:52:05', '2019-08-28 12:24:11', 1),
(52, 65, '7', 'images/gallery/651566125540.jpg', 0, '2019-08-18 10:52:24', '2019-08-28 12:24:18', 1),
(53, 65, '8', 'images/gallery/651566125562.jpg', 0, '2019-08-18 10:52:45', '2019-08-28 12:24:24', 1),
(54, 65, '9', 'images/gallery/651566125587.jpg', 0, '2019-08-18 10:53:10', '2019-08-28 12:24:32', 1),
(55, 65, '10', 'images/gallery/651566125609.jpg', 0, '2019-08-18 10:53:32', '2019-08-28 12:24:39', 1),
(56, 65, '11', 'images/gallery/651566125625.jpg', 0, '2019-08-18 10:53:49', '2019-08-28 12:24:45', 1),
(57, 65, '12', 'images/gallery/651566125643.jpg', 0, '2019-08-18 10:54:06', '2019-08-28 12:24:52', 1),
(58, 65, '13', 'images/gallery/651566125659.jpg', 0, '2019-08-18 10:54:21', '2019-08-28 12:24:58', 1),
(59, 65, '14', 'images/gallery/651566125676.jpg', 0, '2019-08-18 10:54:38', '2019-08-28 12:25:04', 1),
(60, 66, '1', 'images/gallery/661566129519.jpg', 0, '2019-08-18 11:58:41', '2019-08-28 12:25:10', 1),
(61, 66, '2', 'images/gallery/661566129534.jpg', 0, '2019-08-18 11:58:56', '2019-08-28 12:25:19', 1),
(62, 66, '3', 'images/gallery/661566129547.jpg', 0, '2019-08-18 11:59:10', '2019-08-28 12:25:26', 1),
(63, 66, '4', 'images/gallery/661566129562.jpg', 0, '2019-08-18 11:59:24', '2019-08-28 12:25:33', 1),
(64, 66, '5', 'images/gallery/661566129580.jpg', 0, '2019-08-18 11:59:43', '2019-08-28 12:26:37', 1),
(65, 66, '6', 'images/gallery/661566129594.jpg', 0, '2019-08-18 11:59:56', '2019-08-28 12:26:44', 1),
(66, 66, '7', 'images/gallery/661566129607.jpg', 0, '2019-08-18 12:00:10', '2019-08-28 12:26:53', 1),
(67, 66, '8', 'images/gallery/661566129623.jpg', 0, '2019-08-18 12:00:26', '2019-08-28 12:27:00', 1),
(68, 66, '9', 'images/gallery/661566129643.jpg', 0, '2019-08-18 12:00:45', '2019-08-28 12:27:07', 1),
(69, 66, '10', 'images/gallery/661566129657.jpg', 0, '2019-08-18 12:01:00', '2019-08-28 12:27:14', 1),
(70, 66, '11', 'images/gallery/661566129671.jpg', 0, '2019-08-18 12:01:15', '2019-08-28 12:27:21', 1),
(72, 66, '13', 'images/gallery/661566129711.jpg', 0, '2019-08-18 12:01:53', '2019-08-28 12:27:27', 1),
(73, 66, '14', 'images/gallery/661566129724.jpg', 0, '2019-08-18 12:02:07', '2019-08-28 12:27:34', 1),
(74, 66, '15', 'images/gallery/661566129738.jpg', 0, '2019-08-18 12:02:20', '2019-08-28 12:27:42', 1),
(75, 66, '12', 'images/gallery/661566129786.jpg', 0, '2019-08-18 12:03:11', '2019-08-28 12:27:49', 1),
(76, 67, '1', 'images/gallery/671566131268.jpg', 0, '2019-08-18 12:27:50', '2019-08-28 12:27:56', 1),
(77, 67, '2', 'images/gallery/671566131284.jpg', 0, '2019-08-18 12:28:06', '2019-08-28 12:29:16', 1),
(78, 67, '3', 'images/gallery/671566131296.jpg', 0, '2019-08-18 12:28:18', '2019-08-28 12:29:24', 1),
(79, 67, '4', 'images/gallery/671566131308.jpg', 0, '2019-08-18 12:28:32', '2019-08-28 12:29:31', 1),
(80, 67, '5', 'images/gallery/671566131321.jpg', 0, '2019-08-18 12:28:44', '2019-08-28 12:29:37', 1),
(81, 68, '1', 'images/gallery/681566132910.jpg', 0, '2019-08-18 12:55:13', '2019-08-28 12:29:45', 1),
(82, 68, '2', 'images/gallery/681566132929.jpg', 0, '2019-08-18 12:55:31', '2019-08-28 12:30:35', 1),
(83, 68, '3', 'images/gallery/681566132944.jpg', 0, '2019-08-18 12:55:46', '2019-08-28 12:30:41', 1),
(84, 68, '4', 'images/gallery/681566132958.jpg', 0, '2019-08-18 12:56:01', '2019-08-28 12:33:57', 1),
(85, 68, '5', 'images/gallery/681566132975.jpg', 0, '2019-08-18 12:56:16', '2019-08-28 12:34:03', 1),
(86, 68, '6', 'images/gallery/681566132992.jpg', 0, '2019-08-18 12:56:34', '2019-08-28 12:38:44', 1),
(87, 68, '7', 'images/gallery/681566133009.jpg', 0, '2019-08-18 12:56:51', '2019-08-28 12:48:43', 1),
(88, 68, '8', 'images/gallery/681566133026.jpg', 0, '2019-08-18 12:57:08', '2019-08-28 12:48:49', 1),
(89, 68, '9', 'images/gallery/681566133044.jpg', 0, '2019-08-18 12:57:26', '2019-08-28 12:48:57', 1),
(90, 68, '10', 'images/gallery/681566133059.jpg', 0, '2019-08-18 12:57:45', '2019-08-28 12:49:02', 1),
(91, 68, '11', 'images/gallery/681566133082.jpg', 0, '2019-08-18 12:58:04', '2019-08-28 12:49:08', 1),
(92, 68, '12', 'images/gallery/681566133098.jpg', 0, '2019-08-18 12:58:21', '2019-08-28 12:49:16', 1),
(93, 68, '13', 'images/gallery/681566133117.jpg', 0, '2019-08-18 12:58:40', '2019-08-28 12:49:22', 1),
(94, 68, '14', 'images/gallery/681566133130.jpg', 0, '2019-08-18 12:58:54', '2019-08-28 12:49:28', 1),
(95, 68, '15', 'images/gallery/681566133158.jpg', 0, '2019-08-18 12:59:20', '2019-08-28 12:49:34', 1),
(96, 68, '16', 'images/gallery/681566133174.jpg', 0, '2019-08-18 12:59:37', '2019-08-28 12:49:40', 1),
(97, 68, '17', 'images/gallery/681566133190.jpg', 0, '2019-08-18 12:59:52', '2019-08-28 12:49:50', 1),
(98, 68, '18', 'images/gallery/681566133212.jpg', 0, '2019-08-18 13:00:15', '2019-08-28 12:50:02', 1),
(99, 68, '19', 'images/gallery/681566133230.jpg', 0, '2019-08-18 13:00:32', '2019-08-28 12:50:09', 1),
(100, 69, '1', 'images/gallery/691566135617.jpg', 0, '2019-08-18 13:40:19', '2019-08-28 12:50:16', 1),
(101, 69, '2', 'images/gallery/691566135628.jpg', 0, '2019-08-18 13:40:30', '2019-08-28 12:51:32', 1),
(102, 69, '3', 'images/gallery/691566135645.jpg', 0, '2019-08-18 13:40:47', '2019-08-28 12:51:43', 1),
(103, 69, '4', 'images/gallery/691566135658.jpg', 0, '2019-08-18 13:41:00', '2019-08-28 12:51:52', 1),
(104, 69, '5', 'images/gallery/691566135670.jpg', 0, '2019-08-18 13:41:12', '2019-08-28 12:51:59', 1),
(105, 70, '1', 'images/gallery/701566162332.png', 0, '2019-08-18 21:05:34', '2019-08-28 12:52:06', 1),
(106, 70, '2', 'images/gallery/701566162354.jpg', 0, '2019-08-18 21:05:57', '2019-08-28 12:58:04', 1),
(107, 70, '3', 'images/gallery/701566162368.jpg', 0, '2019-08-18 21:06:12', '2019-08-28 12:58:11', 1),
(108, 70, '4', 'images/gallery/701566162393.jpg', 0, '2019-08-18 21:06:35', '2019-08-28 12:58:18', 1),
(109, 70, '5', 'images/gallery/701566162411.png', 0, '2019-08-18 21:06:54', '2019-08-28 12:59:59', 1),
(110, 70, '6', 'images/gallery/701566162425.png', 0, '2019-08-18 21:07:08', '2019-08-28 14:04:37', 1),
(111, 70, '7', 'images/gallery/701566162442.jpg', 0, '2019-08-18 21:07:25', '2019-08-28 14:06:56', 1),
(112, 71, '1', 'images/gallery/711566166592.jpg', 0, '2019-08-18 22:16:35', '2019-08-28 14:07:06', 1),
(113, 71, '2', 'images/gallery/711566166611.jpg', 0, '2019-08-18 22:16:54', '2019-08-28 14:07:16', 1),
(114, 71, '3', 'images/gallery/711566166626.jpg', 0, '2019-08-18 22:17:09', '2019-08-28 14:07:24', 1),
(115, 71, '4', 'images/gallery/711566166644.png', 0, '2019-08-18 22:17:28', '2019-08-28 14:07:30', 1),
(116, 71, '5', 'images/gallery/711566166665.jpg', 0, '2019-08-18 22:17:46', '2019-08-28 14:07:37', 1),
(117, 71, '6', 'images/gallery/711566166675.jpg', 0, '2019-08-18 22:17:58', '2019-08-28 14:07:43', 1),
(118, 72, '1', 'images/gallery/721566224311.jpg', 0, '2019-08-19 14:18:33', '2019-08-28 14:07:50', 1),
(119, 72, '2', 'images/gallery/721566224324.jpg', 0, '2019-08-19 14:18:47', '2019-08-28 14:07:56', 1),
(120, 72, '3', 'images/gallery/721566224338.jpg', 0, '2019-08-19 14:19:00', '2019-08-28 14:08:05', 1),
(121, 72, '4', 'images/gallery/721566224353.jpg', 0, '2019-08-19 14:19:16', '2019-08-28 14:08:11', 1),
(122, 72, '5', 'images/gallery/721566224369.jpg', 0, '2019-08-19 14:19:31', '2019-08-28 14:08:17', 1),
(123, 72, '6', 'images/gallery/721566224382.jpg', 0, '2019-08-19 14:19:44', '2019-08-28 14:08:24', 1),
(124, 72, '7', 'images/gallery/721566224396.jpg', 0, '2019-08-19 14:19:59', '2019-08-28 14:08:30', 1),
(125, 72, '8', 'images/gallery/721566224412.jpg', 0, '2019-08-19 14:20:16', '2019-08-28 14:08:36', 1),
(126, 72, '9', 'images/gallery/721566224431.jpg', 0, '2019-08-19 14:20:34', '2019-08-28 14:08:48', 1),
(127, 72, '9', 'images/gallery/721566224431.jpg', 0, '2019-08-19 14:20:35', '2019-08-28 14:08:56', 2),
(128, 72, '9', 'images/gallery/721566224431.jpg', 0, '2019-08-19 14:20:35', '2019-08-28 14:09:02', 2),
(129, 72, '10', 'images/gallery/721566224454.jpg', 0, '2019-08-19 14:20:57', '2019-08-28 14:09:12', 1),
(130, 72, '11', 'images/gallery/721566224473.jpg', 0, '2019-08-19 14:21:16', '2019-08-28 14:09:21', 1),
(131, 72, '12', 'images/gallery/721566224489.jpg', 0, '2019-08-19 14:21:33', '2019-08-28 14:09:29', 1),
(132, 75, '1', 'images/gallery/751566380788.jpg', 0, '2019-08-21 09:46:31', '2019-08-28 14:09:54', 1),
(133, 76, '1', 'images/gallery/761566382350.jpg', 0, '2019-08-21 10:12:32', '2019-08-28 14:10:00', 1),
(134, 76, '2', 'images/gallery/761566382366.jpg', 0, '2019-08-21 10:12:47', '2019-08-28 14:10:07', 1),
(135, 76, '3', 'images/gallery/761566382400.jpg', 0, '2019-08-21 10:13:22', '2019-08-28 14:10:15', 1),
(136, 76, '4', 'images/gallery/761566382624.jpg', 0, '2019-08-21 10:17:07', '2019-08-28 14:10:53', 1),
(137, 77, '1', 'images/gallery/771566384182.jpg', 0, '2019-08-21 10:43:05', '2019-08-28 14:11:03', 1),
(138, 77, '2', 'images/gallery/771566384197.jpg', 0, '2019-08-21 10:43:19', '2019-08-28 14:11:18', 1),
(139, 77, '3', 'images/gallery/771566384215.jpg', 0, '2019-08-21 10:43:36', '2019-08-28 14:12:32', 1),
(140, 77, '4', 'images/gallery/771566384226.jpg', 0, '2019-08-21 10:43:47', '2019-08-28 14:12:52', 1),
(141, 77, '5', 'images/gallery/771566384240.jpg', 0, '2019-08-21 10:44:01', '2019-08-28 14:13:00', 1),
(142, 77, '6', 'images/gallery/771566384252.jpg', 0, '2019-08-21 10:44:13', '2019-08-28 14:13:07', 1),
(143, 77, '7', 'images/gallery/771566384262.jpg', 0, '2019-08-21 10:44:24', '2019-08-28 14:13:47', 1),
(144, 77, '8', 'images/gallery/771566384276.jpg', 0, '2019-08-21 10:44:39', '2019-08-28 14:13:54', 1),
(145, 77, '9', 'images/gallery/771566384288.jpg', 0, '2019-08-21 10:44:50', '2019-08-28 14:14:01', 1),
(146, 77, '10', 'images/gallery/771566384301.jpg', 0, '2019-08-21 10:45:03', '2019-08-28 14:14:06', 1),
(147, 77, '11', 'images/gallery/771566384313.jpg', 0, '2019-08-21 10:45:15', '2019-08-28 14:14:13', 1),
(148, 77, '12', 'images/gallery/771566384326.jpg', 0, '2019-08-21 10:45:28', '2019-08-28 14:14:19', 1),
(149, 77, '13', 'images/gallery/771566384339.jpg', 0, '2019-08-21 10:45:40', '2019-08-28 14:14:26', 1),
(150, 77, '14', 'images/gallery/771566384350.jpg', 0, '2019-08-21 10:45:53', '2019-08-28 14:14:31', 1),
(151, 77, '15', 'images/gallery/771566384365.jpg', 0, '2019-08-21 10:46:08', '2019-08-28 14:14:44', 1),
(152, 77, '16', 'images/gallery/771566384379.jpg', 0, '2019-08-21 10:46:21', '2019-08-28 14:14:51', 1),
(153, 77, '17', 'images/gallery/771566384390.jpg', 0, '2019-08-21 10:46:33', '2019-08-28 14:14:56', 1),
(154, 77, '18', 'images/gallery/771566384403.jpg', 0, '2019-08-21 10:46:45', '2019-08-28 14:15:03', 1),
(155, 77, '19', 'images/gallery/771566384414.jpg', 0, '2019-08-21 10:46:58', '2019-08-28 14:15:09', 1),
(156, 77, '20', 'images/gallery/771566384428.jpg', 0, '2019-08-21 10:47:10', '2019-08-28 14:15:31', 1),
(157, 77, '21', 'images/gallery/771566384441.jpg', 0, '2019-08-21 10:47:22', '2019-08-28 14:15:37', 1),
(158, 77, '22', 'images/gallery/771566384460.jpg', 0, '2019-08-21 10:47:42', '2019-08-28 14:15:42', 1),
(159, 77, '23', 'images/gallery/771566384472.jpg', 0, '2019-08-21 10:47:54', '2019-08-28 14:15:48', 1),
(160, 78, '1', 'images/gallery/781566386961.jpg', 0, '2019-08-21 11:29:24', '2019-08-28 14:15:55', 1),
(161, 78, '2', 'images/gallery/781566386979.jpg', 0, '2019-08-21 11:29:40', '2019-08-28 14:16:02', 1),
(162, 78, '3', 'images/gallery/781566386990.jpg', 0, '2019-08-21 11:29:52', '2019-08-28 14:16:08', 1),
(163, 78, '4', 'images/gallery/781566387007.jpg', 0, '2019-08-21 11:30:08', '2019-08-28 14:16:15', 1),
(164, 78, '5', 'images/gallery/781566387018.jpg', 0, '2019-08-21 11:30:20', '2019-08-28 14:16:22', 1),
(165, 78, '6', 'images/gallery/781566387029.jpg', 0, '2019-08-21 11:30:33', '2019-08-28 14:16:30', 1),
(166, 78, '7', 'images/gallery/781566387044.jpg', 0, '2019-08-21 11:30:45', '2019-08-28 14:16:36', 1),
(167, 78, '8', 'images/gallery/781566387054.jpg', 0, '2019-08-21 11:30:55', '2019-08-28 14:16:43', 1),
(168, 78, '9', 'images/gallery/781566387065.jpg', 0, '2019-08-21 11:31:07', '2019-08-28 14:16:49', 1),
(169, 78, '10', 'images/gallery/781566387077.jpg', 0, '2019-08-21 11:31:20', '2019-08-28 14:16:56', 1),
(170, 78, '11', 'images/gallery/781566387089.jpg', 0, '2019-08-21 11:31:31', '2019-08-28 14:17:02', 1),
(171, 73, 'Life Coach', 'images/videos/731566396066.jpg', 2, '2019-08-21 14:01:11', '2019-08-26 08:30:44', 1),
(172, 73, '2', 'images/videos/731566396353.jpg', 2, '2019-08-21 14:06:17', '2019-08-26 08:32:02', 1),
(173, 73, '3', 'images/videos/731566396391.jpg', 2, '2019-08-21 14:06:36', '2019-08-26 08:35:05', 1),
(174, 73, '4', 'images/videos/731566396891.jpg', 2, '2019-08-21 14:14:54', '2019-08-26 08:35:27', 1),
(175, 79, '1', 'images/gallery/791566489528.jpg', 0, '2019-08-22 15:58:49', '2019-08-28 14:17:15', 1),
(176, 79, '2', 'images/gallery/791566489548.jpg', 0, '2019-08-22 15:59:09', '2019-08-28 14:17:22', 1),
(177, 79, '3', 'images/gallery/791566489560.jpg', 0, '2019-08-22 15:59:21', '2019-08-28 14:17:28', 1),
(178, 79, '4', 'images/gallery/791566489578.jpg', 0, '2019-08-22 15:59:40', '2019-08-28 14:17:35', 1),
(179, 80, '1', 'images/gallery/801566636150.jpg', 0, '2019-08-24 08:42:32', '2019-08-28 14:17:42', 1),
(180, 80, '2', 'images/gallery/801566636164.jpg', 0, '2019-08-24 08:42:45', '2019-08-28 14:17:49', 1),
(181, 80, '3', 'images/gallery/801566636174.jpg', 0, '2019-08-24 08:42:57', '2019-08-28 14:17:57', 1),
(182, 80, '4', 'images/gallery/801566636185.jpg', 0, '2019-08-24 08:43:09', '2019-08-28 14:18:05', 1),
(183, 81, '1', 'images/gallery/811566638694.jpg', 0, '2019-08-24 09:24:56', '2019-08-28 14:18:12', 1),
(184, 81, '2', 'images/gallery/811566638707.jpg', 0, '2019-08-24 09:25:10', '2019-08-28 14:18:19', 1),
(185, 82, '1', 'images/gallery/821566639860.jpg', 0, '2019-08-24 09:44:22', '2019-08-28 14:18:25', 1),
(186, 82, '2', 'images/gallery/821566639872.jpg', 0, '2019-08-24 09:44:35', '2019-08-28 14:18:32', 1),
(187, 82, '3', 'images/gallery/821566639889.jpg', 0, '2019-08-24 09:44:51', '2019-08-28 14:18:39', 1),
(188, 82, '4', 'images/gallery/821566639904.jpg', 0, '2019-08-24 09:45:05', '2019-08-28 14:18:45', 1),
(189, 82, '5', 'images/gallery/821566639915.jpg', 0, '2019-08-24 09:45:16', '2019-08-28 14:18:51', 1),
(190, 82, '6', 'images/gallery/821566639932.jpg', 0, '2019-08-24 09:45:34', '2019-08-28 14:18:58', 1),
(191, 82, '7', 'images/gallery/821566639943.jpg', 0, '2019-08-24 09:45:48', '2019-08-28 14:19:06', 1),
(192, 82, '8', 'images/gallery/821566639959.jpg', 0, '2019-08-24 09:46:02', '2019-08-28 14:19:24', 1),
(193, 83, '1', 'images/gallery/831566641043.jpg', 0, '2019-08-24 10:04:04', '2019-08-28 14:19:33', 1),
(194, 83, '2', 'images/gallery/831566641053.jpg', 0, '2019-08-24 10:04:15', '2019-08-28 14:19:38', 1),
(195, 83, '3', 'images/gallery/831566641071.jpg', 0, '2019-08-24 10:04:32', '2019-08-27 14:29:50', 1),
(196, 83, '4', 'images/gallery/831566641082.jpg', 0, '2019-08-24 10:04:46', '2019-08-28 14:19:44', 1),
(197, 83, '5', 'images/gallery/831566641097.jpg', 0, '2019-08-24 10:05:00', '2019-08-28 14:19:51', 1),
(198, 83, '6', 'images/gallery/831566641109.jpg', 0, '2019-08-24 10:05:12', '2019-08-28 14:19:58', 1),
(199, 83, '7', 'images/gallery/831566641124.jpg', 0, '2019-08-24 10:05:26', '2019-08-28 14:20:11', 1),
(200, 83, '8', 'images/gallery/831566641136.jpg', 0, '2019-08-24 10:05:37', '2019-08-28 14:20:20', 1),
(201, 83, '9', 'images/gallery/831566641148.jpg', 0, '2019-08-24 10:05:50', '2019-08-28 14:20:27', 1),
(202, 83, '10', 'images/gallery/831566641161.jpg', 0, '2019-08-24 10:06:03', '2019-08-28 14:20:34', 1),
(203, 84, '1', 'images/gallery/841566648273.jpg', 0, '2019-08-24 12:04:35', '2019-08-28 14:20:42', 1),
(204, 84, '2', 'images/gallery/841566648288.jpg', 0, '2019-08-24 12:04:50', '2019-08-28 14:20:48', 1),
(205, 84, '3', 'images/gallery/841566648301.jpg', 0, '2019-08-24 12:05:04', '2019-08-28 14:20:55', 1),
(206, 84, '4', 'images/gallery/841566648319.jpg', 0, '2019-08-24 12:05:22', '2019-08-28 14:46:02', 1),
(207, 84, '5', 'images/gallery/841566648335.jpg', 0, '2019-08-24 12:05:37', '2019-08-28 14:46:11', 1),
(208, 84, '6', 'images/gallery/841566648350.jpg', 0, '2019-08-24 12:05:53', '2019-08-28 14:46:17', 1),
(209, 84, '7', 'images/gallery/841566648364.jpg', 0, '2019-08-24 12:06:06', '2019-08-28 14:46:39', 1),
(210, 84, '8', 'images/gallery/841566648377.jpg', 0, '2019-08-24 12:06:19', '2019-08-28 14:46:48', 1),
(211, 84, '9', 'images/gallery/841566648390.jpg', 0, '2019-08-24 12:06:31', '2019-08-28 14:46:58', 1),
(212, 84, '10', 'images/gallery/841566648404.jpg', 0, '2019-08-24 12:06:46', '2019-08-28 14:47:12', 1),
(213, 84, '11', 'images/gallery/841566648416.jpg', 0, '2019-08-24 12:06:58', '2019-08-28 14:47:19', 1),
(214, 84, '12', 'images/gallery/841566648440.png', 0, '2019-08-24 12:07:23', '2019-08-28 14:47:30', 1),
(215, 84, '13', 'images/gallery/841566648463.png', 0, '2019-08-24 12:07:48', '2019-08-28 14:47:36', 1),
(216, 84, '14', 'images/gallery/841566648481.jpg', 0, '2019-08-24 12:08:02', '2019-08-28 14:47:45', 1),
(217, 84, '15', 'images/gallery/841566648500.png', 0, '2019-08-24 12:08:27', '2019-08-28 14:48:02', 1),
(218, 84, '16', 'images/gallery/841566648521.jpg', 0, '2019-08-24 12:08:42', '2019-08-28 14:48:29', 1),
(219, 85, '1', 'images/gallery/851566649557.jpg', 0, '2019-08-24 12:25:59', '2019-08-28 14:48:37', 1),
(220, 85, '2', 'images/gallery/851566649570.jpg', 0, '2019-08-24 12:26:12', '2019-08-28 14:48:43', 1),
(221, 85, '3', 'images/gallery/851566649586.jpg', 0, '2019-08-24 12:26:29', '2019-08-28 14:48:50', 1),
(222, 85, '4', 'images/gallery/851566649609.jpg', 0, '2019-08-24 12:26:51', '2019-08-28 14:48:58', 1),
(223, 85, '5', 'images/gallery/851566649626.jpg', 0, '2019-08-24 12:27:13', '2019-08-28 14:49:04', 1),
(224, 85, '6', 'images/gallery/851566649651.jpg', 0, '2019-08-24 12:27:34', '2019-08-28 14:49:12', 1),
(225, 85, '7', 'images/gallery/851566649669.jpg', 0, '2019-08-24 12:27:52', '2019-08-28 14:49:20', 1),
(226, 85, '8', 'images/gallery/851566649687.jpg', 0, '2019-08-24 12:28:09', '2019-08-28 14:49:31', 1),
(227, 85, '9', 'images/gallery/851566649702.jpg', 0, '2019-08-24 12:28:23', '2019-08-28 14:49:45', 1),
(228, 85, '10', 'images/gallery/851566649715.jpg', 0, '2019-08-24 12:28:37', '2019-08-28 14:49:52', 1),
(229, 85, '11', 'images/gallery/851566649728.jpg', 0, '2019-08-24 12:28:50', '2019-08-28 14:50:04', 1),
(230, 85, '12', 'images/gallery/851566649742.jpg', 0, '2019-08-24 12:29:04', '2019-08-28 14:50:12', 1),
(231, 85, '13', 'images/gallery/851566649757.jpg', 0, '2019-08-24 12:29:19', '2019-08-28 14:50:35', 1),
(232, 85, '14', 'images/gallery/851566649773.jpg', 0, '2019-08-24 12:29:35', '2019-08-28 14:51:15', 1),
(233, 85, '15', 'images/gallery/851566649787.jpg', 0, '2019-08-24 12:29:49', '2019-08-28 14:51:25', 1),
(234, 85, '16', 'images/gallery/851566649802.jpg', 0, '2019-08-24 12:30:05', '2019-08-28 14:51:33', 1),
(235, 85, '17', 'images/gallery/851566649822.jpg', 0, '2019-08-24 12:30:23', '2019-08-28 14:51:45', 1),
(236, 85, '18', 'images/gallery/851566649837.jpg', 0, '2019-08-24 12:30:42', '2019-08-28 14:51:56', 1),
(237, 86, '1', 'images/gallery/861566652389.jpg', 0, '2019-08-24 13:13:10', '2019-08-28 15:13:49', 1),
(238, 86, '2', 'images/gallery/861566652404.jpg', 0, '2019-08-24 13:13:26', '2019-08-28 15:13:54', 1),
(239, 86, '3', 'images/gallery/861566652415.jpg', 0, '2019-08-24 13:13:36', '2019-08-28 15:14:00', 1),
(240, 87, '1', 'images/gallery/871566653317.jpg', 0, '2019-08-24 13:28:40', '2019-08-28 15:14:05', 1),
(241, 87, '2', 'images/gallery/871566653331.jpg', 0, '2019-08-24 13:28:52', '2019-08-28 15:14:14', 1),
(242, 87, '3', 'images/gallery/871566653341.jpg', 0, '2019-08-24 13:29:03', '2019-08-28 15:14:19', 1),
(243, 87, '4', 'images/gallery/871566653354.jpg', 0, '2019-08-24 13:29:16', '2019-08-28 15:14:24', 1),
(244, 87, '5', 'images/gallery/871566653367.jpg', 0, '2019-08-24 13:29:28', '2019-08-28 15:14:29', 1),
(245, 87, '6', 'images/gallery/871566653476.jpg', 0, '2019-08-24 13:31:18', '2019-08-28 15:14:36', 1),
(246, 87, '7', 'images/gallery/871566653489.jpg', 0, '2019-08-24 13:31:32', '2019-08-28 15:14:41', 1),
(247, 87, '8', 'images/gallery/871566653504.jpg', 0, '2019-08-24 13:31:46', '2019-08-28 15:14:46', 1),
(248, 87, '9', 'images/gallery/871566653519.jpg', 0, '2019-08-24 13:32:04', '2019-08-28 15:14:51', 1),
(249, 87, '10', 'images/gallery/871566653535.jpg', 0, '2019-08-24 13:32:17', '2019-08-28 15:14:56', 1),
(250, 87, '11', 'images/gallery/871566653549.jpg', 0, '2019-08-24 13:32:30', '2019-08-28 15:15:01', 1),
(251, 87, '12', 'images/gallery/871566653564.jpg', 0, '2019-08-24 13:32:46', '2019-08-28 15:15:09', 1),
(252, 87, '13', 'images/gallery/871566653665.jpg', 0, '2019-08-24 13:34:26', '2019-08-28 15:15:17', 1),
(253, 88, '1', 'images/gallery/881566657082.jpg', 0, '2019-08-24 14:31:24', '2019-08-28 15:15:28', 1),
(254, 88, '2', 'images/gallery/881566657095.jpg', 0, '2019-08-24 14:31:37', '2019-08-28 15:15:33', 1),
(255, 88, '3', 'images/gallery/881566657108.jpg', 0, '2019-08-24 14:31:49', '2019-08-28 15:15:39', 1),
(256, 88, '4', 'images/gallery/881566657121.jpg', 0, '2019-08-24 14:32:04', '2019-08-28 15:15:44', 1),
(257, 88, '5', 'images/gallery/881566657136.jpg', 0, '2019-08-24 14:32:18', '2019-08-28 15:15:51', 1),
(258, 88, '6', 'images/gallery/881566657204.jpg', 0, '2019-08-24 14:33:33', '2019-08-28 15:15:56', 1),
(259, 89, '1', 'images/gallery/891566658025.jpg', 0, '2019-08-24 14:47:06', '2019-08-28 15:16:02', 1),
(260, 89, '2', 'images/gallery/891566658036.jpg', 0, '2019-08-24 14:47:18', '2019-08-28 15:16:07', 1),
(261, 89, '3', 'images/gallery/891566658048.jpg', 0, '2019-08-24 14:47:29', '2019-08-28 15:16:12', 1),
(262, 89, '4', 'images/gallery/891566658059.jpg', 0, '2019-08-24 14:47:40', '2019-08-28 15:16:18', 1),
(263, 89, '5', 'images/gallery/891566658069.jpg', 0, '2019-08-24 14:47:51', '2019-08-28 15:16:23', 1),
(264, 90, '1', 'images/gallery/901566667060.jpg', 0, '2019-08-24 17:17:42', '2019-08-28 15:16:30', 1),
(265, 90, '2', 'images/gallery/901566667072.jpg', 0, '2019-08-24 17:17:54', '2019-08-28 15:16:36', 1),
(266, 90, '3', 'images/gallery/901566667085.jpg', 0, '2019-08-24 17:18:07', '2019-08-28 15:16:43', 1),
(267, 90, '4', 'images/gallery/901566667098.jpg', 0, '2019-08-24 17:18:20', '2019-08-28 15:16:48', 1),
(268, 91, '1', 'images/gallery/911566729585.jpg', 0, '2019-08-25 10:39:46', '2019-08-28 15:16:54', 1),
(269, 91, '2', 'images/gallery/911566729595.jpg', 0, '2019-08-25 10:39:58', '2019-08-28 15:16:59', 1),
(270, 91, '3', 'images/gallery/911566729608.jpg', 0, '2019-08-25 10:40:10', '2019-08-28 15:17:04', 1),
(271, 91, '4', 'images/gallery/911566729619.jpg', 0, '2019-08-25 10:40:21', '2019-08-28 15:17:09', 1),
(272, 91, '5', 'images/gallery/911566729630.jpg', 0, '2019-08-25 10:40:33', '2019-08-28 15:17:14', 1),
(273, 91, '6', 'images/gallery/911566729645.jpg', 0, '2019-08-25 10:40:48', '2019-08-28 15:17:19', 1),
(274, 91, '7', 'images/gallery/911566729659.jpg', 0, '2019-08-25 10:41:00', '2019-08-28 15:17:24', 1),
(275, 91, '8', 'images/gallery/911566729671.jpg', 0, '2019-08-25 10:41:12', '2019-08-28 15:17:30', 1),
(276, 92, '1', 'images/gallery/921566730576.jpg', 0, '2019-08-25 10:56:17', '2019-08-28 15:17:35', 1),
(277, 92, '2', 'images/gallery/921566730587.jpg', 0, '2019-08-25 10:56:29', '2019-08-28 15:17:41', 1),
(278, 92, '3', 'images/gallery/921566730599.jpg', 0, '2019-08-25 10:56:40', '2019-08-28 15:17:47', 1),
(279, 93, '1', 'images/gallery/931566731151.jpg', 0, '2019-08-25 11:05:52', '2019-08-28 15:17:55', 1),
(280, 93, '2', 'images/gallery/931566731161.jpg', 0, '2019-08-25 11:06:04', '2019-08-28 15:18:02', 1),
(281, 93, '3', 'images/gallery/931566731173.jpg', 0, '2019-08-25 11:06:15', '2019-08-28 15:18:08', 1),
(282, 93, '4', 'images/gallery/931566731183.jpg', 0, '2019-08-25 11:06:25', '2019-08-28 15:18:14', 1),
(283, 93, '5', 'images/gallery/931566731196.jpg', 0, '2019-08-25 11:06:38', '2019-08-28 15:18:21', 1),
(284, 93, '6', 'images/gallery/931566731207.jpg', 0, '2019-08-25 11:06:50', '2019-08-28 15:18:26', 1),
(285, 93, '7', 'images/gallery/931566731225.jpg', 0, '2019-08-25 11:07:07', '2019-08-28 15:18:34', 1),
(286, 93, '8', 'images/gallery/931566731238.jpg', 0, '2019-08-25 11:07:19', '2019-08-28 15:18:39', 1),
(287, 93, '9', 'images/gallery/931566731249.jpg', 0, '2019-08-25 11:07:31', '2019-08-28 15:18:49', 1),
(288, 93, '10', 'images/gallery/931566731265.jpg', 0, '2019-08-25 11:08:00', '2019-08-28 15:18:54', 1),
(289, 93, '11', 'images/gallery/931566731294.png', 0, '2019-08-25 11:08:17', '2019-08-28 15:19:27', 1),
(290, 94, '1', 'images/gallery/941566746908.jpg', 0, '2019-08-25 15:28:29', '2019-08-28 15:19:33', 1),
(291, 94, '2', 'images/gallery/941566746923.jpg', 0, '2019-08-25 15:28:44', '2019-08-28 15:19:39', 1),
(292, 94, '3', 'images/gallery/941566746938.jpg', 0, '2019-08-25 15:28:59', '2019-08-28 15:19:43', 1),
(293, 94, '4', 'images/gallery/941566746953.jpg', 0, '2019-08-25 15:29:18', '2019-08-28 15:19:48', 1),
(294, 94, '5', 'images/gallery/941566746971.jpg', 0, '2019-08-25 15:29:34', '2019-08-28 15:19:53', 1),
(295, 94, '6', 'images/gallery/941566746985.jpg', 0, '2019-08-25 15:29:48', '2019-08-28 15:19:59', 1),
(296, 95, '1', 'images/gallery/951566748467.jpg', 0, '2019-08-25 15:54:28', '2019-08-28 15:20:04', 1),
(297, 95, '2', 'images/gallery/951566748479.jpg', 0, '2019-08-25 15:54:42', '2019-08-28 15:20:10', 1),
(298, 95, '3', 'images/gallery/951566748517.jpg', 0, '2019-08-25 15:55:18', '2019-08-28 15:20:18', 1),
(299, 95, '4', 'images/gallery/951566748530.jpg', 0, '2019-08-25 15:55:32', '2019-08-28 15:20:23', 1),
(300, 95, '5', 'images/gallery/951566748544.jpg', 0, '2019-08-25 15:55:45', '2019-08-28 15:20:28', 1),
(301, 95, '6', 'images/gallery/951566748558.jpg', 0, '2019-08-25 15:56:03', '2019-08-28 15:20:35', 1),
(302, 95, '7', 'images/gallery/951566748576.jpg', 0, '2019-08-25 15:56:17', '2019-08-28 15:20:40', 1),
(303, 95, '8', 'images/gallery/951566748588.jpg', 0, '2019-08-25 15:56:31', '2019-08-28 15:20:44', 1),
(304, 95, '9', 'images/gallery/951566748605.jpg', 0, '2019-08-25 15:56:46', '2019-08-28 15:20:50', 1),
(305, 95, '10', 'images/gallery/951566748618.jpg', 0, '2019-08-25 15:56:59', '2019-08-28 15:20:55', 1),
(306, 95, '11', 'images/gallery/951566748633.jpg', 0, '2019-08-25 15:57:16', '2019-08-28 15:20:59', 1),
(307, 95, '12', 'images/gallery/951566748648.jpg', 0, '2019-08-25 15:57:30', '2019-08-28 15:21:04', 1),
(308, 95, '13', 'images/gallery/951566748661.jpg', 0, '2019-08-25 15:57:45', '2019-08-28 15:21:09', 1),
(309, 95, '14', 'images/gallery/951566748676.jpg', 0, '2019-08-25 15:57:59', '2019-08-28 15:21:14', 1),
(310, 96, '1', 'images/gallery/961566749904.jpg', 0, '2019-08-25 16:18:25', '2019-08-28 15:21:19', 1),
(311, 96, '2', 'images/gallery/961566749919.jpg', 0, '2019-08-25 16:18:40', '2019-08-28 15:21:26', 1),
(312, 96, '3', 'images/gallery/961566749932.jpg', 0, '2019-08-25 16:18:53', '2019-08-28 15:21:34', 1),
(313, 96, '4', 'images/gallery/961566749946.jpg', 0, '2019-08-25 16:19:07', '2019-08-28 15:21:39', 1),
(314, 96, '5', 'images/gallery/961566749960.jpg', 0, '2019-08-25 16:19:22', '2019-08-28 15:21:44', 1),
(315, 96, '6', 'images/gallery/961566749974.jpg', 0, '2019-08-25 16:19:35', '2019-08-28 15:21:49', 1),
(316, 96, '7', 'images/gallery/961566749989.jpg', 0, '2019-08-25 16:19:50', '2019-08-28 15:22:00', 1),
(317, 96, '8', 'images/gallery/961566750002.jpg', 0, '2019-08-25 16:20:04', '2019-08-28 15:22:09', 1),
(318, 96, '9', 'images/gallery/961566750017.jpg', 0, '2019-08-25 16:20:19', '2019-08-28 15:22:15', 1),
(319, 96, '10', 'images/gallery/961566750033.jpg', 0, '2019-08-25 16:20:35', '2019-08-28 15:22:20', 1),
(320, 96, '11', 'images/gallery/961566750049.jpg', 0, '2019-08-25 16:20:51', '2019-08-28 15:22:25', 1),
(321, 96, '12', 'images/gallery/961566750065.jpg', 0, '2019-08-25 16:21:07', '2019-08-28 15:22:31', 1),
(322, 97, '1', 'images/gallery/971566750964.jpg', 0, '2019-08-25 16:36:07', '2019-08-28 15:22:40', 1),
(323, 97, '2', 'images/gallery/971566750980.jpg', 0, '2019-08-25 16:36:22', '2019-08-28 15:22:45', 1),
(324, 98, '1', 'images/gallery/981566756111.jpg', 0, '2019-08-25 18:02:14', '2019-08-28 15:22:49', 1),
(325, 98, '2', 'images/gallery/981566756150.jpg', 0, '2019-08-25 18:02:31', '2019-08-28 15:22:54', 1),
(326, 98, '3', 'images/gallery/981566756162.jpg', 0, '2019-08-25 18:02:44', '2019-08-28 15:22:59', 1),
(327, 98, '4', 'images/gallery/981566756178.jpg', 0, '2019-08-25 18:03:01', '2019-08-28 15:23:03', 1),
(328, 98, '5', 'images/gallery/981566756196.jpg', 0, '2019-08-25 18:03:19', '2019-08-28 15:23:08', 1),
(329, 98, '6', 'images/gallery/981566756219.jpg', 0, '2019-08-25 18:03:42', '2019-08-28 15:23:13', 1),
(330, 98, '7', 'images/gallery/981566756236.jpg', 0, '2019-08-25 18:03:58', '2019-08-28 15:23:42', 1),
(331, 98, '8', 'images/gallery/981566756255.jpg', 0, '2019-08-25 18:04:17', '2019-08-28 15:23:48', 1),
(332, 98, '9', 'images/gallery/981566756271.jpg', 0, '2019-08-25 18:04:32', '2019-08-28 15:23:59', 1),
(333, 98, '10', 'images/gallery/981566756285.jpg', 0, '2019-08-25 18:04:46', '2019-08-28 15:24:04', 1),
(334, 98, '11', 'images/gallery/981566756301.jpg', 0, '2019-08-25 18:05:03', '2019-08-28 15:24:10', 1),
(335, 99, '1', 'images/gallery/991566756998.jpg', 0, '2019-08-25 18:16:39', '2019-08-28 15:24:16', 1),
(336, 99, '2', 'images/gallery/991566757012.jpg', 0, '2019-08-25 18:16:56', '2019-08-28 15:24:20', 1),
(337, 99, '3', 'images/gallery/991566757028.jpg', 0, '2019-08-25 18:17:09', '2019-08-28 15:24:25', 1),
(338, 99, '4', 'images/gallery/991566757041.jpg', 0, '2019-08-25 18:17:23', '2019-08-28 15:24:30', 1),
(339, 99, '5', 'images/gallery/991566757057.jpg', 0, '2019-08-25 18:17:38', '2019-08-28 15:24:35', 1),
(340, 99, '6', 'images/gallery/991566757069.jpg', 0, '2019-08-25 18:17:52', '2019-08-28 15:24:40', 1),
(341, 99, '7', 'images/gallery/991566757082.jpg', 0, '2019-08-25 18:18:05', '2019-08-28 15:24:45', 1),
(342, 99, '8', 'images/gallery/991566757094.jpg', 0, '2019-08-25 18:18:16', '2019-08-27 14:30:35', 1),
(343, 100, '1', 'images/gallery/1001567000466.jpg', 0, '2019-08-28 13:54:30', '2019-08-28 15:24:50', 1),
(344, 100, '2', 'images/gallery/1001567000487.jpg', 0, '2019-08-28 13:54:49', '2019-08-28 15:24:55', 1),
(345, 100, '3', 'images/gallery/1001567000506.jpg', 0, '2019-08-28 13:55:08', '2019-08-28 15:24:59', 1),
(346, 100, '4', 'images/gallery/1001567000531.jpg', 0, '2019-08-28 13:55:36', '2019-08-28 15:25:04', 1),
(347, 100, '5', 'images/gallery/1001567000552.jpg', 0, '2019-08-28 13:55:55', '2019-08-28 15:25:08', 1),
(348, 100, '6', 'images/gallery/1001567000567.jpg', 0, '2019-08-28 13:56:12', '2019-08-28 15:25:13', 1),
(349, 100, '7', 'images/gallery/1001567000585.jpg', 0, '2019-08-28 13:56:33', '2019-08-28 15:25:18', 1),
(350, 100, '8', 'images/gallery/1001567000610.jpg', 0, '2019-08-28 13:56:52', '2019-08-28 15:25:24', 1),
(351, 100, '9', 'images/gallery/1001567000635.jpg', 0, '2019-08-28 13:57:19', '2019-08-28 15:25:28', 1),
(352, 102, '1', 'images/gallery/1021567007106.jpg', 0, '2019-08-28 15:45:08', '2019-08-28 16:01:24', 1),
(353, 102, '2', 'images/gallery/1021567007121.jpg', 0, '2019-08-28 15:45:24', '2019-08-28 16:01:31', 1),
(354, 102, '3', 'images/gallery/1021567007134.jpg', 0, '2019-08-28 15:45:36', '2019-08-28 16:01:38', 1),
(355, 102, '5', 'images/gallery/1021567007146.jpg', 0, '2019-08-28 15:45:49', '2019-08-28 16:01:45', 1),
(356, 102, '6', 'images/gallery/1021567007159.jpg', 0, '2019-08-28 15:46:03', '2019-08-28 16:01:51', 1),
(357, 102, '7', 'images/gallery/1021567007249.jpg', 0, '2019-08-28 15:47:32', '2019-08-28 16:01:57', 1),
(358, 102, '8', 'images/gallery/1021567007263.jpg', 0, '2019-08-28 15:47:45', '2019-08-28 16:02:03', 1),
(359, 102, '9', 'images/gallery/1021567007280.jpg', 0, '2019-08-28 15:48:02', '2019-08-28 16:02:12', 1),
(360, 102, '10', 'images/gallery/1021567007293.jpg', 0, '2019-08-28 15:48:15', '2019-08-28 16:02:18', 1),
(361, 102, '11', 'images/gallery/1021567007305.jpg', 0, '2019-08-28 15:48:28', '2019-08-28 16:02:24', 1),
(362, 102, '12', 'images/gallery/1021567007323.jpg', 0, '2019-08-28 15:48:45', '2019-08-28 16:02:30', 1),
(364, 104, '1', 'images/gallery/1041567616735.jpg', 0, '2019-09-04 17:05:38', '2019-11-21 16:04:54', 1),
(365, 104, '2', 'images/gallery/1041567616750.jpg', 0, '2019-09-04 17:05:51', '2019-11-21 16:05:42', 1),
(366, 104, '3', 'images/gallery/1041567616774.jpg', 0, '2019-09-04 17:06:14', '2019-11-21 16:06:04', 1),
(367, 104, '4', 'images/gallery/1041567616786.jpg', 0, '2019-09-04 17:06:38', '2019-11-21 16:06:12', 1),
(368, 104, '5', 'images/gallery/1041567616818.jpg', 0, '2019-09-04 17:07:00', '2019-11-21 16:06:18', 1),
(369, 24, 'TSHIRT', 'images/gallery/241567618803.jpg', 1, '2019-09-04 17:40:10', '2019-11-21 16:06:06', 1),
(370, 105, '1', 'images/gallery/1051567618887.jpg', 0, '2019-09-04 17:41:28', '2019-11-21 16:06:26', 1),
(371, 105, '2', 'images/gallery/1051567618902.jpg', 0, '2019-09-04 17:41:43', '2019-09-04 17:41:43', 0),
(372, 105, '3', 'images/gallery/1051567618911.jpg', 0, '2019-09-04 17:41:54', '2019-09-04 17:41:54', 0),
(373, 105, '4', 'images/gallery/1051567618927.jpg', 0, '2019-09-04 17:42:09', '2019-09-04 17:42:09', 0),
(374, 105, '5', 'images/gallery/1051567618941.jpg', 0, '2019-09-04 17:42:22', '2019-09-04 17:42:22', 0),
(375, 105, '6', 'images/gallery/1051567618955.jpg', 0, '2019-09-04 17:42:37', '2019-09-04 17:42:37', 0),
(376, 105, '7', 'images/gallery/1051567618966.jpg', 0, '2019-09-04 17:42:47', '2019-09-04 17:42:47', 0),
(377, 105, '8', 'images/gallery/1051567618978.jpg', 0, '2019-09-04 17:43:00', '2019-09-04 17:43:00', 0),
(378, 105, '9', 'images/gallery/1051567618990.jpg', 0, '2019-09-04 17:43:13', '2019-09-04 17:43:13', 0),
(379, 105, '10', 'images/gallery/1051567619009.jpg', 0, '2019-09-04 17:43:32', '2019-09-04 17:43:32', 0),
(380, 106, '1', 'images/gallery/1061567721493.jpg', 0, '2019-09-05 22:11:35', '2019-09-05 22:11:35', 0),
(381, 106, '2', 'images/gallery/1061567721505.jpg', 0, '2019-09-05 22:11:46', '2019-09-05 22:11:46', 0),
(382, 106, '3', 'images/gallery/1061567721517.jpg', 0, '2019-09-05 22:12:01', '2019-09-05 22:12:01', 0),
(383, 106, '4', 'images/gallery/1061567721531.jpg', 0, '2019-09-05 22:12:13', '2019-09-05 22:12:13', 0),
(384, 107, '1', 'images/gallery/1071567722087.jpg', 0, '2019-09-05 22:21:29', '2019-09-05 22:21:29', 0),
(385, 107, '2', 'images/gallery/1071567722100.jpg', 0, '2019-09-05 22:21:41', '2019-09-05 22:21:41', 0),
(386, 107, '3', 'images/gallery/1071567722111.jpg', 0, '2019-09-05 22:21:52', '2019-09-05 22:21:52', 0),
(387, 107, '4', 'images/gallery/1071567722120.jpg', 0, '2019-09-05 22:22:01', '2019-09-05 22:22:01', 0),
(388, 107, '5', 'images/gallery/1071567722131.jpg', 0, '2019-09-05 22:22:13', '2019-09-05 22:22:13', 0),
(389, 107, '6', 'images/gallery/1071567722141.jpg', 0, '2019-09-05 22:22:22', '2019-09-05 22:22:22', 0),
(390, 107, '7', 'images/gallery/1071567722152.jpg', 0, '2019-09-05 22:22:34', '2019-09-05 22:22:34', 0),
(391, 107, '9', 'images/gallery/1071567722166.jpg', 0, '2019-09-05 22:22:48', '2019-09-05 22:22:48', 0),
(392, 108, '1', 'images/gallery/1081567722807.jpg', 0, '2019-09-05 22:33:28', '2019-09-05 22:33:28', 0),
(393, 108, '2', 'images/gallery/1081567722818.jpg', 0, '2019-09-05 22:33:39', '2019-09-05 22:33:39', 0),
(394, 108, '3', 'images/gallery/1081567722828.jpg', 0, '2019-09-05 22:33:49', '2019-09-05 22:33:49', 0),
(395, 108, '4', 'images/gallery/1081567722840.jpg', 0, '2019-09-05 22:34:01', '2019-09-05 22:34:01', 0),
(396, 108, '5', 'images/gallery/1081567722850.jpg', 0, '2019-09-05 22:34:11', '2019-09-05 22:34:11', 0),
(397, 108, '6', 'images/gallery/1081567722861.jpg', 0, '2019-09-05 22:34:22', '2019-09-05 22:34:22', 0),
(398, 108, '7', 'images/gallery/1081567722872.jpg', 0, '2019-09-05 22:34:34', '2019-09-05 22:34:34', 0),
(399, 108, '8', 'images/gallery/1081567722882.jpg', 0, '2019-09-05 22:34:44', '2019-09-05 22:34:44', 0),
(400, 108, '9', 'images/gallery/1081567722893.jpg', 0, '2019-09-05 22:34:55', '2019-09-05 22:34:55', 0),
(401, 108, '10', 'images/gallery/1081567722903.jpg', 0, '2019-09-05 22:35:05', '2019-09-05 22:35:05', 0),
(402, 108, '11', 'images/gallery/1081567722916.jpg', 0, '2019-09-05 22:35:18', '2019-09-05 22:35:18', 0),
(403, 108, '12', 'images/gallery/1081567722934.jpg', 0, '2019-09-05 22:35:35', '2019-09-05 22:35:35', 0),
(404, 108, '13', 'images/gallery/1081567722945.jpg', 0, '2019-09-05 22:35:47', '2019-09-05 22:35:47', 0),
(405, 108, '14', 'images/gallery/1081567722958.jpg', 0, '2019-09-05 22:35:59', '2019-09-05 22:35:59', 0),
(406, 109, '1', 'images/gallery/1091567725092.jpg', 0, '2019-09-05 23:11:33', '2019-09-05 23:11:33', 0),
(407, 109, '2', 'images/gallery/1091567725104.jpg', 0, '2019-09-05 23:11:46', '2019-09-05 23:11:46', 0),
(408, 110, '1', 'images/gallery/1101567725727.jpg', 0, '2019-09-05 23:22:09', '2019-09-05 23:22:09', 0),
(409, 110, '2', 'images/gallery/1101567725739.jpg', 0, '2019-09-05 23:22:22', '2019-09-05 23:22:22', 0),
(410, 110, '3', 'images/gallery/1101567725750.jpg', 0, '2019-09-05 23:22:33', '2019-09-05 23:22:33', 0),
(411, 110, '4', 'images/gallery/1101567725761.jpg', 0, '2019-09-05 23:22:43', '2019-09-05 23:22:43', 0),
(412, 110, '5', 'images/gallery/1101567725772.jpg', 0, '2019-09-05 23:22:54', '2019-09-05 23:22:54', 0),
(413, 110, '6', 'images/gallery/1101567725786.jpg', 0, '2019-09-05 23:23:07', '2019-09-05 23:23:07', 0),
(414, 110, '7', 'images/gallery/1101567725798.jpg', 0, '2019-09-05 23:23:21', '2019-09-05 23:23:21', 0),
(415, 110, '8', 'images/gallery/1101567725811.jpg', 0, '2019-09-05 23:23:34', '2019-09-05 23:23:34', 0),
(416, 110, '9', 'images/gallery/1101567725828.jpg', 0, '2019-09-05 23:23:52', '2019-09-05 23:23:52', 0),
(417, 111, '1', 'images/gallery/1111567726372.jpg', 0, '2019-09-05 23:32:53', '2019-09-05 23:32:53', 0),
(418, 111, '2', 'images/gallery/1111567726383.jpg', 0, '2019-09-05 23:33:04', '2019-09-05 23:33:04', 0),
(419, 111, '3', 'images/gallery/1111567726392.jpg', 0, '2019-09-05 23:33:14', '2019-09-05 23:33:14', 0),
(420, 111, '4', 'images/gallery/1111567726401.jpg', 0, '2019-09-05 23:33:23', '2019-09-05 23:33:23', 0),
(421, 111, '5', 'images/gallery/1111567726412.jpg', 0, '2019-09-05 23:33:33', '2019-09-05 23:33:33', 0),
(422, 111, '6', 'images/gallery/1111567726425.jpg', 0, '2019-09-05 23:33:47', '2019-09-05 23:33:47', 0),
(423, 111, '7', 'images/gallery/1111567726436.jpg', 0, '2019-09-05 23:33:58', '2019-09-05 23:33:58', 0),
(424, 111, '8', 'images/gallery/1111567726447.jpg', 0, '2019-09-05 23:34:09', '2019-09-05 23:34:09', 0),
(425, 112, '1', 'images/gallery/1121567726953.jpg', 0, '2019-09-05 23:42:34', '2019-09-05 23:42:34', 0),
(426, 112, '2', 'images/gallery/1121567726963.jpg', 0, '2019-09-05 23:42:45', '2019-09-05 23:42:45', 0),
(427, 112, '3', 'images/gallery/1121567726975.jpg', 0, '2019-09-05 23:42:56', '2019-09-05 23:42:56', 0),
(428, 112, '4', 'images/gallery/1121567726987.jpg', 0, '2019-09-05 23:43:08', '2019-09-05 23:43:08', 0),
(429, 112, '5', 'images/gallery/1121567726997.jpg', 0, '2019-09-05 23:43:19', '2019-09-05 23:43:19', 0),
(430, 112, '6', 'images/gallery/1121567727007.jpg', 0, '2019-09-05 23:43:28', '2019-09-05 23:43:28', 0),
(431, 112, '7', 'images/gallery/1121567727017.jpg', 0, '2019-09-05 23:43:39', '2019-09-05 23:43:39', 0),
(432, 112, '8', 'images/gallery/1121567727030.jpg', 0, '2019-09-05 23:43:51', '2019-09-05 23:43:51', 0),
(433, 113, '1', 'images/gallery/1131567727597.jpg', 0, '2019-09-05 23:53:19', '2019-09-05 23:53:19', 0),
(434, 113, '2', 'images/gallery/1131567727612.jpg', 0, '2019-09-05 23:53:33', '2019-09-05 23:53:33', 0),
(435, 113, '3', 'images/gallery/1131567727625.jpg', 0, '2019-09-05 23:53:46', '2019-09-05 23:53:46', 0),
(436, 113, '4', 'images/gallery/1131567727636.jpg', 0, '2019-09-05 23:53:57', '2019-09-05 23:53:57', 0),
(437, 113, '5', 'images/gallery/1131567727650.jpg', 0, '2019-09-05 23:54:11', '2019-09-05 23:54:11', 0),
(438, 113, '6', 'images/gallery/1131567727661.jpg', 0, '2019-09-05 23:54:24', '2019-09-05 23:54:24', 0),
(439, 113, '7', 'images/gallery/1131567727675.jpg', 0, '2019-09-05 23:54:36', '2019-09-05 23:54:36', 0),
(440, 113, '8', 'images/gallery/1131567727688.jpg', 0, '2019-09-05 23:54:49', '2019-09-05 23:54:49', 0),
(441, 113, '9', 'images/gallery/1131567727698.jpg', 0, '2019-09-05 23:54:59', '2019-09-05 23:54:59', 0),
(442, 113, '10', 'images/gallery/1131567727711.jpg', 0, '2019-09-05 23:55:12', '2019-09-05 23:55:12', 0),
(443, 113, '11', 'images/gallery/1131567727722.jpg', 0, '2019-09-05 23:55:24', '2019-09-05 23:55:24', 0),
(444, 113, '12', 'images/gallery/1131567727733.jpg', 0, '2019-09-05 23:55:35', '2019-09-05 23:55:35', 0),
(445, 113, '13', 'images/gallery/1131567727746.jpg', 0, '2019-09-05 23:55:48', '2019-09-05 23:55:48', 0),
(446, 113, '14', 'images/gallery/1131567727765.jpg', 0, '2019-09-05 23:56:06', '2019-09-05 23:56:06', 0),
(447, 113, '15', 'images/gallery/1131567727776.jpg', 0, '2019-09-05 23:56:17', '2019-09-05 23:56:17', 0),
(448, 113, '16', 'images/gallery/1131567727786.jpg', 0, '2019-09-05 23:56:29', '2019-09-05 23:56:29', 0),
(449, 113, '17', 'images/gallery/1131567727800.jpg', 0, '2019-09-05 23:56:41', '2019-09-05 23:56:41', 0),
(450, 113, '18', 'images/gallery/1131567727811.jpg', 0, '2019-09-05 23:56:52', '2019-09-05 23:56:52', 0),
(451, 113, '19', 'images/gallery/1131567727822.jpg', 0, '2019-09-05 23:57:03', '2019-09-05 23:57:03', 0),
(452, 114, '1', 'images/gallery/1141567728469.jpg', 0, '2019-09-06 00:07:51', '2019-09-06 00:07:51', 0),
(453, 114, '2', 'images/gallery/1141567728479.jpg', 0, '2019-09-06 00:08:00', '2019-09-06 00:08:00', 0),
(454, 114, '3', 'images/gallery/1141567728490.jpg', 0, '2019-09-06 00:08:11', '2019-09-06 00:08:11', 0),
(455, 114, '4', 'images/gallery/1141567728501.jpg', 0, '2019-09-06 00:08:23', '2019-09-06 00:08:23', 0),
(456, 114, '5', 'images/gallery/1141567728513.jpg', 0, '2019-09-06 00:08:35', '2019-09-06 00:08:35', 0),
(457, 114, '6', 'images/gallery/1141567728526.jpg', 0, '2019-09-06 00:08:48', '2019-09-06 00:08:48', 0),
(458, 114, '7', 'images/gallery/1141567728536.jpg', 0, '2019-09-06 00:08:58', '2019-09-06 00:08:58', 0),
(459, 114, '8', 'images/gallery/1141567728551.jpg', 0, '2019-09-06 00:09:13', '2019-09-06 00:09:13', 0),
(460, 114, '9', 'images/gallery/1141567728563.jpg', 0, '2019-09-06 00:09:24', '2019-09-06 00:09:24', 0),
(461, 114, '10', 'images/gallery/1141567728575.jpg', 0, '2019-09-06 00:09:36', '2019-09-06 00:09:36', 0),
(462, 114, '11', 'images/gallery/1141567728586.jpg', 0, '2019-09-06 00:09:48', '2019-09-06 00:09:48', 0),
(463, 114, '12', 'images/gallery/1141567728597.jpg', 0, '2019-09-06 00:10:00', '2019-09-06 00:10:00', 0),
(464, 114, '13', 'images/gallery/1141567728611.jpg', 0, '2019-09-06 00:10:12', '2019-09-06 00:10:12', 0),
(465, 114, '14', 'images/gallery/1141567728630.jpg', 0, '2019-09-06 00:10:32', '2019-09-06 00:10:32', 0),
(466, 114, '15', 'images/gallery/1141567728643.jpg', 0, '2019-09-06 00:10:44', '2019-09-06 00:10:44', 0),
(467, 114, '16', 'images/gallery/1141567728655.jpg', 0, '2019-09-06 00:10:56', '2019-09-06 00:10:56', 0),
(468, 114, '17', 'images/gallery/1141567728668.jpg', 0, '2019-09-06 00:11:10', '2019-09-06 00:11:10', 0),
(469, 114, '18', 'images/gallery/1141567728682.jpg', 0, '2019-09-06 00:11:23', '2019-09-06 00:11:23', 0),
(470, 114, '19', 'images/gallery/1141567728696.jpg', 0, '2019-09-06 00:11:37', '2019-09-06 00:11:37', 0),
(471, 114, '20', 'images/gallery/1141567728707.jpg', 0, '2019-09-06 00:11:49', '2019-09-06 00:11:49', 0),
(472, 114, '21', 'images/gallery/1141567728717.jpg', 0, '2019-09-06 00:12:00', '2019-09-06 00:12:00', 0),
(473, 114, '22', 'images/gallery/1141567728730.jpg', 0, '2019-09-06 00:12:11', '2019-09-06 00:12:11', 0),
(474, 115, '1', 'images/gallery/1151567779354.jpg', 0, '2019-09-06 14:16:09', '2019-09-06 14:16:09', 0),
(475, 115, '2', 'images/gallery/1151567779378.jpg', 0, '2019-09-06 14:16:20', '2019-09-06 14:16:20', 0),
(476, 115, '3', 'images/gallery/1151567779389.jpg', 0, '2019-09-06 14:16:32', '2019-09-06 14:16:32', 0),
(477, 115, '4', 'images/gallery/1151567779402.jpg', 0, '2019-09-06 14:16:44', '2019-09-06 14:16:44', 0),
(478, 115, '5', 'images/gallery/1151567779413.jpg', 0, '2019-09-06 14:16:54', '2019-09-06 14:16:54', 0),
(479, 115, '6', 'images/gallery/1151567779423.jpg', 0, '2019-09-06 14:17:04', '2019-09-06 14:17:04', 0),
(480, 115, '7', 'images/gallery/1151567779436.jpg', 0, '2019-09-06 14:17:17', '2019-09-06 14:17:17', 0),
(481, 115, '8', 'images/gallery/1151567779450.jpg', 0, '2019-09-06 14:17:32', '2019-09-06 14:17:32', 0),
(482, 115, '9', 'images/gallery/1151567779463.jpg', 0, '2019-09-06 14:17:45', '2019-09-06 14:17:45', 0),
(483, 116, '1', 'images/gallery/1161567973568.jpg', 0, '2019-09-08 20:12:51', '2019-09-08 20:12:51', 0),
(484, 116, '2', 'images/gallery/1161567973580.jpg', 0, '2019-09-08 20:13:02', '2019-09-08 20:13:02', 0),
(485, 116, '3', 'images/gallery/1161567973589.jpg', 0, '2019-09-08 20:13:10', '2019-09-08 20:13:10', 0),
(486, 116, '4', 'images/gallery/1161567973601.jpg', 0, '2019-09-08 20:13:22', '2019-09-08 20:13:22', 0),
(487, 116, '5', 'images/gallery/1161567973613.jpg', 0, '2019-09-08 20:13:35', '2019-09-08 20:13:35', 0),
(488, 116, '6', 'images/gallery/1161567973627.jpg', 0, '2019-09-08 20:13:48', '2019-09-08 20:13:48', 0),
(489, 116, '7', 'images/gallery/1161567973637.jpg', 0, '2019-09-08 20:13:59', '2019-09-08 20:13:59', 0),
(490, 116, '8', 'images/gallery/1161567973648.jpg', 0, '2019-09-08 20:14:09', '2019-09-08 20:14:09', 0),
(491, 116, '9', 'images/gallery/1161567973659.jpg', 0, '2019-09-08 20:14:21', '2019-09-08 20:14:21', 0),
(492, 116, '10', 'images/gallery/1161567973670.jpg', 0, '2019-09-08 20:14:33', '2019-09-08 20:14:33', 0),
(493, 116, '11', 'images/gallery/1161567973684.jpg', 0, '2019-09-08 20:14:45', '2019-09-08 20:14:45', 0),
(494, 116, '12', 'images/gallery/1161567973694.jpg', 0, '2019-09-08 20:14:56', '2019-09-08 20:14:56', 0),
(495, 116, '13', 'images/gallery/1161567973705.jpg', 0, '2019-09-08 20:15:08', '2019-09-08 20:15:08', 0),
(496, 116, '14', 'images/gallery/1161567973719.jpg', 0, '2019-09-08 20:15:20', '2019-09-08 20:15:20', 0),
(497, 116, '15', 'images/gallery/1161567973729.jpg', 0, '2019-09-08 20:15:32', '2019-09-08 20:15:32', 0),
(498, 116, '16', 'images/gallery/1161567973752.jpg', 0, '2019-09-08 20:15:56', '2019-09-08 20:15:56', 0),
(499, 116, '17', 'images/gallery/1161567973765.jpg', 0, '2019-09-08 20:16:06', '2019-09-08 20:16:06', 0);
INSERT INTO `gallery` (`id`, `partner_id`, `title`, `img_url`, `promote`, `created_at`, `updated_at`, `status`) VALUES
(500, 116, '18', 'images/gallery/1161567973785.jpg', 0, '2019-09-08 20:16:27', '2019-09-08 20:16:27', 0),
(501, 116, '19', 'images/gallery/1161567973795.jpg', 0, '2019-09-08 20:16:36', '2019-09-08 20:16:36', 0),
(502, 116, '20', 'images/gallery/1161567973805.jpg', 0, '2019-09-08 20:16:48', '2019-09-08 20:16:48', 0),
(503, 116, '21', 'images/gallery/1161567973817.jpg', 0, '2019-09-08 20:16:58', '2019-09-08 20:16:58', 0),
(504, 116, '21', 'images/gallery/1161567973837.jpg', 0, '2019-09-08 20:17:19', '2019-09-08 20:17:19', 0),
(505, 116, '22', 'images/gallery/1161567973848.jpg', 0, '2019-09-08 20:17:30', '2019-09-08 20:17:30', 0),
(506, 116, '23', 'images/gallery/1161567973865.jpg', 0, '2019-09-08 20:17:47', '2019-09-08 20:17:47', 0),
(507, 116, '24', 'images/gallery/1161567973877.jpg', 0, '2019-09-08 20:18:00', '2019-09-08 20:18:00', 0),
(508, 116, '25', 'images/gallery/1161567973893.jpg', 0, '2019-09-08 20:18:15', '2019-09-08 20:18:15', 0),
(509, 116, '26', 'images/gallery/1161567973907.jpg', 0, '2019-09-08 20:18:29', '2019-09-08 20:18:29', 0),
(510, 116, '27', 'images/gallery/1161567973921.jpg', 0, '2019-09-08 20:18:42', '2019-09-08 20:18:42', 0),
(511, 116, '28', 'images/gallery/1161567973935.jpg', 0, '2019-09-08 20:18:57', '2019-09-08 20:18:57', 0),
(512, 116, '29', 'images/gallery/1161567973948.jpg', 0, '2019-09-08 20:19:09', '2019-09-08 20:19:09', 0),
(513, 117, '1', 'images/gallery/1171567974877.jpg', 0, '2019-09-08 20:34:38', '2019-09-08 20:34:38', 0),
(514, 117, '2', 'images/gallery/1171567974890.jpg', 0, '2019-09-08 20:34:51', '2019-09-08 20:34:51', 0),
(515, 117, '3', 'images/gallery/1171567974903.jpg', 0, '2019-09-08 20:35:03', '2019-09-08 20:35:03', 0),
(516, 117, '4', 'images/gallery/1171567974913.jpg', 0, '2019-09-08 20:35:14', '2019-09-08 20:35:14', 0),
(517, 117, '5', 'images/gallery/1171567974923.jpg', 0, '2019-09-08 20:35:25', '2019-09-08 20:35:25', 0),
(518, 117, '6', 'images/gallery/1171567974935.jpg', 0, '2019-09-08 20:35:37', '2019-09-08 20:35:37', 0),
(519, 117, '7', 'images/gallery/1171567974948.jpg', 0, '2019-09-08 20:35:50', '2019-09-08 20:35:50', 0),
(520, 117, '8', 'images/gallery/1171567974958.jpg', 0, '2019-09-08 20:36:00', '2019-09-08 20:36:00', 0),
(521, 117, '9', 'images/gallery/1171567974969.jpg', 0, '2019-09-08 20:36:10', '2019-09-08 20:36:10', 0),
(522, 118, '1', 'images/gallery/1181567978093.jpg', 0, '2019-09-08 21:28:14', '2019-09-08 21:28:14', 0),
(523, 118, '2', 'images/gallery/1181567978104.jpg', 0, '2019-09-08 21:28:25', '2019-09-08 21:28:25', 0),
(524, 118, '3', 'images/gallery/1181567978114.jpg', 0, '2019-09-08 21:28:36', '2019-09-08 21:28:36', 0),
(525, 118, '4', 'images/gallery/1181567978125.jpg', 0, '2019-09-08 21:28:48', '2019-09-08 21:28:48', 0),
(526, 118, '5', 'images/gallery/1181567978140.jpg', 0, '2019-09-08 21:29:02', '2019-09-08 21:29:02', 0),
(527, 118, '6', 'images/gallery/1181567978154.jpg', 0, '2019-09-08 21:29:15', '2019-09-08 21:29:15', 0),
(528, 118, '7', 'images/gallery/1181567978164.jpg', 0, '2019-09-08 21:29:25', '2019-09-08 21:29:25', 0),
(529, 119, '1', 'images/gallery/1191567978844.jpg', 0, '2019-09-08 21:40:45', '2019-09-08 21:40:45', 0),
(530, 119, '2', 'images/gallery/1191567978854.jpg', 0, '2019-09-08 21:40:56', '2019-09-08 21:40:56', 0),
(531, 119, '3', 'images/gallery/1191567978864.jpg', 0, '2019-09-08 21:41:07', '2019-09-08 21:41:07', 0),
(532, 119, '4', 'images/gallery/1191567978875.jpg', 0, '2019-09-08 21:41:16', '2019-09-08 21:41:16', 0),
(533, 119, '5', 'images/gallery/1191567978886.jpg', 0, '2019-09-08 21:41:28', '2019-09-08 21:41:28', 0),
(534, 119, '6', 'images/gallery/1191567978898.jpg', 0, '2019-09-08 21:41:40', '2019-09-08 21:41:40', 0),
(535, 120, '1', 'images/gallery/1201567979818.jpg', 0, '2019-09-08 21:56:59', '2019-09-08 21:56:59', 0),
(536, 120, '2', 'images/gallery/1201567979829.jpg', 0, '2019-09-08 21:57:11', '2019-09-08 21:57:11', 0),
(537, 120, '3', 'images/gallery/1201567979842.jpg', 0, '2019-09-08 21:57:22', '2019-09-08 21:57:22', 0),
(538, 120, '4', 'images/gallery/1201567979851.jpg', 0, '2019-09-08 21:57:33', '2019-09-08 21:57:33', 0),
(539, 120, '5', 'images/gallery/1201567979863.jpg', 0, '2019-09-08 21:57:45', '2019-09-08 21:57:45', 0),
(540, 121, '1', 'images/gallery/1211568039380.jpg', 0, '2019-09-09 14:29:41', '2019-09-09 14:29:41', 0),
(541, 121, '2', 'images/gallery/1211568039393.jpg', 0, '2019-09-09 14:29:57', '2019-09-09 14:29:57', 0),
(542, 121, '3', 'images/gallery/1211568039704.jpg', 0, '2019-09-09 14:35:07', '2019-09-09 14:35:07', 0),
(543, 121, '4', 'images/gallery/1211568039722.jpg', 0, '2019-09-09 14:35:24', '2019-09-09 14:35:24', 0),
(544, 121, '5', 'images/gallery/1211568039736.jpg', 0, '2019-09-09 14:35:38', '2019-09-09 14:35:38', 0),
(545, 121, '6', 'images/gallery/1211568039749.jpg', 0, '2019-09-09 14:35:50', '2019-09-09 14:35:50', 0),
(546, 121, '7', 'images/gallery/1211568039761.jpg', 0, '2019-09-09 14:36:03', '2019-09-09 14:36:03', 0),
(547, 121, '8', 'images/gallery/1211568039772.jpg', 0, '2019-09-09 14:36:13', '2019-09-09 14:36:13', 0),
(548, 121, '9', 'images/gallery/1211568039788.jpg', 0, '2019-09-09 14:36:30', '2019-09-09 14:36:30', 0),
(549, 121, '10', 'images/gallery/1211568039803.jpg', 0, '2019-09-09 15:25:07', '2019-09-09 15:25:07', 0),
(550, 121, '11', 'images/gallery/1211568042725.jpg', 0, '2019-09-09 15:25:26', '2019-09-09 15:25:26', 0),
(551, 121, '12', 'images/gallery/1211568042740.jpg', 0, '2019-09-09 15:25:41', '2019-09-09 15:25:41', 0),
(552, 122, '1', 'images/gallery/1221568043318.jpg', 0, '2019-09-09 15:35:19', '2019-09-09 15:35:19', 0),
(553, 122, '2', 'images/gallery/1221568043328.jpg', 0, '2019-09-09 15:35:30', '2019-09-09 15:35:30', 0),
(554, 122, '3', 'images/gallery/1221568043339.jpg', 0, '2019-09-09 15:35:41', '2019-09-09 15:35:41', 0),
(555, 122, '4', 'images/gallery/1221568043351.jpg', 0, '2019-09-09 15:35:52', '2019-09-09 15:35:52', 0),
(556, 123, '1', 'images/gallery/1231568043915.jpg', 0, '2019-09-09 15:45:17', '2019-09-09 15:45:17', 0),
(557, 123, '2', 'images/gallery/1231568043926.jpg', 0, '2019-09-09 15:45:28', '2019-09-09 15:45:28', 0),
(558, 123, '3', 'images/gallery/1231568043936.jpg', 0, '2019-09-09 15:45:38', '2019-09-09 15:45:38', 0),
(559, 123, '4', 'images/gallery/1231568043949.jpg', 0, '2019-09-09 15:45:50', '2019-09-09 15:45:50', 0),
(560, 123, '5', 'images/gallery/1231568043959.jpg', 0, '2019-09-09 15:46:02', '2019-09-09 15:46:02', 0),
(561, 123, '6', 'images/gallery/1231568043971.jpg', 0, '2019-09-09 15:46:12', '2019-09-09 15:46:12', 0),
(562, 123, '7', 'images/gallery/1231568043986.jpg', 0, '2019-09-09 15:46:28', '2019-09-09 15:46:28', 0),
(563, 123, '8', 'images/gallery/1231568043999.jpg', 0, '2019-09-09 15:46:41', '2019-09-09 15:46:41', 0),
(564, 123, '9', 'images/gallery/1231568044014.jpg', 0, '2019-09-09 15:46:55', '2019-09-09 15:46:55', 0),
(565, 123, '10', 'images/gallery/1231568044024.jpg', 0, '2019-09-09 15:47:07', '2019-09-09 15:47:07', 0),
(566, 124, '1', 'images/gallery/1241568044576.jpg', 0, '2019-09-09 15:56:17', '2019-09-09 15:56:17', 0),
(567, 124, '2', 'images/gallery/1241568044587.jpg', 0, '2019-09-09 15:56:30', '2019-09-09 15:56:30', 0),
(568, 124, '3', 'images/gallery/1241568044601.jpg', 0, '2019-09-09 15:56:44', '2019-09-09 15:56:44', 0),
(569, 124, '4', 'images/gallery/1241568044612.jpg', 0, '2019-09-09 15:56:54', '2019-09-09 15:56:54', 0),
(570, 124, '5', 'images/gallery/1241568044621.jpg', 0, '2019-09-09 15:57:03', '2019-09-09 15:57:03', 0),
(571, 124, '6', 'images/gallery/1241568044633.jpg', 0, '2019-09-09 15:57:14', '2019-09-09 15:57:14', 0),
(572, 127, '1', 'images/gallery/1271568394913.jpg', 0, '2019-09-13 17:15:14', '2019-09-13 17:15:14', 0),
(573, 127, '2', 'images/gallery/1271568394930.jpg', 0, '2019-09-13 17:15:31', '2019-09-13 17:15:31', 0),
(574, 127, '3', 'images/gallery/1271568394957.jpg', 0, '2019-09-13 17:16:00', '2019-09-13 17:16:00', 0),
(575, 127, '4', 'images/gallery/1271568394988.jpg', 0, '2019-09-13 17:16:35', '2019-09-13 17:16:35', 0),
(576, 127, '5', 'images/gallery/1271568395017.jpg', 0, '2019-09-13 17:17:02', '2019-09-13 17:17:02', 0),
(577, 127, '6', 'images/gallery/1271568395038.jpg', 0, '2019-09-13 17:17:21', '2019-09-13 17:17:21', 0),
(578, 127, '7', 'images/gallery/1271568395058.jpg', 0, '2019-09-13 17:17:42', '2019-09-13 17:17:42', 0),
(579, 127, '8', 'images/gallery/1271568395087.jpg', 0, '2019-09-13 17:18:10', '2019-09-13 17:18:10', 0),
(580, 127, '9', 'images/gallery/1271568395108.jpg', 0, '2019-09-13 17:18:31', '2019-09-13 17:18:31', 0),
(581, 127, '10', 'images/gallery/1271568395135.jpg', 0, '2019-09-13 17:18:56', '2019-09-13 17:18:56', 0),
(582, 127, '11', 'images/gallery/1271568395155.jpg', 0, '2019-09-13 17:19:17', '2019-09-13 17:19:17', 0),
(583, 127, '12', 'images/gallery/1271568395172.jpg', 0, '2019-09-13 17:19:35', '2019-09-13 17:19:35', 0),
(584, 127, '13', 'images/gallery/1271568395194.jpg', 0, '2019-09-13 17:19:56', '2019-09-13 17:19:56', 0),
(585, 127, '14', 'images/gallery/1271568395212.jpg', 0, '2019-09-13 17:20:13', '2019-09-13 17:20:13', 0),
(586, 127, '15', 'images/gallery/1271568395237.jpg', 0, '2019-09-13 17:20:39', '2019-09-13 17:20:39', 0),
(587, 127, '16', 'images/gallery/1271568395252.jpg', 0, '2019-09-13 17:20:55', '2019-09-13 17:20:55', 0),
(588, 127, '17', 'images/gallery/1271568395265.jpg', 0, '2019-09-13 17:21:08', '2019-09-13 17:21:08', 0),
(589, 127, '18', 'images/gallery/1271568395279.jpg', 0, '2019-09-13 17:21:51', '2019-09-13 17:21:51', 0),
(590, 127, '19', 'images/gallery/1271568395358.jpg', 0, '2019-09-13 17:22:39', '2019-09-13 17:22:39', 0),
(591, 127, '20', 'images/gallery/1271568395373.jpg', 0, '2019-09-13 17:23:04', '2019-09-13 17:23:04', 0),
(592, 127, '21', 'images/gallery/1271568395397.jpg', 0, '2019-09-13 17:23:19', '2019-09-13 17:23:19', 0),
(593, 127, '22', 'images/gallery/1271568395415.jpg', 0, '2019-09-13 17:23:36', '2019-09-13 17:23:36', 0),
(594, 127, '23', 'images/gallery/1271568395450.jpg', 0, '2019-09-13 17:24:12', '2019-09-13 17:24:12', 0),
(595, 127, '24', 'images/gallery/1271568395486.jpg', 0, '2019-09-13 17:24:57', '2019-09-13 17:24:57', 0),
(596, 127, '25', 'images/gallery/1271568395538.jpg', 0, '2019-09-13 17:26:24', '2019-09-13 17:26:24', 0),
(597, 128, '1', 'images/gallery/1281568396461.jpg', 0, '2019-09-13 17:41:03', '2019-09-13 17:41:03', 0),
(598, 128, '2', 'images/gallery/1281568396474.jpg', 0, '2019-09-13 17:41:15', '2019-09-13 17:41:15', 0),
(599, 128, '3', 'images/gallery/1281568396487.jpg', 0, '2019-09-13 17:41:28', '2019-09-13 17:41:28', 0),
(600, 128, '4', 'images/gallery/1281568396498.jpg', 0, '2019-09-13 17:41:40', '2019-09-13 17:41:40', 0),
(601, 128, '5', 'images/gallery/1281568396510.jpg', 0, '2019-09-13 17:41:52', '2019-09-13 17:41:52', 0),
(602, 128, '6', 'images/gallery/1281568396521.jpg', 0, '2019-09-13 17:42:19', '2019-09-13 17:42:19', 0),
(603, 128, '7', 'images/gallery/1281568396549.jpg', 0, '2019-09-13 17:42:31', '2019-09-13 17:42:31', 0),
(604, 129, '1', 'images/gallery/1291568397731.jpg', 0, '2019-09-13 18:02:13', '2019-09-13 18:02:13', 0),
(605, 129, '2', 'images/gallery/1291568397741.jpg', 0, '2019-09-13 18:02:23', '2019-09-13 18:02:23', 0),
(606, 129, '3', 'images/gallery/1291568397754.jpg', 0, '2019-09-13 18:02:37', '2019-09-13 18:02:37', 0),
(607, 129, '4', 'images/gallery/1291568397768.jpg', 0, '2019-09-13 18:02:50', '2019-09-13 18:02:50', 0),
(608, 129, '5', 'images/gallery/1291568397780.jpg', 0, '2019-09-13 18:03:02', '2019-09-13 18:03:02', 0),
(609, 129, '6', 'images/gallery/1291568397794.jpg', 0, '2019-09-13 18:03:15', '2019-09-13 18:03:15', 0),
(610, 129, '7', 'images/gallery/1291568397807.jpg', 0, '2019-09-13 18:03:28', '2019-09-13 18:03:28', 0),
(611, 129, '8', 'images/gallery/1291568397818.jpg', 0, '2019-09-13 18:03:39', '2019-09-13 18:03:39', 0),
(612, 129, '9', 'images/gallery/1291568397831.jpg', 0, '2019-09-13 18:03:54', '2019-09-13 18:03:54', 0),
(613, 129, '10', 'images/gallery/1291568397845.jpg', 0, '2019-09-13 18:04:06', '2019-09-13 18:04:06', 0),
(614, 129, '11', 'images/gallery/1291568397859.jpg', 0, '2019-09-13 18:04:21', '2019-09-13 18:04:21', 0),
(615, 129, '12', 'images/gallery/1291568397874.jpg', 0, '2019-09-13 18:04:36', '2019-09-13 18:04:36', 0),
(616, 129, '13', 'images/gallery/1291568397886.jpg', 0, '2019-09-13 18:04:48', '2019-09-13 18:04:48', 0),
(617, 129, '14', 'images/gallery/1291568397901.jpg', 0, '2019-09-13 18:05:03', '2019-09-13 18:05:03', 0),
(618, 129, '15', 'images/gallery/1291568397916.jpg', 0, '2019-09-13 18:05:19', '2019-09-13 18:05:19', 0),
(619, 129, '16', 'images/gallery/1291568397931.jpg', 0, '2019-09-13 18:05:33', '2019-09-13 18:05:33', 0),
(620, 129, '17', 'images/gallery/1291568397944.jpg', 0, '2019-09-13 18:05:45', '2019-09-13 18:05:45', 0),
(621, 129, '18', 'images/gallery/1291568397957.jpg', 0, '2019-09-13 18:05:59', '2019-09-13 18:05:59', 0),
(622, 129, '19', 'images/gallery/1291568397970.jpg', 0, '2019-09-13 18:06:12', '2019-09-13 18:06:12', 0),
(623, 129, '20', 'images/gallery/1291568397983.jpg', 0, '2019-09-13 18:06:25', '2019-09-13 18:06:25', 0),
(624, 130, '1', 'images/gallery/1301568398896.jpg', 0, '2019-09-13 18:21:41', '2019-09-13 18:21:41', 0),
(625, 130, '2', 'images/gallery/1301568398911.jpg', 0, '2019-09-13 18:21:53', '2019-09-13 18:21:53', 0),
(626, 130, '3', 'images/gallery/1301568398922.jpg', 0, '2019-09-13 18:22:03', '2019-09-13 18:22:03', 0),
(627, 130, '4', 'images/gallery/1301568398934.jpg', 0, '2019-09-13 18:22:15', '2019-09-13 18:22:15', 0),
(628, 130, '5', 'images/gallery/1301568398945.jpg', 0, '2019-09-13 18:22:27', '2019-09-13 18:22:27', 0),
(629, 130, '6', 'images/gallery/1301568398959.jpg', 0, '2019-09-13 18:22:42', '2019-09-13 18:22:42', 0),
(630, 130, '7', 'images/gallery/1301568398973.jpg', 0, '2019-09-13 18:22:55', '2019-09-13 18:22:55', 0),
(631, 130, '8', 'images/gallery/1301568398984.jpg', 0, '2019-09-13 18:23:06', '2019-09-13 18:23:06', 0),
(632, 130, '9', 'images/gallery/1301568398995.jpg', 0, '2019-09-13 18:23:17', '2019-09-13 18:23:17', 0),
(633, 130, '10', 'images/gallery/1301568399014.jpg', 0, '2019-09-13 18:23:35', '2019-09-13 18:23:35', 0),
(634, 130, '11', 'images/gallery/1301568399027.jpg', 0, '2019-09-13 18:23:49', '2019-09-13 18:23:49', 0),
(635, 130, '12', 'images/gallery/1301568399042.jpg', 0, '2019-09-13 18:24:04', '2019-09-13 18:24:04', 0),
(636, 130, '13', 'images/gallery/1301568399057.jpg', 0, '2019-09-13 18:24:19', '2019-09-13 18:24:19', 0),
(637, 131, '1', 'images/gallery/1311568406692.jpg', 0, '2019-09-13 20:31:33', '2019-09-13 20:31:33', 0),
(638, 131, '2', 'images/gallery/1311568406702.jpg', 0, '2019-09-13 20:31:43', '2019-09-13 20:31:43', 0),
(639, 131, '3', 'images/gallery/1311568406712.jpg', 0, '2019-09-13 20:31:53', '2019-09-13 20:31:53', 0),
(640, 131, '4', 'images/gallery/1311568406722.jpg', 0, '2019-09-13 20:32:05', '2019-09-13 20:32:05', 0),
(641, 131, '5', 'images/gallery/1311568406735.jpg', 0, '2019-09-13 20:32:17', '2019-09-13 20:32:17', 0),
(642, 131, '6', 'images/gallery/1311568406864.jpg', 0, '2019-09-13 20:34:25', '2019-09-13 20:34:25', 0),
(643, 131, '7', 'images/gallery/1311568407007.jpg', 0, '2019-09-13 20:36:50', '2019-09-13 20:36:50', 0),
(644, 131, '7', 'images/gallery/1311568407137.jpg', 0, '2019-09-13 20:39:00', '2019-09-13 20:39:00', 0),
(645, 131, '8', 'images/gallery/1311568407690.jpg', 0, '2019-09-13 20:48:15', '2019-09-13 20:48:15', 0),
(646, 131, '9', 'images/gallery/1311568407841.jpg', 0, '2019-09-13 20:50:43', '2019-09-13 20:50:43', 0),
(647, 131, '10', 'images/gallery/1311568407955.jpg', 0, '2019-09-13 20:52:41', '2019-09-13 20:52:41', 0),
(648, 131, '11', 'images/gallery/1311568408101.jpg', 0, '2019-09-13 20:55:08', '2019-09-13 20:55:08', 0),
(649, 131, '13', 'images/gallery/1311568408302.jpg', 0, '2019-09-13 20:58:25', '2019-09-13 20:58:25', 0),
(650, 131, '14', 'images/gallery/1311568408436.jpg', 0, '2019-09-13 21:00:43', '2019-09-13 21:00:43', 0),
(651, 131, '15', 'images/gallery/1311568408579.jpg', 0, '2019-09-13 21:03:19', '2019-09-13 21:03:19', 0),
(652, 131, '16', 'images/gallery/1311568408776.jpg', 0, '2019-09-13 21:06:27', '2019-09-13 21:06:27', 0),
(653, 131, '17', 'images/gallery/1311568408975.jpg', 0, '2019-09-13 21:09:38', '2019-09-13 21:09:38', 0),
(654, 131, '18', 'images/gallery/1311568409127.jpg', 0, '2019-09-13 21:12:08', '2019-09-13 21:12:08', 0),
(655, 131, '19', 'images/gallery/1311568409286.jpg', 0, '2019-09-13 21:15:07', '2019-09-13 21:15:07', 0),
(656, 131, '20', 'images/gallery/1311568409439.jpg', 0, '2019-09-13 21:17:25', '2019-09-13 21:17:25', 0),
(657, 131, '21', 'images/gallery/1311568409608.jpg', 0, '2019-09-13 21:20:14', '2019-09-13 21:20:14', 0),
(658, 131, '22', 'images/gallery/1311568409788.jpg', 0, '2019-09-13 21:23:35', '2019-09-13 21:23:35', 0),
(659, 132, '1', 'images/gallery/1321568410437.jpg', 0, '2019-09-13 21:33:57', '2019-09-13 21:33:57', 0),
(660, 132, '2', 'images/gallery/1321568410445.jpg', 0, '2019-09-13 21:34:06', '2019-09-13 21:34:06', 0),
(661, 132, '3', 'images/gallery/1321568410459.jpg', 0, '2019-09-13 21:34:20', '2019-09-13 21:34:20', 0),
(662, 132, '4', 'images/gallery/1321568410469.jpg', 0, '2019-09-13 21:34:30', '2019-09-13 21:34:30', 0),
(663, 132, '5', 'images/gallery/1321568410481.jpg', 0, '2019-09-13 21:34:43', '2019-09-13 21:34:43', 0),
(664, 132, '6', 'images/gallery/1321568410494.jpg', 0, '2019-09-13 21:34:55', '2019-09-13 21:34:55', 0),
(665, 132, '7', 'images/gallery/1321568410506.jpg', 0, '2019-09-13 21:35:08', '2019-09-13 21:35:08', 0),
(666, 133, '1', 'images/gallery/1331568411148.jpg', 0, '2019-09-13 21:45:50', '2019-09-13 21:45:50', 0),
(667, 133, '2', 'images/gallery/1331568411164.jpg', 0, '2019-09-13 21:46:06', '2019-09-13 21:46:06', 0),
(668, 133, '3', 'images/gallery/1331568411174.jpg', 0, '2019-09-13 21:46:16', '2019-09-13 21:46:16', 0),
(669, 133, '4', 'images/gallery/1331568411183.jpg', 0, '2019-09-13 21:46:25', '2019-09-13 21:46:25', 0),
(670, 133, '5', 'images/gallery/1331568411193.jpg', 0, '2019-09-13 21:46:34', '2019-09-13 21:46:34', 0),
(671, 133, '6', 'images/gallery/1331568411202.jpg', 0, '2019-09-13 21:46:43', '2019-09-13 21:46:43', 0),
(672, 133, '7', 'images/gallery/1331568411212.jpg', 0, '2019-09-13 21:46:53', '2019-09-13 21:46:53', 0),
(673, 133, '8', 'images/gallery/1331568411221.jpg', 0, '2019-09-13 21:47:03', '2019-09-13 21:47:03', 0),
(674, 133, '9', 'images/gallery/1331568411233.jpg', 0, '2019-09-13 21:47:15', '2019-09-13 21:47:15', 0),
(675, 133, '10', 'images/gallery/1331568411242.jpg', 0, '2019-09-13 21:47:24', '2019-09-13 21:47:24', 0),
(676, 133, '11', 'images/gallery/1331568411252.jpg', 0, '2019-09-13 21:47:33', '2019-09-13 21:47:33', 0),
(677, 133, '12', 'images/gallery/1331568411261.jpg', 0, '2019-09-13 21:47:42', '2019-09-13 21:47:42', 0),
(678, 133, '13', 'images/gallery/1331568411270.jpg', 0, '2019-09-13 21:47:52', '2019-09-13 21:47:52', 0),
(679, 133, '14', 'images/gallery/1331568411282.jpg', 0, '2019-09-13 21:48:04', '2019-09-13 21:48:04', 0),
(680, 133, '15', 'images/gallery/1331568411294.jpg', 0, '2019-09-13 21:48:17', '2019-09-13 21:48:17', 0),
(681, 134, '1', 'images/gallery/1341568416582.jpg', 0, '2019-09-13 23:16:24', '2019-09-13 23:16:24', 0),
(682, 134, '2', 'images/gallery/1341568416595.jpg', 0, '2019-09-13 23:16:37', '2019-09-13 23:16:37', 0),
(683, 134, '3', 'images/gallery/1341568416611.jpg', 0, '2019-09-13 23:16:54', '2019-09-13 23:16:54', 0),
(684, 134, '4', 'images/gallery/1341568416624.jpg', 0, '2019-09-13 23:17:05', '2019-09-13 23:17:05', 0),
(685, 134, '5', 'images/gallery/1341568416645.jpg', 0, '2019-09-13 23:17:26', '2019-09-13 23:17:26', 0),
(686, 134, '6', 'images/gallery/1341568416664.jpg', 0, '2019-09-13 23:17:49', '2019-09-13 23:17:49', 0),
(687, 134, '7', 'images/gallery/1341568416682.jpg', 0, '2019-09-13 23:18:03', '2019-09-13 23:18:03', 0),
(688, 134, '8', 'images/gallery/1341568416699.jpg', 0, '2019-09-13 23:18:20', '2019-09-13 23:18:20', 0),
(689, 135, '1', 'images/gallery/1351568472858.png', 0, '2019-09-14 14:54:20', '2019-09-14 14:54:20', 0),
(690, 135, '1', 'images/gallery/1351568472888.png', 0, '2019-09-14 14:54:53', '2019-09-14 14:54:53', 0),
(691, 135, '3', 'images/gallery/1351568472921.png', 0, '2019-09-14 14:55:30', '2019-09-14 14:55:30', 0),
(692, 135, '4', 'images/gallery/1351568472939.jpg', 0, '2019-09-14 14:55:46', '2019-09-14 14:55:46', 0),
(693, 135, '5', 'images/gallery/1351568472956.jpg', 0, '2019-09-14 14:55:57', '2019-09-14 14:55:57', 0),
(694, 135, '6', 'images/gallery/1351568472969.jpg', 0, '2019-09-14 14:56:09', '2019-09-14 14:56:09', 0),
(695, 135, '7', 'images/gallery/1351568472982.jpg', 0, '2019-09-14 14:56:24', '2019-09-14 14:56:24', 0),
(696, 135, '8', 'images/gallery/1351568472992.jpg', 0, '2019-09-14 14:56:37', '2019-09-14 14:56:37', 0),
(697, 135, '9', 'images/gallery/1351568473006.jpg', 0, '2019-09-14 14:56:51', '2019-09-14 14:56:51', 0),
(698, 135, '10', 'images/gallery/1351568473021.jpg', 0, '2019-09-14 14:57:02', '2019-09-14 14:57:02', 0),
(699, 135, '11', 'images/gallery/1351568473033.jpg', 0, '2019-09-14 14:57:18', '2019-09-14 14:57:18', 0),
(700, 135, '12', 'images/gallery/1351568473049.jpg', 0, '2019-09-14 14:57:30', '2019-09-14 14:57:30', 0),
(701, 135, '13', 'images/gallery/1351568473060.jpg', 0, '2019-09-14 14:57:42', '2019-09-14 14:57:42', 0),
(702, 135, '14', 'images/gallery/1351568473079.jpg', 0, '2019-09-14 14:58:05', '2019-09-14 14:58:05', 0),
(703, 135, '15', 'images/gallery/1351568473096.jpg', 0, '2019-09-14 14:58:18', '2019-09-14 14:58:18', 0),
(704, 135, '16', 'images/gallery/1351568473110.jpg', 0, '2019-09-14 14:58:34', '2019-09-14 14:58:34', 0),
(705, 135, '17', 'images/gallery/1351568473139.jpg', 0, '2019-09-14 14:59:02', '2019-09-14 14:59:02', 0),
(706, 135, '18', 'images/gallery/1351568473154.jpg', 0, '2019-09-14 14:59:15', '2019-09-14 14:59:15', 0),
(707, 135, '19', 'images/gallery/1351568473166.jpg', 0, '2019-09-14 14:59:26', '2019-09-14 14:59:26', 0),
(708, 135, '20', 'images/gallery/1351568473178.jpg', 0, '2019-09-14 14:59:39', '2019-09-14 14:59:39', 0),
(709, 135, '21', 'images/gallery/1351568473191.jpg', 0, '2019-09-14 14:59:52', '2019-09-14 14:59:52', 0),
(710, 135, '22', 'images/gallery/1351568473201.jpg', 0, '2019-09-14 15:00:03', '2019-09-14 15:00:03', 0),
(711, 136, '1', 'images/gallery/1361568474090.jpg', 0, '2019-09-14 15:14:51', '2019-09-14 15:14:51', 0),
(712, 136, '2', 'images/gallery/1361568474100.jpg', 0, '2019-09-14 15:15:06', '2019-09-14 15:15:06', 0),
(713, 136, '3', 'images/gallery/1361568474115.jpg', 0, '2019-09-14 15:15:17', '2019-09-14 15:15:17', 0),
(714, 136, '4', 'images/gallery/1361568474130.jpg', 0, '2019-09-14 15:15:31', '2019-09-14 15:15:31', 0),
(715, 136, '5', 'images/gallery/1361568474143.jpg', 0, '2019-09-14 15:15:44', '2019-09-14 15:15:44', 0),
(716, 136, '6', 'images/gallery/1361568474152.jpg', 0, '2019-09-14 15:15:54', '2019-09-14 15:15:54', 0),
(717, 136, '7', 'images/gallery/1361568474167.jpg', 0, '2019-09-14 15:16:08', '2019-09-14 15:16:08', 0),
(718, 136, '8', 'images/gallery/1361568474177.jpg', 0, '2019-09-14 15:16:19', '2019-09-14 15:16:19', 0),
(719, 136, '9', 'images/gallery/1361568474187.jpg', 0, '2019-09-14 15:16:28', '2019-09-14 15:16:28', 0),
(720, 136, '10', 'images/gallery/1361568474196.jpg', 0, '2019-09-14 15:16:38', '2019-09-14 15:16:38', 0),
(721, 136, '11', 'images/gallery/1361568474207.jpg', 0, '2019-09-14 15:16:48', '2019-09-14 15:16:48', 0),
(722, 136, '12', 'images/gallery/1361568474216.jpg', 0, '2019-09-14 15:16:57', '2019-09-14 15:16:57', 0),
(723, 136, '13', 'images/gallery/1361568474225.jpg', 0, '2019-09-14 15:17:06', '2019-09-14 15:17:06', 0),
(724, 136, '14', 'images/gallery/1361568474236.jpg', 0, '2019-09-14 15:17:17', '2019-09-14 15:17:17', 0),
(725, 136, '15', 'images/gallery/1361568474247.jpg', 0, '2019-09-14 15:17:28', '2019-09-14 15:17:28', 0),
(726, 137, '1', 'images/gallery/1371568487550.jpg', 0, '2019-09-14 18:59:12', '2019-09-14 18:59:12', 0),
(727, 137, '2', 'images/gallery/1371568487562.jpg', 0, '2019-09-14 18:59:22', '2019-09-14 18:59:22', 0),
(728, 137, '3', 'images/gallery/1371568487572.jpg', 0, '2019-09-14 18:59:34', '2019-09-14 18:59:34', 0),
(729, 137, '4', 'images/gallery/1371568487583.jpg', 0, '2019-09-14 18:59:45', '2019-09-14 18:59:45', 0),
(730, 137, '5', 'images/gallery/1371568487593.jpg', 0, '2019-09-14 18:59:55', '2019-09-14 18:59:55', 0),
(731, 137, '6', 'images/gallery/1371568487607.jpg', 0, '2019-09-14 19:00:08', '2019-09-14 19:00:08', 0),
(732, 137, '7', 'images/gallery/1371568487618.jpg', 0, '2019-09-14 19:00:20', '2019-09-14 19:00:20', 0),
(733, 137, '8', 'images/gallery/1371568487632.jpg', 0, '2019-09-14 19:00:33', '2019-09-14 19:00:33', 0),
(734, 137, '9', 'images/gallery/1371568487641.jpg', 0, '2019-09-14 19:00:43', '2019-09-14 19:00:43', 0),
(735, 137, '10', 'images/gallery/1371568487655.jpg', 0, '2019-09-14 19:00:57', '2019-09-14 19:00:57', 0),
(736, 137, '11', 'images/gallery/1371568487667.jpg', 0, '2019-09-14 19:01:10', '2019-09-14 19:01:10', 0),
(737, 137, '12', 'images/gallery/1371568487679.jpg', 0, '2019-09-14 19:01:20', '2019-09-14 19:01:20', 0),
(738, 137, '13', 'images/gallery/1371568487689.jpg', 0, '2019-09-14 19:01:30', '2019-09-14 19:01:30', 0),
(739, 137, '14', 'images/gallery/1371568487700.jpg', 0, '2019-09-14 19:01:41', '2019-09-14 19:01:41', 0),
(740, 137, '15', 'images/gallery/1371568487711.jpg', 0, '2019-09-14 19:01:54', '2019-09-14 19:01:54', 0),
(741, 138, '1', 'images/gallery/1381568488493.jpg', 0, '2019-09-14 19:14:56', '2019-09-14 19:14:56', 0),
(742, 138, '2', 'images/gallery/1381568488520.jpg', 0, '2019-09-14 19:15:21', '2019-09-14 19:15:21', 0),
(743, 138, '3', 'images/gallery/1381568488532.jpg', 0, '2019-09-14 19:15:33', '2019-09-14 19:15:33', 0),
(744, 138, '4', 'images/gallery/1381568488544.jpg', 0, '2019-09-14 19:15:45', '2019-09-14 19:15:45', 0),
(745, 139, '1', 'images/gallery/1391568488910.jpg', 0, '2019-09-14 19:21:50', '2019-09-14 19:21:50', 0),
(746, 139, '2', 'images/gallery/1391568488920.jpg', 0, '2019-09-14 19:22:01', '2019-09-14 19:22:01', 0),
(747, 140, '1', 'images/gallery/1401568489611.jpg', 0, '2019-09-14 19:33:34', '2019-09-14 19:33:34', 0),
(748, 140, '2', 'images/gallery/1401568489626.jpg', 0, '2019-09-14 19:33:47', '2019-09-14 19:33:47', 0),
(749, 140, '3', 'images/gallery/1401568489638.jpg', 0, '2019-09-14 19:34:00', '2019-09-14 19:34:00', 0),
(750, 140, '4', 'images/gallery/1401568489656.jpg', 0, '2019-09-14 19:34:18', '2019-09-14 19:34:18', 0),
(751, 140, '5', 'images/gallery/1401568489668.jpg', 0, '2019-09-14 19:34:29', '2019-09-14 19:34:29', 0),
(752, 140, '6', 'images/gallery/1401568489679.jpg', 0, '2019-09-14 19:34:41', '2019-09-14 19:34:41', 0),
(753, 140, '7', 'images/gallery/1401568489690.jpg', 0, '2019-09-14 19:34:51', '2019-09-14 19:34:51', 0),
(754, 140, '8', 'images/gallery/1401568489701.jpg', 0, '2019-09-14 19:35:03', '2019-09-14 19:35:03', 0),
(755, 140, '9', 'images/gallery/1401568489712.jpg', 0, '2019-09-14 19:35:13', '2019-09-14 19:35:13', 0),
(756, 140, '10', 'images/gallery/1401568489726.jpg', 0, '2019-09-14 19:35:31', '2019-09-14 19:35:31', 0),
(757, 140, '11', 'images/gallery/1401568489740.jpg', 0, '2019-09-14 19:35:41', '2019-09-14 19:35:41', 0),
(758, 140, '12', 'images/gallery/1401568489751.jpg', 0, '2019-09-14 19:35:53', '2019-09-14 19:35:53', 0),
(759, 141, '1', 'images/gallery/1411568562573.jpg', 0, '2019-09-15 15:49:34', '2019-09-15 15:49:34', 0),
(760, 141, '2', 'images/gallery/1411568562588.jpg', 0, '2019-09-15 15:49:49', '2019-09-15 15:49:49', 0),
(761, 141, '3', 'images/gallery/1411568562597.jpg', 0, '2019-09-15 15:49:59', '2019-09-15 15:49:59', 0),
(762, 141, '4', 'images/gallery/1411568562614.jpg', 0, '2019-09-15 15:50:15', '2019-09-15 15:50:15', 0),
(763, 141, '5', 'images/gallery/1411568562623.jpg', 0, '2019-09-15 15:50:24', '2019-09-15 15:50:24', 0),
(764, 141, '6', 'images/gallery/1411568562638.jpg', 0, '2019-09-15 15:50:39', '2019-09-15 15:50:39', 0),
(765, 141, '7', 'images/gallery/1411568562649.jpg', 0, '2019-09-15 15:50:51', '2019-09-15 15:50:51', 0),
(766, 141, '8', 'images/gallery/1411568562660.jpg', 0, '2019-09-15 15:51:01', '2019-09-15 15:51:01', 0),
(767, 142, '1', 'images/gallery/1421568563541.jpg', 0, '2019-09-15 16:05:42', '2019-09-15 16:05:42', 0),
(768, 142, '2', 'images/gallery/1421568563551.jpg', 0, '2019-09-15 16:05:52', '2019-09-15 16:05:52', 0),
(769, 142, '3', 'images/gallery/1421568563563.jpg', 0, '2019-09-15 16:06:07', '2019-09-15 16:06:07', 0),
(770, 142, '5', 'images/gallery/1421568563576.jpg', 0, '2019-09-15 16:06:18', '2019-09-15 16:06:18', 0),
(771, 142, '4', 'images/gallery/1421568563601.jpg', 0, '2019-09-15 16:06:43', '2019-09-15 16:06:43', 0),
(772, 142, '6', 'images/gallery/1421568563612.jpg', 0, '2019-09-15 16:06:53', '2019-09-15 16:06:53', 0),
(773, 143, '1', 'images/gallery/1431568565471.jpg', 0, '2019-09-15 16:37:55', '2019-09-15 16:37:55', 0),
(774, 143, '2', 'images/gallery/1431568565490.jpg', 0, '2019-09-15 16:38:13', '2019-09-15 16:38:13', 0),
(775, 143, '3', 'images/gallery/1431568565504.jpg', 0, '2019-09-15 16:38:26', '2019-09-15 16:38:26', 0),
(776, 143, '4', 'images/gallery/1431568565520.jpg', 0, '2019-09-15 16:38:42', '2019-09-15 16:38:42', 0),
(777, 143, '5', 'images/gallery/1431568565542.jpg', 0, '2019-09-15 16:39:04', '2019-09-15 16:39:04', 0),
(778, 144, '1', 'images/gallery/1441568567651.jpg', 0, '2019-09-15 17:14:12', '2019-09-15 17:14:12', 0),
(779, 144, '2', 'images/gallery/1441568567668.jpg', 0, '2019-09-15 17:14:30', '2019-09-15 17:14:30', 0),
(780, 144, '3', 'images/gallery/1441568567679.jpg', 0, '2019-09-15 17:14:40', '2019-09-15 17:14:40', 0),
(781, 144, '4', 'images/gallery/1441568567690.jpg', 0, '2019-09-15 17:14:51', '2019-09-15 17:14:51', 0),
(782, 144, '5', 'images/gallery/1441568567701.jpg', 0, '2019-09-15 17:15:06', '2019-09-15 17:15:06', 0),
(783, 144, '6', 'images/gallery/1441568567728.jpg', 0, '2019-09-15 17:15:41', '2019-09-15 17:15:41', 0),
(784, 144, '7', 'images/gallery/1441568567753.jpg', 0, '2019-09-15 17:15:58', '2019-09-15 17:15:58', 0),
(785, 144, '8', 'images/gallery/1441568567769.jpg', 0, '2019-09-15 17:16:10', '2019-09-15 17:16:10', 0),
(786, 144, '9', 'images/gallery/1441568567781.jpg', 0, '2019-09-15 17:16:24', '2019-09-15 17:16:24', 0),
(787, 144, '10', 'images/gallery/1441568567801.jpg', 0, '2019-09-15 17:16:43', '2019-09-15 17:16:43', 0),
(788, 144, '12', 'images/gallery/1441568567814.jpg', 0, '2019-09-15 17:16:56', '2019-09-15 17:16:56', 0),
(789, 144, '13', 'images/gallery/1441568567825.jpg', 0, '2019-09-15 17:17:07', '2019-09-15 17:17:07', 0),
(790, 141, '14', 'images/gallery/1411568567933.jpg', 0, '2019-09-15 17:19:00', '2019-09-15 17:19:00', 0),
(791, 141, '16', 'images/gallery/1411568567952.jpg', 0, '2019-09-15 17:19:13', '2019-09-15 17:19:13', 0),
(792, 141, '17', 'images/gallery/1411568567969.jpg', 0, '2019-09-15 17:19:30', '2019-09-15 17:19:30', 0),
(793, 145, '1', 'images/gallery/1451568645117.jpg', 0, '2019-09-16 14:45:18', '2019-09-16 14:45:18', 0),
(794, 145, '2', 'images/gallery/1451568645129.jpg', 0, '2019-09-16 14:45:33', '2019-09-16 14:45:33', 0),
(795, 145, '3', 'images/gallery/1451568645144.jpg', 0, '2019-09-16 14:45:46', '2019-09-16 14:45:46', 0),
(796, 145, '4', 'images/gallery/1451568645156.jpg', 0, '2019-09-16 14:45:58', '2019-09-16 14:45:58', 0),
(797, 145, '5', 'images/gallery/1451568645170.jpg', 0, '2019-09-16 14:46:12', '2019-09-16 14:46:12', 0),
(798, 145, '6', 'images/gallery/1451568645181.jpg', 0, '2019-09-16 14:46:24', '2019-09-16 14:46:24', 0),
(799, 145, '7', 'images/gallery/1451568645195.jpg', 0, '2019-09-16 14:46:37', '2019-09-16 14:46:37', 0),
(800, 145, '8', 'images/gallery/1451568645209.jpg', 0, '2019-09-16 14:46:51', '2019-09-16 14:46:51', 0),
(801, 145, '9', 'images/gallery/1451568645223.jpg', 0, '2019-09-16 14:47:05', '2019-09-16 14:47:05', 0),
(802, 145, '10', 'images/gallery/1451568645234.jpg', 0, '2019-09-16 14:47:17', '2019-09-16 14:47:17', 0),
(803, 147, '1', 'images/gallery/1471568728017.jpg', 0, '2019-09-17 13:46:58', '2019-09-17 13:46:58', 0),
(804, 147, '2', 'images/gallery/1471568728029.jpg', 0, '2019-09-17 13:47:12', '2019-09-17 13:47:12', 0),
(805, 147, '3', 'images/gallery/1471568728041.jpg', 0, '2019-09-17 13:47:23', '2019-09-17 13:47:23', 0),
(806, 147, '4', 'images/gallery/1471568728055.jpg', 0, '2019-09-17 13:47:38', '2019-09-17 13:47:38', 0),
(807, 147, '5', 'images/gallery/1471568728068.jpg', 0, '2019-09-17 13:47:49', '2019-09-17 13:47:49', 0),
(808, 147, '6', 'images/gallery/1471568728080.jpg', 0, '2019-09-17 13:48:04', '2019-09-17 13:48:04', 0),
(809, 148, '1', 'images/gallery/1481568728829.jpg', 0, '2019-09-17 14:00:32', '2019-09-17 14:00:32', 0),
(810, 148, '2', 'images/gallery/1481568728845.jpg', 0, '2019-09-17 14:00:46', '2019-09-17 14:00:46', 0),
(811, 148, '3', 'images/gallery/1481568728859.jpg', 0, '2019-09-17 14:01:01', '2019-09-17 14:01:01', 0),
(812, 148, '4', 'images/gallery/1481568728875.jpg', 0, '2019-09-17 14:01:17', '2019-09-17 14:01:17', 0),
(813, 148, '5', 'images/gallery/1481568728888.jpg', 0, '2019-09-17 14:01:31', '2019-09-17 14:01:31', 0),
(814, 148, '6', 'images/gallery/1481568728904.jpg', 0, '2019-09-17 14:01:49', '2019-09-17 14:01:49', 0),
(815, 148, '8', 'images/gallery/1481568728920.jpg', 0, '2019-09-17 14:02:02', '2019-09-17 14:02:02', 0),
(816, 148, '9', 'images/gallery/1481568728936.jpg', 0, '2019-09-17 14:02:18', '2019-09-17 14:02:18', 0),
(817, 149, '1', 'images/gallery/1491568900883.jpg', 0, '2019-09-19 13:48:06', '2019-09-19 13:48:06', 0),
(818, 149, '2', 'images/gallery/1491568900897.jpg', 0, '2019-09-19 13:48:18', '2019-09-19 13:48:18', 0),
(819, 149, '3', 'images/gallery/1491568900917.png', 0, '2019-09-19 13:48:38', '2019-09-19 13:48:38', 0),
(820, 149, '4', 'images/gallery/1491568900927.jpg', 0, '2019-09-19 13:48:51', '2019-09-19 13:48:51', 0),
(821, 149, '5', 'images/gallery/1491568900949.png', 0, '2019-09-19 13:49:23', '2019-09-19 13:49:23', 0),
(822, 149, '6', 'images/gallery/1491568900980.png', 0, '2019-09-19 13:49:43', '2019-09-19 13:49:43', 0),
(823, 149, '7', 'images/gallery/1491568900994.png', 0, '2019-09-19 13:50:02', '2019-09-19 13:50:02', 0),
(824, 149, '8', 'images/gallery/1491568901016.png', 0, '2019-09-19 13:50:17', '2019-09-19 13:50:17', 0),
(825, 149, '9', 'images/gallery/1491568901027.jpg', 0, '2019-09-19 13:50:28', '2019-09-19 13:50:28', 0),
(826, 151, '1', 'images/gallery/1511568921167.jpg', 0, '2019-09-19 19:26:09', '2019-09-19 19:26:09', 0),
(827, 151, '2', 'images/gallery/1511568921179.jpg', 0, '2019-09-19 19:26:20', '2019-09-19 19:26:20', 0),
(828, 151, '3', 'images/gallery/1511568921231.jpg', 0, '2019-09-19 19:27:13', '2019-09-19 19:27:13', 0),
(829, 151, '4', 'images/gallery/1511568921243.jpg', 0, '2019-09-19 19:27:28', '2019-09-19 19:27:28', 0),
(830, 151, '5', 'images/gallery/1511568921260.jpg', 0, '2019-09-19 19:27:50', '2019-09-19 19:27:50', 0),
(831, 151, '6', 'images/gallery/1511568921281.jpg', 0, '2019-09-19 19:28:03', '2019-09-19 19:28:03', 0),
(832, 151, '7', 'images/gallery/1511568921293.jpg', 0, '2019-09-19 19:28:16', '2019-09-19 19:28:16', 0),
(833, 151, '8', 'images/gallery/1511568921307.jpg', 0, '2019-09-19 19:28:29', '2019-09-19 19:28:29', 0),
(834, 152, '1', 'images/gallery/1521568921949.jpg', 0, '2019-09-19 19:39:11', '2019-09-19 19:39:11', 0),
(835, 152, '2', 'images/gallery/1521568921961.jpg', 0, '2019-09-19 19:39:22', '2019-09-19 19:39:22', 0),
(836, 152, '3', 'images/gallery/1521568921971.jpg', 0, '2019-09-19 19:39:36', '2019-09-19 19:39:36', 0),
(837, 152, '4', 'images/gallery/1521568921986.jpg', 0, '2019-09-19 19:39:48', '2019-09-19 19:39:48', 0),
(838, 152, '5', 'images/gallery/1521568922002.jpg', 0, '2019-09-19 19:40:03', '2019-09-19 19:40:03', 0),
(839, 152, '6', 'images/gallery/1521568922015.jpg', 0, '2019-09-19 19:40:16', '2019-09-19 19:40:16', 0),
(840, 152, '7', 'images/gallery/1521568922028.jpg', 0, '2019-09-19 19:40:30', '2019-09-19 19:40:30', 0),
(841, 152, '8', 'images/gallery/1521568922047.jpg', 0, '2019-09-19 19:40:48', '2019-09-19 19:40:48', 0),
(842, 132, '8', 'images/gallery/1321570302554.jpeg', 0, '2019-10-05 19:09:40', '2019-10-05 19:09:40', 0),
(843, 143, '6', 'images/gallery/1431572219951.jpg', 0, '2019-10-27 23:47:32', '2019-10-27 23:47:32', 0),
(844, 143, '7', 'images/gallery/1431572220125.jpg', 0, '2019-10-27 23:48:48', '2019-10-27 23:48:48', 0),
(845, 143, '8', 'images/gallery/1431572259892.jpg', 0, '2019-10-28 10:51:44', '2019-10-28 10:51:44', 0),
(846, 143, '9', 'images/gallery/1431572259936.jpg', 0, '2019-10-28 10:52:39', '2019-10-28 10:52:39', 0),
(847, 143, '10', 'images/gallery/1431572260001.jpg', 0, '2019-10-28 10:53:34', '2019-10-28 10:53:34', 0),
(848, 143, '11', 'images/gallery/1431572260032.jpg', 0, '2019-10-28 10:54:45', '2019-10-28 10:54:45', 0),
(849, 143, '12', 'images/gallery/1431572260096.jpg', 0, '2019-10-28 10:54:58', '2019-10-28 10:54:58', 0),
(850, 143, '13', 'images/gallery/1431572260107.jpg', 0, '2019-10-28 10:55:11', '2019-10-28 10:55:11', 0),
(851, 143, '14', 'images/gallery/1431572260128.jpg', 0, '2019-10-28 10:55:31', '2019-10-28 10:55:31', 0),
(852, 143, '15', 'images/gallery/1431572260143.jpg', 0, '2019-10-28 10:55:45', '2019-10-28 10:55:45', 0),
(853, 143, '16', 'images/gallery/1431572260155.jpg', 0, '2019-10-28 10:55:58', '2019-10-28 10:55:58', 0),
(854, 143, '17', 'images/gallery/1431572260173.jpg', 0, '2019-10-28 10:56:18', '2019-10-28 10:56:18', 0),
(855, 143, '18', 'images/gallery/1431572260189.jpg', 0, '2019-10-28 10:56:33', '2019-10-28 10:56:33', 0),
(856, 143, '19', 'images/gallery/1431572260207.jpg', 0, '2019-10-28 10:56:50', '2019-10-28 10:56:50', 0),
(857, 143, '20', 'images/gallery/1431572260226.jpg', 0, '2019-10-28 10:57:09', '2019-10-28 10:57:09', 0),
(858, 143, '21', 'images/gallery/1431572260240.jpg', 0, '2019-10-28 10:57:22', '2019-10-28 10:57:22', 0),
(859, 143, '22', 'images/gallery/1431572260254.jpg', 0, '2019-10-28 10:57:36', '2019-10-28 10:57:36', 0),
(860, 143, '23', 'images/gallery/1431572260272.jpg', 0, '2019-10-28 10:57:55', '2019-10-28 10:57:55', 0),
(861, 143, '24', 'images/gallery/1431572260290.jpg', 0, '2019-10-28 10:58:12', '2019-10-28 10:58:12', 0),
(862, 143, '25', 'images/gallery/1431572260307.jpg', 0, '2019-10-28 10:58:29', '2019-10-28 10:58:29', 0),
(863, 143, '26', 'images/gallery/1431572260323.jpg', 0, '2019-10-28 10:58:47', '2019-10-28 10:58:47', 0),
(864, 143, '27', 'images/gallery/1431572260347.jpg', 0, '2019-10-28 10:59:09', '2019-10-28 10:59:09', 0),
(865, 143, '28', 'images/gallery/1431572260362.jpg', 0, '2019-10-28 10:59:24', '2019-10-28 10:59:24', 0),
(866, 143, '29', 'images/gallery/1431572260378.jpg', 0, '2019-10-28 10:59:44', '2019-10-28 10:59:44', 0),
(867, 143, '30', 'images/gallery/1431572260401.jpg', 0, '2019-10-28 11:00:02', '2019-10-28 11:00:02', 0),
(868, 143, '31', 'images/gallery/1431572260417.jpg', 0, '2019-10-28 11:00:19', '2019-10-28 11:00:19', 0),
(869, 143, '32', 'images/gallery/1431572260433.jpg', 0, '2019-10-28 11:00:35', '2019-10-28 11:00:35', 0),
(870, 143, '33', 'images/gallery/1431572260449.jpg', 0, '2019-10-28 11:00:51', '2019-10-28 11:00:51', 0),
(871, 143, '34', 'images/gallery/1431572260466.jpg', 0, '2019-10-28 11:01:10', '2019-10-28 11:01:10', 0),
(872, 143, '35', 'images/gallery/1431572260484.jpg', 0, '2019-10-28 11:01:26', '2019-10-28 11:01:26', 0),
(873, 143, '36', 'images/gallery/1431572260501.jpg', 0, '2019-10-28 11:01:45', '2019-10-28 11:01:45', 0),
(874, 143, '37', 'images/gallery/1431572260519.jpg', 0, '2019-10-28 11:02:02', '2019-10-28 11:02:02', 0),
(875, 143, '38', 'images/gallery/1431572260537.jpg', 0, '2019-10-28 11:02:19', '2019-10-28 11:02:19', 0),
(876, 143, '39', 'images/gallery/1431572260593.jpg', 0, '2019-10-28 11:03:15', '2019-10-28 11:03:15', 0),
(877, 143, '40', 'images/gallery/1431572260639.jpg', 0, '2019-10-28 11:04:45', '2019-10-28 11:04:45', 0),
(878, 143, '41', 'images/gallery/1431572260707.jpg', 0, '2019-10-28 11:05:11', '2019-10-28 11:05:11', 0),
(879, 143, '42', 'images/gallery/1431572260731.jpeg', 0, '2019-10-28 11:05:34', '2019-10-28 11:05:34', 0),
(880, 133, '14', 'images/gallery/1331572290785.jpg', 0, '2019-10-28 19:26:27', '2019-10-28 19:26:27', 0),
(881, 133, '16', 'images/gallery/1331572290802.jpg', 0, '2019-10-28 19:26:47', '2019-10-28 19:26:47', 0),
(882, 133, '17', 'images/gallery/1331572290825.jpg', 0, '2019-10-28 19:27:07', '2019-10-28 19:27:07', 0),
(883, 133, '18', 'images/gallery/1331572290840.jpg', 0, '2019-10-28 19:27:22', '2019-10-28 19:27:22', 0),
(884, 133, '19', 'images/gallery/1331572290856.jpg', 0, '2019-10-28 19:27:38', '2019-10-28 19:27:38', 0),
(885, 133, '20', 'images/gallery/1331572290872.jpg', 0, '2019-10-28 19:27:54', '2019-10-28 19:27:54', 0),
(886, 133, '21', 'images/gallery/1331572290887.jpg', 0, '2019-10-28 19:28:09', '2019-10-28 19:28:09', 0),
(887, 133, '21', 'images/gallery/1331572290913.jpg', 0, '2019-10-28 19:28:34', '2019-10-28 19:28:34', 0),
(888, 133, '22', 'images/gallery/1331572290928.jpg', 0, '2019-10-28 19:28:50', '2019-10-28 19:28:50', 0),
(889, 133, '23', 'images/gallery/1331572290944.jpg', 0, '2019-10-28 19:29:05', '2019-10-28 19:29:05', 0),
(890, 133, '24', 'images/gallery/1331572290957.jpg', 0, '2019-10-28 19:29:20', '2019-10-28 19:29:20', 0),
(891, 133, '25', 'images/gallery/1331572290974.jpg', 0, '2019-10-28 19:29:36', '2019-10-28 19:29:36', 0),
(892, 133, '26', 'images/gallery/1331572290990.jpg', 0, '2019-10-28 19:29:52', '2019-10-28 19:29:52', 0),
(893, 133, '27', 'images/gallery/1331572291006.jpg', 0, '2019-10-28 19:30:08', '2019-10-28 19:30:08', 0),
(894, 133, '28', 'images/gallery/1331572291022.jpg', 0, '2019-10-28 19:30:23', '2019-10-28 19:30:23', 0),
(895, 133, '29', 'images/gallery/1331572291039.jpg', 0, '2019-10-28 19:30:42', '2019-10-28 19:30:42', 0),
(896, 133, '30', 'images/gallery/1331572291058.jpg', 0, '2019-10-28 19:31:00', '2019-10-28 19:31:00', 0),
(897, 133, '31', 'images/gallery/1331572291075.jpg', 0, '2019-10-28 19:31:16', '2019-10-28 19:31:16', 0),
(898, 133, '32', 'images/gallery/1331572291089.jpg', 0, '2019-10-28 19:31:32', '2019-10-28 19:31:32', 0),
(899, 133, '33', 'images/gallery/1331572291104.jpg', 0, '2019-10-28 19:31:47', '2019-10-28 19:31:47', 0),
(900, 156, '1', 'images/gallery/1561572293849.jpg', 0, '2019-10-28 20:17:31', '2019-10-28 20:17:31', 0),
(901, 156, '2', 'images/gallery/1561572293862.jpg', 0, '2019-10-28 20:17:45', '2019-10-28 20:17:45', 0),
(902, 156, '3', 'images/gallery/1561572293884.jpg', 0, '2019-10-28 20:18:05', '2019-10-28 20:18:05', 0),
(903, 156, '4', 'images/gallery/1561572293901.jpg', 0, '2019-10-28 20:18:22', '2019-10-28 20:18:22', 0),
(904, 156, '5', 'images/gallery/1561572293916.jpg', 0, '2019-10-28 20:18:38', '2019-10-28 20:18:38', 0),
(905, 156, '6', 'images/gallery/1561572293934.jpg', 0, '2019-10-28 20:18:56', '2019-10-28 20:18:56', 0),
(906, 156, '7', 'images/gallery/1561572293951.jpg', 0, '2019-10-28 20:19:12', '2019-10-28 20:19:12', 0),
(907, 156, '8', 'images/gallery/1561572293968.jpg', 0, '2019-10-28 20:19:30', '2019-10-28 20:19:30', 0),
(908, 156, '9', 'images/gallery/1561572294000.jpg', 0, '2019-10-28 20:20:03', '2019-10-28 20:20:03', 0),
(909, 156, '10', 'images/gallery/1561572294016.jpg', 0, '2019-10-28 20:20:20', '2019-10-28 20:20:20', 0),
(910, 156, '11', 'images/gallery/1561572294039.jpg', 0, '2019-10-28 20:20:42', '2019-10-28 20:20:42', 0),
(911, 156, '12', 'images/gallery/1561572294055.jpg', 0, '2019-10-28 20:20:57', '2019-10-28 20:20:57', 0),
(912, 156, '13', 'images/gallery/1561572294072.jpg', 0, '2019-10-28 20:21:15', '2019-10-28 20:21:15', 0),
(913, 156, '14', 'images/gallery/1561572294094.jpg', 0, '2019-10-28 20:21:37', '2019-10-28 20:21:37', 0),
(914, 156, '15', 'images/gallery/1561572294106.jpg', 0, '2019-10-28 20:21:49', '2019-11-21 16:06:57', 1),
(915, 156, '16', 'images/gallery/1561572294125.jpg', 0, '2019-10-28 20:22:08', '2019-11-21 16:06:42', 1),
(918, 85, 'Μποτάκι λευκό', 'images/gallery/851574521509.jpg', 0, '2019-11-23 15:05:43', '2019-11-23 15:05:43', 0),
(919, 85, 'Μποτάκι κόκκινο', 'images/gallery/851574521564.jpg', 0, '2019-11-23 15:06:23', '2019-11-23 15:06:23', 0),
(920, 85, 'Μποτάκι πολύχρωμο', 'images/gallery/851574521631.jpg', 0, '2019-11-23 15:07:29', '2019-11-23 15:07:29', 0),
(921, 85, 'Μποτάκι καμελ', 'images/gallery/851574521716.jpg', 0, '2019-11-23 15:08:46', '2019-11-23 15:08:46', 0),
(922, 85, 'Μποτάκι μαύρο', 'images/gallery/851574521771.jpg', 0, '2019-11-23 15:09:44', '2019-11-23 15:09:44', 0),
(923, 85, 'Μποτάκι μπεζ φιδέ', 'images/gallery/851574521823.jpg', 0, '2019-11-23 15:10:41', '2019-11-23 15:10:41', 0),
(924, 85, 'Μποτάκι τιγρέ', 'images/gallery/851574521861.jpg', 0, '2019-11-23 15:11:25', '2019-11-23 15:11:25', 0),
(925, 85, 'Μποτάκι κόκκινο', 'images/gallery/851574522274.jpg', 0, '2019-11-23 15:18:09', '2019-11-23 15:18:09', 0),
(926, 85, 'Μποτάκι καμελ λεοπαρ', 'images/gallery/851574524170.jpg', 0, '2019-11-23 15:49:53', '2019-11-23 15:49:53', 0),
(927, 85, 'Μποτάκι καμελ φιδέ', 'images/gallery/851574524218.jpg', 0, '2019-11-23 15:50:36', '2019-11-23 15:50:36', 0),
(928, 85, 'Μποτάκι μαύρο', 'images/gallery/851574524296.jpg', 0, '2019-11-23 15:51:44', '2019-11-23 15:51:44', 0),
(929, 85, 'Μποτάκι τιγρέ', 'images/gallery/851574524327.jpg', 0, '2019-11-23 15:52:16', '2019-11-23 15:52:16', 0),
(930, 85, 'Μποτάκι ασπρόμαυρο', 'images/gallery/851574606633.jpg', 0, '2019-11-24 14:44:06', '2019-11-24 14:44:06', 0),
(931, 85, 'Μποτάκι κόκκινο μαύρο', 'images/gallery/851574606667.jpg', 0, '2019-11-24 14:44:45', '2019-11-24 14:44:45', 0),
(932, 85, 'Μποτάκι μαύρο άσπρο φιδέ', 'images/gallery/851574606724.jpg', 0, '2019-11-24 14:45:53', '2019-11-24 14:45:53', 0),
(933, 85, 'Μποτάκι άσπρο', 'images/gallery/851574606774.jpg', 0, '2019-11-24 14:46:22', '2019-11-24 14:46:22', 0),
(934, 85, 'Μποτάκι πολύχρωμο', 'images/gallery/851574606800.jpg', 0, '2019-11-24 14:47:02', '2019-11-24 14:47:02', 0),
(935, 85, 'Μποτάκι μπεζ φιδέ', 'images/gallery/851574606850.jpg', 0, '2019-11-24 14:47:32', '2019-11-24 14:47:32', 0),
(936, 85, 'Μποτάκι κόκκινο με ασπρόμαυρο τακούνι', 'images/gallery/851574606873.jpg', 0, '2019-11-24 14:48:18', '2019-11-24 14:48:18', 0),
(937, 85, 'Μποτάκι καμελ', 'images/gallery/851574606917.jpg', 0, '2019-11-24 14:48:58', '2019-11-24 14:48:58', 0),
(938, 85, 'Μποτάκι καμελ με μπεζ τακούνι', 'images/gallery/851574606953.jpg', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30', 0),
(949, 85, 'Μποτάκι μαύρο τιγρέ', 'images/gallery/851574606990.jpg', 0, '2019-11-24 14:50:06', '2019-11-24 14:50:06', 0),
(950, 159, '1', 'images/gallery/1591574953116.jpg', 0, '2019-11-28 14:58:41', '2019-11-28 14:58:41', 0),
(951, 159, '2', 'images/gallery/1591574953139.jpg', 0, '2019-11-28 14:59:19', '2019-11-28 14:59:19', 0),
(952, 159, '3', 'images/gallery/1591574953174.jpg', 0, '2019-11-28 14:59:37', '2019-11-28 14:59:37', 0),
(953, 159, '4', 'images/gallery/1591574953199.jpg', 0, '2019-11-28 15:00:01', '2019-11-28 15:00:01', 0),
(954, 159, '5', 'images/gallery/1591574953222.jpg', 0, '2019-11-28 15:00:24', '2019-11-28 15:00:24', 0),
(955, 159, '6', 'images/gallery/1591574953238.jpg', 0, '2019-11-28 15:00:40', '2019-11-28 15:00:40', 0),
(956, 159, '7', 'images/gallery/1591574953257.jpg', 0, '2019-11-28 15:00:58', '2019-11-28 15:00:58', 0),
(957, 159, '8', 'images/gallery/1591574953271.jpg', 0, '2019-11-28 15:01:13', '2019-11-28 15:01:13', 0),
(958, 159, '9', 'images/gallery/1591574953287.jpg', 0, '2019-11-28 15:01:28', '2019-11-28 15:01:28', 0),
(959, 159, '10', 'images/gallery/1591574953300.jpg', 0, '2019-11-28 15:01:41', '2019-11-28 15:01:41', 0),
(960, 159, '11', 'images/gallery/1591574953314.jpg', 0, '2019-11-28 15:01:56', '2019-11-28 15:01:56', 0),
(961, 159, '12', 'images/gallery/1591574953335.jpg', 0, '2019-11-28 15:02:17', '2019-11-28 15:02:17', 0),
(962, 159, '13', 'images/gallery/1591574953354.jpg', 0, '2019-11-28 15:02:35', '2019-11-28 15:02:35', 0),
(963, 159, '14', 'images/gallery/1591574953367.jpg', 0, '2019-11-28 15:02:48', '2019-11-28 15:02:48', 0),
(964, 159, '15', 'images/gallery/1591574953381.jpg', 0, '2019-11-28 15:03:02', '2019-11-28 15:03:02', 0),
(965, 159, '16', 'images/gallery/1591574953393.jpg', 0, '2019-11-28 15:03:14', '2019-11-28 15:03:14', 0),
(966, 159, '17', 'images/gallery/1591574953406.jpg', 0, '2019-11-28 15:03:27', '2019-11-28 15:03:27', 0),
(967, 159, '18', 'images/gallery/1591574953419.jpg', 0, '2019-11-28 15:03:41', '2019-11-28 15:03:41', 0),
(968, 159, '19', 'images/gallery/1591574953437.jpg', 0, '2019-11-28 15:03:59', '2019-11-28 15:03:59', 0),
(969, 159, '20', 'images/gallery/1591574953456.jpg', 0, '2019-11-28 15:04:21', '2019-11-28 15:04:21', 0),
(970, 159, '21', 'images/gallery/1591574953475.jpg', 0, '2019-11-28 15:04:37', '2019-11-28 15:04:37', 0),
(971, 159, '22', 'images/gallery/1591574953488.jpg', 0, '2019-11-28 15:04:50', '2019-11-28 15:04:50', 0),
(972, 159, '23', 'images/gallery/1591574953508.jpg', 0, '2019-11-28 15:05:09', '2019-11-28 15:05:09', 0),
(973, 159, '24', 'images/gallery/1591574953521.jpg', 0, '2019-11-28 15:05:22', '2019-11-28 15:05:22', 0),
(974, 159, '25', 'images/gallery/1591574953535.jpg', 0, '2019-11-28 15:05:36', '2019-11-28 15:05:36', 0),
(975, 159, '26', 'images/gallery/1591574953550.jpg', 0, '2019-11-28 15:05:51', '2019-11-28 15:05:51', 0),
(976, 159, '27', 'images/gallery/1591574953567.jpg', 0, '2019-11-28 15:06:10', '2019-11-28 15:06:10', 0),
(977, 159, '28', 'images/gallery/1591574953591.jpg', 0, '2019-11-28 15:06:32', '2019-11-28 15:06:32', 0),
(978, 159, '29', 'images/gallery/1591574953606.jpg', 0, '2019-11-28 15:06:47', '2019-11-28 15:06:47', 0),
(979, 159, '30', 'images/gallery/1591574953622.jpg', 0, '2019-11-28 15:07:03', '2019-11-28 15:07:03', 0),
(980, 159, '31', 'images/gallery/1591574953637.jpg', 0, '2019-11-28 15:07:19', '2019-11-28 15:07:19', 0),
(981, 159, '32', 'images/gallery/1591574953650.jpg', 0, '2019-11-28 15:07:31', '2019-11-28 15:07:31', 0),
(982, 159, '33', 'images/gallery/1591574953663.jpg', 0, '2019-11-28 15:07:46', '2019-11-28 15:07:46', 0),
(983, 159, '34', 'images/gallery/1591574953680.jpg', 0, '2019-11-28 15:08:02', '2019-11-28 15:08:02', 0),
(984, 159, '35', 'images/gallery/1591574953698.jpg', 0, '2019-11-28 15:08:20', '2019-11-28 15:08:20', 0),
(985, 159, '36', 'images/gallery/1591574953712.jpg', 0, '2019-11-28 15:08:33', '2019-11-28 15:08:33', 0),
(986, 159, '37', 'images/gallery/1591574953726.jpg', 0, '2019-11-28 15:08:47', '2019-11-28 15:08:47', 0),
(987, 159, '38', 'images/gallery/1591574953743.jpg', 0, '2019-11-28 15:09:05', '2019-11-28 15:09:05', 0),
(988, 159, '39', 'images/gallery/1591574953758.jpg', 0, '2019-11-28 15:09:19', '2019-11-28 15:09:19', 0),
(989, 159, '40', 'images/gallery/1591574953771.jpg', 0, '2019-11-28 15:09:32', '2019-11-28 15:09:32', 0),
(990, 159, '41', 'images/gallery/1591574953783.jpg', 0, '2019-11-28 15:09:45', '2019-11-28 15:09:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id`, `partner_id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 70, 'wang', 'kingstarboy@outlook.com', 'message', '2019-11-21 22:51:19', '2019-11-21 22:51:19'),
(2, 70, 'asdf', 'forwcj@gmail.com', 'asdf', '2019-11-21 22:51:31', '2019-11-21 22:51:31'),
(3, 77, 'test', 'kingstarboy@outlook.com', 'asdf', '2019-11-22 02:01:43', '2019-11-22 02:01:43'),
(4, 143, 'TEST', 'info.diaskedazw@gmail.com', 'test', '2019-11-22 19:05:19', '2019-11-22 19:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `content_type` enum('video','article','gallery','product','company') COLLATE utf8_unicode_ci NOT NULL,
  `star` tinyint(4) NOT NULL DEFAULT '0',
  `clap` tinyint(4) NOT NULL DEFAULT '0',
  `heart` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `user_id`, `content_id`, `content_type`, `star`, `clap`, `heart`) VALUES
(1, 22, 28, 'article', 1, 1, 1),
(2, 22, 21, 'article', 1, 1, 1),
(3, 22, 11, 'video', 1, 1, 1),
(4, 22, 15, 'video', 1, 1, 1),
(5, 25, 28, 'article', 0, 0, 1),
(6, 22, 7, 'video', 1, 1, 1),
(7, 22, 19, 'video', 1, 1, 1),
(8, 22, 20, 'article', 1, 1, 1),
(9, 22, 16, 'article', 1, 1, 1),
(10, 22, 18, 'video', 0, 1, 1),
(11, 22, 17, 'video', 0, 1, 1),
(12, 12, 1, 'product', 1, 0, 1),
(13, 22, 1, 'product', 1, 0, 1),
(14, 22, 28, 'gallery', 1, 1, 1),
(15, 22, 27, 'gallery', 1, 1, 1),
(16, 22, 29, 'gallery', 1, 1, 1),
(17, 22, 2, 'product', 1, 0, 1),
(18, 22, 27, 'article', 1, 1, 1),
(19, 22, 30, 'article', 1, 1, 1),
(20, 55, 29, 'gallery', 1, 1, 1),
(21, 55, 28, 'gallery', 1, 1, 1),
(22, 55, 27, 'gallery', 1, 1, 1),
(23, 55, 20, 'article', 1, 1, 1),
(24, 55, 30, 'article', 1, 1, 1),
(25, 55, 28, 'article', 1, 1, 1),
(26, 55, 27, 'article', 1, 1, 1),
(27, 55, 16, 'article', 1, 1, 1),
(28, 22, 26, 'article', 1, 1, 1),
(29, 55, 1, 'product', 1, 0, 1),
(30, 22, 32, 'gallery', 1, 1, 1),
(31, 22, 30, 'gallery', 1, 1, 1),
(32, 22, 31, 'gallery', 1, 1, 1),
(33, 63, 42, 'gallery', 0, 1, 1),
(34, 68, 93, 'gallery', 0, 1, 1),
(35, 68, 90, 'gallery', 0, 0, 1),
(36, 71, 37, 'article', 0, 1, 1),
(37, 73, 95, 'gallery', 0, 1, 1),
(38, 22, 28, 'video', 0, 1, 1),
(39, 22, 30, 'video', 1, 0, 1),
(40, 22, 29, 'video', 1, 0, 1),
(41, 22, 27, 'video', 1, 1, 1),
(42, 85, 1, 'product', 1, 0, 1),
(43, 22, 23, 'article', 0, 0, 1),
(44, 55, 30, 'video', 1, 1, 1),
(45, 55, 28, 'video', 1, 1, 1),
(46, 55, 29, 'video', 1, 1, 1),
(47, 55, 27, 'video', 1, 1, 1),
(48, 55, 41, 'video', 1, 1, 1),
(49, 55, 23, 'article', 1, 1, 1),
(50, 22, 41, 'video', 1, 1, 1),
(51, 55, 26, 'article', 1, 1, 1),
(52, 22, 42, 'video', 1, 1, 1),
(53, 146, 42, 'video', 0, 1, 1),
(54, 146, 27, 'article', 0, 1, 1),
(55, 146, 28, 'article', 0, 0, 1),
(56, 146, 20, 'article', 1, 1, 1),
(57, 146, 16, 'article', 0, 1, 1),
(58, 104, 47, 'video', 1, 1, 1),
(59, 156, 44, 'article', 1, 1, 1),
(60, 156, 42, 'video', 1, 1, 1),
(61, 156, 28, 'video', 1, 1, 1),
(62, 156, 30, 'video', 1, 1, 1),
(63, 156, 47, 'video', 1, 1, 1),
(64, 156, 27, 'video', 1, 1, 1),
(65, 156, 29, 'video', 1, 1, 1),
(66, 156, 41, 'video', 1, 1, 1),
(67, 156, 20, 'article', 1, 1, 1),
(68, 156, 16, 'article', 1, 0, 1),
(69, 156, 28, 'article', 1, 1, 1),
(70, 156, 27, 'article', 1, 1, 1),
(71, 55, 911, 'gallery', 1, 1, 1),
(72, 55, 903, 'gallery', 1, 1, 1),
(73, 55, 902, 'gallery', 1, 1, 1),
(74, 55, 908, 'gallery', 1, 1, 1),
(75, 55, 909, 'gallery', 1, 1, 1),
(76, 55, 907, 'gallery', 1, 1, 1),
(77, 55, 44, 'article', 1, 1, 1),
(78, 55, 900, 'gallery', 1, 1, 1),
(79, 55, 915, 'gallery', 1, 1, 1),
(80, 55, 913, 'gallery', 1, 1, 1),
(81, 55, 912, 'gallery', 1, 1, 1),
(82, 55, 914, 'gallery', 1, 1, 1),
(83, 55, 910, 'gallery', 1, 1, 1),
(84, 55, 905, 'gallery', 1, 1, 1),
(85, 55, 904, 'gallery', 1, 1, 1),
(86, 55, 901, 'gallery', 1, 1, 1),
(87, 55, 906, 'gallery', 1, 1, 1),
(88, 55, 49, 'video', 1, 1, 1),
(89, 55, 48, 'video', 1, 1, 1),
(90, 55, 51, 'video', 1, 1, 1),
(91, 55, 50, 'video', 1, 1, 1),
(92, 156, 49, 'video', 1, 1, 1),
(93, 156, 50, 'video', 1, 1, 1),
(94, 156, 51, 'video', 1, 1, 1),
(95, 156, 48, 'video', 1, 1, 1),
(96, 73, 50, 'video', 1, 1, 1),
(97, 73, 51, 'video', 1, 1, 1),
(98, 73, 49, 'video', 1, 1, 1),
(99, 73, 48, 'video', 1, 1, 1),
(100, 73, 912, 'gallery', 1, 1, 1),
(101, 73, 909, 'gallery', 1, 1, 1),
(102, 73, 907, 'gallery', 1, 1, 1),
(103, 73, 902, 'gallery', 1, 0, 1),
(104, 73, 910, 'gallery', 1, 1, 1),
(105, 73, 914, 'gallery', 1, 1, 1),
(106, 73, 903, 'gallery', 1, 1, 1),
(107, 73, 908, 'gallery', 1, 1, 1),
(108, 73, 915, 'gallery', 1, 1, 1),
(109, 73, 900, 'gallery', 1, 1, 1),
(110, 73, 905, 'gallery', 1, 1, 1),
(111, 73, 906, 'gallery', 1, 1, 1),
(112, 73, 901, 'gallery', 1, 1, 1),
(113, 73, 913, 'gallery', 1, 1, 1),
(114, 73, 904, 'gallery', 1, 1, 1),
(115, 73, 911, 'gallery', 1, 1, 1),
(116, 22, 901, 'gallery', 0, 1, 1),
(117, 22, 907, 'gallery', 0, 1, 1),
(118, 22, 900, 'gallery', 0, 1, 1),
(119, 22, 912, 'gallery', 0, 0, 1),
(120, 22, 914, 'gallery', 0, 0, 1),
(121, 22, 908, 'gallery', 0, 0, 1),
(122, 22, 915, 'gallery', 1, 0, 1),
(123, 22, 904, 'gallery', 0, 1, 1),
(124, 22, 903, 'gallery', 0, 1, 1),
(125, 22, 909, 'gallery', 1, 0, 1),
(126, 22, 910, 'gallery', 0, 1, 1),
(127, 22, 911, 'gallery', 0, 1, 1),
(128, 22, 913, 'gallery', 0, 1, 1),
(129, 22, 902, 'gallery', 1, 0, 1),
(130, 22, 50, 'video', 0, 1, 1),
(131, 22, 51, 'video', 1, 1, 1),
(132, 22, 49, 'video', 1, 0, 1),
(133, 22, 48, 'video', 0, 1, 1),
(134, 77, 110, 'company', 0, 0, 1),
(135, 62, 98, 'company', 0, 0, 1),
(136, 143, 172, 'company', 0, 0, 1),
(137, 156, 181, 'company', 0, 0, 1),
(138, 143, 1, 'product', 1, 0, 1),
(139, 143, 865, 'gallery', 0, 1, 1),
(140, 143, 850, 'gallery', 0, 0, 1),
(141, 143, 871, 'gallery', 0, 0, 1),
(142, 143, 774, 'gallery', 1, 0, 1),
(143, 143, 776, 'gallery', 0, 1, 1),
(144, 143, 867, 'gallery', 1, 0, 1),
(145, 61, 97, 'company', 0, 0, 1),
(146, 146, 932, 'gallery', 0, 0, 1),
(147, 146, 229, 'gallery', 0, 0, 1),
(148, 146, 223, 'gallery', 0, 0, 1),
(149, 146, 230, 'gallery', 0, 0, 1),
(150, 146, 934, 'gallery', 0, 0, 1),
(151, 85, 118, 'company', 0, 0, 1),
(152, 55, 930, 'gallery', 1, 0, 0),
(153, 55, 925, 'gallery', 1, 0, 0),
(154, 55, 231, 'gallery', 1, 0, 0),
(155, 55, 220, 'gallery', 0, 1, 0),
(156, 55, 223, 'gallery', 0, 0, 1),
(157, 55, 923, 'gallery', 1, 0, 0),
(158, 55, 236, 'gallery', 0, 1, 0),
(159, 55, 929, 'gallery', 0, 0, 1),
(160, 55, 233, 'gallery', 1, 0, 0),
(161, 55, 927, 'gallery', 0, 1, 0),
(162, 55, 232, 'gallery', 0, 1, 0),
(163, 55, 229, 'gallery', 0, 1, 0),
(164, 55, 926, 'gallery', 0, 0, 1),
(165, 55, 924, 'gallery', 0, 0, 1),
(166, 55, 933, 'gallery', 0, 0, 1),
(167, 55, 230, 'gallery', 0, 0, 1),
(168, 55, 921, 'gallery', 0, 0, 1),
(169, 55, 937, 'gallery', 1, 0, 0),
(170, 55, 928, 'gallery', 0, 0, 1),
(171, 55, 949, 'gallery', 0, 1, 0),
(172, 55, 234, 'gallery', 1, 0, 0),
(173, 55, 919, 'gallery', 0, 0, 1),
(174, 55, 235, 'gallery', 1, 0, 0),
(175, 55, 228, 'gallery', 1, 0, 0),
(176, 55, 219, 'gallery', 0, 1, 0),
(177, 55, 932, 'gallery', 0, 0, 1),
(178, 55, 935, 'gallery', 0, 0, 1),
(179, 55, 934, 'gallery', 0, 1, 0),
(180, 55, 224, 'gallery', 1, 0, 0),
(181, 55, 222, 'gallery', 1, 0, 0),
(182, 55, 920, 'gallery', 0, 0, 1),
(183, 106, 137, 'company', 0, 0, 1),
(184, 65, 100, 'company', 0, 0, 1),
(185, 119, 150, 'company', 0, 0, 1),
(186, 159, 183, 'company', 0, 0, 1),
(187, 55, 980, 'gallery', 1, 1, 1),
(188, 55, 972, 'gallery', 1, 1, 1),
(189, 55, 989, 'gallery', 1, 1, 1),
(190, 55, 984, 'gallery', 1, 1, 1),
(191, 55, 960, 'gallery', 1, 1, 1),
(192, 55, 981, 'gallery', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `channel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `looked` tinyint(1) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `channel`, `message`, `looked`, `updated_at`, `created_at`) VALUES
(1, 10, 'chat.10.12', 'Hi', 0, '2019-04-10 08:20:50', '2019-04-10 08:20:50'),
(2, 10, 'chat.10.12', 'Nice to meet you', 1, '2019-04-10 08:20:56', '2019-04-10 08:20:54'),
(3, 12, 'chat.10.12', 'Hello', 0, '2019-04-10 08:24:44', '2019-04-10 08:24:44'),
(4, 12, 'chat.10.12', 'can i tell you?', 1, '2019-04-10 08:27:11', '2019-04-10 08:24:50'),
(5, 12, 'chat.10.12', 'Please let me know if you are available', 1, '2019-04-10 08:30:40', '2019-04-10 08:29:54'),
(6, 10, 'chat.10.12', 'Ok sure.', 1, '2019-04-10 08:30:45', '2019-04-10 08:30:43'),
(7, 10, 'chat.10.12', 'HI Nice to meet you', 1, '2019-04-10 16:30:08', '2019-04-10 16:30:05'),
(8, 12, 'chat.10.12', 'Thanks', 0, '2019-04-10 16:30:11', '2019-04-10 16:30:11'),
(9, 12, 'chat.10.12', 'What are you doing now?', 1, '2019-04-10 16:30:18', '2019-04-10 16:30:16'),
(10, 10, 'chat.10.12', 'I am just cooking.', 1, '2019-04-10 16:30:27', '2019-04-10 16:30:24'),
(11, 12, 'chat.10.12', 'Really, what is your favor?', 0, '2019-04-10 16:30:35', '2019-04-10 16:30:35'),
(12, 12, 'chat.10.12', 'what do you like best', 0, '2019-04-10 16:30:46', '2019-04-10 16:30:46'),
(13, 12, 'chat.10.12', 'Can you see now?', 1, '2019-04-10 16:31:07', '2019-04-10 16:31:05'),
(14, 10, 'chat.10.12', 'sure', 1, '2019-04-10 16:31:15', '2019-04-10 16:31:09'),
(15, 12, 'chat.10.12', 'HI', 0, '2019-04-10 16:31:17', '2019-04-10 16:31:17'),
(16, 12, 'chat.10.12', 'are you there?', 0, '2019-04-10 16:31:20', '2019-04-10 16:31:20'),
(17, 12, 'chat.10.12', 'What are you doing now?', 1, '2019-04-10 16:31:32', '2019-04-10 16:31:24'),
(18, 10, 'chat.10.12', 'Hi I am back', 0, '2019-04-10 16:31:36', '2019-04-10 16:31:36'),
(19, 10, 'chat.10.12', 'we can talk now', 1, '2019-04-10 16:34:48', '2019-04-10 16:31:42'),
(20, 12, 'chat.10.12', 'Hello', 0, '2019-04-16 16:25:48', '2019-04-16 16:25:48'),
(21, 12, 'chat.10.12', 'Hello', 0, '2019-04-16 16:29:54', '2019-04-16 16:29:54'),
(22, 12, 'chat.10.12', 'Hello', 0, '2019-04-16 16:30:33', '2019-04-16 16:30:33'),
(23, 12, 'chat.10.12', 'Hello\\', 0, '2019-04-16 16:38:04', '2019-04-16 16:38:04'),
(24, 12, 'chat.10.12', 'Hello', 0, '2019-04-16 16:39:25', '2019-04-16 16:39:25'),
(25, 12, 'chat.10.12', 'Hi', 0, '2019-04-16 16:40:06', '2019-04-16 16:40:06'),
(26, 12, 'chat.10.12', 'Hi', 0, '2019-04-16 16:40:44', '2019-04-16 16:40:44'),
(27, 12, 'chat.10.12', 'What are you doing', 0, '2019-04-16 16:40:48', '2019-04-16 16:40:48'),
(28, 12, 'chat.10.12', 'asdfasdf', 0, '2019-04-16 16:42:54', '2019-04-16 16:42:54'),
(29, 12, 'chat.10.12', 'aaaa', 0, '2019-04-16 16:57:43', '2019-04-16 16:57:43'),
(30, 12, 'chat.10.12', 'aaaa', 0, '2019-04-16 16:59:58', '2019-04-16 16:59:58'),
(31, 12, 'chat.10.12', 'aaaaaa', 0, '2019-04-16 17:01:55', '2019-04-16 17:01:55'),
(32, 12, 'chat.10.12', 'aaaaaa', 0, '2019-04-16 17:02:29', '2019-04-16 17:02:29'),
(33, 12, 'chat.10.12', 'bbbb', 0, '2019-04-16 17:10:52', '2019-04-16 17:10:52'),
(34, 12, 'chat.10.12', 'abcd.', 0, '2019-04-16 17:11:59', '2019-04-16 17:11:59'),
(35, 12, 'chat.10.12', 'aaaa', 0, '2019-04-16 17:24:43', '2019-04-16 17:24:43'),
(36, 12, 'chat.10.12', 'aabcdf', 0, '2019-04-16 17:27:38', '2019-04-16 17:27:38'),
(37, 12, 'chat.10.12', 'asdfasdf', 0, '2019-04-16 17:32:02', '2019-04-16 17:32:02'),
(38, 12, 'chat.10.12', 'hello', 0, '2019-04-16 17:38:21', '2019-04-16 17:38:21'),
(39, 12, 'chat.10.12', 'What are you doing?', 1, '2019-04-19 16:27:18', '2019-04-16 17:38:33'),
(40, 12, 'chat.10.12', 'What are you doing?', 1, '2019-04-19 16:27:20', '2019-04-19 16:27:15'),
(41, 10, 'chat.10.12', 'Hi', 1, '2019-04-19 16:27:27', '2019-04-19 16:27:19'),
(42, 10, 'chat.10.12', 'Nice to meet you', 1, '2019-04-19 16:27:35', '2019-04-19 16:27:32'),
(43, 12, 'chat.10.12', 'Hi', 1, '2019-04-19 16:27:44', '2019-04-19 16:27:39'),
(44, 10, 'chat.10.12', 'What are you doing?', 1, '2019-04-19 16:27:58', '2019-04-19 16:27:48'),
(45, 12, 'chat.10.12', 'Hi', 0, '2019-04-27 19:42:24', '2019-04-27 19:42:24'),
(46, 12, 'chat.13.12', 'Hhi', 0, '2019-04-28 13:20:24', '2019-04-28 13:20:24'),
(47, 12, 'chat.13.12', 'what are you doing?', 0, '2019-04-28 13:20:35', '2019-04-28 13:20:35'),
(48, 12, 'chat.10.12', 'Hi', 0, '2019-04-28 16:47:12', '2019-04-28 16:47:12'),
(49, 12, 'chat.10.12', 'r u there?', 0, '2019-04-28 16:47:18', '2019-04-28 16:47:18'),
(50, 12, 'chat.10.12', 'what are you doing now?', 0, '2019-04-28 16:47:37', '2019-04-28 16:47:37'),
(51, 12, 'chat.15.12', 'Hi', 0, '2019-04-29 18:48:27', '2019-04-29 18:48:27'),
(52, 12, 'chat.15.12', 'Hi', 0, '2019-04-30 18:40:47', '2019-04-30 18:40:47'),
(53, 12, 'chat.10.12', 'hello', 0, '2019-05-01 14:16:58', '2019-05-01 14:16:58'),
(54, 12, 'chat.10.12', 'hello', 0, '2019-05-02 13:43:37', '2019-05-02 13:43:37'),
(55, 12, 'chat.13.12', 'kirie nonta gia sas', 0, '2019-05-03 11:51:25', '2019-05-03 11:51:25'),
(56, 22, 'chat.13.22', 'hello there', 0, '2019-06-12 07:57:17', '2019-06-12 07:57:17'),
(57, 22, 'chat.10.22', 'gia sas', 0, '2019-06-12 08:34:13', '2019-06-12 08:34:13'),
(58, 22, 'chat.10.22', 'gia sas', 0, '2019-06-12 08:55:10', '2019-06-12 08:55:10'),
(59, 22, 'chat.15.22', 'gia sou elena', 0, '2019-06-12 08:59:52', '2019-06-12 08:59:52'),
(60, 10, 'chat.10.12', 'Hi', 0, '2019-06-12 09:00:39', '2019-06-12 09:00:39'),
(61, 22, 'chat.15.22', 'sadasdasd', 0, '2019-06-12 09:07:31', '2019-06-12 09:07:31'),
(62, 22, 'chat.13.22', 'gia kiries asdfsksdasodsakdsapodjasdoasjod', 0, '2019-06-12 11:51:52', '2019-06-12 11:51:52'),
(63, 22, 'chat.13.22', 'hello', 0, '2019-06-12 12:08:15', '2019-06-12 12:08:15'),
(64, 13, 'chat.13.22', 'gia sou', 0, '2019-06-12 12:08:31', '2019-06-12 12:08:31'),
(65, 22, 'chat.13.22', 'ok apla ekana test', 0, '2019-06-12 12:09:20', '2019-06-12 12:09:20'),
(66, 22, 'chat.13.22', 'sjdias', 0, '2019-06-12 15:11:34', '2019-06-12 15:11:34'),
(67, 22, 'chat.13.22', 'hello', 0, '2019-06-13 16:38:53', '2019-06-13 16:38:53'),
(68, 22, 'chat.14.22', 'yyhytjyt', 0, '2019-06-18 16:18:50', '2019-06-18 16:18:50'),
(69, 22, 'chat.14.22', '4t43t34t4t', 0, '2019-06-18 16:19:10', '2019-06-18 16:19:10'),
(70, 22, 'chat.14.22', 'regegr', 0, '2019-06-18 20:58:04', '2019-06-18 20:58:04'),
(71, 22, 'chat.14.22', 'Hello', 0, '2019-06-20 16:15:30', '2019-06-20 16:15:30'),
(72, 13, 'chat.13.13', 'ΚΥΡΙΕ ΝΟΝΤΑ ΣΥΓΧΑΡΗΤΗΡΙΑ ΕΝ ΤΕΛΕΙΟ', 0, '2019-06-20 23:35:19', '2019-06-20 23:35:19'),
(73, 25, 'chat.13.25', 'Congrats!', 0, '2019-06-20 23:43:52', '2019-06-20 23:43:52'),
(74, 25, 'chat.13.25', 'Hello?', 0, '2019-06-20 23:46:04', '2019-06-20 23:46:04'),
(75, 22, 'chat.13.22', 'trrtttr', 0, '2019-06-21 00:04:55', '2019-06-21 00:04:55'),
(76, 22, 'chat.10.22', 'fftyf', 0, '2019-06-21 00:08:02', '2019-06-21 00:08:02'),
(77, 22, 'chat.10.22', 'fewfew', 0, '2019-06-21 00:08:15', '2019-06-21 00:08:15'),
(78, 22, 'chat.10.22', 'hghjg', 0, '2019-06-21 00:08:52', '2019-06-21 00:08:52'),
(79, 22, 'chat.15.22', 'yygeyfgwef', 0, '2019-07-19 14:51:16', '2019-07-19 14:51:16'),
(80, 15, 'chat.15.22', 'uedged', 0, '2019-07-19 14:53:11', '2019-07-19 14:53:11'),
(81, 15, 'chat.15.22', 'dewdewd#', 0, '2019-07-19 14:55:55', '2019-07-19 14:55:55'),
(82, 15, 'chat.15.22', 'dewdewd', 0, '2019-07-19 14:55:55', '2019-07-19 14:55:55'),
(83, 22, 'chat.15.22', 'τεστ', 0, '2019-07-22 16:59:51', '2019-07-22 16:59:51'),
(84, 22, 'chat.10.22', 'test', 0, '2019-07-24 00:42:16', '2019-07-24 00:42:16'),
(85, 22, 'chat.10.22', 'ji', 0, '2019-07-24 00:46:06', '2019-07-24 00:46:06'),
(86, 22, 'chat.10.22', 'huewdwed', 0, '2019-07-29 18:29:20', '2019-07-29 18:29:20'),
(87, 22, 'chat.13.22', 'hdufhdsf', 0, '2019-08-24 12:44:57', '2019-08-24 12:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_03_19_192918_added_service_user', 1),
(2, '2019_04_06_202605_create_websockets_statistics_entries_table', 2),
(3, '2014_10_12_000000_create_users_table', 3),
(4, '2014_10_12_100000_create_password_resets_table', 3),
(5, '2019_04_16_130427_create_article_table', 3),
(6, '2019_04_16_131141_create_event_table', 3),
(7, '2019_04_16_131417_create_gallery_table', 3),
(8, '2019_04_16_131558_create_message_table', 3),
(9, '2019_04_16_132132_create_notification_table', 3),
(10, '2019_04_16_132323_create_package_table', 3),
(11, '2019_04_16_133502_create_video_table', 3),
(12, '2019_04_29_062657_create_company_table', 3),
(13, '2019_04_29_063601_create_area_table', 4),
(17, '2019_04_29_063852_create_category_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('friend','upload_image','upload_video','upload_article','live_events','appointment_deny','appointment_accept','message','add_points','buy_product','seller_subscription') COLLATE utf8mb4_unicode_ci NOT NULL,
  `public` tinyint(4) DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `sender_id`, `receiver_id`, `content_id`, `title`, `content`, `type`, `public`, `created_at`, `updated_at`) VALUES
(4, 22, 13, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-09 20:52:59', '2019-07-09 20:52:59'),
(5, 22, 15, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-09 22:13:24', '2019-07-09 22:13:24'),
(6, 22, 15, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-09 22:13:27', '2019-07-09 22:13:27'),
(7, 22, 15, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-09 22:13:29', '2019-07-09 22:13:29'),
(8, 22, 14, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-09 22:15:59', '2019-07-09 22:15:59'),
(9, 22, 14, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-09 22:16:01', '2019-07-09 22:16:01'),
(10, 22, 14, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-09 22:16:03', '2019-07-09 22:16:03'),
(11, 12, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-10 16:32:15', '2019-07-10 16:32:15'),
(12, 12, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-10 16:39:45', '2019-07-10 16:39:45'),
(13, 12, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-10 17:04:21', '2019-07-10 17:04:21'),
(14, 25, 15, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-12 17:00:04', '2019-07-12 17:00:04'),
(15, 22, 13, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-12 20:44:51', '2019-07-12 20:44:51'),
(16, 22, 13, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-12 20:44:53', '2019-07-12 20:44:53'),
(17, 22, 13, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-12 20:44:55', '2019-07-12 20:44:55'),
(18, 22, 14, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-12 20:44:59', '2019-07-12 20:44:59'),
(19, 25, 13, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-15 08:17:35', '2019-07-15 08:17:35'),
(20, 25, 15, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-15 08:21:45', '2019-07-15 08:21:45'),
(21, 22, 15, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-16 12:40:53', '2019-07-16 12:40:53'),
(22, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-16 17:40:48', '2019-07-16 17:40:48'),
(23, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-16 17:40:48', '2019-07-16 17:40:48'),
(24, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-16 17:40:50', '2019-07-16 17:40:50'),
(25, 22, 14, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-19 14:30:39', '2019-07-19 14:30:39'),
(26, 22, 14, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-19 14:30:41', '2019-07-19 14:30:41'),
(27, 22, 15, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-19 14:30:45', '2019-07-19 14:30:45'),
(28, 22, 15, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-19 14:30:46', '2019-07-19 14:30:46'),
(29, 22, 15, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-19 14:30:47', '2019-07-19 14:30:47'),
(30, 22, 15, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-19 14:33:16', '2019-07-19 14:33:16'),
(31, 22, 15, 0, 'New Message', 'yygeyfgwef', 'message', 1, '2019-07-19 14:51:16', '2019-07-19 14:51:16'),
(32, 15, 22, 0, 'New Message', 'uedged', 'message', 1, '2019-07-19 14:53:11', '2019-07-19 14:53:11'),
(33, 15, 22, 0, 'New Message', 'dewdewd#', 'message', 1, '2019-07-19 14:55:55', '2019-07-19 14:55:55'),
(34, 15, 22, 0, 'New Message', 'dewdewd', 'message', 1, '2019-07-19 14:55:55', '2019-07-19 14:55:55'),
(35, 25, 38, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-19 15:01:33', '2019-07-19 15:01:33'),
(36, 15, 22, 0, 'Accept Appointment(2019-07-20 07:00:00-2019-07-20 07:30:00)', 'thanks', 'appointment_accept', 1, '2019-07-19 15:14:54', '2019-07-19 15:14:54'),
(37, 22, 13, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-22 16:37:28', '2019-07-22 16:37:28'),
(38, 22, 13, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-22 16:37:29', '2019-07-22 16:37:29'),
(39, 22, 13, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-22 16:37:31', '2019-07-22 16:37:31'),
(40, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-22 16:37:34', '2019-07-22 16:37:34'),
(41, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-22 16:37:34', '2019-07-22 16:37:34'),
(42, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-22 16:37:35', '2019-07-22 16:37:35'),
(43, 22, 15, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-22 16:58:27', '2019-07-22 16:58:27'),
(44, 22, 15, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-22 16:58:46', '2019-07-22 16:58:46'),
(45, 22, 15, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-22 16:58:46', '2019-07-22 16:58:46'),
(46, 22, 15, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-22 16:58:52', '2019-07-22 16:58:52'),
(47, 22, 15, 0, 'New Message', 'τεστ', 'message', 1, '2019-07-22 16:59:51', '2019-07-22 16:59:51'),
(48, 15, 22, 0, 'Accept Appointment(2019-06-11 07:30:00-2019-06-11 08:00:00)', 'test', 'appointment_accept', 1, '2019-07-22 17:01:45', '2019-07-22 17:01:45'),
(49, 10, 12, 0, 'Accept Appointment(2019-04-08 16:30:00-2019-04-08 20:30:00)', 'hjuhu', 'appointment_accept', 1, '2019-07-22 17:38:07', '2019-07-22 17:38:07'),
(50, 10, 0, 0, 'New Image Uploaded', 'Η επιτυχία θέλει χαρακτήρα', 'upload_image', 0, '2019-07-22 19:26:08', '2019-07-22 19:26:08'),
(51, 10, 0, 0, 'New Image Uploaded', 'Η επιτυχία θέλει χαρακτήρα', 'upload_image', 0, '2019-07-22 19:26:18', '2019-07-22 19:26:18'),
(52, 12, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-23 15:47:22', '2019-07-23 15:47:22'),
(53, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-23 16:46:25', '2019-07-23 16:46:25'),
(54, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-24 00:38:24', '2019-07-24 00:38:24'),
(55, 22, 10, 0, 'New Message', 'test', 'message', 1, '2019-07-24 00:42:16', '2019-07-24 00:42:16'),
(56, 22, 10, 0, 'New Message', 'ji', 'message', 1, '2019-07-24 00:46:06', '2019-07-24 00:46:06'),
(57, 10, 0, 0, 'New Image Uploaded', 'Το μέλλον ανήκει σε σένα', 'upload_image', 0, '2019-07-25 04:04:59', '2019-07-25 04:04:59'),
(58, 10, 0, 0, 'New Image Uploaded', 'Η επιτυχία σου είναι στα δικά σου χέρια!', 'upload_image', 0, '2019-07-25 04:22:25', '2019-07-25 04:22:25'),
(59, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-25 08:58:33', '2019-07-25 08:58:33'),
(60, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-25 08:58:42', '2019-07-25 08:58:42'),
(61, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-25 08:58:43', '2019-07-25 08:58:43'),
(62, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-25 08:58:44', '2019-07-25 08:58:44'),
(63, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-25 08:58:47', '2019-07-25 08:58:47'),
(64, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-25 08:58:47', '2019-07-25 08:58:47'),
(65, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-25 08:58:47', '2019-07-25 08:58:47'),
(66, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-25 08:58:49', '2019-07-25 08:58:49'),
(67, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-25 08:58:50', '2019-07-25 08:58:50'),
(68, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-25 08:58:52', '2019-07-25 08:58:52'),
(69, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-25 09:00:04', '2019-07-25 09:00:04'),
(70, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-25 10:59:24', '2019-07-25 10:59:24'),
(71, 12, 22, 1, 'Superman Bought product', 'test', 'buy_product', 1, '2019-07-25 17:28:59', '2019-07-25 17:28:59'),
(72, 22, 12, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-07-25 17:28:59', '2019-07-25 17:28:59'),
(73, 12, 22, 1, 'Superman Bought product', 'test', 'buy_product', 1, '2019-07-25 17:30:58', '2019-07-25 17:30:58'),
(74, 22, 12, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-07-25 17:30:58', '2019-07-25 17:30:58'),
(75, 12, 22, 1, 'Superman Bought product', 'test', 'buy_product', 1, '2019-07-25 17:32:58', '2019-07-25 17:32:58'),
(76, 22, 12, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-07-25 17:32:58', '2019-07-25 17:32:58'),
(77, 12, 22, 1, 'Superman Bought product', 'test', 'buy_product', 1, '2019-07-25 17:33:12', '2019-07-25 17:33:12'),
(78, 22, 12, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-07-25 17:33:12', '2019-07-25 17:33:12'),
(79, 22, 15, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-27 09:20:05', '2019-07-27 09:20:05'),
(80, 54, 54, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-28 18:22:22', '2019-07-28 18:22:22'),
(81, 22, 38, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 19:17:46', '2019-07-28 19:17:46'),
(82, 22, 38, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 19:17:53', '2019-07-28 19:17:53'),
(83, 22, 38, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 19:17:54', '2019-07-28 19:17:54'),
(84, 22, 14, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 20:40:54', '2019-07-28 20:40:54'),
(85, 22, 14, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 20:40:56', '2019-07-28 20:40:56'),
(86, 22, 14, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 20:40:57', '2019-07-28 20:40:57'),
(87, 55, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 22:55:51', '2019-07-28 22:55:51'),
(88, 55, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 22:56:11', '2019-07-28 22:56:11'),
(89, 55, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 22:56:12', '2019-07-28 22:56:12'),
(90, 55, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 22:56:14', '2019-07-28 22:56:14'),
(91, 55, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 22:56:14', '2019-07-28 22:56:14'),
(92, 55, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 22:56:15', '2019-07-28 22:56:15'),
(93, 55, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 22:56:16', '2019-07-28 22:56:16'),
(94, 55, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 22:56:17', '2019-07-28 22:56:17'),
(95, 55, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 22:56:20', '2019-07-28 22:56:20'),
(96, 55, 13, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 23:01:02', '2019-07-28 23:01:02'),
(97, 55, 13, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 23:01:03', '2019-07-28 23:01:03'),
(98, 55, 13, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 23:01:06', '2019-07-28 23:01:06'),
(99, 55, 14, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 23:01:07', '2019-07-28 23:01:07'),
(100, 55, 14, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 23:01:07', '2019-07-28 23:01:07'),
(101, 55, 14, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 23:01:08', '2019-07-28 23:01:08'),
(102, 55, 15, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 23:01:15', '2019-07-28 23:01:15'),
(103, 55, 15, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 23:01:16', '2019-07-28 23:01:16'),
(104, 55, 15, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 23:01:21', '2019-07-28 23:01:21'),
(105, 55, 38, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 23:01:23', '2019-07-28 23:01:23'),
(106, 55, 38, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 23:01:24', '2019-07-28 23:01:24'),
(107, 55, 38, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 23:01:27', '2019-07-28 23:01:27'),
(108, 55, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 23:01:43', '2019-07-28 23:01:43'),
(109, 55, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 23:01:44', '2019-07-28 23:01:44'),
(110, 55, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 23:01:48', '2019-07-28 23:01:48'),
(111, 22, 38, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-28 23:12:06', '2019-07-28 23:12:06'),
(112, 22, 38, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-28 23:12:17', '2019-07-28 23:12:17'),
(113, 22, 38, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-07-28 23:12:28', '2019-07-28 23:12:28'),
(114, 22, 38, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-07-28 23:12:29', '2019-07-28 23:12:29'),
(115, 22, 38, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-07-28 23:12:34', '2019-07-28 23:12:34'),
(116, 22, 38, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-29 01:28:48', '2019-07-29 01:28:48'),
(117, 22, 22, 0, 'Subscribe with Advertise', 'You subscribed to annual product advertise.', 'seller_subscription', 1, '2019-07-29 02:34:44', '2019-07-29 02:34:44'),
(118, 22, 22, 0, 'Subscribe with Advertise', 'You subscribed to daily product advertise.', 'seller_subscription', 1, '2019-07-29 02:35:00', '2019-07-29 02:35:00'),
(119, 22, 22, 0, 'Subscribe with Advertise', 'You subscribed to annual product advertise.', 'seller_subscription', 1, '2019-07-29 02:36:07', '2019-07-29 02:36:07'),
(120, 22, 22, 0, 'Subscribe with Advertise', 'You subscribed to daily product advertise.', 'seller_subscription', 1, '2019-07-29 02:36:16', '2019-07-29 02:36:16'),
(121, 22, 22, 0, 'Subscribe with Advertise', 'You subscribed to annual product advertise.', 'seller_subscription', 1, '2019-07-29 18:21:32', '2019-07-29 18:21:32'),
(122, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-29 18:27:53', '2019-07-29 18:27:53'),
(123, 22, 10, 86, 'New Message', 'huewdwed', 'message', 1, '2019-07-29 18:29:20', '2019-07-29 18:29:20'),
(124, 22, 38, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-30 14:01:57', '2019-07-30 14:01:57'),
(125, 38, 0, 29, 'New Article Uploaded', 'New Article', 'upload_article', 0, '2019-07-31 16:38:59', '2019-07-31 16:38:59'),
(126, 55, 41, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-07-31 19:36:42', '2019-07-31 19:36:42'),
(127, 38, 0, 27, 'New Article Uploaded', 'Άσκηση και Διατροφή', 'upload_article', 0, '2019-08-01 08:21:43', '2019-08-01 08:21:43'),
(128, 10, 0, 30, 'New Image Uploaded', 'Lifestyle with Diaskedazw', 'upload_image', 0, '2019-08-01 15:40:10', '2019-08-01 15:40:10'),
(129, 10, 0, 31, 'New Image Uploaded', 'Πάντα θα μαθαίνουμε...', 'upload_image', 0, '2019-08-01 15:42:41', '2019-08-01 15:42:41'),
(130, 10, 0, 32, 'New Image Uploaded', 'You can change!', 'upload_image', 0, '2019-08-01 15:45:05', '2019-08-01 15:45:05'),
(131, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-08-01 20:21:01', '2019-08-01 20:21:01'),
(132, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-08-01 20:21:01', '2019-08-01 20:21:01'),
(133, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-01 20:21:01', '2019-08-01 20:21:01'),
(134, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-01 20:21:04', '2019-08-01 20:21:04'),
(135, 22, 10, 0, 'Add Points', 'Added 2', 'add_points', 1, '2019-08-01 20:21:41', '2019-08-01 20:21:41'),
(136, 22, 10, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-01 20:21:41', '2019-08-01 20:21:41'),
(137, 22, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-08-01 20:27:51', '2019-08-01 20:27:51'),
(138, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-08-01 20:28:12', '2019-08-01 20:28:12'),
(139, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-08-01 20:28:13', '2019-08-01 20:28:13'),
(140, 22, 10, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-08-01 20:28:14', '2019-08-01 20:28:14'),
(141, 10, 22, 1, 'Κρίς Πολυκάρπου Bought product', 'test', 'buy_product', 1, '2019-08-05 10:47:32', '2019-08-05 10:47:32'),
(142, 22, 10, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-08-05 10:47:32', '2019-08-05 10:47:32'),
(143, 10, 22, 1, 'Κρίς Πολυκάρπου Bought product', 'test', 'buy_product', 1, '2019-08-05 10:47:33', '2019-08-05 10:47:33'),
(144, 22, 10, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-08-05 10:47:33', '2019-08-05 10:47:33'),
(145, 10, 38, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-08-05 11:00:25', '2019-08-05 11:00:25'),
(146, 10, 0, 21, 'New Video Uploaded', 'New Video', 'upload_video', 0, '2019-08-10 14:26:10', '2019-08-10 14:26:10'),
(147, 10, 10, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-08-10 14:27:13', '2019-08-10 14:27:13'),
(148, 12, 0, 22, 'New Video Uploaded', 'New Video', 'upload_video', 0, '2019-08-12 07:33:40', '2019-08-12 07:33:40'),
(149, 62, 0, 33, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-13 09:47:26', '2019-08-13 09:47:26'),
(150, 62, 0, 34, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-13 09:48:38', '2019-08-13 09:48:38'),
(151, 62, 0, 35, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-13 09:48:59', '2019-08-13 09:48:59'),
(152, 62, 0, 36, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-13 09:49:33', '2019-08-13 09:49:33'),
(153, 62, 0, 37, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-13 09:50:20', '2019-08-13 09:50:20'),
(154, 62, 0, 38, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-13 09:54:59', '2019-08-13 09:54:59'),
(155, 63, 0, 39, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-17 22:03:56', '2019-08-17 22:03:56'),
(156, 63, 0, 40, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-17 22:04:23', '2019-08-17 22:04:23'),
(157, 63, 0, 41, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-17 22:04:39', '2019-08-17 22:04:39'),
(158, 63, 0, 42, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-17 22:05:00', '2019-08-17 22:05:00'),
(159, 63, 63, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-17 22:05:43', '2019-08-17 22:05:43'),
(160, 63, 0, 43, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-17 22:06:21', '2019-08-17 22:06:21'),
(161, 63, 0, 44, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-17 22:06:53', '2019-08-17 22:06:53'),
(162, 63, 0, 45, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-17 22:07:16', '2019-08-17 22:07:16'),
(163, 65, 0, 46, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 10:50:39', '2019-08-18 10:50:39'),
(164, 65, 0, 47, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 10:50:54', '2019-08-18 10:50:54'),
(165, 65, 0, 48, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 10:51:08', '2019-08-18 10:51:08'),
(166, 65, 0, 49, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 10:51:24', '2019-08-18 10:51:24'),
(167, 65, 0, 50, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 10:51:46', '2019-08-18 10:51:46'),
(168, 65, 0, 51, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-18 10:52:05', '2019-08-18 10:52:05'),
(169, 65, 0, 52, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-18 10:52:24', '2019-08-18 10:52:24'),
(170, 65, 0, 53, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-18 10:52:45', '2019-08-18 10:52:45'),
(171, 65, 0, 54, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-18 10:53:10', '2019-08-18 10:53:10'),
(172, 65, 0, 55, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-18 10:53:32', '2019-08-18 10:53:32'),
(173, 65, 0, 56, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-18 10:53:49', '2019-08-18 10:53:49'),
(174, 65, 0, 57, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-18 10:54:06', '2019-08-18 10:54:06'),
(175, 65, 0, 58, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-18 10:54:22', '2019-08-18 10:54:22'),
(176, 65, 0, 59, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-18 10:54:38', '2019-08-18 10:54:38'),
(177, 66, 0, 60, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 11:58:41', '2019-08-18 11:58:41'),
(178, 66, 0, 61, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 11:58:56', '2019-08-18 11:58:56'),
(179, 66, 0, 62, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 11:59:10', '2019-08-18 11:59:10'),
(180, 66, 0, 63, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 11:59:24', '2019-08-18 11:59:24'),
(181, 66, 0, 64, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 11:59:43', '2019-08-18 11:59:43'),
(182, 66, 0, 65, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-18 11:59:56', '2019-08-18 11:59:56'),
(183, 66, 0, 66, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-18 12:00:10', '2019-08-18 12:00:10'),
(184, 66, 0, 67, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-18 12:00:26', '2019-08-18 12:00:26'),
(185, 66, 0, 68, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-18 12:00:45', '2019-08-18 12:00:45'),
(186, 66, 0, 69, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-18 12:01:00', '2019-08-18 12:01:00'),
(187, 66, 0, 70, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-18 12:01:15', '2019-08-18 12:01:15'),
(188, 66, 0, 71, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-18 12:01:28', '2019-08-18 12:01:28'),
(189, 66, 0, 72, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-18 12:01:53', '2019-08-18 12:01:53'),
(190, 66, 0, 73, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-18 12:02:07', '2019-08-18 12:02:07'),
(191, 66, 0, 74, 'New Image Uploaded', '15', 'upload_image', 0, '2019-08-18 12:02:21', '2019-08-18 12:02:21'),
(192, 66, 0, 75, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-18 12:03:11', '2019-08-18 12:03:11'),
(193, 67, 0, 76, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 12:27:50', '2019-08-18 12:27:50'),
(194, 67, 0, 77, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 12:28:06', '2019-08-18 12:28:06'),
(195, 67, 0, 78, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 12:28:18', '2019-08-18 12:28:18'),
(196, 67, 0, 79, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 12:28:32', '2019-08-18 12:28:32'),
(197, 67, 0, 80, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 12:28:44', '2019-08-18 12:28:44'),
(198, 68, 0, 81, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 12:55:13', '2019-08-18 12:55:13'),
(199, 68, 0, 82, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 12:55:31', '2019-08-18 12:55:31'),
(200, 68, 0, 83, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 12:55:46', '2019-08-18 12:55:46'),
(201, 68, 0, 84, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 12:56:01', '2019-08-18 12:56:01'),
(202, 68, 0, 85, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 12:56:16', '2019-08-18 12:56:16'),
(203, 68, 0, 85, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 12:56:18', '2019-08-18 12:56:18'),
(204, 68, 0, 86, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-18 12:56:34', '2019-08-18 12:56:34'),
(205, 68, 0, 87, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-18 12:56:51', '2019-08-18 12:56:51'),
(206, 68, 0, 88, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-18 12:57:08', '2019-08-18 12:57:08'),
(207, 68, 0, 89, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-18 12:57:26', '2019-08-18 12:57:26'),
(208, 68, 0, 90, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-18 12:57:45', '2019-08-18 12:57:45'),
(209, 68, 0, 91, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-18 12:58:04', '2019-08-18 12:58:04'),
(210, 68, 0, 92, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-18 12:58:21', '2019-08-18 12:58:21'),
(211, 68, 0, 93, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-18 12:58:40', '2019-08-18 12:58:40'),
(212, 68, 0, 94, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-18 12:58:54', '2019-08-18 12:58:54'),
(213, 68, 0, 95, 'New Image Uploaded', '15', 'upload_image', 0, '2019-08-18 12:59:20', '2019-08-18 12:59:20'),
(214, 68, 0, 96, 'New Image Uploaded', '16', 'upload_image', 0, '2019-08-18 12:59:37', '2019-08-18 12:59:37'),
(215, 68, 0, 97, 'New Image Uploaded', '17', 'upload_image', 0, '2019-08-18 12:59:52', '2019-08-18 12:59:52'),
(216, 68, 0, 98, 'New Image Uploaded', '18', 'upload_image', 0, '2019-08-18 13:00:15', '2019-08-18 13:00:15'),
(217, 68, 0, 99, 'New Image Uploaded', '19', 'upload_image', 0, '2019-08-18 13:00:32', '2019-08-18 13:00:32'),
(218, 68, 68, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-18 13:22:39', '2019-08-18 13:22:39'),
(219, 68, 68, 0, 'Add Points', 'Added 4', 'add_points', 1, '2019-08-18 13:22:42', '2019-08-18 13:22:42'),
(220, 69, 0, 100, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 13:40:19', '2019-08-18 13:40:19'),
(221, 69, 0, 101, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 13:40:30', '2019-08-18 13:40:30'),
(222, 69, 0, 102, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 13:40:47', '2019-08-18 13:40:47'),
(223, 69, 0, 103, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 13:41:00', '2019-08-18 13:41:00'),
(224, 69, 0, 104, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 13:41:12', '2019-08-18 13:41:12'),
(225, 69, 0, 31, 'New Article Uploaded', 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', 'upload_article', 0, '2019-08-18 13:46:39', '2019-08-18 13:46:39'),
(226, 69, 0, 32, 'New Article Uploaded', 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', 'upload_article', 0, '2019-08-18 13:46:40', '2019-08-18 13:46:40'),
(227, 69, 0, 33, 'New Article Uploaded', 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', 'upload_article', 0, '2019-08-18 13:46:41', '2019-08-18 13:46:41'),
(228, 69, 0, 34, 'New Article Uploaded', 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', 'upload_article', 0, '2019-08-18 13:46:42', '2019-08-18 13:46:42'),
(229, 69, 0, 35, 'New Article Uploaded', 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', 'upload_article', 0, '2019-08-18 13:46:42', '2019-08-18 13:46:42'),
(230, 69, 0, 36, 'New Article Uploaded', 'Ρήξη Μηνίσκου Γόνατος – Διάγνωση και θεραπευτική αντιμετώπιση του', 'upload_article', 0, '2019-08-18 13:46:42', '2019-08-18 13:46:42'),
(231, 69, 0, 37, 'New Article Uploaded', 'Ψοΐτης μυς', 'upload_article', 0, '2019-08-18 13:50:24', '2019-08-18 13:50:24'),
(232, 69, 0, 38, 'New Article Uploaded', 'Νευροπάθεια από Παγίδευση Νεύρου', 'upload_article', 0, '2019-08-18 13:53:33', '2019-08-18 13:53:33'),
(233, 69, 0, 39, 'New Article Uploaded', 'Στοχευόμενη Θεραπεία με την χρήση ραδιοσυχνότητες (Tecar)', 'upload_article', 0, '2019-08-18 13:56:09', '2019-08-18 13:56:09'),
(234, 70, 0, 105, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 21:05:34', '2019-08-18 21:05:34'),
(235, 70, 0, 106, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 21:05:57', '2019-08-18 21:05:57'),
(236, 70, 0, 107, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 21:06:12', '2019-08-18 21:06:12'),
(237, 70, 0, 108, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 21:06:35', '2019-08-18 21:06:35'),
(238, 70, 0, 109, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 21:06:54', '2019-08-18 21:06:54'),
(239, 70, 0, 110, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-18 21:07:08', '2019-08-18 21:07:08'),
(240, 70, 0, 111, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-18 21:07:25', '2019-08-18 21:07:25'),
(241, 70, 0, 40, 'New Article Uploaded', 'Ονυχομυκητιάσεις', 'upload_article', 0, '2019-08-18 21:09:52', '2019-08-18 21:09:52'),
(242, 70, 0, 41, 'New Article Uploaded', 'Πτερναλγία', 'upload_article', 0, '2019-08-18 21:10:46', '2019-08-18 21:10:46'),
(243, 70, 0, 42, 'New Article Uploaded', 'Αρθρίτιδα στα Πόδια', 'upload_article', 0, '2019-08-18 21:11:48', '2019-08-18 21:11:48'),
(244, 70, 0, 43, 'New Article Uploaded', 'Κάλοι στα πόδια', 'upload_article', 0, '2019-08-18 21:12:47', '2019-08-18 21:12:47'),
(245, 71, 0, 112, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-18 22:16:35', '2019-08-18 22:16:35'),
(246, 71, 0, 113, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-18 22:16:54', '2019-08-18 22:16:54'),
(247, 71, 0, 114, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-18 22:17:09', '2019-08-18 22:17:09'),
(248, 71, 0, 115, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-18 22:17:28', '2019-08-18 22:17:28'),
(249, 71, 0, 116, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-18 22:17:46', '2019-08-18 22:17:46'),
(250, 71, 0, 117, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-18 22:17:58', '2019-08-18 22:17:58'),
(251, 71, 69, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-18 23:13:46', '2019-08-18 23:13:46'),
(252, 72, 0, 118, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-19 14:18:33', '2019-08-19 14:18:33'),
(253, 72, 0, 119, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-19 14:18:47', '2019-08-19 14:18:47'),
(254, 72, 0, 120, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-19 14:19:00', '2019-08-19 14:19:00'),
(255, 72, 0, 121, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-19 14:19:16', '2019-08-19 14:19:16'),
(256, 72, 0, 122, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-19 14:19:31', '2019-08-19 14:19:31'),
(257, 72, 0, 123, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-19 14:19:44', '2019-08-19 14:19:44'),
(258, 72, 0, 124, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-19 14:19:59', '2019-08-19 14:19:59'),
(259, 72, 0, 125, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-19 14:20:16', '2019-08-19 14:20:16'),
(260, 72, 0, 126, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-19 14:20:34', '2019-08-19 14:20:34'),
(261, 72, 0, 127, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-19 14:20:35', '2019-08-19 14:20:35'),
(262, 72, 0, 128, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-19 14:20:35', '2019-08-19 14:20:35'),
(263, 72, 0, 127, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-19 14:20:36', '2019-08-19 14:20:36'),
(264, 72, 0, 127, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-19 14:20:36', '2019-08-19 14:20:36'),
(265, 72, 0, 128, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-19 14:20:36', '2019-08-19 14:20:36'),
(266, 72, 0, 129, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-19 14:20:57', '2019-08-19 14:20:57'),
(267, 72, 0, 130, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-19 14:21:16', '2019-08-19 14:21:16'),
(268, 72, 0, 131, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-19 14:21:33', '2019-08-19 14:21:33'),
(269, 73, 68, 0, 'Add Points', 'Added 3', 'add_points', 1, '2019-08-19 20:05:53', '2019-08-19 20:05:53'),
(270, 22, 13, 0, 'Add Points', 'Added 1', 'add_points', 1, '2019-08-21 01:06:05', '2019-08-21 01:06:05'),
(271, 75, 0, 132, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-21 09:46:31', '2019-08-21 09:46:31'),
(272, 76, 0, 133, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-21 10:12:32', '2019-08-21 10:12:32'),
(273, 76, 0, 134, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-21 10:12:47', '2019-08-21 10:12:47'),
(274, 76, 0, 135, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-21 10:13:22', '2019-08-21 10:13:22'),
(275, 76, 0, 136, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-21 10:17:07', '2019-08-21 10:17:07'),
(276, 77, 0, 137, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-21 10:43:05', '2019-08-21 10:43:05'),
(277, 77, 0, 138, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-21 10:43:19', '2019-08-21 10:43:19'),
(278, 77, 0, 139, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-21 10:43:36', '2019-08-21 10:43:36'),
(279, 77, 0, 140, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-21 10:43:47', '2019-08-21 10:43:47'),
(280, 77, 0, 141, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-21 10:44:01', '2019-08-21 10:44:01'),
(281, 77, 0, 142, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-21 10:44:13', '2019-08-21 10:44:13'),
(282, 77, 0, 143, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-21 10:44:24', '2019-08-21 10:44:24'),
(283, 77, 0, 144, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-21 10:44:39', '2019-08-21 10:44:39'),
(284, 77, 0, 145, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-21 10:44:50', '2019-08-21 10:44:50'),
(285, 77, 0, 146, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-21 10:45:03', '2019-08-21 10:45:03'),
(286, 77, 0, 147, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-21 10:45:15', '2019-08-21 10:45:15'),
(287, 77, 0, 148, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-21 10:45:28', '2019-08-21 10:45:28'),
(288, 77, 0, 149, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-21 10:45:40', '2019-08-21 10:45:40'),
(289, 77, 0, 150, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-21 10:45:53', '2019-08-21 10:45:53'),
(290, 77, 0, 151, 'New Image Uploaded', '15', 'upload_image', 0, '2019-08-21 10:46:08', '2019-08-21 10:46:08'),
(291, 77, 0, 152, 'New Image Uploaded', '16', 'upload_image', 0, '2019-08-21 10:46:21', '2019-08-21 10:46:21'),
(292, 77, 0, 153, 'New Image Uploaded', '17', 'upload_image', 0, '2019-08-21 10:46:33', '2019-08-21 10:46:33'),
(293, 77, 0, 154, 'New Image Uploaded', '18', 'upload_image', 0, '2019-08-21 10:46:45', '2019-08-21 10:46:45'),
(294, 77, 0, 155, 'New Image Uploaded', '19', 'upload_image', 0, '2019-08-21 10:46:58', '2019-08-21 10:46:58'),
(295, 77, 0, 156, 'New Image Uploaded', '20', 'upload_image', 0, '2019-08-21 10:47:10', '2019-08-21 10:47:10'),
(296, 77, 0, 157, 'New Image Uploaded', '21', 'upload_image', 0, '2019-08-21 10:47:22', '2019-08-21 10:47:22'),
(297, 77, 0, 158, 'New Image Uploaded', '22', 'upload_image', 0, '2019-08-21 10:47:42', '2019-08-21 10:47:42'),
(298, 77, 0, 159, 'New Image Uploaded', '23', 'upload_image', 0, '2019-08-21 10:47:54', '2019-08-21 10:47:54'),
(299, 78, 0, 160, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-21 11:29:24', '2019-08-21 11:29:24'),
(300, 78, 0, 161, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-21 11:29:40', '2019-08-21 11:29:40'),
(301, 78, 0, 162, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-21 11:29:52', '2019-08-21 11:29:52'),
(302, 78, 0, 163, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-21 11:30:08', '2019-08-21 11:30:08'),
(303, 78, 0, 164, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-21 11:30:20', '2019-08-21 11:30:20'),
(304, 78, 0, 165, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-21 11:30:33', '2019-08-21 11:30:33'),
(305, 78, 0, 166, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-21 11:30:45', '2019-08-21 11:30:45'),
(306, 78, 0, 167, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-21 11:30:55', '2019-08-21 11:30:55'),
(307, 78, 0, 168, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-21 11:31:07', '2019-08-21 11:31:07'),
(308, 78, 0, 169, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-21 11:31:20', '2019-08-21 11:31:20'),
(309, 78, 0, 170, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-21 11:31:31', '2019-08-21 11:31:31'),
(310, 22, 14, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-08-22 14:55:42', '2019-08-22 14:55:42'),
(311, 22, 13, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-08-22 14:55:50', '2019-08-22 14:55:50'),
(312, 22, 40, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-08-22 14:55:55', '2019-08-22 14:55:55'),
(313, 22, 41, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-08-22 14:55:57', '2019-08-22 14:55:57'),
(314, 79, 0, 175, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-22 15:58:49', '2019-08-22 15:58:49'),
(315, 79, 0, 176, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-22 15:59:09', '2019-08-22 15:59:09'),
(316, 79, 0, 177, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-22 15:59:21', '2019-08-22 15:59:21'),
(317, 79, 0, 178, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-22 15:59:40', '2019-08-22 15:59:40'),
(318, 22, 41, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-08-23 19:09:17', '2019-08-23 19:09:17'),
(319, 80, 0, 179, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 08:42:32', '2019-08-24 08:42:32'),
(320, 80, 0, 180, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 08:42:45', '2019-08-24 08:42:45'),
(321, 80, 0, 181, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 08:42:57', '2019-08-24 08:42:57'),
(322, 80, 0, 182, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 08:43:09', '2019-08-24 08:43:09'),
(323, 81, 0, 183, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 09:24:56', '2019-08-24 09:24:56'),
(324, 81, 0, 184, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 09:25:10', '2019-08-24 09:25:10'),
(325, 82, 0, 185, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 09:44:22', '2019-08-24 09:44:22'),
(326, 82, 0, 186, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 09:44:35', '2019-08-24 09:44:35'),
(327, 82, 0, 187, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 09:44:51', '2019-08-24 09:44:51'),
(328, 82, 0, 188, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 09:45:05', '2019-08-24 09:45:05'),
(329, 82, 0, 189, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 09:45:16', '2019-08-24 09:45:16'),
(330, 82, 0, 190, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-24 09:45:34', '2019-08-24 09:45:34'),
(331, 82, 0, 191, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-24 09:45:48', '2019-08-24 09:45:48'),
(332, 82, 0, 192, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-24 09:46:02', '2019-08-24 09:46:02'),
(333, 83, 0, 193, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 10:04:04', '2019-08-24 10:04:04'),
(334, 83, 0, 194, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 10:04:15', '2019-08-24 10:04:15'),
(335, 83, 0, 195, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 10:04:32', '2019-08-24 10:04:32'),
(336, 83, 0, 196, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 10:04:46', '2019-08-24 10:04:46'),
(337, 83, 0, 197, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 10:05:00', '2019-08-24 10:05:00'),
(338, 83, 0, 198, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-24 10:05:12', '2019-08-24 10:05:12'),
(339, 83, 0, 199, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-24 10:05:26', '2019-08-24 10:05:26'),
(340, 83, 0, 200, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-24 10:05:37', '2019-08-24 10:05:37'),
(341, 83, 0, 201, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-24 10:05:50', '2019-08-24 10:05:50'),
(342, 83, 0, 202, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-24 10:06:03', '2019-08-24 10:06:03'),
(343, 84, 0, 203, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 12:04:35', '2019-08-24 12:04:35'),
(344, 84, 0, 204, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 12:04:50', '2019-08-24 12:04:50'),
(345, 84, 0, 205, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 12:05:04', '2019-08-24 12:05:04'),
(346, 84, 0, 206, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 12:05:22', '2019-08-24 12:05:22'),
(347, 84, 0, 207, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 12:05:37', '2019-08-24 12:05:37'),
(348, 84, 0, 208, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-24 12:05:53', '2019-08-24 12:05:53'),
(349, 84, 0, 209, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-24 12:06:06', '2019-08-24 12:06:06'),
(350, 84, 0, 210, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-24 12:06:19', '2019-08-24 12:06:19'),
(351, 84, 0, 211, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-24 12:06:31', '2019-08-24 12:06:31'),
(352, 84, 0, 212, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-24 12:06:46', '2019-08-24 12:06:46'),
(353, 84, 0, 213, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-24 12:06:58', '2019-08-24 12:06:58'),
(354, 84, 0, 214, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-24 12:07:23', '2019-08-24 12:07:23'),
(355, 84, 0, 215, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-24 12:07:48', '2019-08-24 12:07:48'),
(356, 84, 0, 216, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-24 12:08:02', '2019-08-24 12:08:02'),
(357, 84, 0, 217, 'New Image Uploaded', '15', 'upload_image', 0, '2019-08-24 12:08:28', '2019-08-24 12:08:28'),
(358, 84, 0, 218, 'New Image Uploaded', '16', 'upload_image', 0, '2019-08-24 12:08:42', '2019-08-24 12:08:42'),
(359, 85, 0, 219, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 12:25:59', '2019-08-24 12:25:59'),
(360, 85, 0, 220, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 12:26:12', '2019-08-24 12:26:12'),
(361, 85, 0, 221, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 12:26:29', '2019-08-24 12:26:29'),
(362, 85, 0, 222, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 12:26:51', '2019-08-24 12:26:51'),
(363, 85, 0, 223, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 12:27:13', '2019-08-24 12:27:13'),
(364, 85, 0, 224, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-24 12:27:34', '2019-08-24 12:27:34'),
(365, 85, 0, 225, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-24 12:27:52', '2019-08-24 12:27:52'),
(366, 85, 0, 226, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-24 12:28:09', '2019-08-24 12:28:09'),
(367, 85, 0, 227, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-24 12:28:23', '2019-08-24 12:28:23'),
(368, 85, 0, 228, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-24 12:28:37', '2019-08-24 12:28:37'),
(369, 85, 0, 229, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-24 12:28:50', '2019-08-24 12:28:50'),
(370, 85, 0, 230, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-24 12:29:04', '2019-08-24 12:29:04'),
(371, 85, 0, 231, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-24 12:29:19', '2019-08-24 12:29:19'),
(372, 85, 0, 232, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-24 12:29:35', '2019-08-24 12:29:35'),
(373, 85, 0, 233, 'New Image Uploaded', '15', 'upload_image', 0, '2019-08-24 12:29:49', '2019-08-24 12:29:49'),
(374, 85, 0, 234, 'New Image Uploaded', '16', 'upload_image', 0, '2019-08-24 12:30:05', '2019-08-24 12:30:05'),
(375, 85, 0, 235, 'New Image Uploaded', '17', 'upload_image', 0, '2019-08-24 12:30:23', '2019-08-24 12:30:23'),
(376, 85, 0, 236, 'New Image Uploaded', '18', 'upload_image', 0, '2019-08-24 12:30:42', '2019-08-24 12:30:42'),
(377, 85, 22, 1, 'PARIS SHOES Bought product', 'test', 'buy_product', 1, '2019-08-24 12:35:30', '2019-08-24 12:35:30'),
(378, 22, 85, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-08-24 12:35:30', '2019-08-24 12:35:30'),
(379, 22, 13, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-24 12:44:28', '2019-08-24 12:44:28'),
(380, 22, 13, 87, 'New Message', 'hdufhdsf', 'message', 1, '2019-08-24 12:44:57', '2019-08-24 12:44:57'),
(381, 86, 0, 237, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 13:13:10', '2019-08-24 13:13:10'),
(382, 86, 0, 238, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 13:13:26', '2019-08-24 13:13:26'),
(383, 86, 0, 239, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 13:13:36', '2019-08-24 13:13:36'),
(384, 87, 0, 240, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 13:28:40', '2019-08-24 13:28:40'),
(385, 87, 0, 241, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 13:28:52', '2019-08-24 13:28:52'),
(386, 87, 0, 242, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 13:29:03', '2019-08-24 13:29:03'),
(387, 87, 0, 243, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 13:29:16', '2019-08-24 13:29:16'),
(388, 87, 0, 244, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 13:29:28', '2019-08-24 13:29:28'),
(389, 87, 0, 245, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-24 13:31:18', '2019-08-24 13:31:18'),
(390, 87, 0, 246, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-24 13:31:32', '2019-08-24 13:31:32'),
(391, 87, 0, 247, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-24 13:31:46', '2019-08-24 13:31:46'),
(392, 87, 0, 248, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-24 13:32:04', '2019-08-24 13:32:04'),
(393, 87, 0, 249, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-24 13:32:17', '2019-08-24 13:32:17'),
(394, 87, 0, 250, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-24 13:32:30', '2019-08-24 13:32:30'),
(395, 87, 0, 251, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-24 13:32:46', '2019-08-24 13:32:46'),
(396, 87, 0, 252, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-24 13:34:26', '2019-08-24 13:34:26'),
(397, 88, 0, 253, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 14:31:24', '2019-08-24 14:31:24'),
(398, 88, 0, 254, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 14:31:37', '2019-08-24 14:31:37'),
(399, 88, 0, 255, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 14:31:49', '2019-08-24 14:31:49'),
(400, 88, 0, 256, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 14:32:04', '2019-08-24 14:32:04'),
(401, 88, 0, 257, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 14:32:18', '2019-08-24 14:32:18'),
(402, 88, 0, 258, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-24 14:33:33', '2019-08-24 14:33:33'),
(403, 89, 0, 259, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 14:47:06', '2019-08-24 14:47:06'),
(404, 89, 0, 260, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 14:47:18', '2019-08-24 14:47:18'),
(405, 89, 0, 261, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 14:47:29', '2019-08-24 14:47:29'),
(406, 89, 0, 262, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 14:47:40', '2019-08-24 14:47:40'),
(407, 89, 0, 263, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-24 14:47:51', '2019-08-24 14:47:51'),
(408, 90, 0, 264, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-24 17:17:42', '2019-08-24 17:17:42'),
(409, 90, 0, 265, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-24 17:17:54', '2019-08-24 17:17:54'),
(410, 90, 0, 266, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-24 17:18:07', '2019-08-24 17:18:07'),
(411, 90, 0, 267, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-24 17:18:20', '2019-08-24 17:18:20'),
(412, 91, 0, 268, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 10:39:46', '2019-08-25 10:39:46'),
(413, 91, 0, 269, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 10:39:58', '2019-08-25 10:39:58'),
(414, 91, 0, 270, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 10:40:10', '2019-08-25 10:40:10'),
(415, 91, 0, 271, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 10:40:21', '2019-08-25 10:40:21'),
(416, 91, 0, 272, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 10:40:33', '2019-08-25 10:40:33'),
(417, 91, 0, 273, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 10:40:48', '2019-08-25 10:40:48'),
(418, 91, 0, 274, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-25 10:41:00', '2019-08-25 10:41:00'),
(419, 91, 0, 275, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-25 10:41:12', '2019-08-25 10:41:12'),
(420, 92, 0, 276, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 10:56:17', '2019-08-25 10:56:17'),
(421, 92, 0, 277, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 10:56:29', '2019-08-25 10:56:29'),
(422, 92, 0, 278, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 10:56:40', '2019-08-25 10:56:40'),
(423, 93, 0, 279, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 11:05:52', '2019-08-25 11:05:52'),
(424, 93, 0, 280, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 11:06:04', '2019-08-25 11:06:04'),
(425, 93, 0, 281, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 11:06:15', '2019-08-25 11:06:15'),
(426, 93, 0, 282, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 11:06:25', '2019-08-25 11:06:25'),
(427, 93, 0, 283, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 11:06:38', '2019-08-25 11:06:38'),
(428, 93, 0, 284, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 11:06:50', '2019-08-25 11:06:50'),
(429, 93, 0, 285, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-25 11:07:07', '2019-08-25 11:07:07'),
(430, 93, 0, 286, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-25 11:07:19', '2019-08-25 11:07:19'),
(431, 93, 0, 287, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-25 11:07:31', '2019-08-25 11:07:31'),
(432, 93, 0, 288, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-25 11:08:00', '2019-08-25 11:08:00'),
(433, 93, 0, 289, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-25 11:08:17', '2019-08-25 11:08:17'),
(434, 94, 0, 290, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 15:28:29', '2019-08-25 15:28:29'),
(435, 94, 0, 291, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 15:28:44', '2019-08-25 15:28:44'),
(436, 94, 0, 292, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 15:28:59', '2019-08-25 15:28:59'),
(437, 94, 0, 293, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 15:29:18', '2019-08-25 15:29:18'),
(438, 94, 0, 294, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 15:29:34', '2019-08-25 15:29:34'),
(439, 94, 0, 295, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 15:29:48', '2019-08-25 15:29:48'),
(440, 95, 0, 296, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 15:54:28', '2019-08-25 15:54:28'),
(441, 95, 0, 297, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 15:54:42', '2019-08-25 15:54:42'),
(442, 95, 0, 298, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 15:55:18', '2019-08-25 15:55:18'),
(443, 95, 0, 299, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 15:55:32', '2019-08-25 15:55:32'),
(444, 95, 0, 300, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 15:55:45', '2019-08-25 15:55:45'),
(445, 95, 0, 301, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 15:56:03', '2019-08-25 15:56:03'),
(446, 95, 0, 302, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-25 15:56:17', '2019-08-25 15:56:17'),
(447, 95, 0, 303, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-25 15:56:31', '2019-08-25 15:56:31'),
(448, 95, 0, 304, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-25 15:56:46', '2019-08-25 15:56:46'),
(449, 95, 0, 305, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-25 15:56:59', '2019-08-25 15:56:59'),
(450, 95, 0, 306, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-25 15:57:16', '2019-08-25 15:57:16'),
(451, 95, 0, 307, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-25 15:57:30', '2019-08-25 15:57:30'),
(452, 95, 0, 308, 'New Image Uploaded', '13', 'upload_image', 0, '2019-08-25 15:57:45', '2019-08-25 15:57:45'),
(453, 95, 0, 309, 'New Image Uploaded', '14', 'upload_image', 0, '2019-08-25 15:57:59', '2019-08-25 15:57:59'),
(454, 96, 0, 310, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 16:18:25', '2019-08-25 16:18:25'),
(455, 96, 0, 311, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 16:18:40', '2019-08-25 16:18:40');
INSERT INTO `notification` (`id`, `sender_id`, `receiver_id`, `content_id`, `title`, `content`, `type`, `public`, `created_at`, `updated_at`) VALUES
(456, 96, 0, 312, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 16:18:53', '2019-08-25 16:18:53'),
(457, 96, 0, 313, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 16:19:07', '2019-08-25 16:19:07'),
(458, 96, 0, 314, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 16:19:22', '2019-08-25 16:19:22'),
(459, 96, 0, 315, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 16:19:35', '2019-08-25 16:19:35'),
(460, 96, 0, 316, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-25 16:19:50', '2019-08-25 16:19:50'),
(461, 96, 0, 317, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-25 16:20:04', '2019-08-25 16:20:04'),
(462, 96, 0, 318, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-25 16:20:19', '2019-08-25 16:20:19'),
(463, 96, 0, 319, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-25 16:20:35', '2019-08-25 16:20:35'),
(464, 96, 0, 320, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-25 16:20:51', '2019-08-25 16:20:51'),
(465, 96, 0, 321, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-25 16:21:07', '2019-08-25 16:21:07'),
(466, 96, 0, 31, 'New Video Uploaded', 'That Red Dragon Roll looks so vibrant and fresh', 'upload_video', 0, '2019-08-25 16:24:12', '2019-08-25 16:24:12'),
(467, 96, 0, 32, 'New Video Uploaded', 'Our california rolls are irresistible. You\'ll fall in love.', 'upload_video', 0, '2019-08-25 16:26:54', '2019-08-25 16:26:54'),
(468, 97, 0, 322, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 16:36:07', '2019-08-25 16:36:07'),
(469, 97, 0, 323, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 16:36:22', '2019-08-25 16:36:22'),
(470, 98, 0, 324, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 18:02:14', '2019-08-25 18:02:14'),
(471, 98, 0, 325, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 18:02:31', '2019-08-25 18:02:31'),
(472, 98, 0, 326, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 18:02:44', '2019-08-25 18:02:44'),
(473, 98, 0, 327, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 18:03:01', '2019-08-25 18:03:01'),
(474, 98, 0, 328, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 18:03:19', '2019-08-25 18:03:19'),
(475, 98, 0, 329, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 18:03:42', '2019-08-25 18:03:42'),
(476, 98, 0, 330, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-25 18:03:58', '2019-08-25 18:03:58'),
(477, 98, 0, 331, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-25 18:04:17', '2019-08-25 18:04:17'),
(478, 98, 0, 332, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-25 18:04:32', '2019-08-25 18:04:32'),
(479, 98, 0, 333, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-25 18:04:46', '2019-08-25 18:04:46'),
(480, 98, 0, 334, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-25 18:05:03', '2019-08-25 18:05:03'),
(481, 98, 0, 33, 'New Video Uploaded', 'Μοσχαμυρίζει καφές!', 'upload_video', 0, '2019-08-25 18:05:57', '2019-08-25 18:05:57'),
(482, 99, 0, 335, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-25 18:16:39', '2019-08-25 18:16:39'),
(483, 99, 0, 336, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-25 18:16:56', '2019-08-25 18:16:56'),
(484, 99, 0, 337, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-25 18:17:09', '2019-08-25 18:17:09'),
(485, 99, 0, 338, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-25 18:17:23', '2019-08-25 18:17:23'),
(486, 99, 0, 339, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-25 18:17:38', '2019-08-25 18:17:38'),
(487, 99, 0, 340, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-25 18:17:52', '2019-08-25 18:17:52'),
(488, 99, 0, 341, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-25 18:18:05', '2019-08-25 18:18:05'),
(489, 99, 0, 342, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-25 18:18:17', '2019-08-25 18:18:17'),
(490, 22, 40, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-26 08:44:40', '2019-08-26 08:44:40'),
(491, 40, 10, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-26 15:17:49', '2019-08-26 15:17:49'),
(492, 40, 10, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-26 15:41:30', '2019-08-26 15:41:30'),
(493, 100, 0, 343, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-28 13:54:31', '2019-08-28 13:54:31'),
(494, 100, 0, 344, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-28 13:54:49', '2019-08-28 13:54:49'),
(495, 100, 0, 345, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-28 13:55:08', '2019-08-28 13:55:08'),
(496, 100, 0, 346, 'New Image Uploaded', '4', 'upload_image', 0, '2019-08-28 13:55:36', '2019-08-28 13:55:36'),
(497, 100, 0, 347, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-28 13:55:55', '2019-08-28 13:55:55'),
(498, 100, 0, 348, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-28 13:56:12', '2019-08-28 13:56:12'),
(499, 100, 0, 349, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-28 13:56:33', '2019-08-28 13:56:33'),
(500, 100, 0, 350, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-28 13:56:52', '2019-08-28 13:56:52'),
(501, 100, 0, 351, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-28 13:57:19', '2019-08-28 13:57:19'),
(502, 102, 0, 352, 'New Image Uploaded', '1', 'upload_image', 0, '2019-08-28 15:45:09', '2019-08-28 15:45:09'),
(503, 102, 0, 353, 'New Image Uploaded', '2', 'upload_image', 0, '2019-08-28 15:45:24', '2019-08-28 15:45:24'),
(504, 102, 0, 354, 'New Image Uploaded', '3', 'upload_image', 0, '2019-08-28 15:45:36', '2019-08-28 15:45:36'),
(505, 102, 0, 355, 'New Image Uploaded', '5', 'upload_image', 0, '2019-08-28 15:45:49', '2019-08-28 15:45:49'),
(506, 102, 0, 356, 'New Image Uploaded', '6', 'upload_image', 0, '2019-08-28 15:46:03', '2019-08-28 15:46:03'),
(507, 102, 0, 357, 'New Image Uploaded', '7', 'upload_image', 0, '2019-08-28 15:47:32', '2019-08-28 15:47:32'),
(508, 102, 0, 358, 'New Image Uploaded', '8', 'upload_image', 0, '2019-08-28 15:47:45', '2019-08-28 15:47:45'),
(509, 102, 0, 359, 'New Image Uploaded', '9', 'upload_image', 0, '2019-08-28 15:48:02', '2019-08-28 15:48:02'),
(510, 102, 0, 360, 'New Image Uploaded', '10', 'upload_image', 0, '2019-08-28 15:48:15', '2019-08-28 15:48:15'),
(511, 102, 0, 361, 'New Image Uploaded', '11', 'upload_image', 0, '2019-08-28 15:48:28', '2019-08-28 15:48:28'),
(512, 102, 0, 362, 'New Image Uploaded', '12', 'upload_image', 0, '2019-08-28 15:48:45', '2019-08-28 15:48:45'),
(513, 102, 0, 34, 'New Video Uploaded', 'Balloon Madness!', 'upload_video', 0, '2019-08-28 15:59:01', '2019-08-28 15:59:01'),
(514, 22, 22, 1, 'Ellin Bought product', 'test', 'buy_product', 1, '2019-08-29 14:37:54', '2019-08-29 14:37:54'),
(515, 22, 22, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-08-29 14:37:54', '2019-08-29 14:37:54'),
(516, 12, 40, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-31 06:24:31', '2019-08-31 06:24:31'),
(517, 12, 41, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-31 13:30:48', '2019-08-31 13:30:48'),
(518, 103, 40, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-08-31 19:02:23', '2019-08-31 19:02:23'),
(519, 22, 22, 1, 'Ellin Bought product', 'test', 'buy_product', 1, '2019-08-31 19:48:32', '2019-08-31 19:48:32'),
(520, 22, 22, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-08-31 19:48:32', '2019-08-31 19:48:32'),
(521, 41, 0, 37, 'New Video Uploaded', 'test', 'upload_video', 0, '2019-08-31 20:01:03', '2019-08-31 20:01:03'),
(522, 22, 14, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-02 18:44:52', '2019-09-02 18:44:52'),
(523, 22, 13, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-02 22:13:06', '2019-09-02 22:13:06'),
(524, 104, 0, 364, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-04 17:05:38', '2019-09-04 17:05:38'),
(525, 104, 0, 365, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-04 17:05:51', '2019-09-04 17:05:51'),
(526, 104, 0, 366, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-04 17:06:14', '2019-09-04 17:06:14'),
(527, 104, 0, 367, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-04 17:06:38', '2019-09-04 17:06:38'),
(528, 104, 0, 368, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-04 17:07:00', '2019-09-04 17:07:00'),
(529, 22, 54, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-04 17:35:49', '2019-09-04 17:35:49'),
(530, 24, 0, 369, 'New Image Uploaded', 'TSHIRT', 'upload_image', 0, '2019-09-04 17:40:10', '2019-09-04 17:40:10'),
(531, 105, 0, 370, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-04 17:41:28', '2019-09-04 17:41:28'),
(532, 105, 0, 371, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-04 17:41:43', '2019-09-04 17:41:43'),
(533, 105, 0, 371, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-04 17:41:45', '2019-09-04 17:41:45'),
(534, 105, 0, 372, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-04 17:41:54', '2019-09-04 17:41:54'),
(535, 105, 0, 373, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-04 17:42:09', '2019-09-04 17:42:09'),
(536, 105, 0, 374, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-04 17:42:22', '2019-09-04 17:42:22'),
(537, 105, 0, 375, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-04 17:42:37', '2019-09-04 17:42:37'),
(538, 105, 0, 376, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-04 17:42:47', '2019-09-04 17:42:47'),
(539, 105, 0, 377, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-04 17:43:00', '2019-09-04 17:43:00'),
(540, 105, 0, 378, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-04 17:43:13', '2019-09-04 17:43:13'),
(541, 105, 0, 379, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-04 17:43:32', '2019-09-04 17:43:32'),
(542, 55, 13, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 18:10:12', '2019-09-04 18:10:12'),
(543, 55, 14, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 18:10:15', '2019-09-04 18:10:15'),
(544, 55, 40, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 18:10:19', '2019-09-04 18:10:19'),
(545, 55, 41, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 18:10:21', '2019-09-04 18:10:21'),
(546, 55, 41, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:10:24', '2019-09-04 18:10:24'),
(547, 55, 41, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:10:26', '2019-09-04 18:10:26'),
(548, 55, 40, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:10:27', '2019-09-04 18:10:27'),
(549, 55, 40, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:10:28', '2019-09-04 18:10:28'),
(550, 55, 14, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:10:30', '2019-09-04 18:10:30'),
(551, 55, 14, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:10:30', '2019-09-04 18:10:30'),
(552, 55, 13, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:10:33', '2019-09-04 18:10:33'),
(553, 55, 13, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:10:36', '2019-09-04 18:10:36'),
(554, 55, 73, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:11:12', '2019-09-04 18:11:12'),
(555, 55, 73, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:11:13', '2019-09-04 18:11:13'),
(556, 55, 73, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 18:11:20', '2019-09-04 18:11:20'),
(557, 55, 14, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:11:37', '2019-09-04 18:11:37'),
(558, 55, 14, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:11:38', '2019-09-04 18:11:38'),
(559, 55, 14, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-04 18:12:50', '2019-09-04 18:12:50'),
(560, 55, 14, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-04 18:14:30', '2019-09-04 18:14:30'),
(561, 22, 73, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 18:14:39', '2019-09-04 18:14:39'),
(562, 22, 73, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 18:14:40', '2019-09-04 18:14:40'),
(563, 22, 73, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 18:14:42', '2019-09-04 18:14:42'),
(564, 73, 10, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-04 18:54:25', '2019-09-04 18:54:25'),
(565, 22, 41, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 20:05:29', '2019-09-04 20:05:29'),
(566, 55, 38, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-04 20:19:51', '2019-09-04 20:19:51'),
(567, 55, 38, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-04 20:19:51', '2019-09-04 20:19:51'),
(568, 55, 38, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-04 20:19:53', '2019-09-04 20:19:53'),
(569, 106, 0, 380, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 22:11:35', '2019-09-05 22:11:35'),
(570, 106, 0, 381, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 22:11:46', '2019-09-05 22:11:46'),
(571, 106, 0, 382, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 22:12:01', '2019-09-05 22:12:01'),
(572, 106, 0, 383, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 22:12:13', '2019-09-05 22:12:13'),
(573, 107, 0, 384, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 22:21:29', '2019-09-05 22:21:29'),
(574, 107, 0, 385, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 22:21:41', '2019-09-05 22:21:41'),
(575, 107, 0, 386, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 22:21:52', '2019-09-05 22:21:52'),
(576, 107, 0, 387, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 22:22:01', '2019-09-05 22:22:01'),
(577, 107, 0, 388, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-05 22:22:13', '2019-09-05 22:22:13'),
(578, 107, 0, 389, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-05 22:22:23', '2019-09-05 22:22:23'),
(579, 107, 0, 390, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-05 22:22:34', '2019-09-05 22:22:34'),
(580, 107, 0, 391, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-05 22:22:48', '2019-09-05 22:22:48'),
(581, 108, 0, 392, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 22:33:28', '2019-09-05 22:33:28'),
(582, 108, 0, 393, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 22:33:39', '2019-09-05 22:33:39'),
(583, 108, 0, 394, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 22:33:49', '2019-09-05 22:33:49'),
(584, 108, 0, 395, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 22:34:01', '2019-09-05 22:34:01'),
(585, 108, 0, 396, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-05 22:34:11', '2019-09-05 22:34:11'),
(586, 108, 0, 397, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-05 22:34:22', '2019-09-05 22:34:22'),
(587, 108, 0, 398, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-05 22:34:34', '2019-09-05 22:34:34'),
(588, 108, 0, 399, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-05 22:34:44', '2019-09-05 22:34:44'),
(589, 108, 0, 400, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-05 22:34:55', '2019-09-05 22:34:55'),
(590, 108, 0, 401, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-05 22:35:05', '2019-09-05 22:35:05'),
(591, 108, 0, 402, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-05 22:35:18', '2019-09-05 22:35:18'),
(592, 108, 0, 403, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-05 22:35:35', '2019-09-05 22:35:35'),
(593, 108, 0, 404, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-05 22:35:47', '2019-09-05 22:35:47'),
(594, 108, 0, 405, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-05 22:35:59', '2019-09-05 22:35:59'),
(595, 109, 0, 406, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 23:11:33', '2019-09-05 23:11:33'),
(596, 109, 0, 407, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 23:11:46', '2019-09-05 23:11:46'),
(597, 110, 0, 408, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 23:22:09', '2019-09-05 23:22:09'),
(598, 110, 0, 409, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 23:22:22', '2019-09-05 23:22:22'),
(599, 110, 0, 410, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 23:22:33', '2019-09-05 23:22:33'),
(600, 110, 0, 411, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 23:22:43', '2019-09-05 23:22:43'),
(601, 110, 0, 412, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-05 23:22:54', '2019-09-05 23:22:54'),
(602, 110, 0, 413, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-05 23:23:07', '2019-09-05 23:23:07'),
(603, 110, 0, 414, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-05 23:23:21', '2019-09-05 23:23:21'),
(604, 110, 0, 415, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-05 23:23:34', '2019-09-05 23:23:34'),
(605, 110, 0, 416, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-05 23:23:53', '2019-09-05 23:23:53'),
(606, 111, 0, 417, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 23:32:53', '2019-09-05 23:32:53'),
(607, 111, 0, 418, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 23:33:04', '2019-09-05 23:33:04'),
(608, 111, 0, 419, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 23:33:14', '2019-09-05 23:33:14'),
(609, 111, 0, 420, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 23:33:23', '2019-09-05 23:33:23'),
(610, 111, 0, 421, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-05 23:33:33', '2019-09-05 23:33:33'),
(611, 111, 0, 422, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-05 23:33:47', '2019-09-05 23:33:47'),
(612, 111, 0, 423, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-05 23:33:58', '2019-09-05 23:33:58'),
(613, 111, 0, 424, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-05 23:34:09', '2019-09-05 23:34:09'),
(614, 112, 0, 425, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 23:42:34', '2019-09-05 23:42:34'),
(615, 112, 0, 426, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 23:42:45', '2019-09-05 23:42:45'),
(616, 112, 0, 427, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 23:42:56', '2019-09-05 23:42:56'),
(617, 112, 0, 428, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 23:43:08', '2019-09-05 23:43:08'),
(618, 112, 0, 429, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-05 23:43:19', '2019-09-05 23:43:19'),
(619, 112, 0, 430, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-05 23:43:28', '2019-09-05 23:43:28'),
(620, 112, 0, 431, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-05 23:43:39', '2019-09-05 23:43:39'),
(621, 112, 0, 432, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-05 23:43:51', '2019-09-05 23:43:51'),
(622, 113, 0, 433, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-05 23:53:19', '2019-09-05 23:53:19'),
(623, 113, 0, 434, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-05 23:53:33', '2019-09-05 23:53:33'),
(624, 113, 0, 435, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-05 23:53:46', '2019-09-05 23:53:46'),
(625, 113, 0, 436, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-05 23:53:57', '2019-09-05 23:53:57'),
(626, 113, 0, 437, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-05 23:54:11', '2019-09-05 23:54:11'),
(627, 113, 0, 438, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-05 23:54:25', '2019-09-05 23:54:25'),
(628, 113, 0, 439, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-05 23:54:36', '2019-09-05 23:54:36'),
(629, 113, 0, 440, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-05 23:54:49', '2019-09-05 23:54:49'),
(630, 113, 0, 441, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-05 23:55:00', '2019-09-05 23:55:00'),
(631, 113, 0, 442, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-05 23:55:12', '2019-09-05 23:55:12'),
(632, 113, 0, 443, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-05 23:55:24', '2019-09-05 23:55:24'),
(633, 113, 0, 444, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-05 23:55:35', '2019-09-05 23:55:35'),
(634, 113, 0, 445, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-05 23:55:48', '2019-09-05 23:55:48'),
(635, 113, 0, 446, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-05 23:56:06', '2019-09-05 23:56:06'),
(636, 113, 0, 447, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-05 23:56:17', '2019-09-05 23:56:17'),
(637, 113, 0, 448, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-05 23:56:29', '2019-09-05 23:56:29'),
(638, 113, 0, 449, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-05 23:56:41', '2019-09-05 23:56:41'),
(639, 113, 0, 450, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-05 23:56:52', '2019-09-05 23:56:52'),
(640, 113, 0, 451, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-05 23:57:03', '2019-09-05 23:57:03'),
(641, 114, 0, 452, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-06 00:07:51', '2019-09-06 00:07:51'),
(642, 114, 0, 453, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-06 00:08:00', '2019-09-06 00:08:00'),
(643, 114, 0, 454, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-06 00:08:11', '2019-09-06 00:08:11'),
(644, 114, 0, 455, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-06 00:08:23', '2019-09-06 00:08:23'),
(645, 114, 0, 456, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-06 00:08:35', '2019-09-06 00:08:35'),
(646, 114, 0, 457, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-06 00:08:48', '2019-09-06 00:08:48'),
(647, 114, 0, 458, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-06 00:08:58', '2019-09-06 00:08:58'),
(648, 114, 0, 459, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-06 00:09:13', '2019-09-06 00:09:13'),
(649, 114, 0, 460, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-06 00:09:24', '2019-09-06 00:09:24'),
(650, 114, 0, 461, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-06 00:09:36', '2019-09-06 00:09:36'),
(651, 114, 0, 462, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-06 00:09:48', '2019-09-06 00:09:48'),
(652, 114, 0, 463, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-06 00:10:00', '2019-09-06 00:10:00'),
(653, 114, 0, 464, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-06 00:10:12', '2019-09-06 00:10:12'),
(654, 114, 0, 465, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-06 00:10:32', '2019-09-06 00:10:32'),
(655, 114, 0, 466, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-06 00:10:44', '2019-09-06 00:10:44'),
(656, 114, 0, 467, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-06 00:10:56', '2019-09-06 00:10:56'),
(657, 114, 0, 468, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-06 00:11:10', '2019-09-06 00:11:10'),
(658, 114, 0, 469, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-06 00:11:23', '2019-09-06 00:11:23'),
(659, 114, 0, 470, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-06 00:11:37', '2019-09-06 00:11:37'),
(660, 114, 0, 471, 'New Image Uploaded', '20', 'upload_image', 0, '2019-09-06 00:11:49', '2019-09-06 00:11:49'),
(661, 114, 0, 472, 'New Image Uploaded', '21', 'upload_image', 0, '2019-09-06 00:12:00', '2019-09-06 00:12:00'),
(662, 114, 0, 473, 'New Image Uploaded', '22', 'upload_image', 0, '2019-09-06 00:12:11', '2019-09-06 00:12:11'),
(663, 22, 38, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-06 00:17:08', '2019-09-06 00:17:08'),
(664, 22, 38, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-06 00:17:08', '2019-09-06 00:17:08'),
(665, 22, 38, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-06 00:17:09', '2019-09-06 00:17:09'),
(666, 115, 0, 474, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-06 14:16:09', '2019-09-06 14:16:09'),
(667, 115, 0, 475, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-06 14:16:20', '2019-09-06 14:16:20'),
(668, 115, 0, 476, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-06 14:16:32', '2019-09-06 14:16:32'),
(669, 115, 0, 477, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-06 14:16:44', '2019-09-06 14:16:44'),
(670, 115, 0, 478, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-06 14:16:54', '2019-09-06 14:16:54'),
(671, 115, 0, 479, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-06 14:17:04', '2019-09-06 14:17:04'),
(672, 115, 0, 480, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-06 14:17:17', '2019-09-06 14:17:17'),
(673, 115, 0, 481, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-06 14:17:32', '2019-09-06 14:17:32'),
(674, 115, 0, 482, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-06 14:17:45', '2019-09-06 14:17:45'),
(675, 116, 0, 483, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-08 20:12:51', '2019-09-08 20:12:51'),
(676, 116, 0, 484, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-08 20:13:02', '2019-09-08 20:13:02'),
(677, 116, 0, 485, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-08 20:13:11', '2019-09-08 20:13:11'),
(678, 116, 0, 486, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-08 20:13:22', '2019-09-08 20:13:22'),
(679, 116, 0, 487, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-08 20:13:35', '2019-09-08 20:13:35'),
(680, 116, 0, 488, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-08 20:13:48', '2019-09-08 20:13:48'),
(681, 116, 0, 489, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-08 20:13:59', '2019-09-08 20:13:59'),
(682, 116, 0, 490, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-08 20:14:09', '2019-09-08 20:14:09'),
(683, 116, 0, 491, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-08 20:14:21', '2019-09-08 20:14:21'),
(684, 116, 0, 492, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-08 20:14:33', '2019-09-08 20:14:33'),
(685, 116, 0, 493, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-08 20:14:45', '2019-09-08 20:14:45'),
(686, 116, 0, 494, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-08 20:14:56', '2019-09-08 20:14:56'),
(687, 116, 0, 495, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-08 20:15:09', '2019-09-08 20:15:09'),
(688, 116, 0, 496, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-08 20:15:20', '2019-09-08 20:15:20'),
(689, 116, 0, 497, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-08 20:15:32', '2019-09-08 20:15:32'),
(690, 116, 0, 498, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-08 20:15:56', '2019-09-08 20:15:56'),
(691, 116, 0, 499, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-08 20:16:06', '2019-09-08 20:16:06'),
(692, 116, 0, 500, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-08 20:16:27', '2019-09-08 20:16:27'),
(693, 116, 0, 501, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-08 20:16:36', '2019-09-08 20:16:36'),
(694, 116, 0, 502, 'New Image Uploaded', '20', 'upload_image', 0, '2019-09-08 20:16:48', '2019-09-08 20:16:48'),
(695, 116, 0, 503, 'New Image Uploaded', '21', 'upload_image', 0, '2019-09-08 20:16:58', '2019-09-08 20:16:58'),
(696, 116, 0, 504, 'New Image Uploaded', '21', 'upload_image', 0, '2019-09-08 20:17:19', '2019-09-08 20:17:19'),
(697, 116, 0, 505, 'New Image Uploaded', '22', 'upload_image', 0, '2019-09-08 20:17:30', '2019-09-08 20:17:30'),
(698, 116, 0, 506, 'New Image Uploaded', '23', 'upload_image', 0, '2019-09-08 20:17:47', '2019-09-08 20:17:47'),
(699, 116, 0, 507, 'New Image Uploaded', '24', 'upload_image', 0, '2019-09-08 20:18:00', '2019-09-08 20:18:00'),
(700, 116, 0, 508, 'New Image Uploaded', '25', 'upload_image', 0, '2019-09-08 20:18:15', '2019-09-08 20:18:15'),
(701, 116, 0, 509, 'New Image Uploaded', '26', 'upload_image', 0, '2019-09-08 20:18:29', '2019-09-08 20:18:29'),
(702, 116, 0, 510, 'New Image Uploaded', '27', 'upload_image', 0, '2019-09-08 20:18:43', '2019-09-08 20:18:43'),
(703, 116, 0, 511, 'New Image Uploaded', '28', 'upload_image', 0, '2019-09-08 20:18:57', '2019-09-08 20:18:57'),
(704, 116, 0, 512, 'New Image Uploaded', '29', 'upload_image', 0, '2019-09-08 20:19:09', '2019-09-08 20:19:09'),
(705, 117, 0, 513, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-08 20:34:38', '2019-09-08 20:34:38'),
(706, 117, 0, 514, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-08 20:34:51', '2019-09-08 20:34:51'),
(707, 117, 0, 515, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-08 20:35:03', '2019-09-08 20:35:03'),
(708, 117, 0, 516, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-08 20:35:14', '2019-09-08 20:35:14'),
(709, 117, 0, 517, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-08 20:35:25', '2019-09-08 20:35:25'),
(710, 117, 0, 518, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-08 20:35:37', '2019-09-08 20:35:37'),
(711, 117, 0, 519, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-08 20:35:50', '2019-09-08 20:35:50'),
(712, 117, 0, 520, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-08 20:36:00', '2019-09-08 20:36:00'),
(713, 117, 0, 521, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-08 20:36:10', '2019-09-08 20:36:10'),
(714, 118, 0, 522, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-08 21:28:14', '2019-09-08 21:28:14'),
(715, 118, 0, 523, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-08 21:28:25', '2019-09-08 21:28:25'),
(716, 118, 0, 524, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-08 21:28:36', '2019-09-08 21:28:36'),
(717, 118, 0, 525, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-08 21:28:48', '2019-09-08 21:28:48'),
(718, 118, 0, 526, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-08 21:29:02', '2019-09-08 21:29:02'),
(719, 118, 0, 527, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-08 21:29:15', '2019-09-08 21:29:15'),
(720, 118, 0, 528, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-08 21:29:25', '2019-09-08 21:29:25'),
(721, 119, 0, 529, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-08 21:40:45', '2019-09-08 21:40:45'),
(722, 119, 0, 530, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-08 21:40:56', '2019-09-08 21:40:56'),
(723, 119, 0, 531, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-08 21:41:07', '2019-09-08 21:41:07'),
(724, 119, 0, 532, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-08 21:41:16', '2019-09-08 21:41:16'),
(725, 119, 0, 533, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-08 21:41:28', '2019-09-08 21:41:28'),
(726, 119, 0, 534, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-08 21:41:40', '2019-09-08 21:41:40'),
(727, 120, 0, 535, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-08 21:56:59', '2019-09-08 21:56:59'),
(728, 120, 0, 536, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-08 21:57:11', '2019-09-08 21:57:11'),
(729, 120, 0, 537, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-08 21:57:22', '2019-09-08 21:57:22'),
(730, 120, 0, 538, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-08 21:57:33', '2019-09-08 21:57:33'),
(731, 120, 0, 539, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-08 21:57:45', '2019-09-08 21:57:45'),
(732, 121, 0, 540, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-09 14:29:41', '2019-09-09 14:29:41'),
(733, 121, 0, 541, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-09 14:29:57', '2019-09-09 14:29:57'),
(734, 121, 0, 542, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-09 14:35:07', '2019-09-09 14:35:07'),
(735, 121, 0, 543, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-09 14:35:24', '2019-09-09 14:35:24'),
(736, 121, 0, 544, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-09 14:35:38', '2019-09-09 14:35:38'),
(737, 121, 0, 545, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-09 14:35:50', '2019-09-09 14:35:50'),
(738, 121, 0, 546, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-09 14:36:03', '2019-09-09 14:36:03'),
(739, 121, 0, 547, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-09 14:36:14', '2019-09-09 14:36:14'),
(740, 121, 0, 548, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-09 14:36:30', '2019-09-09 14:36:30'),
(741, 121, 0, 549, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-09 15:25:07', '2019-09-09 15:25:07'),
(742, 121, 0, 550, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-09 15:25:26', '2019-09-09 15:25:26'),
(743, 121, 0, 551, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-09 15:25:41', '2019-09-09 15:25:41'),
(744, 122, 0, 552, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-09 15:35:19', '2019-09-09 15:35:19'),
(745, 122, 0, 553, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-09 15:35:30', '2019-09-09 15:35:30'),
(746, 122, 0, 554, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-09 15:35:41', '2019-09-09 15:35:41'),
(747, 122, 0, 555, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-09 15:35:52', '2019-09-09 15:35:52'),
(748, 123, 0, 556, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-09 15:45:17', '2019-09-09 15:45:17'),
(749, 123, 0, 557, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-09 15:45:28', '2019-09-09 15:45:28'),
(750, 123, 0, 558, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-09 15:45:38', '2019-09-09 15:45:38'),
(751, 123, 0, 559, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-09 15:45:50', '2019-09-09 15:45:50'),
(752, 123, 0, 560, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-09 15:46:02', '2019-09-09 15:46:02'),
(753, 123, 0, 561, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-09 15:46:12', '2019-09-09 15:46:12'),
(754, 123, 0, 562, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-09 15:46:29', '2019-09-09 15:46:29'),
(755, 123, 0, 563, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-09 15:46:41', '2019-09-09 15:46:41'),
(756, 123, 0, 564, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-09 15:46:56', '2019-09-09 15:46:56'),
(757, 123, 0, 565, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-09 15:47:07', '2019-09-09 15:47:07'),
(758, 124, 0, 566, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-09 15:56:17', '2019-09-09 15:56:17'),
(759, 124, 0, 567, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-09 15:56:30', '2019-09-09 15:56:30'),
(760, 124, 0, 568, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-09 15:56:44', '2019-09-09 15:56:44'),
(761, 124, 0, 569, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-09 15:56:54', '2019-09-09 15:56:54'),
(762, 124, 0, 570, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-09 15:57:04', '2019-09-09 15:57:04'),
(763, 124, 0, 571, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-09 15:57:14', '2019-09-09 15:57:14'),
(764, 127, 0, 572, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 17:15:14', '2019-09-13 17:15:14'),
(765, 127, 0, 573, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 17:15:31', '2019-09-13 17:15:31'),
(766, 127, 0, 574, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 17:16:00', '2019-09-13 17:16:00'),
(767, 127, 0, 575, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 17:16:35', '2019-09-13 17:16:35'),
(768, 127, 0, 576, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 17:17:02', '2019-09-13 17:17:02'),
(769, 127, 0, 577, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 17:17:21', '2019-09-13 17:17:21'),
(770, 127, 0, 578, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 17:17:42', '2019-09-13 17:17:42'),
(771, 127, 0, 579, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-13 17:18:10', '2019-09-13 17:18:10'),
(772, 127, 0, 580, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-13 17:18:31', '2019-09-13 17:18:31'),
(773, 127, 0, 581, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-13 17:18:56', '2019-09-13 17:18:56'),
(774, 127, 0, 582, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-13 17:19:17', '2019-09-13 17:19:17'),
(775, 127, 0, 583, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-13 17:19:35', '2019-09-13 17:19:35'),
(776, 127, 0, 584, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-13 17:19:56', '2019-09-13 17:19:56'),
(777, 127, 0, 585, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-13 17:20:13', '2019-09-13 17:20:13'),
(778, 127, 0, 586, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-13 17:20:39', '2019-09-13 17:20:39'),
(779, 127, 0, 587, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-13 17:20:55', '2019-09-13 17:20:55'),
(780, 127, 0, 588, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-13 17:21:08', '2019-09-13 17:21:08'),
(781, 127, 0, 589, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-13 17:21:51', '2019-09-13 17:21:51'),
(782, 127, 0, 590, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-13 17:22:39', '2019-09-13 17:22:39'),
(783, 127, 0, 591, 'New Image Uploaded', '20', 'upload_image', 0, '2019-09-13 17:23:04', '2019-09-13 17:23:04'),
(784, 127, 0, 592, 'New Image Uploaded', '21', 'upload_image', 0, '2019-09-13 17:23:19', '2019-09-13 17:23:19'),
(785, 127, 0, 593, 'New Image Uploaded', '22', 'upload_image', 0, '2019-09-13 17:23:36', '2019-09-13 17:23:36'),
(786, 127, 0, 594, 'New Image Uploaded', '23', 'upload_image', 0, '2019-09-13 17:24:12', '2019-09-13 17:24:12'),
(787, 127, 0, 595, 'New Image Uploaded', '24', 'upload_image', 0, '2019-09-13 17:24:57', '2019-09-13 17:24:57'),
(788, 127, 0, 596, 'New Image Uploaded', '25', 'upload_image', 0, '2019-09-13 17:26:24', '2019-09-13 17:26:24'),
(789, 128, 0, 597, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 17:41:03', '2019-09-13 17:41:03'),
(790, 128, 0, 598, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 17:41:15', '2019-09-13 17:41:15'),
(791, 128, 0, 599, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 17:41:28', '2019-09-13 17:41:28'),
(792, 128, 0, 600, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 17:41:40', '2019-09-13 17:41:40'),
(793, 128, 0, 601, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 17:41:52', '2019-09-13 17:41:52'),
(794, 128, 0, 602, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 17:42:19', '2019-09-13 17:42:19'),
(795, 128, 0, 603, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 17:42:31', '2019-09-13 17:42:31'),
(796, 129, 0, 604, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 18:02:13', '2019-09-13 18:02:13'),
(797, 129, 0, 605, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 18:02:23', '2019-09-13 18:02:23'),
(798, 129, 0, 606, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 18:02:37', '2019-09-13 18:02:37'),
(799, 129, 0, 607, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 18:02:50', '2019-09-13 18:02:50'),
(800, 129, 0, 608, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 18:03:03', '2019-09-13 18:03:03'),
(801, 129, 0, 609, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 18:03:16', '2019-09-13 18:03:16'),
(802, 129, 0, 610, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 18:03:28', '2019-09-13 18:03:28'),
(803, 129, 0, 611, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-13 18:03:40', '2019-09-13 18:03:40'),
(804, 129, 0, 612, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-13 18:03:54', '2019-09-13 18:03:54'),
(805, 129, 0, 613, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-13 18:04:06', '2019-09-13 18:04:06'),
(806, 129, 0, 614, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-13 18:04:21', '2019-09-13 18:04:21'),
(807, 129, 0, 615, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-13 18:04:36', '2019-09-13 18:04:36'),
(808, 129, 0, 616, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-13 18:04:48', '2019-09-13 18:04:48'),
(809, 129, 0, 617, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-13 18:05:04', '2019-09-13 18:05:04'),
(810, 129, 0, 618, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-13 18:05:19', '2019-09-13 18:05:19'),
(811, 129, 0, 619, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-13 18:05:33', '2019-09-13 18:05:33'),
(812, 129, 0, 620, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-13 18:05:45', '2019-09-13 18:05:45'),
(813, 129, 0, 621, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-13 18:05:59', '2019-09-13 18:05:59'),
(814, 129, 0, 622, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-13 18:06:12', '2019-09-13 18:06:12'),
(815, 129, 0, 623, 'New Image Uploaded', '20', 'upload_image', 0, '2019-09-13 18:06:25', '2019-09-13 18:06:25'),
(816, 130, 0, 624, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 18:21:41', '2019-09-13 18:21:41'),
(817, 130, 0, 625, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 18:21:53', '2019-09-13 18:21:53'),
(818, 130, 0, 626, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 18:22:03', '2019-09-13 18:22:03'),
(819, 130, 0, 627, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 18:22:15', '2019-09-13 18:22:15'),
(820, 130, 0, 628, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 18:22:27', '2019-09-13 18:22:27'),
(821, 130, 0, 629, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 18:22:42', '2019-09-13 18:22:42'),
(822, 130, 0, 630, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 18:22:55', '2019-09-13 18:22:55'),
(823, 130, 0, 631, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-13 18:23:06', '2019-09-13 18:23:06'),
(824, 130, 0, 632, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-13 18:23:17', '2019-09-13 18:23:17'),
(825, 130, 0, 633, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-13 18:23:35', '2019-09-13 18:23:35'),
(826, 130, 0, 634, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-13 18:23:49', '2019-09-13 18:23:49'),
(827, 130, 0, 635, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-13 18:24:04', '2019-09-13 18:24:04'),
(828, 130, 0, 636, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-13 18:24:19', '2019-09-13 18:24:19'),
(829, 131, 0, 637, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 20:31:33', '2019-09-13 20:31:33'),
(830, 131, 0, 638, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 20:31:43', '2019-09-13 20:31:43'),
(831, 131, 0, 639, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 20:31:53', '2019-09-13 20:31:53'),
(832, 131, 0, 640, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 20:32:05', '2019-09-13 20:32:05'),
(833, 131, 0, 641, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 20:32:17', '2019-09-13 20:32:17'),
(834, 131, 0, 642, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 20:34:25', '2019-09-13 20:34:25'),
(835, 131, 0, 643, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 20:36:50', '2019-09-13 20:36:50'),
(836, 131, 0, 644, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 20:39:00', '2019-09-13 20:39:00'),
(837, 131, 0, 645, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-13 20:48:15', '2019-09-13 20:48:15'),
(838, 131, 0, 646, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-13 20:50:43', '2019-09-13 20:50:43'),
(839, 131, 0, 647, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-13 20:52:41', '2019-09-13 20:52:41'),
(840, 131, 0, 648, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-13 20:55:09', '2019-09-13 20:55:09'),
(841, 131, 0, 649, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-13 20:58:25', '2019-09-13 20:58:25'),
(842, 131, 0, 650, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-13 21:00:43', '2019-09-13 21:00:43'),
(843, 131, 0, 651, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-13 21:03:19', '2019-09-13 21:03:19'),
(844, 131, 0, 652, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-13 21:06:27', '2019-09-13 21:06:27'),
(845, 131, 0, 653, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-13 21:09:38', '2019-09-13 21:09:38'),
(846, 131, 0, 654, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-13 21:12:09', '2019-09-13 21:12:09'),
(847, 131, 0, 655, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-13 21:15:07', '2019-09-13 21:15:07'),
(848, 131, 0, 656, 'New Image Uploaded', '20', 'upload_image', 0, '2019-09-13 21:17:26', '2019-09-13 21:17:26'),
(849, 131, 0, 657, 'New Image Uploaded', '21', 'upload_image', 0, '2019-09-13 21:20:14', '2019-09-13 21:20:14'),
(850, 131, 0, 658, 'New Image Uploaded', '22', 'upload_image', 0, '2019-09-13 21:23:35', '2019-09-13 21:23:35'),
(851, 132, 0, 659, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 21:33:57', '2019-09-13 21:33:57'),
(852, 132, 0, 660, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 21:34:06', '2019-09-13 21:34:06'),
(853, 132, 0, 661, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 21:34:20', '2019-09-13 21:34:20'),
(854, 132, 0, 662, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 21:34:30', '2019-09-13 21:34:30'),
(855, 132, 0, 663, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 21:34:43', '2019-09-13 21:34:43'),
(856, 132, 0, 664, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 21:34:55', '2019-09-13 21:34:55'),
(857, 132, 0, 665, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 21:35:08', '2019-09-13 21:35:08'),
(858, 133, 0, 666, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 21:45:50', '2019-09-13 21:45:50'),
(859, 133, 0, 667, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 21:46:06', '2019-09-13 21:46:06'),
(860, 133, 0, 668, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 21:46:16', '2019-09-13 21:46:16'),
(861, 133, 0, 669, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 21:46:25', '2019-09-13 21:46:25'),
(862, 133, 0, 670, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 21:46:34', '2019-09-13 21:46:34'),
(863, 133, 0, 671, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 21:46:43', '2019-09-13 21:46:43'),
(864, 133, 0, 672, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 21:46:53', '2019-09-13 21:46:53'),
(865, 133, 0, 673, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-13 21:47:03', '2019-09-13 21:47:03'),
(866, 133, 0, 674, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-13 21:47:15', '2019-09-13 21:47:15'),
(867, 133, 0, 675, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-13 21:47:24', '2019-09-13 21:47:24'),
(868, 133, 0, 676, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-13 21:47:33', '2019-09-13 21:47:33'),
(869, 133, 0, 677, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-13 21:47:42', '2019-09-13 21:47:42'),
(870, 133, 0, 678, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-13 21:47:52', '2019-09-13 21:47:52'),
(871, 133, 0, 679, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-13 21:48:04', '2019-09-13 21:48:04'),
(872, 133, 0, 680, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-13 21:48:17', '2019-09-13 21:48:17'),
(873, 134, 0, 681, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-13 23:16:24', '2019-09-13 23:16:24'),
(874, 134, 0, 682, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-13 23:16:37', '2019-09-13 23:16:37'),
(875, 134, 0, 683, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-13 23:16:54', '2019-09-13 23:16:54'),
(876, 134, 0, 684, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-13 23:17:05', '2019-09-13 23:17:05'),
(877, 134, 0, 685, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-13 23:17:26', '2019-09-13 23:17:26'),
(878, 134, 0, 686, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-13 23:17:49', '2019-09-13 23:17:49'),
(879, 134, 0, 687, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-13 23:18:03', '2019-09-13 23:18:03'),
(880, 134, 0, 688, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-13 23:18:20', '2019-09-13 23:18:20'),
(881, 135, 0, 689, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 14:54:20', '2019-09-14 14:54:20'),
(882, 135, 0, 690, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 14:54:53', '2019-09-14 14:54:53'),
(883, 135, 0, 691, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-14 14:55:30', '2019-09-14 14:55:30'),
(884, 135, 0, 692, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-14 14:55:46', '2019-09-14 14:55:46'),
(885, 135, 0, 693, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-14 14:55:57', '2019-09-14 14:55:57'),
(886, 135, 0, 694, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-14 14:56:09', '2019-09-14 14:56:09'),
(887, 135, 0, 695, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-14 14:56:24', '2019-09-14 14:56:24'),
(888, 135, 0, 696, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-14 14:56:37', '2019-09-14 14:56:37'),
(889, 135, 0, 697, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-14 14:56:51', '2019-09-14 14:56:51'),
(890, 135, 0, 698, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-14 14:57:02', '2019-09-14 14:57:02'),
(891, 135, 0, 699, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-14 14:57:18', '2019-09-14 14:57:18'),
(892, 135, 0, 700, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-14 14:57:30', '2019-09-14 14:57:30'),
(893, 135, 0, 701, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-14 14:57:42', '2019-09-14 14:57:42'),
(894, 135, 0, 702, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-14 14:58:05', '2019-09-14 14:58:05'),
(895, 135, 0, 703, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-14 14:58:18', '2019-09-14 14:58:18'),
(896, 135, 0, 704, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-14 14:58:34', '2019-09-14 14:58:34'),
(897, 135, 0, 705, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-14 14:59:02', '2019-09-14 14:59:02'),
(898, 135, 0, 706, 'New Image Uploaded', '18', 'upload_image', 0, '2019-09-14 14:59:15', '2019-09-14 14:59:15'),
(899, 135, 0, 707, 'New Image Uploaded', '19', 'upload_image', 0, '2019-09-14 14:59:26', '2019-09-14 14:59:26'),
(900, 135, 0, 708, 'New Image Uploaded', '20', 'upload_image', 0, '2019-09-14 14:59:39', '2019-09-14 14:59:39'),
(901, 135, 0, 709, 'New Image Uploaded', '21', 'upload_image', 0, '2019-09-14 14:59:52', '2019-09-14 14:59:52'),
(902, 135, 0, 710, 'New Image Uploaded', '22', 'upload_image', 0, '2019-09-14 15:00:03', '2019-09-14 15:00:03'),
(903, 136, 0, 711, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 15:14:51', '2019-09-14 15:14:51'),
(904, 136, 0, 712, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-14 15:15:06', '2019-09-14 15:15:06'),
(905, 136, 0, 713, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-14 15:15:17', '2019-09-14 15:15:17'),
(906, 136, 0, 714, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-14 15:15:31', '2019-09-14 15:15:31'),
(907, 136, 0, 715, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-14 15:15:44', '2019-09-14 15:15:44');
INSERT INTO `notification` (`id`, `sender_id`, `receiver_id`, `content_id`, `title`, `content`, `type`, `public`, `created_at`, `updated_at`) VALUES
(908, 136, 0, 716, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-14 15:15:54', '2019-09-14 15:15:54'),
(909, 136, 0, 717, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-14 15:16:08', '2019-09-14 15:16:08'),
(910, 136, 0, 718, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-14 15:16:19', '2019-09-14 15:16:19'),
(911, 136, 0, 719, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-14 15:16:28', '2019-09-14 15:16:28'),
(912, 136, 0, 720, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-14 15:16:38', '2019-09-14 15:16:38'),
(913, 136, 0, 721, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-14 15:16:48', '2019-09-14 15:16:48'),
(914, 136, 0, 722, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-14 15:16:57', '2019-09-14 15:16:57'),
(915, 136, 0, 723, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-14 15:17:06', '2019-09-14 15:17:06'),
(916, 136, 0, 724, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-14 15:17:17', '2019-09-14 15:17:17'),
(917, 136, 0, 725, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-14 15:17:28', '2019-09-14 15:17:28'),
(918, 137, 0, 43, 'New Video Uploaded', 'Fresh every day and prepared with the highest standards for food safety...know what you eat!', 'upload_video', 0, '2019-09-14 18:57:46', '2019-09-14 18:57:46'),
(919, 137, 0, 44, 'New Video Uploaded', 'A great meal looks right from the start!', 'upload_video', 0, '2019-09-14 18:58:21', '2019-09-14 18:58:21'),
(920, 137, 0, 45, 'New Video Uploaded', 'Για να φας...πραγματική pizza', 'upload_video', 0, '2019-09-14 18:58:58', '2019-09-14 18:58:58'),
(921, 137, 0, 726, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 18:59:12', '2019-09-14 18:59:12'),
(922, 137, 0, 727, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-14 18:59:23', '2019-09-14 18:59:23'),
(923, 137, 0, 728, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-14 18:59:34', '2019-09-14 18:59:34'),
(924, 137, 0, 729, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-14 18:59:45', '2019-09-14 18:59:45'),
(925, 137, 0, 730, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-14 18:59:55', '2019-09-14 18:59:55'),
(926, 137, 0, 731, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-14 19:00:08', '2019-09-14 19:00:08'),
(927, 137, 0, 732, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-14 19:00:20', '2019-09-14 19:00:20'),
(928, 137, 0, 733, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-14 19:00:33', '2019-09-14 19:00:33'),
(929, 137, 0, 734, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-14 19:00:43', '2019-09-14 19:00:43'),
(930, 137, 0, 735, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-14 19:00:57', '2019-09-14 19:00:57'),
(931, 137, 0, 736, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-14 19:01:10', '2019-09-14 19:01:10'),
(932, 137, 0, 737, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-14 19:01:20', '2019-09-14 19:01:20'),
(933, 137, 0, 738, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-14 19:01:30', '2019-09-14 19:01:30'),
(934, 137, 0, 739, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-14 19:01:41', '2019-09-14 19:01:41'),
(935, 137, 0, 740, 'New Image Uploaded', '15', 'upload_image', 0, '2019-09-14 19:01:54', '2019-09-14 19:01:54'),
(936, 138, 0, 741, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 19:14:56', '2019-09-14 19:14:56'),
(937, 138, 0, 742, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-14 19:15:21', '2019-09-14 19:15:21'),
(938, 138, 0, 743, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-14 19:15:33', '2019-09-14 19:15:33'),
(939, 138, 0, 744, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-14 19:15:45', '2019-09-14 19:15:45'),
(940, 139, 0, 745, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 19:21:50', '2019-09-14 19:21:50'),
(941, 139, 0, 746, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-14 19:22:01', '2019-09-14 19:22:01'),
(942, 140, 0, 747, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-14 19:33:34', '2019-09-14 19:33:34'),
(943, 140, 0, 748, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-14 19:33:47', '2019-09-14 19:33:47'),
(944, 140, 0, 749, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-14 19:34:00', '2019-09-14 19:34:00'),
(945, 140, 0, 750, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-14 19:34:18', '2019-09-14 19:34:18'),
(946, 140, 0, 751, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-14 19:34:29', '2019-09-14 19:34:29'),
(947, 140, 0, 752, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-14 19:34:41', '2019-09-14 19:34:41'),
(948, 140, 0, 753, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-14 19:34:51', '2019-09-14 19:34:51'),
(949, 140, 0, 754, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-14 19:35:03', '2019-09-14 19:35:03'),
(950, 140, 0, 755, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-14 19:35:13', '2019-09-14 19:35:13'),
(951, 140, 0, 756, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-14 19:35:31', '2019-09-14 19:35:31'),
(952, 140, 0, 757, 'New Image Uploaded', '11', 'upload_image', 0, '2019-09-14 19:35:41', '2019-09-14 19:35:41'),
(953, 140, 0, 758, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-14 19:35:53', '2019-09-14 19:35:53'),
(954, 141, 0, 759, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-15 15:49:35', '2019-09-15 15:49:35'),
(955, 141, 0, 760, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-15 15:49:49', '2019-09-15 15:49:49'),
(956, 141, 0, 761, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-15 15:49:59', '2019-09-15 15:49:59'),
(957, 141, 0, 762, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-15 15:50:15', '2019-09-15 15:50:15'),
(958, 141, 0, 763, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-15 15:50:25', '2019-09-15 15:50:25'),
(959, 141, 0, 764, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-15 15:50:39', '2019-09-15 15:50:39'),
(960, 141, 0, 765, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-15 15:50:51', '2019-09-15 15:50:51'),
(961, 141, 0, 766, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-15 15:51:01', '2019-09-15 15:51:01'),
(962, 142, 0, 767, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-15 16:05:42', '2019-09-15 16:05:42'),
(963, 142, 0, 768, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-15 16:05:52', '2019-09-15 16:05:52'),
(964, 142, 0, 769, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-15 16:06:08', '2019-09-15 16:06:08'),
(965, 142, 0, 770, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-15 16:06:18', '2019-09-15 16:06:18'),
(966, 142, 0, 771, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-15 16:06:43', '2019-09-15 16:06:43'),
(967, 142, 0, 772, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-15 16:06:53', '2019-09-15 16:06:53'),
(968, 143, 0, 773, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-15 16:37:55', '2019-09-15 16:37:55'),
(969, 143, 0, 774, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-15 16:38:13', '2019-09-15 16:38:13'),
(970, 143, 0, 775, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-15 16:38:26', '2019-09-15 16:38:26'),
(971, 143, 0, 776, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-15 16:38:42', '2019-09-15 16:38:42'),
(972, 143, 0, 777, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-15 16:39:04', '2019-09-15 16:39:04'),
(973, 144, 0, 778, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-15 17:14:13', '2019-09-15 17:14:13'),
(974, 144, 0, 779, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-15 17:14:30', '2019-09-15 17:14:30'),
(975, 144, 0, 780, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-15 17:14:40', '2019-09-15 17:14:40'),
(976, 144, 0, 781, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-15 17:14:52', '2019-09-15 17:14:52'),
(977, 144, 0, 782, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-15 17:15:06', '2019-09-15 17:15:06'),
(978, 144, 0, 783, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-15 17:15:41', '2019-09-15 17:15:41'),
(979, 144, 0, 784, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-15 17:15:58', '2019-09-15 17:15:58'),
(980, 144, 0, 785, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-15 17:16:10', '2019-09-15 17:16:10'),
(981, 144, 0, 786, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-15 17:16:24', '2019-09-15 17:16:24'),
(982, 144, 0, 787, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-15 17:16:43', '2019-09-15 17:16:43'),
(983, 144, 0, 788, 'New Image Uploaded', '12', 'upload_image', 0, '2019-09-15 17:16:56', '2019-09-15 17:16:56'),
(984, 144, 0, 789, 'New Image Uploaded', '13', 'upload_image', 0, '2019-09-15 17:17:07', '2019-09-15 17:17:07'),
(985, 141, 0, 790, 'New Image Uploaded', '14', 'upload_image', 0, '2019-09-15 17:19:00', '2019-09-15 17:19:00'),
(986, 141, 0, 791, 'New Image Uploaded', '16', 'upload_image', 0, '2019-09-15 17:19:13', '2019-09-15 17:19:13'),
(987, 141, 0, 792, 'New Image Uploaded', '17', 'upload_image', 0, '2019-09-15 17:19:31', '2019-09-15 17:19:31'),
(988, 146, 38, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-15 22:54:54', '2019-09-15 22:54:54'),
(989, 146, 38, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-15 22:54:59', '2019-09-15 22:54:59'),
(990, 146, 15, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-15 22:55:07', '2019-09-15 22:55:07'),
(991, 146, 13, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-09-15 22:55:25', '2019-09-15 22:55:25'),
(992, 146, 10, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-15 22:55:33', '2019-09-15 22:55:33'),
(993, 146, 41, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-15 22:57:24', '2019-09-15 22:57:24'),
(994, 146, 13, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-09-15 23:05:30', '2019-09-15 23:05:30'),
(995, 146, 13, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-09-15 23:05:32', '2019-09-15 23:05:32'),
(996, 146, 13, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-15 23:05:38', '2019-09-15 23:05:38'),
(997, 145, 0, 793, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-16 14:45:18', '2019-09-16 14:45:18'),
(998, 145, 0, 794, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-16 14:45:33', '2019-09-16 14:45:33'),
(999, 145, 0, 795, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-16 14:45:46', '2019-09-16 14:45:46'),
(1000, 145, 0, 796, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-16 14:45:58', '2019-09-16 14:45:58'),
(1001, 145, 0, 797, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-16 14:46:12', '2019-09-16 14:46:12'),
(1002, 145, 0, 798, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-16 14:46:24', '2019-09-16 14:46:24'),
(1003, 145, 0, 799, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-16 14:46:37', '2019-09-16 14:46:37'),
(1004, 145, 0, 800, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-16 14:46:51', '2019-09-16 14:46:51'),
(1005, 145, 0, 801, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-16 14:47:05', '2019-09-16 14:47:05'),
(1006, 145, 0, 802, 'New Image Uploaded', '10', 'upload_image', 0, '2019-09-16 14:47:17', '2019-09-16 14:47:17'),
(1007, 147, 0, 803, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-17 13:46:58', '2019-09-17 13:46:58'),
(1008, 147, 0, 804, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-17 13:47:12', '2019-09-17 13:47:12'),
(1009, 147, 0, 805, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-17 13:47:23', '2019-09-17 13:47:23'),
(1010, 147, 0, 806, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-17 13:47:38', '2019-09-17 13:47:38'),
(1011, 147, 0, 807, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-17 13:47:49', '2019-09-17 13:47:49'),
(1012, 147, 0, 808, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-17 13:48:04', '2019-09-17 13:48:04'),
(1013, 148, 0, 809, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-17 14:00:32', '2019-09-17 14:00:32'),
(1014, 148, 0, 810, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-17 14:00:46', '2019-09-17 14:00:46'),
(1015, 148, 0, 811, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-17 14:01:01', '2019-09-17 14:01:01'),
(1016, 148, 0, 812, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-17 14:01:17', '2019-09-17 14:01:17'),
(1017, 148, 0, 813, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-17 14:01:31', '2019-09-17 14:01:31'),
(1018, 148, 0, 814, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-17 14:01:49', '2019-09-17 14:01:49'),
(1019, 148, 0, 815, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-17 14:02:02', '2019-09-17 14:02:02'),
(1020, 148, 0, 816, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-17 14:02:18', '2019-09-17 14:02:18'),
(1021, 149, 0, 817, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-19 13:48:06', '2019-09-19 13:48:06'),
(1022, 149, 0, 818, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-19 13:48:18', '2019-09-19 13:48:18'),
(1023, 149, 0, 819, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-19 13:48:38', '2019-09-19 13:48:38'),
(1024, 149, 0, 820, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-19 13:48:51', '2019-09-19 13:48:51'),
(1025, 149, 0, 821, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-19 13:49:23', '2019-09-19 13:49:23'),
(1026, 149, 0, 822, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-19 13:49:43', '2019-09-19 13:49:43'),
(1027, 149, 0, 823, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-19 13:50:02', '2019-09-19 13:50:02'),
(1028, 149, 0, 824, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-19 13:50:17', '2019-09-19 13:50:17'),
(1029, 149, 0, 825, 'New Image Uploaded', '9', 'upload_image', 0, '2019-09-19 13:50:28', '2019-09-19 13:50:28'),
(1030, 151, 0, 826, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-19 19:26:09', '2019-09-19 19:26:09'),
(1031, 151, 0, 827, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-19 19:26:20', '2019-09-19 19:26:20'),
(1032, 151, 0, 828, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-19 19:27:13', '2019-09-19 19:27:13'),
(1033, 151, 0, 829, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-19 19:27:28', '2019-09-19 19:27:28'),
(1034, 151, 0, 830, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-19 19:27:50', '2019-09-19 19:27:50'),
(1035, 151, 0, 831, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-19 19:28:03', '2019-09-19 19:28:03'),
(1036, 151, 0, 832, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-19 19:28:16', '2019-09-19 19:28:16'),
(1037, 151, 0, 833, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-19 19:28:29', '2019-09-19 19:28:29'),
(1038, 152, 0, 834, 'New Image Uploaded', '1', 'upload_image', 0, '2019-09-19 19:39:11', '2019-09-19 19:39:11'),
(1039, 152, 0, 835, 'New Image Uploaded', '2', 'upload_image', 0, '2019-09-19 19:39:22', '2019-09-19 19:39:22'),
(1040, 152, 0, 836, 'New Image Uploaded', '3', 'upload_image', 0, '2019-09-19 19:39:36', '2019-09-19 19:39:36'),
(1041, 152, 0, 837, 'New Image Uploaded', '4', 'upload_image', 0, '2019-09-19 19:39:48', '2019-09-19 19:39:48'),
(1042, 152, 0, 838, 'New Image Uploaded', '5', 'upload_image', 0, '2019-09-19 19:40:03', '2019-09-19 19:40:03'),
(1043, 152, 0, 839, 'New Image Uploaded', '6', 'upload_image', 0, '2019-09-19 19:40:16', '2019-09-19 19:40:16'),
(1044, 152, 0, 840, 'New Image Uploaded', '7', 'upload_image', 0, '2019-09-19 19:40:30', '2019-09-19 19:40:30'),
(1045, 152, 0, 841, 'New Image Uploaded', '8', 'upload_image', 0, '2019-09-19 19:40:48', '2019-09-19 19:40:48'),
(1046, 153, 40, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-09-21 14:49:56', '2019-09-21 14:49:56'),
(1047, 132, 0, 842, 'New Image Uploaded', '8', 'upload_image', 0, '2019-10-05 19:09:40', '2019-10-05 19:09:40'),
(1048, 39, 0, 46, 'New Video Uploaded', 'Λιάνα Νικολάου', 'upload_video', 0, '2019-10-14 21:02:29', '2019-10-14 21:02:29'),
(1049, 133, 39, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-10-19 17:44:26', '2019-10-19 17:44:26'),
(1050, 39, 0, 47, 'New Video Uploaded', 'Life Coach', 'upload_video', 0, '2019-10-19 20:39:27', '2019-10-19 20:39:27'),
(1051, 104, 39, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-19 20:43:48', '2019-10-19 20:43:48'),
(1052, 104, 39, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-19 20:43:52', '2019-10-19 20:43:52'),
(1053, 104, 39, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-19 20:44:00', '2019-10-19 20:44:00'),
(1054, 143, 0, 843, 'New Image Uploaded', '6', 'upload_image', 0, '2019-10-27 23:47:32', '2019-10-27 23:47:32'),
(1055, 143, 0, 844, 'New Image Uploaded', '7', 'upload_image', 0, '2019-10-27 23:48:49', '2019-10-27 23:48:49'),
(1056, 143, 0, 845, 'New Image Uploaded', '8', 'upload_image', 0, '2019-10-28 10:51:44', '2019-10-28 10:51:44'),
(1057, 143, 0, 846, 'New Image Uploaded', '9', 'upload_image', 0, '2019-10-28 10:52:39', '2019-10-28 10:52:39'),
(1058, 143, 0, 847, 'New Image Uploaded', '10', 'upload_image', 0, '2019-10-28 10:53:34', '2019-10-28 10:53:34'),
(1059, 143, 0, 848, 'New Image Uploaded', '11', 'upload_image', 0, '2019-10-28 10:54:45', '2019-10-28 10:54:45'),
(1060, 143, 0, 849, 'New Image Uploaded', '12', 'upload_image', 0, '2019-10-28 10:54:58', '2019-10-28 10:54:58'),
(1061, 143, 0, 850, 'New Image Uploaded', '13', 'upload_image', 0, '2019-10-28 10:55:11', '2019-10-28 10:55:11'),
(1062, 143, 0, 851, 'New Image Uploaded', '14', 'upload_image', 0, '2019-10-28 10:55:31', '2019-10-28 10:55:31'),
(1063, 143, 0, 852, 'New Image Uploaded', '15', 'upload_image', 0, '2019-10-28 10:55:45', '2019-10-28 10:55:45'),
(1064, 143, 0, 853, 'New Image Uploaded', '16', 'upload_image', 0, '2019-10-28 10:55:58', '2019-10-28 10:55:58'),
(1065, 143, 0, 854, 'New Image Uploaded', '17', 'upload_image', 0, '2019-10-28 10:56:18', '2019-10-28 10:56:18'),
(1066, 143, 0, 855, 'New Image Uploaded', '18', 'upload_image', 0, '2019-10-28 10:56:34', '2019-10-28 10:56:34'),
(1067, 143, 0, 856, 'New Image Uploaded', '19', 'upload_image', 0, '2019-10-28 10:56:50', '2019-10-28 10:56:50'),
(1068, 143, 0, 857, 'New Image Uploaded', '20', 'upload_image', 0, '2019-10-28 10:57:09', '2019-10-28 10:57:09'),
(1069, 143, 0, 858, 'New Image Uploaded', '21', 'upload_image', 0, '2019-10-28 10:57:23', '2019-10-28 10:57:23'),
(1070, 143, 0, 859, 'New Image Uploaded', '22', 'upload_image', 0, '2019-10-28 10:57:37', '2019-10-28 10:57:37'),
(1071, 143, 0, 860, 'New Image Uploaded', '23', 'upload_image', 0, '2019-10-28 10:57:55', '2019-10-28 10:57:55'),
(1072, 143, 0, 861, 'New Image Uploaded', '24', 'upload_image', 0, '2019-10-28 10:58:12', '2019-10-28 10:58:12'),
(1073, 143, 0, 862, 'New Image Uploaded', '25', 'upload_image', 0, '2019-10-28 10:58:29', '2019-10-28 10:58:29'),
(1074, 143, 0, 863, 'New Image Uploaded', '26', 'upload_image', 0, '2019-10-28 10:58:47', '2019-10-28 10:58:47'),
(1075, 143, 0, 864, 'New Image Uploaded', '27', 'upload_image', 0, '2019-10-28 10:59:09', '2019-10-28 10:59:09'),
(1076, 143, 0, 865, 'New Image Uploaded', '28', 'upload_image', 0, '2019-10-28 10:59:25', '2019-10-28 10:59:25'),
(1077, 143, 0, 866, 'New Image Uploaded', '29', 'upload_image', 0, '2019-10-28 10:59:44', '2019-10-28 10:59:44'),
(1078, 143, 0, 867, 'New Image Uploaded', '30', 'upload_image', 0, '2019-10-28 11:00:03', '2019-10-28 11:00:03'),
(1079, 143, 0, 868, 'New Image Uploaded', '31', 'upload_image', 0, '2019-10-28 11:00:19', '2019-10-28 11:00:19'),
(1080, 143, 0, 869, 'New Image Uploaded', '32', 'upload_image', 0, '2019-10-28 11:00:35', '2019-10-28 11:00:35'),
(1081, 143, 0, 870, 'New Image Uploaded', '33', 'upload_image', 0, '2019-10-28 11:00:51', '2019-10-28 11:00:51'),
(1082, 143, 0, 871, 'New Image Uploaded', '34', 'upload_image', 0, '2019-10-28 11:01:10', '2019-10-28 11:01:10'),
(1083, 143, 0, 872, 'New Image Uploaded', '35', 'upload_image', 0, '2019-10-28 11:01:26', '2019-10-28 11:01:26'),
(1084, 143, 0, 873, 'New Image Uploaded', '36', 'upload_image', 0, '2019-10-28 11:01:46', '2019-10-28 11:01:46'),
(1085, 143, 0, 874, 'New Image Uploaded', '37', 'upload_image', 0, '2019-10-28 11:02:02', '2019-10-28 11:02:02'),
(1086, 143, 0, 875, 'New Image Uploaded', '38', 'upload_image', 0, '2019-10-28 11:02:19', '2019-10-28 11:02:19'),
(1087, 143, 0, 876, 'New Image Uploaded', '39', 'upload_image', 0, '2019-10-28 11:03:15', '2019-10-28 11:03:15'),
(1088, 143, 0, 877, 'New Image Uploaded', '40', 'upload_image', 0, '2019-10-28 11:04:46', '2019-10-28 11:04:46'),
(1089, 143, 0, 878, 'New Image Uploaded', '41', 'upload_image', 0, '2019-10-28 11:05:11', '2019-10-28 11:05:11'),
(1090, 143, 0, 879, 'New Image Uploaded', '42', 'upload_image', 0, '2019-10-28 11:05:34', '2019-10-28 11:05:34'),
(1091, 133, 0, 880, 'New Image Uploaded', '14', 'upload_image', 0, '2019-10-28 19:26:27', '2019-10-28 19:26:27'),
(1092, 133, 0, 881, 'New Image Uploaded', '16', 'upload_image', 0, '2019-10-28 19:26:47', '2019-10-28 19:26:47'),
(1093, 133, 0, 882, 'New Image Uploaded', '17', 'upload_image', 0, '2019-10-28 19:27:07', '2019-10-28 19:27:07'),
(1094, 133, 0, 883, 'New Image Uploaded', '18', 'upload_image', 0, '2019-10-28 19:27:22', '2019-10-28 19:27:22'),
(1095, 133, 0, 884, 'New Image Uploaded', '19', 'upload_image', 0, '2019-10-28 19:27:38', '2019-10-28 19:27:38'),
(1096, 133, 0, 885, 'New Image Uploaded', '20', 'upload_image', 0, '2019-10-28 19:27:54', '2019-10-28 19:27:54'),
(1097, 133, 0, 886, 'New Image Uploaded', '21', 'upload_image', 0, '2019-10-28 19:28:09', '2019-10-28 19:28:09'),
(1098, 133, 0, 887, 'New Image Uploaded', '21', 'upload_image', 0, '2019-10-28 19:28:34', '2019-10-28 19:28:34'),
(1099, 133, 0, 888, 'New Image Uploaded', '22', 'upload_image', 0, '2019-10-28 19:28:50', '2019-10-28 19:28:50'),
(1100, 133, 0, 889, 'New Image Uploaded', '23', 'upload_image', 0, '2019-10-28 19:29:05', '2019-10-28 19:29:05'),
(1101, 133, 0, 890, 'New Image Uploaded', '24', 'upload_image', 0, '2019-10-28 19:29:20', '2019-10-28 19:29:20'),
(1102, 133, 0, 891, 'New Image Uploaded', '25', 'upload_image', 0, '2019-10-28 19:29:36', '2019-10-28 19:29:36'),
(1103, 133, 0, 892, 'New Image Uploaded', '26', 'upload_image', 0, '2019-10-28 19:29:52', '2019-10-28 19:29:52'),
(1104, 133, 0, 893, 'New Image Uploaded', '27', 'upload_image', 0, '2019-10-28 19:30:08', '2019-10-28 19:30:08'),
(1105, 133, 0, 894, 'New Image Uploaded', '28', 'upload_image', 0, '2019-10-28 19:30:23', '2019-10-28 19:30:23'),
(1106, 133, 0, 895, 'New Image Uploaded', '29', 'upload_image', 0, '2019-10-28 19:30:42', '2019-10-28 19:30:42'),
(1107, 133, 0, 896, 'New Image Uploaded', '30', 'upload_image', 0, '2019-10-28 19:31:00', '2019-10-28 19:31:00'),
(1108, 133, 0, 897, 'New Image Uploaded', '31', 'upload_image', 0, '2019-10-28 19:31:16', '2019-10-28 19:31:16'),
(1109, 133, 0, 898, 'New Image Uploaded', '32', 'upload_image', 0, '2019-10-28 19:31:32', '2019-10-28 19:31:32'),
(1110, 133, 0, 899, 'New Image Uploaded', '33', 'upload_image', 0, '2019-10-28 19:31:48', '2019-10-28 19:31:48'),
(1111, 156, 0, 900, 'New Image Uploaded', '1', 'upload_image', 0, '2019-10-28 20:17:31', '2019-10-28 20:17:31'),
(1112, 156, 0, 901, 'New Image Uploaded', '2', 'upload_image', 0, '2019-10-28 20:17:45', '2019-10-28 20:17:45'),
(1113, 156, 0, 902, 'New Image Uploaded', '3', 'upload_image', 0, '2019-10-28 20:18:05', '2019-10-28 20:18:05'),
(1114, 156, 0, 903, 'New Image Uploaded', '4', 'upload_image', 0, '2019-10-28 20:18:22', '2019-10-28 20:18:22'),
(1115, 156, 0, 904, 'New Image Uploaded', '5', 'upload_image', 0, '2019-10-28 20:18:38', '2019-10-28 20:18:38'),
(1116, 156, 0, 905, 'New Image Uploaded', '6', 'upload_image', 0, '2019-10-28 20:18:56', '2019-10-28 20:18:56'),
(1117, 156, 0, 906, 'New Image Uploaded', '7', 'upload_image', 0, '2019-10-28 20:19:12', '2019-10-28 20:19:12'),
(1118, 156, 0, 907, 'New Image Uploaded', '8', 'upload_image', 0, '2019-10-28 20:19:30', '2019-10-28 20:19:30'),
(1119, 156, 0, 908, 'New Image Uploaded', '9', 'upload_image', 0, '2019-10-28 20:20:03', '2019-10-28 20:20:03'),
(1120, 156, 0, 909, 'New Image Uploaded', '10', 'upload_image', 0, '2019-10-28 20:20:20', '2019-10-28 20:20:20'),
(1121, 156, 0, 910, 'New Image Uploaded', '11', 'upload_image', 0, '2019-10-28 20:20:42', '2019-10-28 20:20:42'),
(1122, 156, 0, 911, 'New Image Uploaded', '12', 'upload_image', 0, '2019-10-28 20:20:57', '2019-10-28 20:20:57'),
(1123, 156, 0, 911, 'New Image Uploaded', '12', 'upload_image', 0, '2019-10-28 20:20:59', '2019-10-28 20:20:59'),
(1124, 156, 0, 912, 'New Image Uploaded', '13', 'upload_image', 0, '2019-10-28 20:21:15', '2019-10-28 20:21:15'),
(1125, 156, 0, 913, 'New Image Uploaded', '14', 'upload_image', 0, '2019-10-28 20:21:37', '2019-10-28 20:21:37'),
(1126, 156, 0, 914, 'New Image Uploaded', '15', 'upload_image', 0, '2019-10-28 20:21:49', '2019-10-28 20:21:49'),
(1127, 156, 0, 915, 'New Image Uploaded', '16', 'upload_image', 0, '2019-10-28 20:22:08', '2019-10-28 20:22:08'),
(1128, 156, 0, 44, 'New Article Uploaded', 'Το ιδανικό μέρος για να απολαύσεις την γευστική ζωή  με φίλους και οικογένεια', 'upload_article', 0, '2019-10-28 20:23:39', '2019-10-28 20:23:39'),
(1129, 156, 156, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-10-28 20:24:39', '2019-10-28 20:24:39'),
(1130, 156, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:25:46', '2019-10-28 20:25:46'),
(1131, 156, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:25:47', '2019-10-28 20:25:47'),
(1132, 156, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:25:48', '2019-10-28 20:25:48'),
(1133, 156, 38, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:28:56', '2019-10-28 20:28:56'),
(1134, 156, 38, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:28:57', '2019-10-28 20:28:57'),
(1135, 156, 14, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:28:58', '2019-10-28 20:28:58'),
(1136, 156, 14, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:28:59', '2019-10-28 20:28:59'),
(1137, 156, 14, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:00', '2019-10-28 20:29:00'),
(1138, 156, 13, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:01', '2019-10-28 20:29:01'),
(1139, 156, 13, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:29:02', '2019-10-28 20:29:02'),
(1140, 156, 13, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:02', '2019-10-28 20:29:02'),
(1141, 156, 38, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:05', '2019-10-28 20:29:05'),
(1142, 156, 39, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:06', '2019-10-28 20:29:06'),
(1143, 156, 39, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:29:07', '2019-10-28 20:29:07'),
(1144, 156, 39, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:08', '2019-10-28 20:29:08'),
(1145, 156, 41, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:12', '2019-10-28 20:29:12'),
(1146, 156, 41, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:14', '2019-10-28 20:29:14'),
(1147, 156, 41, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:29:16', '2019-10-28 20:29:16'),
(1148, 156, 40, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:17', '2019-10-28 20:29:17'),
(1149, 156, 40, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:29:18', '2019-10-28 20:29:18'),
(1150, 156, 40, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:20', '2019-10-28 20:29:20'),
(1151, 156, 54, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:24', '2019-10-28 20:29:24'),
(1152, 156, 54, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:29:25', '2019-10-28 20:29:25'),
(1153, 156, 54, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:27', '2019-10-28 20:29:27'),
(1154, 156, 13, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:56', '2019-10-28 20:29:56'),
(1155, 156, 13, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:29:57', '2019-10-28 20:29:57'),
(1156, 156, 13, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:29:58', '2019-10-28 20:29:58'),
(1157, 156, 10, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:29:59', '2019-10-28 20:29:59'),
(1158, 156, 10, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:30:01', '2019-10-28 20:30:01'),
(1159, 156, 15, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:30:02', '2019-10-28 20:30:02'),
(1160, 156, 15, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:30:03', '2019-10-28 20:30:03'),
(1161, 156, 15, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:30:03', '2019-10-28 20:30:03'),
(1162, 156, 38, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:30:06', '2019-10-28 20:30:06'),
(1163, 156, 38, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:30:06', '2019-10-28 20:30:06'),
(1164, 156, 38, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:30:07', '2019-10-28 20:30:07'),
(1165, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:42:35', '2019-10-28 20:42:35'),
(1166, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:42:35', '2019-10-28 20:42:35'),
(1167, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:42:36', '2019-10-28 20:42:36'),
(1168, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:42:36', '2019-10-28 20:42:36'),
(1169, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:42:40', '2019-10-28 20:42:40'),
(1170, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:42:43', '2019-10-28 20:42:43'),
(1171, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:42:44', '2019-10-28 20:42:44'),
(1172, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:42:46', '2019-10-28 20:42:46'),
(1173, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:42:47', '2019-10-28 20:42:47'),
(1174, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:42:52', '2019-10-28 20:42:52'),
(1175, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:42:52', '2019-10-28 20:42:52'),
(1176, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:42:52', '2019-10-28 20:42:52'),
(1177, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:42:54', '2019-10-28 20:42:54'),
(1178, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:42:54', '2019-10-28 20:42:54'),
(1179, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:42:56', '2019-10-28 20:42:56'),
(1180, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:42:57', '2019-10-28 20:42:57'),
(1181, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:42:58', '2019-10-28 20:42:58'),
(1182, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:02', '2019-10-28 20:43:02'),
(1183, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:43:11', '2019-10-28 20:43:11'),
(1184, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:12', '2019-10-28 20:43:12'),
(1185, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:12', '2019-10-28 20:43:12'),
(1186, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:37', '2019-10-28 20:43:37'),
(1187, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:43:37', '2019-10-28 20:43:37'),
(1188, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:38', '2019-10-28 20:43:38'),
(1189, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:39', '2019-10-28 20:43:39'),
(1190, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:39', '2019-10-28 20:43:39'),
(1191, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:42', '2019-10-28 20:43:42'),
(1192, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:43:43', '2019-10-28 20:43:43'),
(1193, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:46', '2019-10-28 20:43:46'),
(1194, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:46', '2019-10-28 20:43:46'),
(1195, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:43:47', '2019-10-28 20:43:47'),
(1196, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:51', '2019-10-28 20:43:51'),
(1197, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:43:51', '2019-10-28 20:43:51'),
(1198, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:52', '2019-10-28 20:43:52'),
(1199, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:54', '2019-10-28 20:43:54'),
(1200, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:56', '2019-10-28 20:43:56'),
(1201, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:43:57', '2019-10-28 20:43:57'),
(1202, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:43:58', '2019-10-28 20:43:58'),
(1203, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:43:59', '2019-10-28 20:43:59'),
(1204, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:44:03', '2019-10-28 20:44:03'),
(1205, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:44:06', '2019-10-28 20:44:06'),
(1206, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:44:10', '2019-10-28 20:44:10'),
(1207, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:44:12', '2019-10-28 20:44:12'),
(1208, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:44:13', '2019-10-28 20:44:13'),
(1209, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:44:14', '2019-10-28 20:44:14'),
(1210, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:44:17', '2019-10-28 20:44:17'),
(1211, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:44:18', '2019-10-28 20:44:18'),
(1212, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:44:19', '2019-10-28 20:44:19'),
(1213, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:46:40', '2019-10-28 20:46:40'),
(1214, 156, 0, 49, 'New Video Uploaded', 'Ταβέρνα Πινάκιο', 'upload_video', 0, '2019-10-28 20:53:31', '2019-10-28 20:53:31'),
(1215, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:55:16', '2019-10-28 20:55:16'),
(1216, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:55:18', '2019-10-28 20:55:18'),
(1217, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:55:21', '2019-10-28 20:55:21'),
(1218, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 20:55:24', '2019-10-28 20:55:24'),
(1219, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:55:25', '2019-10-28 20:55:25'),
(1220, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:55:25', '2019-10-28 20:55:25'),
(1221, 156, 0, 50, 'New Video Uploaded', 'Αυτά μόνο εδώ θα τα βρείτε !!!', 'upload_video', 0, '2019-10-28 20:56:42', '2019-10-28 20:56:42'),
(1222, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 20:57:01', '2019-10-28 20:57:01'),
(1223, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 20:57:04', '2019-10-28 20:57:04'),
(1224, 156, 0, 51, 'New Video Uploaded', 'Δημιουργούμε από την παράδοση!!!', 'upload_video', 0, '2019-10-28 20:58:05', '2019-10-28 20:58:05'),
(1225, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 21:00:39', '2019-10-28 21:00:39'),
(1226, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 21:00:39', '2019-10-28 21:00:39'),
(1227, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 21:00:40', '2019-10-28 21:00:40'),
(1228, 55, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-28 21:00:42', '2019-10-28 21:00:42'),
(1229, 55, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-28 21:00:43', '2019-10-28 21:00:43'),
(1230, 55, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-28 21:00:44', '2019-10-28 21:00:44'),
(1231, 156, 14, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-10-28 21:50:26', '2019-10-28 21:50:26'),
(1232, 156, 156, 0, 'Subscribe with Advertise', 'You subscribed to daily product advertise.', 'seller_subscription', 1, '2019-10-28 22:57:39', '2019-10-28 22:57:39'),
(1233, 156, 15, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-10-29 00:22:56', '2019-10-29 00:22:56'),
(1234, 156, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:34:47', '2019-10-29 02:34:47'),
(1235, 156, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:34:48', '2019-10-29 02:34:48'),
(1236, 156, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:34:49', '2019-10-29 02:34:49'),
(1237, 156, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:34:50', '2019-10-29 02:34:50'),
(1238, 156, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:34:51', '2019-10-29 02:34:51'),
(1239, 156, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:34:52', '2019-10-29 02:34:52'),
(1240, 156, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:34:53', '2019-10-29 02:34:53'),
(1241, 156, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:34:54', '2019-10-29 02:34:54'),
(1242, 156, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:34:55', '2019-10-29 02:34:55'),
(1243, 156, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:34:58', '2019-10-29 02:34:58'),
(1244, 156, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:34:59', '2019-10-29 02:34:59'),
(1245, 156, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:00', '2019-10-29 02:35:00'),
(1246, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:06', '2019-10-29 02:35:06'),
(1247, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:07', '2019-10-29 02:35:07'),
(1248, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:08', '2019-10-29 02:35:08'),
(1249, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:10', '2019-10-29 02:35:10'),
(1250, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:10', '2019-10-29 02:35:10'),
(1251, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:13', '2019-10-29 02:35:13'),
(1252, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:15', '2019-10-29 02:35:15'),
(1253, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:16', '2019-10-29 02:35:16'),
(1254, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:20', '2019-10-29 02:35:20'),
(1255, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:22', '2019-10-29 02:35:22'),
(1256, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:35', '2019-10-29 02:35:35'),
(1257, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:36', '2019-10-29 02:35:36'),
(1258, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:36', '2019-10-29 02:35:36'),
(1259, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:37', '2019-10-29 02:35:37'),
(1260, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:37', '2019-10-29 02:35:37'),
(1261, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:38', '2019-10-29 02:35:38'),
(1262, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:39', '2019-10-29 02:35:39'),
(1263, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:39', '2019-10-29 02:35:39'),
(1264, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:40', '2019-10-29 02:35:40'),
(1265, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:41', '2019-10-29 02:35:41'),
(1266, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:42', '2019-10-29 02:35:42'),
(1267, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:43', '2019-10-29 02:35:43'),
(1268, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:44', '2019-10-29 02:35:44'),
(1269, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:44', '2019-10-29 02:35:44'),
(1270, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:35:45', '2019-10-29 02:35:45'),
(1271, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:35:45', '2019-10-29 02:35:45'),
(1272, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:35:46', '2019-10-29 02:35:46'),
(1273, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:06', '2019-10-29 02:36:06'),
(1274, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:06', '2019-10-29 02:36:06'),
(1275, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:07', '2019-10-29 02:36:07'),
(1276, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:08', '2019-10-29 02:36:08'),
(1277, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:09', '2019-10-29 02:36:09'),
(1278, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:09', '2019-10-29 02:36:09'),
(1279, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:13', '2019-10-29 02:36:13'),
(1280, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:15', '2019-10-29 02:36:15'),
(1281, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:16', '2019-10-29 02:36:16'),
(1282, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:18', '2019-10-29 02:36:18'),
(1283, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:22', '2019-10-29 02:36:22'),
(1284, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:24', '2019-10-29 02:36:24'),
(1285, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:24', '2019-10-29 02:36:24'),
(1286, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:26', '2019-10-29 02:36:26'),
(1287, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:27', '2019-10-29 02:36:27'),
(1288, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:27', '2019-10-29 02:36:27'),
(1289, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:30', '2019-10-29 02:36:30'),
(1290, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:31', '2019-10-29 02:36:31'),
(1291, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:34', '2019-10-29 02:36:34'),
(1292, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:34', '2019-10-29 02:36:34'),
(1293, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:35', '2019-10-29 02:36:35'),
(1294, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:36', '2019-10-29 02:36:36'),
(1295, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:36', '2019-10-29 02:36:36'),
(1296, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:37', '2019-10-29 02:36:37'),
(1297, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:38', '2019-10-29 02:36:38'),
(1298, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:39', '2019-10-29 02:36:39'),
(1299, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:39', '2019-10-29 02:36:39'),
(1300, 73, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 02:36:40', '2019-10-29 02:36:40'),
(1301, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:36:42', '2019-10-29 02:36:42'),
(1302, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:36:45', '2019-10-29 02:36:45'),
(1303, 73, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 02:37:07', '2019-10-29 02:37:07'),
(1304, 73, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 02:37:14', '2019-10-29 02:37:14'),
(1305, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 22:55:03', '2019-10-29 22:55:03'),
(1306, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 22:55:05', '2019-10-29 22:55:05'),
(1307, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:02:21', '2019-10-29 23:02:21'),
(1308, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:02:23', '2019-10-29 23:02:23'),
(1309, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:02:25', '2019-10-29 23:02:25'),
(1310, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:02:28', '2019-10-29 23:02:28'),
(1311, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:02:29', '2019-10-29 23:02:29'),
(1312, 22, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 23:02:32', '2019-10-29 23:02:32'),
(1313, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:10:57', '2019-10-29 23:10:57'),
(1314, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:10:58', '2019-10-29 23:10:58'),
(1315, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:00', '2019-10-29 23:11:00'),
(1316, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:11:00', '2019-10-29 23:11:00'),
(1317, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:11:02', '2019-10-29 23:11:02'),
(1318, 22, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 23:11:02', '2019-10-29 23:11:02'),
(1319, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:03', '2019-10-29 23:11:03'),
(1320, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:24', '2019-10-29 23:11:24'),
(1321, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:24', '2019-10-29 23:11:24'),
(1322, 22, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 23:11:25', '2019-10-29 23:11:25'),
(1323, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:32', '2019-10-29 23:11:32'),
(1324, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:33', '2019-10-29 23:11:33'),
(1325, 22, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 23:11:34', '2019-10-29 23:11:34'),
(1326, 22, 156, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-10-29 23:11:37', '2019-10-29 23:11:37'),
(1327, 22, 156, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-10-29 23:11:40', '2019-10-29 23:11:40'),
(1328, 22, 156, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-10-29 23:12:05', '2019-10-29 23:12:05'),
(1329, 22, 77, 1, 'Ellin Bought product', 'test', 'buy_product', 1, '2019-11-14 14:44:18', '2019-11-14 14:44:18'),
(1330, 77, 22, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-11-14 14:44:18', '2019-11-14 14:44:18'),
(1331, 22, 77, 1, 'Ellin Bought product', 'test', 'buy_product', 1, '2019-11-14 14:44:21', '2019-11-14 14:44:21'),
(1332, 77, 22, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-11-14 14:44:21', '2019-11-14 14:44:21'),
(1333, 22, 77, 1, 'Ellin Bought product', 'test', 'buy_product', 1, '2019-11-14 14:44:22', '2019-11-14 14:44:22'),
(1334, 77, 22, 1, 'Paid product', 'Bought test(300)', 'buy_product', 1, '2019-11-14 14:44:22', '2019-11-14 14:44:22'),
(1335, 143, 143, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-22 02:03:22', '2019-11-22 02:03:22'),
(1336, 143, 143, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-22 02:03:24', '2019-11-22 02:03:24'),
(1337, 143, 143, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-22 02:03:26', '2019-11-22 02:03:26'),
(1338, 143, 143, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-22 02:03:30', '2019-11-22 02:03:30'),
(1339, 143, 143, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-22 02:03:32', '2019-11-22 02:03:32'),
(1340, 143, 143, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-22 02:03:34', '2019-11-22 02:03:34'),
(1341, 85, 0, 916, 'New Image Uploaded', 'Parisshoes', 'upload_image', 0, '2019-11-23 15:03:47', '2019-11-23 15:03:47'),
(1342, 85, 0, 917, 'New Image Uploaded', 'Parisshoes', 'upload_image', 0, '2019-11-23 15:03:48', '2019-11-23 15:03:48'),
(1343, 85, 0, 918, 'New Image Uploaded', 'Μποτάκι λευκό', 'upload_image', 0, '2019-11-23 15:05:43', '2019-11-23 15:05:43'),
(1344, 85, 0, 919, 'New Image Uploaded', 'Μποτάκι κόκκινο', 'upload_image', 0, '2019-11-23 15:06:23', '2019-11-23 15:06:23'),
(1345, 85, 0, 920, 'New Image Uploaded', 'Μποτάκι πολύχρωμο', 'upload_image', 0, '2019-11-23 15:07:29', '2019-11-23 15:07:29'),
(1346, 85, 0, 921, 'New Image Uploaded', 'Μποτάκι καμελ', 'upload_image', 0, '2019-11-23 15:08:46', '2019-11-23 15:08:46'),
(1347, 85, 0, 922, 'New Image Uploaded', 'Μποτάκι μαύρο', 'upload_image', 0, '2019-11-23 15:09:44', '2019-11-23 15:09:44'),
(1348, 85, 0, 923, 'New Image Uploaded', 'Μποτάκι μπεζ φιδέ', 'upload_image', 0, '2019-11-23 15:10:41', '2019-11-23 15:10:41'),
(1349, 85, 0, 924, 'New Image Uploaded', 'Μποτάκι τιγρέ', 'upload_image', 0, '2019-11-23 15:11:25', '2019-11-23 15:11:25'),
(1350, 85, 0, 925, 'New Image Uploaded', 'Μποτάκι κόκκινο', 'upload_image', 0, '2019-11-23 15:18:09', '2019-11-23 15:18:09'),
(1351, 85, 0, 926, 'New Image Uploaded', 'Μποτάκι καμελ λεοπαρ', 'upload_image', 0, '2019-11-23 15:49:53', '2019-11-23 15:49:53'),
(1352, 85, 0, 927, 'New Image Uploaded', 'Μποτάκι καμελ φιδέ', 'upload_image', 0, '2019-11-23 15:50:36', '2019-11-23 15:50:36'),
(1353, 85, 0, 928, 'New Image Uploaded', 'Μποτάκι μαύρο', 'upload_image', 0, '2019-11-23 15:51:44', '2019-11-23 15:51:44'),
(1354, 85, 0, 929, 'New Image Uploaded', 'Μποτάκι τιγρέ', 'upload_image', 0, '2019-11-23 15:52:16', '2019-11-23 15:52:16');
INSERT INTO `notification` (`id`, `sender_id`, `receiver_id`, `content_id`, `title`, `content`, `type`, `public`, `created_at`, `updated_at`) VALUES
(1355, 85, 0, 930, 'New Image Uploaded', 'Μποτάκι ασπρόμαυρο', 'upload_image', 0, '2019-11-24 14:44:06', '2019-11-24 14:44:06'),
(1356, 85, 0, 931, 'New Image Uploaded', 'Μποτάκι κόκκινο μαύρο', 'upload_image', 0, '2019-11-24 14:44:45', '2019-11-24 14:44:45'),
(1357, 85, 0, 932, 'New Image Uploaded', 'Μποτάκι μαύρο άσπρο φιδέ', 'upload_image', 0, '2019-11-24 14:45:53', '2019-11-24 14:45:53'),
(1358, 85, 0, 933, 'New Image Uploaded', 'Μποτάκι άσπρο', 'upload_image', 0, '2019-11-24 14:46:22', '2019-11-24 14:46:22'),
(1359, 85, 0, 934, 'New Image Uploaded', 'Μποτάκι πολύχρωμο', 'upload_image', 0, '2019-11-24 14:47:02', '2019-11-24 14:47:02'),
(1360, 85, 0, 935, 'New Image Uploaded', 'Μποτάκι μπεζ φιδέ', 'upload_image', 0, '2019-11-24 14:47:32', '2019-11-24 14:47:32'),
(1361, 85, 0, 936, 'New Image Uploaded', 'Μποτάκι κόκκινο με ασπρόμαυρο τακούνι', 'upload_image', 0, '2019-11-24 14:48:18', '2019-11-24 14:48:18'),
(1362, 85, 0, 937, 'New Image Uploaded', 'Μποτάκι καμελ', 'upload_image', 0, '2019-11-24 14:48:58', '2019-11-24 14:48:58'),
(1363, 85, 0, 938, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1364, 85, 0, 939, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1365, 85, 0, 940, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1366, 85, 0, 941, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1367, 85, 0, 942, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1368, 85, 0, 943, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1369, 85, 0, 944, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1370, 85, 0, 945, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1371, 85, 0, 947, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1372, 85, 0, 946, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1373, 85, 0, 948, 'New Image Uploaded', 'Μποτάκι καμελ με μπεζ τακούνι', 'upload_image', 0, '2019-11-24 14:49:30', '2019-11-24 14:49:30'),
(1374, 85, 0, 949, 'New Image Uploaded', 'Μποτάκι μαύρο τιγρέ', 'upload_image', 0, '2019-11-24 14:50:06', '2019-11-24 14:50:06'),
(1375, 38, 38, 0, 'Add Points', 'Added 0.01', 'add_points', 1, '2019-11-25 20:53:50', '2019-11-25 20:53:50'),
(1376, 146, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:20:13', '2019-11-25 21:20:13'),
(1377, 146, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:20:33', '2019-11-25 21:20:33'),
(1378, 146, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:20:35', '2019-11-25 21:20:35'),
(1379, 146, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:20:45', '2019-11-25 21:20:45'),
(1380, 146, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:20:53', '2019-11-25 21:20:53'),
(1381, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:21:26', '2019-11-25 21:21:26'),
(1382, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:21:32', '2019-11-25 21:21:32'),
(1383, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:21:42', '2019-11-25 21:21:42'),
(1384, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:21:45', '2019-11-25 21:21:45'),
(1385, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:21:47', '2019-11-25 21:21:47'),
(1386, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:21:48', '2019-11-25 21:21:48'),
(1387, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:22:13', '2019-11-25 21:22:13'),
(1388, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:22:14', '2019-11-25 21:22:14'),
(1389, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:22:16', '2019-11-25 21:22:16'),
(1390, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:22:20', '2019-11-25 21:22:20'),
(1391, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:22:57', '2019-11-25 21:22:57'),
(1392, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:22:57', '2019-11-25 21:22:57'),
(1393, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:22:59', '2019-11-25 21:22:59'),
(1394, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:23:00', '2019-11-25 21:23:00'),
(1395, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:23:01', '2019-11-25 21:23:01'),
(1396, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:23:17', '2019-11-25 21:23:17'),
(1397, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:23:21', '2019-11-25 21:23:21'),
(1398, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:23:25', '2019-11-25 21:23:25'),
(1399, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:23:33', '2019-11-25 21:23:33'),
(1400, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:23:36', '2019-11-25 21:23:36'),
(1401, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:23:39', '2019-11-25 21:23:39'),
(1402, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:23:40', '2019-11-25 21:23:40'),
(1403, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:24:00', '2019-11-25 21:24:00'),
(1404, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:24:01', '2019-11-25 21:24:01'),
(1405, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:24:14', '2019-11-25 21:24:14'),
(1406, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:24:21', '2019-11-25 21:24:21'),
(1407, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:24:29', '2019-11-25 21:24:29'),
(1408, 55, 85, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-25 21:24:41', '2019-11-25 21:24:41'),
(1409, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:24:57', '2019-11-25 21:24:57'),
(1410, 55, 85, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-25 21:25:43', '2019-11-25 21:25:43'),
(1411, 55, 85, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-25 21:25:55', '2019-11-25 21:25:55'),
(1412, 159, 0, 950, 'New Image Uploaded', '1', 'upload_image', 0, '2019-11-28 14:58:41', '2019-11-28 14:58:41'),
(1413, 159, 0, 951, 'New Image Uploaded', '2', 'upload_image', 0, '2019-11-28 14:59:19', '2019-11-28 14:59:19'),
(1414, 159, 0, 952, 'New Image Uploaded', '3', 'upload_image', 0, '2019-11-28 14:59:37', '2019-11-28 14:59:37'),
(1415, 159, 0, 953, 'New Image Uploaded', '4', 'upload_image', 0, '2019-11-28 15:00:01', '2019-11-28 15:00:01'),
(1416, 159, 0, 954, 'New Image Uploaded', '5', 'upload_image', 0, '2019-11-28 15:00:24', '2019-11-28 15:00:24'),
(1417, 159, 0, 955, 'New Image Uploaded', '6', 'upload_image', 0, '2019-11-28 15:00:40', '2019-11-28 15:00:40'),
(1418, 159, 0, 956, 'New Image Uploaded', '7', 'upload_image', 0, '2019-11-28 15:00:58', '2019-11-28 15:00:58'),
(1419, 159, 0, 957, 'New Image Uploaded', '8', 'upload_image', 0, '2019-11-28 15:01:13', '2019-11-28 15:01:13'),
(1420, 159, 0, 958, 'New Image Uploaded', '9', 'upload_image', 0, '2019-11-28 15:01:28', '2019-11-28 15:01:28'),
(1421, 159, 0, 959, 'New Image Uploaded', '10', 'upload_image', 0, '2019-11-28 15:01:41', '2019-11-28 15:01:41'),
(1422, 159, 0, 960, 'New Image Uploaded', '11', 'upload_image', 0, '2019-11-28 15:01:56', '2019-11-28 15:01:56'),
(1423, 159, 0, 961, 'New Image Uploaded', '12', 'upload_image', 0, '2019-11-28 15:02:17', '2019-11-28 15:02:17'),
(1424, 159, 0, 962, 'New Image Uploaded', '13', 'upload_image', 0, '2019-11-28 15:02:35', '2019-11-28 15:02:35'),
(1425, 159, 0, 963, 'New Image Uploaded', '14', 'upload_image', 0, '2019-11-28 15:02:48', '2019-11-28 15:02:48'),
(1426, 159, 0, 964, 'New Image Uploaded', '15', 'upload_image', 0, '2019-11-28 15:03:02', '2019-11-28 15:03:02'),
(1427, 159, 0, 965, 'New Image Uploaded', '16', 'upload_image', 0, '2019-11-28 15:03:14', '2019-11-28 15:03:14'),
(1428, 159, 0, 966, 'New Image Uploaded', '17', 'upload_image', 0, '2019-11-28 15:03:27', '2019-11-28 15:03:27'),
(1429, 159, 0, 967, 'New Image Uploaded', '18', 'upload_image', 0, '2019-11-28 15:03:41', '2019-11-28 15:03:41'),
(1430, 159, 0, 968, 'New Image Uploaded', '19', 'upload_image', 0, '2019-11-28 15:03:59', '2019-11-28 15:03:59'),
(1431, 159, 0, 969, 'New Image Uploaded', '20', 'upload_image', 0, '2019-11-28 15:04:21', '2019-11-28 15:04:21'),
(1432, 159, 0, 970, 'New Image Uploaded', '21', 'upload_image', 0, '2019-11-28 15:04:37', '2019-11-28 15:04:37'),
(1433, 159, 0, 971, 'New Image Uploaded', '22', 'upload_image', 0, '2019-11-28 15:04:50', '2019-11-28 15:04:50'),
(1434, 159, 0, 972, 'New Image Uploaded', '23', 'upload_image', 0, '2019-11-28 15:05:09', '2019-11-28 15:05:09'),
(1435, 159, 0, 973, 'New Image Uploaded', '24', 'upload_image', 0, '2019-11-28 15:05:22', '2019-11-28 15:05:22'),
(1436, 159, 0, 974, 'New Image Uploaded', '25', 'upload_image', 0, '2019-11-28 15:05:36', '2019-11-28 15:05:36'),
(1437, 159, 0, 975, 'New Image Uploaded', '26', 'upload_image', 0, '2019-11-28 15:05:51', '2019-11-28 15:05:51'),
(1438, 159, 0, 976, 'New Image Uploaded', '27', 'upload_image', 0, '2019-11-28 15:06:10', '2019-11-28 15:06:10'),
(1439, 159, 0, 977, 'New Image Uploaded', '28', 'upload_image', 0, '2019-11-28 15:06:32', '2019-11-28 15:06:32'),
(1440, 159, 0, 978, 'New Image Uploaded', '29', 'upload_image', 0, '2019-11-28 15:06:47', '2019-11-28 15:06:47'),
(1441, 159, 0, 979, 'New Image Uploaded', '30', 'upload_image', 0, '2019-11-28 15:07:03', '2019-11-28 15:07:03'),
(1442, 159, 0, 980, 'New Image Uploaded', '31', 'upload_image', 0, '2019-11-28 15:07:19', '2019-11-28 15:07:19'),
(1443, 159, 0, 981, 'New Image Uploaded', '32', 'upload_image', 0, '2019-11-28 15:07:31', '2019-11-28 15:07:31'),
(1444, 159, 0, 982, 'New Image Uploaded', '33', 'upload_image', 0, '2019-11-28 15:07:46', '2019-11-28 15:07:46'),
(1445, 159, 0, 983, 'New Image Uploaded', '34', 'upload_image', 0, '2019-11-28 15:08:02', '2019-11-28 15:08:02'),
(1446, 159, 0, 984, 'New Image Uploaded', '35', 'upload_image', 0, '2019-11-28 15:08:20', '2019-11-28 15:08:20'),
(1447, 159, 0, 985, 'New Image Uploaded', '36', 'upload_image', 0, '2019-11-28 15:08:33', '2019-11-28 15:08:33'),
(1448, 159, 0, 986, 'New Image Uploaded', '37', 'upload_image', 0, '2019-11-28 15:08:47', '2019-11-28 15:08:47'),
(1449, 159, 0, 987, 'New Image Uploaded', '38', 'upload_image', 0, '2019-11-28 15:09:05', '2019-11-28 15:09:05'),
(1450, 159, 0, 988, 'New Image Uploaded', '39', 'upload_image', 0, '2019-11-28 15:09:19', '2019-11-28 15:09:19'),
(1451, 159, 0, 989, 'New Image Uploaded', '40', 'upload_image', 0, '2019-11-28 15:09:32', '2019-11-28 15:09:32'),
(1452, 159, 0, 990, 'New Image Uploaded', '41', 'upload_image', 0, '2019-11-28 15:09:45', '2019-11-28 15:09:45'),
(1453, 159, 159, 0, 'Subscribe with Advertise', 'You subscribed to daily product advertise.', 'seller_subscription', 1, '2019-11-28 15:15:52', '2019-11-28 15:15:52'),
(1454, 55, 159, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-28 16:07:55', '2019-11-28 16:07:55'),
(1455, 55, 159, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-28 16:07:59', '2019-11-28 16:07:59'),
(1456, 55, 159, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-28 16:07:59', '2019-11-28 16:07:59'),
(1457, 55, 159, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-28 16:08:01', '2019-11-28 16:08:01'),
(1458, 55, 159, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-28 16:08:05', '2019-11-28 16:08:05'),
(1459, 55, 159, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-28 16:08:09', '2019-11-28 16:08:09'),
(1460, 55, 159, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-28 16:08:09', '2019-11-28 16:08:09'),
(1461, 55, 159, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-28 16:08:09', '2019-11-28 16:08:09'),
(1462, 55, 159, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-28 16:08:10', '2019-11-28 16:08:10'),
(1463, 55, 159, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-28 16:08:11', '2019-11-28 16:08:11'),
(1464, 55, 159, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-28 16:08:11', '2019-11-28 16:08:11'),
(1465, 55, 159, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-28 16:08:12', '2019-11-28 16:08:12'),
(1466, 55, 159, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-28 16:08:14', '2019-11-28 16:08:14'),
(1467, 55, 159, 0, 'Add Points', 'Added 0.04', 'add_points', 1, '2019-11-28 16:08:14', '2019-11-28 16:08:14'),
(1468, 55, 159, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-28 16:08:15', '2019-11-28 16:08:15'),
(1469, 55, 159, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-28 16:08:16', '2019-11-28 16:08:16'),
(1470, 55, 159, 0, 'Add Points', 'Added 0.02', 'add_points', 1, '2019-11-28 16:08:17', '2019-11-28 16:08:17'),
(1471, 55, 159, 0, 'Add Points', 'Added 0.03', 'add_points', 1, '2019-11-28 16:08:17', '2019-11-28 16:08:17');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `promote` tinyint(4) NOT NULL,
  `points` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_month` int(11) NOT NULL,
  `ellin` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shares` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `markimg_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `name`, `img_url`, `cost`, `promote`, `points`, `description`, `payment_description`, `n_month`, `ellin`, `type`, `created_at`, `updated_at`, `shares`, `markimg_url`) VALUES
(1, 'AμεA', 'img/package-img/1..png', 0, 0, 0, 'Ο κάτοχος της Μπλε Κάρτας A.με.Α/ΑμΕΑ έχει Δωρεάν δικαίωμα συμμετοχής στο Εκπτωτικό Πλάνο της DIASKEDAZW, για να απολαμβάνει εκπτώσεις από τις Συμβαλλόμενες Εταιρείες και οποιεσδήποτε άλλες υπηρεσίες, μετά από συνεννόηση με το Τμήμα Υπηρεσιών στο 7000 7729 και νοουμένου ότι υπάρχει διαθεσιμότητα.\r\n\r\nΗ DIASKEDAZW έχει λάβει την απόφαση εξ αρχής ότι ένα πολύ σημαντικό μέρος των κερδών της, να το χρησιμοποιήσει ξεκάθαρα στον τομέα της φιλανθρωπίας με απώτερο σκοπό να βοηθήσει έμπρακτα τις ευπαθείς ομάδες ανθρώπων που αντιμετωπίζουν σοβαρά προβλήματα υγείας αλλά και οικονομικά θέματα. \r\n\r\nΕπίσης, ο κάτοχος της εν λόγω κάρτας, μπορεί να αγοράσει ανά πάσα στιγμή Μετοχές της εταιρείας. Επίσης, μπορεί να αποκτήσει άμεσα ΕΛΛΗΝ TOKEN, τα οποία μπορεί να προμηθευτεί και να εξαργυρώσει άμεσα μέσω των Συνεργατών της DIASKEDAZW ή μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. \r\n\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 0, 0, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '', 'img/package-img/ameac.jpg'),
(2, 'ΧΑΛΚΙΝΟ', 'img/package-img/2..png', 147, 0, 70, 'Εισαγωγικό πακέτο αγοράς της Ασημένιας Κάρτας DIASKEDAZW.\r\nΜε την αγορά του εν λόγω πακέτου αξίας 147 Ευρώ, το Μέλος/Συνεργάτης μπορεί να αγοράσει ανά πάσα στιγμή μετοχές της DIASKEDAZW. Μέσα από αυτή την Συνεργασία, έχει την δυνατότητα να απολαμβάνει ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 1 Μηνός, όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και της ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΧΑΛΚΙΝΟ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 70 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 1, 70, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '', 'img/package-img/silverc.jpg'),
(3, 'ΑΣΗΜΕΝΙΟ', 'img/package-img/3..png', 256, 0, 120, 'Εισαγωγικό πακέτο αγοράς της Ασημένιας Κάρτας DIASKEDAZW.\r\nΜε την αγορά του εν λόγω πακέτου αξίας 256 Ευρώ, το Μέλος/Συνεργάτης μπορεί να αγοράσει ανά πάσα στιγμή μετοχές της DIASKEDAZW. Μέσα από αυτή την Συνεργασία, έχει την δυνατότητα να απολαμβάνει ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 1 Μηνός, όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και της ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΑΣΗΜΕΝΙΟ ΕΛΛΗΝ  πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 120 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 1, 120, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '', 'img/package-img/silverc.jpg'),
(6, 'ΡΟΥΜΠΙΝΙ', 'img/package-img/6..png', 1987, 0, 990, 'Εισαγωγικό πακέτο αγοράς της Μαύρης Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 1.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 997 μετοχές της DIASKEDAZW. Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 18 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΡΟΥΜΠΙΝΙ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 990 ΕΛΛΗΝ ΤΟΚΕΝ ], τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 18, 990, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '997 μετοχές', 'img/package-img/blackc.jpg'),
(7, 'ΣΜΑΡΑΓΔΙ', 'img/package-img/7..png', 3987, 0, 1320, 'Εισαγωγικό πακέτο αγοράς της Μαύρης Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 3.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 2.667 μετοχές της DIASKEDAZW.  Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 24 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΣΜΑΡΑΓΔΙ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 1.320  ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 24, 1320, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '2667 μετοχές', 'img/package-img/blackc.jpg'),
(8, 'ΡΟΔΙΟ', 'img/package-img/8..png', 6987, 0, 1650, 'Εισαγωγικό πακέτο αγοράς της Χρυσής Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 6.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 5.337 μετοχές της DIASKEDAZW. Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 30 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΠΛΑΤΙΝΕΝΙΟ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 1.650  ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 30, 1650, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '5337 μετοχές', 'img/package-img/goldc.jpg'),
(9, 'ΧΡΥΣΟ', 'img/package-img/9..png', 12987, 0, 3960, 'Εισαγωγικό πακέτο αγοράς της Χρυσής Κάρτας DIASKEDAZW .\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 12.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 11.007 μετοχές της DIASKEDAZW. Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 36 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\n\r\nΕπίσης, το πακέτο ΧΡΥΣΟ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 3.960 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 36, 3960, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '11007 μετοχές', 'img/package-img/goldc.jpg'),
(10, 'ΠΛΟΥΤΩΝΙΟ', 'img/package-img/10..png', 20987, 0, 6930, 'Εισαγωγικό πακέτο αγοράς της Χρυσής Κάρτας DIASKEDAZW.\r\nΜε την αγορά του εν λόγω πακέτου αξίας 20.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 18 667 μετοχές της DIASKEDAZW.  Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 42 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΠΛΟΥΤΩΝΙΟ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 6.930 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 42, 6930, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '18677 μετοχές', 'img/package-img/goldc.jpg'),
(11, 'ΔΙΑΜΑΝΤΙ', 'img/package-img/11..png', 55987, 0, 10560, 'Εισαγωγικό πακέτο αγοράς της Χρυσής Κάρτας DIASKEDAZW.\r\nΜε την αγορά του εν λόγω πακέτου αξίας 55.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 53 347 μετοχές της DIASKEDAZW. Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 48 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΔΙΑΜΑΝΤΙ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 10.560 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 48, 10560, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '53347 μετοχές', 'img/package-img/goldc.jpg'),
(12, 'ΑΝΤΙΥΛΗ', 'img/package-img/12..png', 150987, 0, 16500, 'Εισαγωγικό πακέτο αγοράς της Χρυσής Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 150.987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 147 687 μετοχές της DIASKEDAZW. Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 60 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΑΝΤΙΥΛΗ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 16.500 ΕΛΛΗΝ TOKEN, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 60, 16500, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '147687 μετοχές', 'img/package-img/goldc.jpg'),
(13, 'ΚΑΡΤΑ ΕΚΠΤΩΣΕΩΝ', 'img/package-img/freenew.png', 0, 1, 0, 'ΔΩΡΕΑΝ Μπλε Κάρτα Εκπτώσεων (γαλάζια) \r\n\r\nΟ κάτοχος της εν λόγω κάρτας μπορεί να απολαμβάνει αποκλειστικές εκπτώσεις και προσφορές από τις Συμβαλλόμενες Εταιρείες αλλά και δωρεάν υπηρεσίες από τους Συνεργάτες της DIASKEDAZW, μέσα από την ιστοσελίδα. \r\n\r\nΕπίσης μπορεί να αγοράσει ανά πάσα στιγμή οποιαδήποτε κάρτα της εταιρείας και να αποκτήσει άμεσα ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να εξαργυρώσει μέσω των Συνεργατών της DIASKEDAZW ή μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. \r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 0, 0, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '', 'img/package-img/bluec.jpg'),
(14, 'ΕΙΣΑΓΩΓΙΚΟ ', 'img/package-img/silvernew.png', 165, 1, 0, 'Εισαγωγικό Πακέτο Μέλους της Ασημένιας Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 165 Ευρώ, το Μέλος μπορεί να αγοράσει ανά πάσα στιγμή μετοχές της DIASKEDAZW. Μέσα από αυτή την Συνεργασία, έχει την δυνατότητα να απολαμβάνει ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 3 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και της ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το ΕΙΣΑΓΩΓΙΚΟ ΠΑΚΕΤΟ ΜΕΛΟΥΣ, πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος). ΕΛΛΗΝ ΤΟΚΕΝ τα οποία μπορεί να προμηθευτεί και να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 3, 0, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '', 'img/package-img/silverc.jpg'),
(15, 'ΠΡΟΩΘΗΤΙΚΟ', 'img/package-img/goldnew.png', 350, 1, 0, 'Προωθητικό Πακέτο Μέλους της Ασημένιας Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 350 Ευρώ, το Μέλος μπορεί να αγοράσει ανά πάσα στιγμή μετοχές της DIASKEDAZW. Μέσα από αυτή την Συνεργασία, έχει την δυνατότητα να απολαμβάνει ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 3 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και της ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το ΠΡΟΩΘΗΤΙΚΟ ΠΑΚΕΤΟ ΜΕΛΟΥΣ, πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 185 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n\r\n\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 3, 185, 0, '2019-03-29 14:23:58', '2019-03-29 14:23:58', '', 'img/package-img/silverc.jpg'),
(17, 'ΖΑΦΕΙΡΙ', 'img/package-img/green.png', 987, 1, 250, 'Εισαγωγικό πακέτο αγοράς της Μαύρης Κάρτας DIASKEDAZW.\r\n\r\nΜε την αγορά του εν λόγω πακέτου αξίας 987 Ευρώ, το Μέλος/Συνεργάτης αποκτά 77 μετοχές της DIASKEDAZW. Ο Μέτοχος έχει την δυνατότητα να απολαμβάνει χρονιαία μερίσματα από τα πιθανά καθαρά έσοδα της εταιρείας (αναλόγως του αριθμού των μετοχών που κατέχει), ως επίσης και άλλα ωφελήματα που έχουν σχέση με την δικτυακή ανάπτυξη της εταιρείας (για περίοδο 12 Μηνών), όπως προμήθειες και το πλήρες πλάνο του Mall Υπηρεσιών της DIASKEDAZW. Έτσι, ο Συνεργάτης αποκτά την δυνατότητα δημιουργίας παθητικού εισοδήματος μέσα από τους τομείς των εργασιών και ανάπτυξης της DIASKEDAZW από την παγκόσμια αγορά.\r\n\r\nΕπίσης, το πακέτο ΖΑΦΕΙΡΙ ΕΛΛΗΝ πέραν από την δυνατότητα δημιουργίας μηνιαίων εισοδημάτων παρέχει επίσης στον κάτοχο του κάτι πολύ πιο σημαντικό, τα ΕΛΛΗΝ ΤΟΚΕΝ (την συναλλαγή του Μέλλοντος) όπου αποκτά 250 ΕΛΛΗΝ ΤΟΚΕΝ, τα οποία μπορεί να τα εξαργυρώσει άμεσα είτε μέσω των Συνεργατών της DIASKEDAZW, είτε μέσω των Συμβαλλόμενων επιχειρήσεων, όπως φαίνονται μέσα από την ιστοσελίδα. Μέσα από ειδικές διαδικασίες η DIASKEDAZW μπορεί επίσης να εξαργυρώσει τα ΕΛΛΗΝ ΤΟΚΕΝ.\r\n', 'Για προσωρινό διάστημα, η αγορά πακέτων μέσω κάρτας στο διαδίκτυο δεν είναι διαθέσιμη. \r\nΠροχωρήστε απευθείας στην “ΑΠΟΣΤΟΛΗ”.\r\n', 12, 250, 0, '2019-05-11 14:13:53', '2019-05-11 14:13:53', '77 μετοχες', 'img/package-img/blackc.jpg'),
(18, '1 ΤΟΚΕΝ', 'img/package-img/ellinbuy.png', 1, 1, 1, 'Με τα ellin points', 'asdf', 0, 1, 1, '2019-07-03 05:05:36', '2019-07-03 05:05:36', 'Πακέτο 1', 'img/package-img/ellinbuy.png'),
(19, '100 ΤΟΚΕΝ', 'img/package-img/ellinbuy.png', 100, 1, 100, '', '', 0, 100, 1, '2019-07-03 10:05:55', '2019-07-03 10:05:55', 'Πακέτο 2', ''),
(20, '200 ΤΟΚΕΝ', 'img/package-img/ellinbuy.png', 200, 1, 200, '', '', 0, 200, 1, '2019-07-03 10:27:27', '2019-07-03 10:27:27', 'Πακέτο 3', ''),
(21, '1000 ΤΟΚΕΝ', 'img/package-img/ellinbuy.png', 1000, 1, 1000, '', '', 0, 1000, 1, '2019-07-03 10:31:32', '2019-07-03 10:31:32', 'Πακέτο 4', '');

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `fullimg_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `say` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `promote_visitor_video_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `promote_member_video_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `profilevideo_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `partner_id`, `fullimg_url`, `say`, `category_id`, `category_name`, `promote_visitor_video_url`, `promote_member_video_url`, `profilevideo_url`) VALUES
(1, 10, 'img/bg-img/chriskop.png', 'Διασκεδάζω γιατί θέλω να ζώ!', 1, 'Social Μάρκετινγκ', '', '', ''),
(2, 13, 'img/bg-img/nontaskop.png', 'Αλλάξτε τον τρόπο που βλέπετε τα πράγματα και τα πράγματα που βλέπετε θα αρχίσουν να αλλάζουν. ', 2, 'Βοτανολόγος', 'videos/upload/131561580348.mp4', '', 'videos/upload/hinontas.mp4'),
(4, 14, 'img/bg-img/aggelikikopella.png', 'Σύντομα κοντά σας.', 3, 'Life Coach', 'videos/upload/141561914652.mp4', '', 'videos/upload/hiaggeliki.mp4'),
(6, 38, 'img/bg-img/dimitiskop.png', 'Τα λόγια, δεν είναι εφικτό να μοιάζουνε σαν πράξεις...\r\nΜα τα γραπτά όμως εδώ, φρόντισε να τα ψάξεις...!!!', 5, 'Αθλητική Επιστήμη ', 'videos/upload/381561594910.mp4', '', 'videos/upload/hidimitri.mp4'),
(5, 15, 'img/bg-img/elenadown.png', 'Βρες την εσωτερική σου δύναμη κα απόλαυσε κάθε στιγμή της ζωής σου!', 4, 'Life Coach', '', '', ''),
(7, 39, 'img/bg-img/lianakop.png', 'Your Life Coach to help you through life\'s challenges!', 6, 'Life Coach', 'videos/upload/helloliana.mp4\r\n', '', 'videos/upload/hiliana2.mp4'),
(8, 40, 'img/bg-img/kallianikopella2.png', 'Ο καθένας είναι υπεύθυνος για τον εαυτό του.', 7, 'Yoga - Διαλογισμός', 'videos/upload/401561914427.mp4', '', 'videos/upload/401561854940.mp4 '),
(9, 41, 'img/bg-img/korellikop.png', '', 8, 'Επιχειρηματικά', 'videos/upload/411561839104.mp4 ', '', 'videos/upload/hikorelli.mp4'),
(10, 54, 'img/bg-img/hristinakop.png', 'Σύντομα κοντά σας.', 9, 'Life Coach', 'videos/upload/541564338373.mp4', '', 'videos/upload/541564338403.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(9, 'coffeetree@diaskedazwdiscounts.com', '$2y$10$7FFPQsla75eN1CXg6TZ1WO6rcOy4gTXVOo8Ab51mrNkM/i/CCdqIy', '2019-10-08 06:52:40', NULL),
(10, 'admin1@diaskedazw.com', '$2y$10$j5hbqBdFkOknJGc8Re/WlOpaOrxB9fOI4YxCP9kMnmUG5htMhuOfC', '2019-10-20 00:35:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_img` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `colors` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `overview` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `user_id`, `product_name`, `product_img`, `product_price`, `product_description`, `category_id`, `colors`, `size`, `overview`, `created_at`, `updated_at`) VALUES
(1, 77, 'test', 'images/product/product221563634686.jfif', 300, 'This is a test', 1, '[]', '[]', '[\"images/overview/0221563634727.jfif\"]', '2019-07-20 14:58:59', '2019-07-29 02:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`) VALUES
(1, 'Clothes');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) UNSIGNED NOT NULL,
  `img_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `img_url`, `cost`, `title`, `description`) VALUES
(1, 'icon-mo-Football', 30, 'Football', 'Teaching Sports'),
(2, 'icon-mo-Psychology', 30, 'Psychology', 'Teaching Sports'),
(3, 'icon-mo-Sports_Coach', 30, 'COach', 'Teaching Sports'),
(4, 'icon-mo-Sports_Equipment', 30, 'Equipment', 'Teaching Sports'),
(5, 'icon-mo-Sports-apparel', 30, 'apparel', 'Teaching Sports'),
(6, 'icon-mo-Sports_Tennis', 50, 'tennis', 'Teaching Sports');

-- --------------------------------------------------------

--
-- Table structure for table `service_user`
--

CREATE TABLE `service_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_user`
--

INSERT INTO `service_user` (`id`, `user_id`, `service_id`, `updated_at`, `created_at`) VALUES
(1, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 10, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 12, 6, '2019-03-20 20:07:06', '2019-03-20 20:07:06'),
(8, 10, 6, '2019-03-20 20:15:47', '2019-03-20 20:15:47'),
(9, 10, 5, '2019-03-20 20:16:42', '2019-03-20 20:16:42'),
(10, 13, 3, '2019-03-20 21:10:39', '2019-03-20 21:10:39'),
(11, 13, 2, '2019-03-20 21:10:42', '2019-03-20 21:10:42'),
(12, 13, 1, '2019-03-20 21:10:45', '2019-03-20 21:10:45'),
(13, 12, 3, '2019-03-21 17:32:50', '2019-03-21 17:32:50'),
(14, 12, 2, '2019-03-21 17:32:53', '2019-03-21 17:32:53'),
(15, 13, 6, '2019-03-21 17:36:10', '2019-03-21 17:36:10'),
(16, 12, 4, '2019-03-21 17:53:06', '2019-03-21 17:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `statistic`
--

CREATE TABLE `statistic` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `time` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistic`
--

INSERT INTO `statistic` (`id`, `partner_id`, `user_id`, `type`, `points`, `time`) VALUES
(1, 15, 22, 0, 100, '2019-07-19'),
(2, 15, 22, 1, 100, '2019-07-19'),
(3, 15, 22, 0, 100, '2019-07-22'),
(4, 15, 22, 1, 100, '2019-07-22'),
(5, 10, 12, 1, 100, '2019-07-22'),
(6, 10, 22, 0, 100, '2019-07-24'),
(7, 10, 22, 0, 100, '2019-07-29'),
(8, 13, 22, 0, 100, '2019-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `user_id`, `type`, `start_time`, `end_time`) VALUES
(1, 12, 2, '2019-07-23 15:49:35', '2019-08-23 15:49:35'),
(2, 22, 3, '2019-07-29 18:21:32', '2020-07-29 18:21:32'),
(3, 156, 1, '2019-10-28 22:57:38', '2019-10-29 22:57:38'),
(4, 159, 1, '2019-11-28 15:15:52', '2019-11-29 15:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `seller_id`, `buyer_id`, `product_id`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 22, 12, 1, 300, '2019-07-25 17:28:59', '2019-07-25 17:28:59'),
(2, 22, 12, 1, 300, '2019-07-25 17:30:58', '2019-07-25 17:30:58'),
(3, 22, 12, 1, 300, '2019-07-25 17:32:58', '2019-07-25 17:32:58'),
(4, 22, 12, 1, 300, '2019-07-25 17:33:12', '2019-07-25 17:33:12'),
(5, 22, 10, 1, 300, '2019-08-05 10:47:32', '2019-08-05 10:47:32'),
(6, 22, 10, 1, 300, '2019-08-05 10:47:33', '2019-08-05 10:47:33'),
(7, 22, 85, 1, 300, '2019-08-24 12:35:30', '2019-08-24 12:35:30'),
(8, 22, 22, 1, 300, '2019-08-29 14:37:54', '2019-08-29 14:37:54'),
(9, 22, 22, 1, 300, '2019-08-31 19:48:32', '2019-08-31 19:48:32'),
(10, 77, 22, 1, 300, '2019-11-14 14:44:18', '2019-11-14 14:44:18'),
(11, 77, 22, 1, 300, '2019-11-14 14:44:21', '2019-11-14 14:44:21'),
(12, 77, 22, 1, 300, '2019-11-14 14:44:22', '2019-11-14 14:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/user-img/default.jpg',
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `points` decimal(20,2) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `active_package` int(11) NOT NULL DEFAULT '0',
  `active_date` date DEFAULT NULL,
  `last_message_datetime` datetime DEFAULT NULL,
  `po` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `img_url`, `first_name`, `last_name`, `address`, `city`, `country`, `summary`, `points`, `type`, `active_package`, `active_date`, `last_message_datetime`, `po`, `telephone`, `mobile`, `video_url`) VALUES
(10, 'Κρίς Πολυκάρπου', 'polykarpou@diaskedazw.com', NULL, '$2y$10$PgZ6A.gpuf9IPI767bUjDe3ocywePBuhjQcbeJCasibOdWop9K23y', 'UnMGVI1ViGrj6oEMzYLWC3tnpacxcYQzy0uDSKM4SvrA6rI0HeyOgojpMFOJ', '2019-03-14 23:43:39', '2019-11-20 12:43:40', 'images/101558558485.jpg', 'Κρίς', 'Πολυκάρπου', 'Αχαιών 49, Κάτω Λακατάμια', 'Λευκωσία', 'Κύπρος', 'Πάντα ήθελα να φτάσω πιο ψηλά και να έχω ένα καλύτερο επίπεδο ζωής για μένα και την οικογένεια μου. Πάντα ήμουνα ανήσυχος σαν άτομο για επαγγελματική ανέλιξη, δυστυχώς σε όλα σχεδόν τα υπαλληλικά συστήματα η επαγγελματική ανέλιξη και οικονομική ανάπτυξη είναι μηδαμινή. Τυχαία πριν κάποια χρόνια βρέθηκα σε ένα σεμινάριο χωρίς να γνωρίζω τίποτα από Δικτυακό Μάρκετινγκ όμως είδα ανθρώπους χαρούμενους ανθρώπους που κέρδιζαν χρήματα και σκέφτηκα...αν αυτοί το κάνουν γιατί όχι και εγώ. Δεν είχα τίποτα να χάσω και ξεκίνησα να μαθαίνω. Δεν το μετάνιωσα ποτέ και το συστήνω ανεπιφύλακτα σε όσους έχουν μικρά ή μεγάλα όνειρα.\nΣήμερα είμαι στην ευχάριστη θέση να βρίσκομαι στην DIASKEDAZW και σκοπός μου είναι να δώσω τις γνώσεις και καθοδήγηση μου στον κάθε συνεργάτη για να μπορέσει να επιτύχει τους στόχους του μαζί μας. Το Δικτυακό Μάρκετινγκ είναι η καλύτερη ευκαιρία του σήμερα και για τα επόμενα χρόνια για οικονομική ανεξαρτησία και ευημερία.', '18359.22', 'partner', 3, '2019-09-01', '2019-08-31 00:00:00', NULL, NULL, NULL, NULL),
(11, 'test', 'demetds@diaskedazw.com', NULL, '$2y$10$WgmZRylMfq7Arc0doAYgC./TWaC963H/muktQPF/Z7OwWqOD3Re/i', 'LF54Z1pgmhhVEzs56Ao6HplEJ33JFn39jMLvn6kkaeO3IHdgohs39IuJXCr4', '2019-03-15 12:32:03', '2019-03-15 12:32:03', 'img/user-img/andreou.jpg', 'test', 'test', 'sfdsf', 'sdfsdf', 'sdfsdfdsf', 'Είμαι ο Δημήτρης Ανδρέου και δραστηριοποιούμαι στον τομέα των αθλητικών επιστημών μελετώντας καθημερινά για να προσφέρω το καλύτερο δυνατό ως αρωγός υγείας και ευεξίας.\r\nΗ τελευταία δεκαετία ήταν καθοριστική για την διεύρυνση και εξέλιξη των γνώσεων μου θέλοντας με να είμαι άρτια καταρτισμένος ούτως ώστε να είμαι σε θέση να εξυπηρετήσω με κάθε επαγγελματικό τρόπο. Όραμα και μέλημά μου είναι η βέλτιστη ποιότητα ζωής στον  κάθε ανθρώπου με στόχο την απεξάρτηση οποιουσδήποτε ανεπιθύμητους εθισμούς, πεποιθήσεις και υλισμούς.\r\nΜέσω της συνεργασίας μου με την “Διασκεδάζω” το κάνουμε μοναδικά εφικτό προσφέροντας σας, είτε αυτό που θα λάβετε είναι ενημέρωση είτε σωματική άσκηση είτε ακόμα συμβουλευτική κατεύθυνση σε θέματα διατροφής και τρόπων υγιεινής. Όπως και να’ χει είναι ένας ψυχαγωγικός τρόπος για να επωμιστείτε τα απαραίτητα για επικράτηση αυτής που δεν θέλει να χάσει κανείς, κάτι που δεν αγοράζεται που δεν πωλείται αλλά και ούτε προσφέρεται…ναι καλά καταλάβατε πρόκειται για την διατήρηση και την ισοστάθμιση, όλων όσων τρέχουν γύρω της καθημερινά, την «υγεία».\r\nΕίμαστε εδώ λοιπόν για να  βοηθήσουμε να σας εξοπλίσουμε με όλα τα εφόδια ώστε να έχετε μία εξαιρετική ζωή για σας και τους γύρω σας, επενδύοντας μέσω της διασκέδασης και ως φυσικό επακόλουθο αφού διασκεδάζετε με τη διαδικασία τότε σίγουρα «υγιαίνετε» άρα και «ευημερείτε».\r\n\r\n', '1000.00', 'user', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Superman', 'superman@hello.com', NULL, '$2y$10$2eABG09MJB14IJRPQNTkZ.9/gfBrRsWTI27kSHYM/ZZciBgRSO83u', 'cv6CKiUJnFtQ5C8kaFyc08y2NeMPOp2ar9kDAmaZ6A4Zd5AcZhhjbUy2oHDl', '2019-03-20 12:06:35', '2019-08-12 12:32:30', 'images/121554317556.jpg', 'Superman', 'Jin', 'Shenyang city', 'Dandong1', 'China', 'in progress', '274340.00', 'company_partner', 12, '2019-07-13', NULL, NULL, NULL, NULL, NULL),
(13, 'Νώντας Επαμηνώντας', 'epaminontas@diaskedazw.com', NULL, '$2y$10$PgZ6A.gpuf9IPI767bUjDe3ocywePBuhjQcbeJCasibOdWop9K23y', 'yjgVBjopHdn4gtlz97Kz5fopoLFjPxTrnrVYuP9bveEx1h6iNdAA5OIFIrr4', '2019-03-20 12:50:18', '2019-11-21 17:25:33', 'images/nontas.jpg', 'Νώντας', 'Επαμηνώντας', 'Λευκωσία', 'Λευκωσία', 'Κύπρος', 'Είμαι ο Νόντας Επαμεινώνδας και ασχολούμαι με τα προϊόντα της φύσης με \nσκοπό την καλύτερη λειτουργία και ευεξία του ανθρώπινου οργανισμού. Μεταξύ \nτων προϊόντων αυτών υπάγονται τα βότανα, τα φρούτα, τα λαχανικά, οι φυσικοί χυμοί και όχι μόνο. Επίσης στην κατηγορία αυτή υπάγονται και φυσικά προιόντα που οι περισσότεροι απο εμάς έχουμε στο σπίτι μας, για ανακούφιση άτυχων μικροπεραστικών όπως το κέντρισμα μιας μέλισσας ή μιας σφίκας. \nΠάμε μαζί, στην όμορφη φύση.', '935.47', 'partner', 4, '2019-06-12', NULL, NULL, NULL, NULL, NULL),
(14, 'Αγγελική Σάββα', 'aggeliki@diaskedazw.com', NULL, '$2y$10$Vlz3.7OMRseBb3TlT1CWd.Shest3T8i8pUeaAOK9W.T7z72uoyAn.', '1Q9BFpuOq219dlppJQ4Z39WwAd50vI84aX1Ojw7DSrOcDZxbs1PosjaFQifP', '2019-04-17 23:41:39', '2019-10-29 02:50:26', 'images/aggeliki.jpg', 'Αγγελική', 'Σάββα', 'shenyang', 'Nicosia', 'Cyprus', 'Life Coach', '1041.33', 'partner', 4, '2019-06-17', NULL, NULL, NULL, NULL, NULL),
(15, 'Έλενα Κουππαρή', 'kouppari@diaskedazw.com', NULL, '$2y$10$PgZ6A.gpuf9IPI767bUjDe3ocywePBuhjQcbeJCasibOdWop9K23y', 'XwRZz1CZspsQ9yPm9WoMndlq5hk6V4xTP8W6v1dmoDuExJiogiPtyH3S9J1G', '2019-04-17 23:48:48', '2019-10-29 05:22:56', 'images/151558567128.png', 'Έλενα', 'Κουππαρή', 'Κακοπετριά', 'Λευκωσία', 'Κύπρος', 'Γεννήθηκα το 1986 στην Λευκωσία, έζησα και μεγάλωσα σε χωριό στην επαρχία, γι’ αυτό και λάτρης των ζώων και της φύσης.  Από μικρή ηλικία αντιμετώπισα διάφορα θέματα υγείας, τα οποία με κρατούσαν πίσω από το να έχω μια φυσιολογική ζωή. Μετά από πολλές επισκέψεις σε ιατρικά κέντρα στην Κύπρο και στο εξωτερικό χωρίς όμως τα επιθυμητά αποτελέσματα, αποφάσισα να αλλάξω τακτική. Άρχισα να διαβάζω για βότανα και διάφορες εναλλακτικές θεραπείες. Με αυτό τον τρόπο προέκυψαν οι γνώσεις μου για τις ιδιότητες των βοτάνων, τα οποία είναι πάντα η πρώτη μου επιλογή πλέον, μαζί με διάφορες εναλλακτικές θεραπείες όπως το bowen και ο βελονισμός. Αυτό όμως που με βοήθησε κυρίως στην θεραπεία ήταν η δύναμη του μυαλού μου και η πίστη ότι πραγματικά μπορώ να τα καταφέρω! \nΚάπως έτσι ήρθα σε επαφή με τον τομέα της προσωπικής ανάπτυξης.  Μετά από ατελείωτες ώρες διαβάσματος, διάφορα σεμινάρια και προσωπικές συνεδρίες με τον αγαπημένο μου life coach, αποφάσισα ότι το δεύτερο μου πτυχίο δεν θα μπορούσε να είναι άλλο από το Life Coaching. Το πρώτο ήταν στο Business Administration. Παρόλα αυτά η προσωπική ανάπτυξη δεν σταματά ποτέ. Είναι ένα ταξίδι που όταν το ξεκινήσεις συνειδητοποιείς πόσα πολλά έχεις ακόμα να ανακαλύψεις. Γι’ αυτό συνεχίζω την εκπαίδευση μου στον Νευρογλωσσικό Προγραμματισμό (NLP).\nΌνειρο μου μέσα από την DIASKEDAZW είναι να έρθουν σε επαφή με την προσωπική ανάπτυξη όλα τα μέλη,  να ανακαλύψουν την καλύτερη έκδοση του εαυτού τους, να ζουν πραγματικά και να κάνουν πράξη ότι ονειρεύονται!', '1264.19', 'partner', 3, '2019-07-19', NULL, NULL, NULL, NULL, NULL),
(20, 'Richard', 'richard@hello.com', NULL, '$2y$10$vsS6otejSviHphVaSXOiLuUXhLTKdf/SLsBUIYr4Kk6wRBf2FonYe', NULL, '2019-05-18 18:01:34', '2019-05-18 18:01:34', 'img/user-img/default.jpg', 'Richar', 'John', 'NewYork', 'Newyork', 'England', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'rich4ever', 'charalambos.nino@gmail.com', NULL, '$2y$10$jHavR9Hn2lKAg4URXZD20O8PJZbum0W8BtGg3he/IPfJTUCv7pkMS', NULL, '2019-05-19 20:32:01', '2019-05-19 20:37:08', 'images/211558280228.jpg', 'Charalambos', 'Savva', 'Griva Digeni 38 Ergates', 'Nicosia', 'Cyprous', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Ellin', 'andrikospekris@gmail.com', NULL, '$2y$10$2M1Q9o9kn.2Dc61T4LCgzOsG8k0UAIAQAxVL5a2rWe6tUaQQAWa8q', 'JY0O0Wog3JRAOeboRxf5r0WJ7hv4mOdeCdnKdnjkv702RFjez0pwgWt0cJVl', '2019-05-28 21:51:33', '2019-11-14 20:44:22', 'images/221563803450.jfif', 'Andreas', 'pekris', 'Alkidiadou 4 Latsia', 'Nicosia', 'Cyprus', NULL, '199974700.00', 'seller', 12, '2019-07-28', '2019-08-24 12:44:56', NULL, NULL, NULL, NULL),
(23, 'CHRIS', 'chris.hardalias@gmail.com', NULL, '$2y$10$0FN3N.LEkJnMMGRDurnH4ufeJ6LuN3jXP6TWS/reDHeLjb6rIremK', NULL, '2019-06-01 14:25:38', '2019-06-01 14:25:38', 'img/user-img/default.jpg', 'Christos', 'Chardalias', '6 Niovis', 'Nicosia', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'zhuping', 'zhuping@hello.com', NULL, '$2y$10$WgmZRylMfq7Arc0doAYgC./TWaC963H/muktQPF/Z7OwWqOD3Re/i', 'cbAhd1UVkRk1paHgJVR1dWYIozkJ2WRlmVKda7jMzUWkI950UXDLmmqZxaid', '2019-06-07 00:36:41', '2019-06-07 00:36:41', 'img/user-img/default.jpg', 'sdlfsd', 'sdlfsdf', 'sdfd', 'sdlf', 'sdfsdf', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Nicolaswu1', 'nikolaswu76@gmail.com', NULL, '$2y$10$S4NC8GVTZVgYw5saNXF6kO4dm4KKpouOEDqDtU9Z8IUl25O49eFGm', NULL, '2019-06-07 17:08:21', '2019-06-07 17:08:21', 'img/user-img/default.jpg', 'Nicolas', 'Wu', 'Kalymnou 3', 'Nicosia', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Dimos', 'diaskedazw21@gmail.com', NULL, '$2y$10$T1OFqB4anrfy0fiz7Dhmm.TnbAvDbJbpcOl3.4vVSNX.o1IzqdX6u', NULL, '2019-06-12 00:56:56', '2019-06-13 21:55:11', 'img/user-img/default.jpg', 'Δημος', 'Αντρεου', 'Αγιου Μαμα 6', 'Λευκωσια', 'Κυπρος', 'MLM', '100000000.00', 'user', 12, '2019-06-15', NULL, NULL, NULL, NULL, NULL),
(28, 'Demetris andreou', 'jimysda@gmail.com', NULL, '$2y$10$Q2ViQa2SIlJzVhNFvqgXe.zDDHsxokdTt5WtJIOA9urASbkiLN0SW', NULL, '2019-06-12 21:58:30', '2019-06-12 21:58:30', 'img/user-img/default.jpg', 'Demetris', 'andreou', 'agiou stefanou, 34', 'aradipou', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'alexcy1994', 'spyroualexandros@gmail.com', NULL, '$2y$10$iwkiw7yyJUvq31PzuWElj.Uw/bnUmwSez6ihzH/MWWxL7PRhdNx72', NULL, '2019-06-12 23:24:24', '2019-06-12 23:24:24', 'img/user-img/default.jpg', 'Αλέξανδρος', 'Σπύρου', 'Dimofontos 9 Strovolos', 'Nicosia', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'pambos', 'pambosfgx@gmail.com', NULL, '$2y$10$6K1bO.jzdl63EFzVSgSNHeMaAgLoIkC4AotpF9.k5T5OMs0YALTCu', 'R4h5zy4oh97zica2iZTxFD5C2YiisnDko7pXfzRkkaMc5qJXIFvqTZb0R9ZZ', '2019-06-13 00:17:32', '2019-06-13 00:42:07', 'img/user-img/default.jpg', 'CHARALAMBOS', 'CHARALAMBOUS', 'Ilektras 05', 'Nicosia', 'cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'dfffddffdfd', 'psistariakonios@gmail.com', NULL, '$2y$10$oJ5sC0QwBapOjSQvCWCw1..lL5WQgtoWnWy5lptcunwFZdqeP4WKS', '79yjEacSQBj4cTEEUFl7AI1x1nd7nnt2WwZWDFQpbKY3AUFnckzUmm0vk2y9', '2019-06-13 05:25:10', '2019-06-13 05:25:10', 'img/user-img/default.jpg', 'eeeeddd', 'dfdddddd', 'dsdsds', 'dsdsds', 'dssddsds', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Alinaki', 'rafaelaachristouu@gmail.com', NULL, '$2y$10$TcLw/wD2KMBQGufkvTca3.H8ZrspMrYsn1aOhraOafj0ZQwQ24lEW', NULL, '2019-06-13 08:06:31', '2019-06-13 08:06:31', 'img/user-img/default.jpg', 'Rafaella', 'Christou', 'Vasiliou zotou', 'Limassol', 'Κύπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Christos Pilavakis', 'pilavakischristos@gmail.com', NULL, '$2y$10$zhnAsnFVm0DlHW/U/sWd6./hDsGOtylpxsoAUpUQXf2O.CHhMUT3G', NULL, '2019-06-20 19:32:54', '2019-06-20 19:32:54', 'img/user-img/default.jpg', 'Christos', 'Pilavakis', 'Tinou, 17A', 'Limassol', 'Κύπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Maria', 'maria-kp@hotmail.com', NULL, '$2y$10$muYTPxnIm8K2A5pFZbtSEOfZ9HsoJm3uE8ieeN1QaPWiguteHMFaC', NULL, '2019-06-22 01:12:37', '2019-06-22 01:12:37', 'img/user-img/default.jpg', 'Maria', 'Krashia', 'gregory auksentiou 108', 'nicosia', 'Κύπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'yiannis181011', 'theodorosyiota@gmail.com', NULL, '$2y$10$n7RgUOJGwD5.RUkSrMViOe4P1/aD4Lw6iZB/r9ZDaVpfoyNdp7n3K', NULL, '2019-06-24 23:42:23', '2019-06-24 23:42:23', 'img/user-img/default.jpg', 'Yiota', 'Chatzicharalampous', 'Kodrou 11A', 'Lemesos', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Pontzios', 'omonoiaos@gmail.com', NULL, '$2y$10$zgKzFxaBh5gb3ax3VCxAkeW00JXxeZH9feyU7GOM0USt/hbJtxWN6', NULL, '2019-06-25 00:36:19', '2019-06-25 00:36:19', 'img/user-img/default.jpg', 'Christos', 'Nikou', 'Agiou konwna 57', 'Paphos', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Swift', 'rafaellachristou@gmail.com', NULL, '$2y$10$FY6lHmvTVdH0X5E3h8azhOkNKa97IDNWDdZQAw2LZrvz/dGivK7Ny', NULL, '2019-06-25 16:17:00', '2019-06-25 16:17:00', 'img/user-img/default.jpg', 'Rafaella', 'Christou', 'Αλαμάνας 48 κάτω Λακατάμια', 'Λευκωσία', 'Κυπριακή', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Δημήτρης Ανδρέου', 'dimitris@diaskedazw.com', NULL, '$2y$10$gavR5LFhyiWLtwVm65H7w.XhPWxgk.umXhhr7ehbl6YZsIsv83w3C', 'Cds3VSVDmOin3uPtMdSUE0lzquL62oGRsKe630qDuCF6CTkk6FstpfQkwJLs', '2019-06-26 06:16:29', '2019-11-30 06:05:36', 'images/381561511954.jpg', 'Δημήτρης', 'Ανδρέου', 'larnaca', 'larnaca', 'Κύπρος', 'Είμαι ο Δημήτρης Ανδρέου και δραστηριοποιούμαι στον τομέα των αθλητικών επιστημών μελετώντας καθημερινά για να προσφέρω το καλύτερο δυνατό ως αγωγός υγείας και ευεξίας.\r\nΗ τελευταία δεκαετία ήταν καθοριστική για την διεύρυνση και εξέλιξη των γνώσεων μου θέλοντας με να είμαι άρτια καταρτισμένος ούτως ώστε να είμαι σε θέση να εξυπηρετήσω με κάθε επαγγελματικό τρόπο. Όραμα και μέλημά μου είναι η βέλτιστη ποιότητα ζωής στον  κάθε ανθρώπου με στόχο την απεξάρτηση οποιουσδήποτε ανεπιθύμητους εθισμούς, πεποιθήσεις και υλισμούς.\r\nΜέσω της συνεργασίας μου με την “Διασκεδάζω” το κάνουμε μοναδικά εφικτό προσφέροντας σας, είτε αυτό που θα λάβετε είναι ενημέρωση είτε σωματική άσκηση είτε ακόμα συμβουλευτική κατεύθυνση σε θέματα διατροφής και τρόπων υγιεινής. Όπως και να’ χει είναι ένας ψυχαγωγικός τρόπος για να επωμιστείτε τα απαραίτητα για επικράτηση αυτής που δεν θέλει να χάσει κανείς, κάτι που δεν αγοράζεται που δεν πωλείται αλλά και ούτε προσφέρεται…ναι καλά καταλάβατε πρόκειται για την διατήρηση και την ισοστάθμιση, όλων όσων τρέχουν γύρω της καθημερινά, την «υγεία».\r\nΕίμαστε εδώ λοιπόν για να  βοηθήσουμε να σας εξοπλίσουμε με όλα τα εφόδια ώστε να έχετε μία εξαιρετική ζωή για σας και τους γύρω σας, επενδύοντας μέσω της διασκέδασης και ως φυσικό επακόλουθο αφού διασκεδάζετε με τη διαδικασία τότε σίγουρα «υγιαίνετε» άρα και «ευημερείτε».\r\n', '1076.50', 'partner', 3, '2019-07-24', NULL, NULL, NULL, NULL, NULL),
(39, 'Λιάνα Νικολάου', 'liana@diaskedazw.com', NULL, '$2y$10$iUjhY2leo72j5C.58evYv.pPASXzaSVS8yJUwYWYZRg7/8WMET.bC', '2Wf9dsZnQDgAXg1Nuc4Q8GUF3vfVVToR1JaCAd4VqFhvUART996Ji93Prolm', '2019-06-26 06:38:08', '2019-11-21 15:38:44', 'images/391571086738.jpg', 'Λιάνα', 'Νικολάου', 'nicosia', 'nicosia', 'Cyprus', 'Η Λιάνα Νικολάου είναι διπλωματούχος προπονήτρια ζωής (Life Coach) με ειδίκευση στις ανθρώπινες σχέσεις. Έχει βραβευθεί με το International Runner Up Life Coach of the year award 2016 παγκόσμια στο Λονδίνο, είναι επίσης συγγραφέας και ομιλήτρια. Έχει δικούς της πελάτες στην Κύπρο και παγκόσμια μέσω διαδικτύου. Το πάθος της είναι η μάθηση σχετικά με την ανθρώπινη συμπεριφορά και αγαπά να βοηθάει τους πελάτες της να επιτύχουν τους στόχους τους μέσω της αποτελεσματικής επικοινωνίας. Η Λιάνα έχει εμπειρία με ανθρώπους από διαφορετικές εθνικότητες και πολιτισμούς και εκτιμά τη διαφορετικότητα των ανθρώπων. Πιστεύει ότι υπάρχει λόγος πίσω από τις συμπεριφορές των ανθρώπων με βάση τη γνώση, την εμπειρία, την ανατροφή, τον πολιτισμό και την υποκουλτούρα τους. Η Λιάνα είναι ένας γεννημένος ηγέτης που αγαπά να παραδίνει παρουσιάσεις βοηθώντας όσο το δυνατόν περισσότερους ανθρώπους. Έχει ενθαρρύνει και άλλους να βρουν τη δική τους φυσική ηγεσία και να κάνει τους ανθρώπους να επικοινωνούν μεταξύ τους. Ιδιαίτερη της χαρά είναι να βλέπει τους πελάτες της να βρίσκουν την ευτυχία στις σχέσεις τους με τους εαυτούς τους και στις προσωπικές τους σχέσεις μέσω των ιδιωτικών συνεδριάσεων που τους παρέχει. Μιλάει άπταιστα Eλληνικά και Aγγλικά και αγαπά τα ζώα και να ταξιδεύει. Είναι αφοσιωμένη μητέρα που απολαμβάνει τη φύση, τον διαλογισμό, τον χορό και την κηπουρική.', '1006.24', 'partner', 3, '2019-06-26', NULL, NULL, NULL, NULL, NULL),
(40, 'Γεωργία Καλλιάνη', 'kaliani@diaskedazw.com', NULL, '$2y$10$7fPlCsu8Fwtc.r5Xh0tKUO5ve9qVKsX.tpaRcoK4wOrc4tThIKuXi', 'LOuxq6K1b13MVb6DrxGstsbk5hROJ0dqpw2n3HayjdXEvVMffY80boTMvZA5', '2019-06-29 04:41:32', '2019-11-19 21:06:06', 'images/401561846449.jpg', 'Γεωργία', 'Καλλιάνη', 'Κάτω Λακατάμια', 'Λευκωσία', 'CY', 'Είμαι εκπαιδεύτρια αισθητικής όπου διδάσκω τεχνική μακιγιάζ, περιποίηση προσώπου και μασάζ.\r\nΔιδάσκω yoga τα τελευταία 10 χρόνια με εκπαίδευση στην Ινδία όπου κάνω ένα συνδυασμό ασκήσεων αναλόγως των αναγκών της ομάδας ή του ατόμου όπου μπορεί να βοηθήσει στην μυϊκή τόνωση, ηρεμία μυαλού, ανάπτυξη της σεξουαλικής μας ενέργειας και καθαρισμό του ενεργειακού μας σώματος.\r\nΔιδάσκω πνευματικές τεχνικές και αυτογνωσίας εδώ και 25 χρόνια τόσο θεωρητικά όσο και πρακτικά. Αυτό το κομμάτι έχει να κάνει με ανθρώπους που θέλουν να γνωριστούν καλύτερα με τον εαυτό τους, τη δύναμη που έχουν μέσα τους για να μπορούν να την χειρίζονται σωστά. \r\nΠροσφέρω την τεχνική Ενεργειακή Σαμάνικη, αρχαίες τεχνικές που εφάρμοζαν οι Ινδιάνοι του Περού και Ινδίας όπως την νέα ψυχοθεραπεία σε συνδυασμό με υπνοθεραπεία. Με την πρώτη κιόλας επίσκεψη μπορείς να ξεπεράσεις τραυματικές εμπειρίες που σε βάραιναν και σου ήταν εμπόδιο για να προχωρήσεις στην ζωή. Μπορείς να βρεις απαντήσεις σε ερωτήματα ή καταστάσεις που θέλεις να αλλάξεις.\r\nNLP Life Coaching , όπου έχει να κάνει με στόχους ή λύσεις σε κάτι που θέλετε να πετύχετε στην ζωή σας όπως προσωπική ανάπτυξη (δυναμισμό, αυτοπεποίθηση), πνευματική ανάπτυξη και εμφάνισης, χειρισμός των οικονομικών και σεξουαλικά.\r\nΠαρουσιάζω σεμινάρια για:\r\n1) Αυτογνωσία\r\n2) Αυτοπεποίθηση\r\n3) Πώς σκέφτεται ο δικό σας εγκέφαλος και να μάθετε πώς να διαβάζετε τους άλλους\r\n4) Πώς καθαρίζω και ενεργοποιώ τα ενεργειακά μου κέντρα (τσιάκρα) για να αποκτήσω ισορροπία στην ζωή μου.\r\n5) Πώς μπορώ να γίνω πιο ήρεμος, χωρίς άγχος και να μάθω να απολαμβάνω την ζωή.\r\n6) Πώς να μάθω να απολαμβάνω καλύτερα την σεξουαλική επαφή ή να έχω καλύτερη απόδοση σε αυτό, ή να έχω ή να μάθω να δημιουργώ περισσότερους οργασμούς στον σύντροφο ή στον εαυτό μου\r\n7) Πώς να φλερτάρω μια γυναίκα ή πως να καταφέρω να με θέλει ή να με ποθεί ένας άντρας ή μια γυναίκα και πολλά άλλα θέματα που μπορεί να σας απασχολούν και θέλετε να βρείτε τις λύσεις.\r\nΕίμαι στην διάθεση σας για οτιδήποτε σας απασχολεί. Μαζί θα βρούμε την λύση!\r\n', '1003.29', 'partner', 3, '2019-06-29', NULL, NULL, NULL, NULL, NULL),
(41, 'Γιώργος Κορέλλης', 'korelli@diaskedazw.com', NULL, '$2y$10$8uCt4MUO2q9SBhkwJR0MzOHALcLiKJQFWFGcCtTngYBEbhQ7L8kUe', 'uo9igCkzSyNJfWZtYQdOjhEi5i5wHuH1jDpiikubYJCYaYDANuKbDFMDrwu6', '2019-06-29 05:19:59', '2019-11-25 17:11:54', 'images/411561767690.jpg', 'Γιώργος', 'Κορέλλης', 'Λευκωσία', 'Λευκωσία', 'Κύπρος', 'Σύντομα κοντά σας..!!', '1022.44', 'partner', 3, '2019-06-29', NULL, NULL, NULL, NULL, NULL),
(42, 'To Arkateno', 'joannageorgiou-@hotmail.com', NULL, '$2y$10$CPWt.NlLzA8Xm6hmFH5rOexoYpn7xdy9Vzg4bEhrPa6c3nusjUCIu', NULL, '2019-07-02 12:05:40', '2019-07-02 12:05:40', 'img/user-img/default.jpg', 'Ioanna', 'Georgiou', 'Iniohou 9 Ekali', 'Lemesos', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'MICHALIS EVANGELOU', 'evomcompeuters@gmail.com', NULL, '$2y$10$v/o4jVs4iL50Cia.xiWXp.aIgFX94kgR//HlgqEDaHxbfBOEDAQdS', NULL, '2019-07-02 17:12:04', '2019-07-02 17:12:04', 'img/user-img/default.jpg', 'MICHALIS', 'EVANGELOU', 'EIRINIS STREET 107 SHOP 2', 'LIMASSOL', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Christhna', 'christhna@hotmail.com', NULL, '$2y$10$ZICHapDeI2DHHTPpJy/7Rut0uYC5FlPysKrrb0ZUh2DnGqxSzV.BC', NULL, '2019-07-03 18:23:45', '2019-07-03 18:23:45', 'img/user-img/default.jpg', 'Christina', 'Ioannou', 'Amisou 9', 'Limassol', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'ANDREASK', 'kestasmand@hotmail.com', NULL, '$2y$10$ZW0A.wkL8i.NeQSCwC1wiuOZh/4hce9KZSe4zlmS0i3Mw1IaYq0GK', NULL, '2019-07-10 15:20:11', '2019-07-10 17:02:14', 'images/451562760134.jpg', 'Andreas', 'Kestas', 'Nikou Kazantzaki 32A', 'Limassol', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Anthia', 'anthia.louka@hotmail.co.uk', NULL, '$2y$10$LV3N0F.KUWDNOhvzPl/u4OYbLAMUcO3a2GiWIbxTFAUs5waIMESnm', NULL, '2019-07-11 21:32:15', '2019-07-11 21:32:15', 'img/user-img/default.jpg', 'Anthia', 'Louka', 'Andromachis 22', 'Nicosia', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'persa', 'persape@hotmail.com', NULL, '$2y$10$z18q4iWxJNB0kyhmc2.b..qBoC.9WlplsmN6QYb6uJs6cmMIG/bj2', '4p3SAbSis9ez4F4CzGoq4GiyDqDQl90hWqWVhQbvH3Oa5CO6HHKWXr1QD7co', '2019-07-16 13:57:29', '2019-07-16 13:57:29', 'img/user-img/default.jpg', 'persa', 'petrou', 'athanasiou diakou 2', 'apaisia limassol', 'kypros', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Nikos Traveller', 'n1k05sou@hotmail.com', NULL, '$2y$10$6Vmd7Vj8xzzK2a2xjw4C6.CbQ9mvJ/JhKo9xzjijN4eEbpOhK6jZ6', NULL, '2019-07-17 00:37:32', '2019-07-17 00:37:32', 'img/user-img/default.jpg', 'Nikos', 'Chrysostomou', 'Agiou Georgiou 4 Ypsonas Limassol', 'Limassol', 'Κύπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Christina', 'christinalambre@hotmail.com', NULL, '$2y$10$KuXnWHQA6pnyqES6ZqCYXO7oyz7sqqiavo.8IN5RZqYI.HYBtF6DG', NULL, '2019-07-19 16:29:27', '2019-07-19 16:29:27', 'img/user-img/default.jpg', 'Christina', 'Yiannaki', 'christinalambre@hotmail.com', 'Larnaka', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Kpikardou', 'kpikardou93@gmail.com', NULL, '$2y$10$7.Q0k4Q.48LvdeUUzygBb.I/yAtgsqNRbTPCAny8IqDGhV8csX.h2', NULL, '2019-07-20 20:22:14', '2019-07-20 20:22:14', 'img/user-img/default.jpg', 'Kyproulla', 'Pikardou', 'Pausaniou 1 diamerisma104', 'Leukwsia', 'kipros', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'ARISTIDES N', 'aristides.nektarios@gmail.com', NULL, '$2y$10$HOdPF.StvVt1Cc1dbfrXU.9B69xUya4JZU.TIJD6JjpSxynWA6mp6', NULL, '2019-07-23 22:14:44', '2019-07-23 22:14:44', 'img/user-img/default.jpg', 'Νektarios', 'aristidis', 'modestou panteli 2', 'limassol', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'pambos charalambous', 'eleni.charalambous@gmail.com', NULL, '$2y$10$4nhKGUcghgkgpoHrthPhkekvC66jXHVvYCTXBRG.x.1TLsWWNWN/K', NULL, '2019-07-23 23:07:29', '2019-07-23 23:07:29', 'img/user-img/default.jpg', 'CHARALAMBOS', 'CHARALAMBOUS', 'Ilektras 5', 'Nicosia', 'Κύπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Stavria', 'stavria18s@gmail.com', NULL, '$2y$10$4Hw1rJm6uGFaHqU.pUp8n.ryJkN7ItVW33W7GRdt9cKkTz/.bIfK6', NULL, '2019-07-28 02:00:38', '2019-07-28 09:29:00', 'images/531564288140.jpg', 'Stavroulla', 'Vrasida', 'Newfitou doyka 19', 'Limassol', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Χριστίνα Σωκράτους', 'xristina@diaskedazw.com', NULL, '$2y$10$nrn0I.k.xGMOc3f3u2ftn.WKkZC2d3OWv0Y/lfQeeLnP79dH07306', 'qzC1OZ98gioG2SYDnqAhAAp0tMSCjLhuRZGogrfnuWHUF8GHRsoK54K0HhFS', '2019-07-28 04:12:03', '2019-10-29 01:29:27', 'images/541564269373.jpg', 'Χριστίνα', 'Σωκράτους', 'λεμεσός', 'λεμεσός', 'Κύπρος', 'Σύντομα Κοντά σας.', '1006.13', 'partner', 3, '2019-07-28', NULL, NULL, NULL, NULL, NULL),
(55, 'ema', 'emahorga@outlook.com', NULL, '$2y$10$zkwmm0v7mn7NpwIFzOKQHOFHCXeTwYjzC7FRKm2iSDkAmDftOULPu', '4q9wDT16NEm6zkYXDIx8LfmyNRPkM16Dn9OJXeSqjXZvpZtlHMCLBzHI6ciC', '2019-07-29 03:44:30', '2019-11-18 23:48:22', 'images/551564363655.jpg', 'Maria Emanuela', 'Horga', 'Marathovounou 8 Latsia', 'Nisosia', 'Cyprus', NULL, '9999500.00', 'seller', 12, '2019-09-30', '2019-09-27 00:00:00', NULL, NULL, NULL, NULL),
(56, 'Γεωργια', 'georgiacygeorgiou@hotmail.com', NULL, '$2y$10$MBMs3QKSYn30n2fFpCHJ.uOpOaPqQn0Avqy5Sa0yp2lW/6y5y.RmC', NULL, '2019-07-31 17:48:09', '2019-07-31 17:48:09', 'img/user-img/default.jpg', 'Γεωργια', 'Γεωργιου', 'Τηλου 3', 'Λεμεσος', 'Κυπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Demoseshop', 'demos@diaskedazw.com', NULL, '$2y$10$eBXWc7ZcV1jPs5EQKmBlR.mWktmYUM/DZJgKVDNfjFm7bkxDnA6JS', 'tegCukeN8gjdFEDXGdeBxKeYRd6AKD67TnTU9GbL9HQehOxEhc5k1SvloBtk', '2019-08-05 15:33:45', '2019-08-05 15:33:45', 'img/user-img/default.jpg', 'Demos', 'Andreou', 'axaion', 'nic', 'cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'cat22', 'constantinourania@gmail.com', NULL, '$2y$10$tvSbTySsZGmRf4mW.zvBTuDDBy6ICcJHYcPVJR/4gm1CnGnYSopOa', NULL, '2019-08-06 00:21:09', '2019-08-06 00:24:35', 'images/581565033075.jpg', 'Rania', 'Constantinoi', 'Vasiliou Zoty 9a', 'Lemesos', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'HeroTheMentor', 'kinazides@gmail.com', NULL, '$2y$10$OwCEZL5FsRUEqeei1nlGVe/4PyrY7u1uPnQk3kNC3ZiWNIw.BdjQG', NULL, '2019-08-07 20:55:30', '2019-08-07 20:55:30', 'img/user-img/default.jpg', 'Michael', 'Kinazides', 'Perikleous 28A', 'Thessaloniki', 'Greece', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Konios', 'psistariakonios@gmail.com', NULL, '$2y$10$586xi08EdA7VoJ0ZOtPDnuzOje/fSSBgqmVZRL8wwM9CDWtmj39Pm', 'xjQnLxycdVudzJK43GghA06Jm3lCBvR0mg0A9KwW0VsRRDj596DFIAuO1RsV', '2019-08-11 01:41:46', '2019-08-11 01:47:29', 'img/user-img/default.jpg', 'Andreas', 'pekris', 'makskso', 'sdsds', 'CY', NULL, '500.00', 'seller', 3, '2019-08-10', '2019-08-17 00:00:00', NULL, NULL, NULL, NULL),
(61, 'Sensospa', 'sensobeautyspa@gmail.com\r\n', NULL, '$2y$10$IG4IDa2Eh1jL1sGG0s/lGuEDAEa/.N5FHHYjJY/qovJIChh7A8dFa', 'ZahldvXR7cEKPWDAHqiVWX1XF2JfaKRpE5q2AQnvOUKKpVqRziL8F7EFkrOx', '2019-08-12 17:27:54', '2019-08-12 18:58:36', 'images/611565613471.jpg', 'δεφδεφε', 'gregr', 'Αχαιών 49  Κάτω Λακατάμια', 'Λευκωσία', 'Κύπρος', NULL, '96500.00', 'company_partner', 3, '2019-08-12', '2020-11-20 00:00:00', NULL, '70 000329', '70 000329', NULL),
(62, 'PROTECH ELECTRICS LTD', 'info@protechelectrics.com\r\n', NULL, '$2y$10$yihg2QaeNrby4FZNs719/.C8lJh.tuo2lNUUlTy9BbKtHKshWzBZ.', 'KEAAdKvPCZIy1rLUT9OOU7H78ij2KeqoeoA9Cfj5tRiytTzCdL6XzT9oo5Y4', '2019-08-13 14:39:37', '2019-08-13 14:56:00', 'images/621565690160.jpg', 'PROTECH ELECTRICS LTD', 'PROTECH ELECTRICS LTD', 'soon', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 3, '2019-08-13', '2020-03-27 00:00:00', NULL, '\r\n99 093344', '\r\n99 093344', NULL),
(63, 'ΠΑΝΤΕΛΗΣ ΓΕΩΡΓΙΟΥ', 'pantelisgeorgiou@diaskedazw.com', NULL, '$2y$10$TvsivmCfKnFN6Ff8S6rZ3.5oFiyhy8xQSUBYeYJLsu0AtwNDBD02G', 'V7BuVx1f7RpteBsgRSzYyalhaHnwG2KD9aHPIuNJvov2Fc19xp1lifih9w3j', '2019-08-15 02:22:37', '2019-11-27 19:14:33', 'images/631566079102.jpg', 'Παντελής', 'Γεωργίου', 'Αρκαδίου 16 Χαλκουτζα, Μέσα Γειτονιάς', 'Λεμεσός', 'Κύπρος', NULL, '503.00', 'company_partner', 3, '2019-08-15', '2019-08-31 00:00:00', NULL, '(+357) 99 431 815', '(+357) 99 431 815', NULL),
(65, 'ΠΑΡΚΟ ΠΑΝΩ ΠΟΛΕΜΙΔΙΩΝ', 'panikospanayi74@gmail.com', NULL, '$2y$10$d51kKdhfGFzsW6rnpJ.K3OEHNfy09mF5Wly1LdfbcjEcKCsU0CcIC', 'Cfu90qeWqcvYuc1AxPbs2WeuBixR5L22bGQtg1MQHTjmfDvWuqlGfIqeGEIs', '2019-08-18 15:44:56', '2019-11-27 19:05:56', 'images/651566125392.jpg', 'Γιωργούλα', 'Χαρικλή', '56 Σταυρου - 120ος Δρόμος Πάνω Πολεμίδια', 'Λεμεσός', 'Κύπρος', NULL, '0.00', 'company_partner', 3, '2019-08-18', '2019-08-31 00:00:00', NULL, '(+357) 99 626 309', '(+357) 99 300 391', NULL),
(66, 'ΓΛΥΚΟΠΩΛΕΙΟ', 'info@glykopolio.com', NULL, '$2y$10$0g9yBUoJub.xsIE6HTiNReMcsjvhw.Biy.0prEz1R2xAEfkSsJmte', '1GDhduykFJRLc0Jb7M9kZBgg3CqlWWNhcMdKls6jRewzMUhzGpTsG1IfqNDE', '2019-08-18 16:38:44', '2019-11-29 20:45:56', 'images/661566128886.jpg', 'ΓΛΥΚΟΠΩΛΕΙΟ', 'ΓΛΥΚΟΠΩΛΕΙΟ', 'Νικόδημου Μηλωνά 1, Αγια Ζώνη', 'Λεμεσος', 'Κύπρος', NULL, '500.00', 'company_partner', 3, '2019-08-18', '2019-08-31 00:00:00', NULL, '(+357) 25 250 011', '(+357) 25 250 011', NULL),
(67, 'SYNERGY HEALTH & NUTRITION', 'synergy@diaskedazwdiscounts.com', NULL, '$2y$10$HEpAnwgTc8AsdsrA/TvDiuyJD.YFCyQZpUCH5gBJXj0Pl60yzgyE2', 'l9hq25EDZMa3WkDPn7dcBmLtprqjRlm92QIJFAveC1c8lahI6nrOo90H21JF', '2019-08-18 17:22:41', '2019-08-18 17:26:00', 'images/671566131160.jpg', 'SYNERGY', 'HEALTH & NUTRITION', 'Σύντομα κοντά σας', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 3, '2019-08-18', '2019-08-31 00:00:00', NULL, NULL, NULL, NULL),
(68, 'E&G PAROUSIASI DECORATION', 'info@parousiasi.com', NULL, '$2y$10$BK4Y05wjK4VqA2fO4wAmUe3AUh9neXjeAix4NTRVJ5nuyY.FCgYPW', 'AuhN34WCC4kAaKpBlpvduwYCjDpBN3lCq3LM6PQzPZz3CNc5Z5bmTvdfHGnh', '2019-08-18 17:43:11', '2019-11-28 21:16:54', 'images/681566132626.jpg', 'E&G PAROUSIASI', 'DECORATION', 'Λεωφ. Πάφου 16, Απ. Ανδρέας 3052', 'Λεμεσός', 'Κύπρος', NULL, '510.00', 'company_partner', 3, '2019-08-18', '2019-08-31 00:00:00', NULL, '(+357) 25 560 673', '(+357) 25 560 672', NULL),
(69, 'ΦΥΣΙΚΟΘΕΡΑΠΕΥΤΗΡΙΟ ΕΥΑΓΟΡΑΣ Μ. ΔΑΜΙΑΝΟΥ', 'damianouevagoras@gmail.com', NULL, '$2y$10$36RGL881wqL68Dh0Oe/RtO3q9P0hMie9IMMLeiFdHQ5l3yj.fbEda', 'oHCRJ67i5CYQxxQU9v97LZVWv94fZLaSduPmF3lcUJeLBQoUuQSUfyXFI6nj', '2019-08-18 18:31:09', '2019-11-29 21:04:39', 'images/691566135112.jpg', 'ΦΥΣΙΚΟΘΕΡΑΠΕΥΤΗΡΙΟ', 'ΕΥΑΓΟΡΑΣ Μ. ΔΑΜΙΑΝΟΥ', 'Αγίας Φυλάξεως 269 Αγία Φύλα', 'Λεμεσός', 'Κύπρος', NULL, '503.00', 'company_partner', 3, '2019-08-18', '2019-08-31 00:00:00', NULL, '(+357) 99 846 825', '(+357) 99 846 825', NULL),
(70, 'PODIATRIC DIAGNOSIS', 'ilouvarides@podiatricdiagnosis.com.cy', NULL, '$2y$10$.nvJ.4ffayxraxxiDGjH5.O6GdoSIOg1/9Q.bgsGGfINAGDkoGw2K', 'ruMlzEezfOjsIYwMzsU2Mo1h3lpJHiRRwVtrUmCs3d9s3JlD5sh8bJenqUQE', '2019-08-19 01:54:31', '2019-08-19 01:55:50', 'images/701566161745.jpg', 'PODIATRIC', 'DIAGNOSIS', '14 Τζάμι', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 3, '2019-08-18', '2019-08-31 00:00:00', NULL, NULL, NULL, NULL),
(71, 'ENJOY LIFE GYM', 'valentinocy86@gmail.com', NULL, '$2y$10$Uo4MfOPQLSqYHdzexeTQg.TycaxTznRbDzqnJTF8xpGKTp5QNyxsi', 'FnyQXNpRW9YuylCqEcGuDJmUKI3n27zsPocfQGcBMQsQOPfDXTZnlv4IGdwd', '2019-08-19 03:09:44', '2019-08-19 03:11:46', 'images/711566166288.png', 'Enjoy', 'Life Gym', 'Ioanni Kondylaki 16 ', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 3, '2019-08-19', '2019-08-31 00:00:00', NULL, NULL, NULL, NULL),
(72, 'HOUSE OF HAIRCUTS', 'houseofhaircuts@gmail.com', NULL, '$2y$10$gwgeoWCx8zcXqQ..LNwesu5vm6Dp0yUg3yWC7NX9r9Ps4K0spPBz6', NULL, '2019-08-19 04:24:42', '2019-08-19 19:15:39', 'images/721566224134.jpg', 'HOUSE ', 'OF HAIRCUTS', '91 Odos Evgeniou Voulgari ', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 3, '2019-08-19', '2019-08-31 00:00:00', NULL, NULL, NULL, NULL),
(73, 'admin1', 'admin1@diaskedazw.com', NULL, '$2y$10$w8dDCWdWiczk9jB4tXY5sO2T8vi9D8uwHIZbPUCOOE9wyL8fOcl6.', 'Prpf1GQNPJLVMikZVvMUjktPTRSFuQnT30Y6jME8kwACAjDKGQmXbc9IcVeI', '2019-08-20 00:45:50', '2019-09-04 23:14:41', 'img/user-img/default.jpg', 'admin1', 'test', 'edededde', 'ededd', 'dedede', NULL, '1000.18', 'admin', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'milenium', 'milenium@diaskedazw.com', NULL, '$2y$10$nSfddgX0EF2Yr7JylEu6OeyIaaAK3vTL1RiVaHYjVxZk3VKXU891i', 'onqW08oC2MW9tr3J7XkEkcozqiTq7uQKD3hZmTxAuil0zoWoJEaAQ7qS51uj', '2019-08-21 05:52:35', '2019-08-21 05:52:35', 'img/user-img/default.jpg', 'fdfvf', 'dfvfdvdv', 'vfdfvd', 'fdvdf', 'fvdvdf', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'ΣΥΝΕΡΓΕΙΟ ΑΥΤΟΚΙΝΗΤΩΝ ΧΡΙΣΤΟΣ ΣΥΡΙΜΗΣ', 'syrimischristos@gmail.com', NULL, '$2y$10$Ar69s53dQT0JgDoImWPbe.rVDIPtDrC88lR1oEho4xBd3Veyr/6si', '5tAdIjhLRTgWv3nstzBYtlt8rst1brMBqgEiLr8U3qq7zreRTF7ZCueEFEdi', '2019-08-21 14:41:36', '2019-08-21 14:49:49', 'images/751566380601.jpg', 'ΧΡΙΣΤΟΣ', 'ΣΥΡΙΜΗΣ', 'Βιοτεχνική Ζώνη Μάμμαρι', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 12, '2019-08-21', NULL, NULL, '99879258', '99879258', NULL),
(76, 'BATTLE GROUND', 'aelenos7@gmail.com', NULL, '$2y$10$.nnVprYYIOXhDw/1KmCPAOCvH/PTdJHuSuVO0wm0l29Np0ZYEvbly', 'O5qOV0JWKZtkt2nIesTrBVfY5KRKCfFDfovz4ydbDJK7sYtuGDfpQ6SCOo3l', '2019-08-21 15:05:17', '2019-08-21 15:15:56', 'images/761566382323.jpg', 'BATTLE', 'GROUND', '12  Chalkoutsa Mesa Geitonia', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 12, NULL, NULL, NULL, '99010111', '99010111', NULL),
(77, 'SIFOUNAS RACING PARTS AND DETAILING CENTER', 'savvasloizou@cytanet.com.cy', NULL, '$2y$10$L5OEY6hshlxrovdP9rOSNeWIDTKDmgRvezNEuR52vhf5OVNEtIe/6', 'IM0uaeQkPfiBlAA4TwseKKqA4RGPj1xmJ6M86LQHgAvRPobgiZDduIqDA9NO', '2019-08-21 15:36:08', '2019-11-28 21:42:27', 'images/771566383779.png', 'SIFOUNAS RACING', 'PARTS AND DETAILING CENTER', 'Θωμά Έλιοτ 16Α, Ομονοίας 3011', 'Λεμεσός', 'Κύπρος', NULL, '1200.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 570 575', '(+357) 99 453 900', NULL),
(78, 'SPA TONIC', 'spa.tonic@yahoo.co.uk', NULL, '$2y$10$6VAEBpNCDCb/jYXGGK8qV.O59SPaD4fAYDFMx121qsmVjeibJglES', 's9QmoOiobNaWgJniw41dvStynXr9SolAvac3ZGRdxiAnW7BVVK9OHzlUebGF', '2019-08-21 16:21:14', '2019-08-21 16:32:06', 'images/781566386485.jpg', 'SPA', 'TONIC', 'Crown Resorts Horizon Coral Bay Avenue', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '26 623924', '26 623924', NULL),
(79, 'Veterinary surgeon S.K. Kyriakidi', 'veterinary@diaskedazwdiscounts.com', NULL, '$2y$10$gZqrGmtG591aAfSReXzhPuTqmbpSam9gHla8lyEZ3uIrVIhhCSz3G', NULL, '2019-08-22 20:44:29', '2019-08-22 20:58:09', 'images/791566489419.jpg', 'VETERINARY', 'surgeon S.K. Kyriakidi', 'Georgiou Griva Digeni 31 Παλαιομέτοχο', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '96 370796', '96 370796', NULL),
(80, 'LAGROME TRADING LTD', 'lagrome@cytanet.com.cy', NULL, '$2y$10$Pqyhu.IrK2VfUPAz0PsmAuJkXw8cpK9bhciYUF5vnllOzeB0iSh5y', 'qNiMlIM5Jk85gP6c4eIdPHLYuBcH8uXvQWYkQt7FeMCa0zA2T3IgvH4PLqoJ', '2019-08-24 13:27:14', '2019-11-28 21:03:16', 'images/801566635636.jpg', 'LAGROME', 'TRADING LTD', 'Ιαπέτου 11Α Άγιος Αθανάσιος 4101', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 579 844', '(+357) 99 965 858', NULL),
(81, 'PIMP MY BODY', 'evaggeloumichalis45@gmail.com', NULL, '$2y$10$mm/IpMHvNl5s3MAfN5mSy.vOLf/orqllQzXPqm/ATcJmSs4wujRZO', 'ogD64N2x1SvQwQuVAuu2Yo8wMzkiWzSr7lcQRF7IhbjWTY6CEm42nLkjLYUD', '2019-08-24 13:52:25', '2019-11-28 21:08:27', 'images/811566638278.jpg', 'PIMP', 'MY BODY', 'Γλάδστωνος 144Α  Άγιος Νικόλας 3032', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 99 181 406', '(+357) 99 181 406', NULL),
(82, 'DJ NICK SOUND AND VISION', 'Djnick@cytanet.com.cy', NULL, '$2y$10$qI.Jh4SDOvV.ya.rM7u27O46kPIqepwbq8gjEw.mmaR6HKwD/ePXS', '2rcIgqzcoAgGrb3eqSvr0fb8865ulixGGHaK4bxw3iryvKtClJ2q1jxVoFOz', '2019-08-24 14:35:13', '2019-08-24 14:43:46', 'images/821566639739.jpg', 'DJ NICK', 'SOUND AND VISION', '1 Platonos Str', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25351447', '99 428817', NULL),
(83, 'THRILLER BOUTIQUE', 'fdesfdsfdsos7@gmail.com', NULL, '$2y$10$ikBbZJJyRKx196eRJdgkUu7FUUOXnyRHEEeFr.QTjoJ8Dwy05LeCS', 'hONXgTdq58W6qzjbm6uxzvCKDPcpfsngm8RhsfaK6EWM0R3JWoWtTU6fz066', '2019-08-24 14:56:05', '2019-08-24 15:02:42', 'images/831566640934.jpg', 'THRILLER', 'BOUTIQUE', 'Αθηνών 42 44', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 356296', '25 356296', NULL),
(84, 'IL CASTELLO', 'ilcastello2004@gmail.com', NULL, '$2y$10$UkMBQ3wi4PAn33hq1SYZ3O4rXuZksYLOaFRHI2XdUUGYCA/p3ccnu', 'IAUvaTCakkysMdiU3ETe9vMpY0qBej4HzciBR3gNGyxBmSrZkrOYlV8XIVOQ', '2019-08-24 16:56:05', '2019-11-29 14:16:24', 'images/841566647896.jpg', 'IL', 'CASTELLO', 'Ειρήνης 23, 3042', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 356 222', '(+357) 25 356 222', NULL),
(85, 'PARIS SHOES', 'eiriniasialem7@gmail.com', NULL, '$2y$10$/EoCWxGm9UVPxVD.VOEohuF5showU/pjlli9XPboJ/lKUErvXoNZC', 'hBscCi8oGQhUknUVgZf2tkDQFb3GY3ydkc5UcvQEPRMTkIOvpKizj6erVMeE', '2019-08-24 17:19:21', '2019-11-27 21:51:12', 'images/851566649279.jpg', 'Ειρήνη', 'Ασιαλέμ', 'Λεωφόρος Ομονοιας 71Α', 'Λεμεσός', 'Κύπρος', NULL, '201.14', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 563 506', '(+357) 25 563 506', NULL),
(86, 'STALO HAIR STUDIO', 'stalo.rousou.84@gmail.com', NULL, '$2y$10$SHFf53TUNEqs5lpc.7vpmeXjk5v3oc4vfXVDzy0LB53MwmbjPt02S', 'tTLoRlvEhMo3T5fi0kyLKUoQaD7QtG35JX1rxZGsxm6s9uHQicS37dHbPyWM', '2019-08-24 18:06:20', '2019-11-28 20:54:11', 'images/861566652058.jpg', 'STALO', 'HAIR STUDIO', 'Παναγιώτη Αναγνωστοπούλου 50 ,  Κατω Πολεμίδια', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357)  99 275 844', '(+357)  99 275 844', NULL),
(87, 'JACK\'S PIZZA', 'androseid@live.com', NULL, '$2y$10$LSmVYDnn7DIwPIVuXe7XIeLrVZYybLO4uXsc2P6ewHD2ZF/Y2APKi', 'CUnGr0laUTbsiPCsSHEfmCzjUhchgYLX4qCHhLKVkZbUwilCKlHbo7c5Qklg', '2019-08-24 18:19:14', '2019-11-29 18:53:55', 'images/871566652924.jpg', 'JACK\'S', 'PIZZA', 'Μιχαήλ Μιχαηλίδη 15 , Άγιας Ζώνης 3030', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357 ) 25 342 047', '(+357) 25 366 424', NULL),
(88, 'ΤΑPS IRISH PUB BAR AND GRILL', 'Info@tapsbarlimassol.com', NULL, '$2y$10$YthRJF/QMm4gT5oS7d.EZewefyXuXb0rmmwwzDRTxV8P.rA9ctt7i', 'uufduD1P5FDA7uhusIz1BAjkdyMM2siNkWZsjOOy3a1AgliYB7HIyvomgghL', '2019-08-24 19:25:42', '2019-11-29 18:05:58', 'images/881566656859.jpg', 'ΤΑPS IRISH PUB', 'BAR AND GRILL', 'Amathus Avenue 70, Άγιος Τύχωνας', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 431 232', '(+357) 99 212 668', NULL),
(89, 'WOLFMAN GYM AND FITNESS CLUB', 'wolfman@diaskedazwdiscounts.com', NULL, '$2y$10$jJGK1.zSK.iszYN.ZRKIAe3.6GYCWp6Bz071G6fM.RAGXf6e7prPW', NULL, '2019-08-24 19:41:32', '2019-08-24 19:43:17', 'images/891566657762.jpg', 'WOLFMAN GYM', 'AND FITNESS CLUB', 'Agias Sofias 71A', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25735700', '25735700', NULL),
(90, 'RUMOURS BAR', 'rumoursbar@diaskedazwdiscounts.com', NULL, '$2y$10$nZffJeWdLvM6n6M8amPx4e1KlhMycSlEnNmeVoIVVfq5Kv5tz/n/S', NULL, '2019-08-24 22:09:38', '2019-08-24 22:12:55', 'images/901566666738.jpg', 'RUMOURS', 'BAR', 'Γεωρ Α 58 Γερμασόγεια 4047', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 457541', '99 457541', NULL),
(91, 'BUFFALO WINGS & RINGS', 'bwrlimassol@bwr.com.cy', NULL, '$2y$10$WDJ3SxnLI/ZXZBYE/NJV8ee1hjl8Xr7CTcSVc1abyblKqDTclyYrm', 'mF7SxkQCv8K9uncZJ75EeHQn9spXkMMB3EgNmk1AtZe6jlBtXBvbVLCoqgl0', '2019-08-25 15:31:24', '2019-08-25 15:36:15', 'images/911566729338.jpg', 'BUFFALO', 'WINGS & RINGS', 'Vashiotis Halmark  Tourist Area Γερμασόγεια', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 622229', '25 622229', NULL),
(92, 'MONASTIRAKI ATHEOYS', 'iconfilms1@gmail.com', NULL, '$2y$10$VeSi2djVhOiX2Lqb36kY3eeCZwIg.4jaK1jCNXjtrRpeY2eGHnXCC', 'hDTklOz5cVS00XQky2NlJwHgTH6GzMbEvpBHTXIKuAC5G9QvpynvvDjXRrRU', '2019-08-25 15:50:06', '2019-08-25 15:55:41', 'images/921566730541.jpg', 'MONASTIRAKI', 'ATHENS', 'Αττική 210', 'Αθήνα', 'Ελλάδα', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'GUEST BAR', 'guestmezebar@gmail.com', NULL, '$2y$10$CyN5C1QbKvEpKkZklUe/3..WmkKL8/bkuNVm0XCAHcukrFfHrmBNm', 'eYTuz5lHSYLTKKar5yvThtcM9ghvxxvmO4hqumUGMgps75pZZeJFzvxmT49D', '2019-08-25 16:01:03', '2019-11-29 20:11:12', 'images/931566730959.jpg', 'GUEST', 'BAR', 'Ζίκ - Ζάκ 24 Περιοχή Κάστρου 3036', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 357 757', '(+357) 99 370 055', NULL),
(94, 'KINGZ  PRODUCTION', 'KingzProductions.studios@gmail.com', NULL, '$2y$10$9/jOZgWsWCa//bc9uiBuZ.YsU3pNdV54KdtA4Bkqp4Q6sQmPV.LV2', 'gv8XYycw7QMaJHxuSHHepHn1a3xwXDfEotDuLM4ou99pLK88Dy5zt4ZodE5P', '2019-08-25 20:22:58', '2019-11-29 19:30:45', 'images/941566746684.jpg', 'KINGZ', 'PRODUCTION', 'Κουμανδαρίας 9, 3036', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 99 097 000', '(+357) 99 097 000', NULL),
(95, 'MAHMOUTS', 'mariapantechi74@gmail.com', NULL, '$2y$10$C3flYynK1Y5qlD4kHobnlunk6mc/TSTfU2m0.6iaediwcNggpcCy6', 'nIiiR79LSp8bsAf76OwXaTfGTXBpoV2sUDPe0JAthdG59QKbFw3H3N3kBSV6', '2019-08-25 20:41:22', '2019-08-25 20:46:27', 'images/951566747939.jpg', 'MAHMOUTS', 'MAHMOUTS', 'Dimocratias 72 agios ioannis', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 574892', '96615459', NULL),
(96, 'G.b SAKURAYA SUSHI and HEALTHY', 'sakurayalove@hotmail.com', NULL, '$2y$10$hKCoZH0dhdhXh/pHyYv9W.2uiadW0Wp0eEMwIYNf61C48Z3LDwrem', 'Z0tqpPlpsGWrwp9jfWNO0MXl0RdEJnpmvQJYpilg4wIp8a8qXixn7iWImz0m', '2019-08-25 21:13:13', '2019-08-25 21:15:41', 'images/961566749735.jpg', 'SAKURAYA SUSHI', 'and HEALTHY', 'October 28th Palaiometocho', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 960625', '99 960625', NULL),
(97, 'Ανδρέας Κλεάνθους Goldsmith LTD', 'g.kleanthous@gmail.com', NULL, '$2y$10$kF5rixftfBk4dbxaKXgXFe5QBC5FJQGBvVdvnGMwbM5lnJJwjSrR2', 'gnuplDv7ATIBJNuXLkx8dVvRIkg0OQ6uojh8Hp7kdKUOtrGXVFqwaVciJLzd', '2019-08-25 21:31:39', '2019-08-25 21:33:37', 'images/971566750789.jpg', 'Ανδρέας Κλεάνθους', 'Goldsmith LTD', '74 Phaneromenis Str', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '22669116', '22669116', NULL),
(98, 'COFFEE TREE CUP', 'charcons@gmail.com', NULL, '$2y$10$ivmF.qo6wRGmH0FOg1PB8Oqnl.FDGWqt/RDfyWDbaRMkTvu170Zy2', 'ck1XFwpAKvzjELrw2OwQvGPB3wxZxye8g9DpjstoggSkcdPYlQs7CklxEP0J', '2019-08-25 22:48:59', '2019-10-08 06:56:48', 'images/981566755918.jpg', 'COFFEE', 'TREE CUP', 'Αγίου Γεωργίου 118Β Λακατάμια', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '22 666630', '22 666630', NULL),
(99, 'KROKAS RANCH', 'krokas@diaskedazwdiscounts.com', NULL, '$2y$10$QQnyeJ94dDxI3EXt7kR2weXiCe1C0G/udee0vaY9.0NIVAh.K/HM.', NULL, '2019-08-25 23:11:48', '2019-08-25 23:14:15', 'images/991566756826.jpg', 'KROKAS', 'RANCH', 'Lythrodontas', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '96 607225', '96 607225', NULL),
(100, 'ΠΑΛΙΑ ΚΑΙ ΣΗΜΕΡΑ', 'mperosk@gmail.com', NULL, '$2y$10$puYg4lpvOyvPw2PNidhvPOcC6510SeWDoAJBoR0BceigXVadWiEby', 'IXrO186KQvBYKNV8nrfFywVvwN8yCgWsIyfpz0hJTw6h5XlmHpxUDQsxpEBt', '2019-08-28 18:05:22', '2019-08-28 18:42:31', 'images/1001566999635.jpg', 'ΠΑΛΙΑ', 'ΚΑΙ ΣΗΜΕΡΑ', 'Demetri Mitropoulou 12', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 302564', '99 302564', NULL),
(101, 'Andria constantinou', 'andriacwn04@gmail.com', NULL, '$2y$10$O7L1nIcS8x4CwtbDoj17TO9TvifMNvPEsj.uPglTtKJQkwOoOUcGS', NULL, '2019-08-28 20:01:14', '2019-08-28 20:01:14', 'img/user-img/default.jpg', 'Andria', 'Constantinou', 'Democratias 4', 'Lefkosia', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'PANORAMIC BALLOON DESIGNS', 'panoramic@cytanet.com.cy', NULL, '$2y$10$CBcBtAthgh/la2Cm/kg5b.KA0A1zMnr7kkgh/J4KnHemBO8UNicha', 'wBhAV6Mxeiftc1Tj4Eo0amVJBNG5DNjIqCUIQ9zMq6vZsjPrPIJdCXOL7zNt', '2019-08-28 20:38:22', '2019-08-29 19:26:57', 'images/1021567006767.jpg', 'PANORAMIC', 'BALLOON DESIGNS', 'Spyrou Kyprianou 90 Germasogeia', 'Λεμεσός', 'Κύπρος', NULL, '400.00', 'company_partner', 0, NULL, NULL, NULL, '22338880', '22338880', NULL),
(103, 'martiraki', 'andrikospekris@diaskedazw.com', NULL, '$2y$10$qfXRD4Heg0osGiiMdIvKxOBxyVBrQO4xzBM3SNSWgSgqgrDu/gHXG', 'yhPavf2gXJKHXsubAnZEStA9osvUhvUP78N3aJl27vUU9IiRS2wMmamRhqfO', '2019-09-01 00:00:56', '2019-09-01 00:00:56', 'img/user-img/default.jpg', 'Andreas', 'pekris', '3242423', 'Nicosia', 'Cyprus', NULL, '1000.00', 'seller', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'CRAZY JOE`S COFFEE', 'nicosdt@cytanet.com.cy', NULL, '$2y$10$zar1UNmSwhXuz4yzQFEZIe4j3KZMLx9EHCJaxfbJ2Ct4O09tFo/Qy', 'bZZDSaWeA10A6UG3TFex8y4zlUA1nrLayfIfRVp1sN3UTBn71NsFDVqmpZYt', '2019-09-04 21:58:04', '2019-10-19 21:57:17', 'images/1041567616360.jpg', 'CRAZY', 'JOE`S COFFEE', '86 arch makariou 3rd  Μέσα Γειτονιά', 'Λεμεσός', 'Κύπρος', NULL, '400.00', 'company_partner', 0, NULL, NULL, NULL, '25 750120', '25 750120', NULL),
(105, 'FRENCH DEPOT', 'frenchdepot@cytanet.com.cy', NULL, '$2y$10$oe/C5oxQhwhQAo385NA26.tovOAH3vm0dUoVC69bJNHv37Yf6ny9q', 'BqxLvQMdleXYHrO1xf1r8AgRcF5lR9NafW5Jhlj9ok4eLum2J0WPH1JrbJbA', '2019-09-04 22:19:01', '2019-09-04 22:22:46', 'images/1051567617761.jpg', 'FRENCH', 'DEPOT', '17 Spyrou Kyprianou Ave Linopetra', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 732007', '96 441436', NULL),
(106, 'SURVIVAL FORCE', 'marinos.gavr@gmail.com', NULL, '$2y$10$jydkY0W8m2MCAnrxTOlXQeHskLk357UJ1O.PKOy5lehHuqr3B02A2', 'KpoXGUJdUN7TWx8CXr6iKh9NYDsXXGCG8Jk5FkKCsgoKEEZUE0cfppSZ4cGw', '2019-09-06 03:04:19', '2019-11-26 15:31:59', 'images/1061567721150.jpg', 'Mαρίνος', 'Γαβριήλ', 'Αγιου Νεκταριου 17', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357)  99 167 136', '(+357)  99 167 136', NULL),
(107, 'EVOM computer solutions', 'evomcomputers@gmail.com', NULL, '$2y$10$4397.rBHpcPOQuFX2Fn5G.iRXvmXvPOMdI3eEtjncraea1UaISpOG', '7m3ibbcM2W1bDWn0gq86b42pTq1ElFoIhplWypG0cGAUTwqfSzbZGD7F0PTH', '2019-09-06 03:15:59', '2019-09-06 03:21:03', 'images/1071567722034.jpg', 'EVOM', 'computer solutions', '107 Eirinis str', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 747781', '99 747781', NULL),
(108, 'PSAROPOULOS FISH TAVERN', 'kostaspsaropoulos75@gmail.com\r\n', NULL, '$2y$10$IQfqtNRhX574VRODor2KfuZvkSeYJauMlkM/RD7gsINjpXG77tHv6', 'XEzByUN2eaZrleFZ2sYWVgpxfmHd3i3RvymSDO5WDprvR98I8OKBldqHeLmo', '2019-09-06 03:29:18', '2019-09-06 03:30:58', 'images/1081567722638.jpg', 'PSAROPOULOS', 'FISH TAVERN', 'Leoforos Akamantos  Latsi Polis', 'Πάφος', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '26 321089', '26 321089', NULL),
(109, 'SUGAR & COFFEE', 'andreaspier@outlook.com.gr', NULL, '$2y$10$Nx3GIUAxe.PlUKi.qvuAiueRptBFCHidAtGWAtN489nqjpFXrvy..', 'OjgOn6br9JQU4nbHCbEAayzgHhY8xKT8ROYiKpt4tziO7suk8LRlSS9MRvFa', '2019-09-06 04:06:36', '2019-11-26 15:24:54', 'images/1091567725050.jpg', 'Aντρέας', 'Πιερίδης', 'Ιδαλίου 44, Λεμεσός, Κύπρος', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357)  22 772 228', '(+357)  22 772 228', NULL),
(110, 'TRIPPERS BAR', 'trippers1@hotmail.com', NULL, '$2y$10$Sq4oBQoPlwcjSBNAiRe2TOGDHWwxJuZF9CsielRoOQPfVD4KRzbQy', 'Uu1f1GFhOJRPymucDNN6wO2hSpIWvWWWtyuUaPnLQK6OucxvCq9x8HQHIjfT', '2019-09-06 04:15:44', '2019-09-06 04:21:46', 'images/1101567725470.jpg', 'TRIPPERS', 'BAR', 'Roikou 2 Agios Tixonas', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25323170', '25323170', NULL),
(111, 'AΝΟΔΟΣ LIVE', 'pamboszak@yahoo.com', NULL, '$2y$10$35ZopImzXWsPxg193qicUe1PZVjFYTgwRSiKQpvfuH.BZeEbNkidm', 'eMg55Kp0ifqEqvfPBFbEUeszLGghW9oAXnvaktfUzbljOU2dvMwkL0Ya74Z4', '2019-09-06 04:26:48', '2019-11-26 15:18:19', 'images/1111567726142.jpg', 'AΝΟΔΟΣ', 'LIVE', 'Ελευθερίας  132', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357)  7000087', '(+357)  7000087', NULL),
(112, 'CROSSFIT COSMOS', 'glambros@hotmail.com', NULL, '$2y$10$U4bfYyBREgeIl1P.fAy.Z.EVc2x.g.wplEz03kuFf9Gea1peKiEXG', 'kceYrJ1bqsPXAy2tGp6F5jBhd6cTMAVUOuWn4XsxNoLkoKlIa7901thnDfJA', '2019-09-06 04:38:51', '2019-09-06 04:39:58', 'images/1121567726776.jpg', 'CROSSFIT', 'COSMOS', '1 Agiou Athanasiou Avenue', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 753703', '25 753703', NULL),
(113, 'AAB Grill & Kebab Corner', 'aab@diaskedazwdiscounts.com', NULL, '$2y$10$miMnrJsScstMJK4BhZgIseRZWySyP8gm8CPi5yYukG2NAwGQDyESq', 'rQBtygEDlD6qMgbh88uKXubgj0iv80pmpYHkItJb4xSvNeKcuIoLaVpDQOZD', '2019-09-06 04:46:38', '2019-09-06 04:52:55', 'images/1131567727310.png', 'AAB Grill', '& Kebab Corner', 'Ομήρου & Λέσβου 2  Μέσα Γειτονιά', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 430429', '25 430429', NULL),
(114, 'MATINA FASHION', 'matina2018fashion@gmail.com', NULL, '$2y$10$.QLeXSxVs1NnRLZBAHc8j.NIJt60bfzucbhVJ6B8HPkPxBIoOWAm2', '3ftwX5Zzzinyw4upKrEwsuAovBzGh2qBx2OCyjErPWMs3OWmVFSamqu92A3w', '2019-09-06 05:02:54', '2019-09-06 05:05:15', 'images/1141567728243.jpg', 'MATINA', 'FASHION', 'Griva Digeni 92A', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25106877', '25106877', NULL),
(115, 'COMIC BOOK PARADISE', 'imayrp@gmail.com', NULL, '$2y$10$igqoole1yOGvf8P3AmV1yeVskv1SGgQD2Ipz7wXcWqa.ZHmym324G', 'QVzAwKX160rNGbMAB7Ui7lxRjebj8HcgjmEuJ3uQ2coCxK36f1i4MSEJaRCe', '2019-09-06 19:09:32', '2019-09-06 19:12:17', 'images/1151567779133.jpg', 'COMIC', 'BOOK PARADISE', '114 agias filaxeos Apenanti Lykio Petrou k Pavlou', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '96 713 825', '96 713 825', NULL),
(116, 'NEW LINE', 'Yioula1982@gmail.com', NULL, '$2y$10$mHEXVvRnHzY92TnmihwG0eQ54t4ziQ2A3U5cN7wOvjLPd/x5CzY/i', 'zpm9ERViqIH3m96eIjLjLsyXzdElFKejEuaxpAWlrPWHdA6MnCACpVV2z8Vz', '2019-09-09 01:06:11', '2019-09-09 01:08:40', 'images/1161567973313.jpg', 'NEW', 'LINE', 'modestou panteli 2 Μέσα Γειτονιά', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 919676', '99 919676', NULL),
(117, 'MARIOS CHARI LTD', 'Info@marioschari.com', NULL, '$2y$10$bLFOB/exaUy12ir4vjN5zeb4FnxELjpdcDwT4LybrwrRcE2Pc1flC', 'JNkDsixthL70EPoNojcSC3F3V8cSpr8vtTrfMitQwbMyio4xaRoPAFcjPXcy', '2019-09-09 01:29:18', '2019-09-09 01:31:17', 'images/1171567974673.jpg', 'MARIOS', 'CHARI LTD', 'Agias Fylaxeos 91', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 252336', '25 252336', NULL),
(118, 'DA VINCI BAR', 'bavmen_88@bk.vu', NULL, '$2y$10$yf.U30O1AxJY0FifOfoJJOj.19j5g9XVlSQAK/DzkFJ3t3Fvo2s3S', 'gHLL6cHgIiUfBAwJLTj1SEoqrskrvoOXUlfyPnn8CPpc5WXusgkyFaLyMzO5', '2019-09-09 02:22:43', '2019-09-09 02:24:30', 'images/1181567977867.jpg', 'DA VINCI', 'BAR', 'Γενεθλίου Μιτέλλα 28 με Λουτρών 12', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 342030', '25 342030', NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `img_url`, `first_name`, `last_name`, `address`, `city`, `country`, `summary`, `points`, `type`, `active_package`, `active_date`, `last_message_datetime`, `po`, `telephone`, `mobile`, `video_url`) VALUES
(119, 'ΔΙΑΙΤΟΛΟΓΙΚΟ / ΔΙΑΤΡΟΦΟΛΟΓΙΚΟ ΓΡΑΦΕΙΟ ΜΑΡΙΕΛΛΑ ΑΝΔΡΕΟΥ ΗΛΙΑ', 'mariell_diet@hotmail.com', NULL, '$2y$10$ab1wgYhsgo9A4uloIeyyxuz2h6GbBFxMUFRG5PTDK.Vch1P0sLxBu', 'FhbzjNOxzfKXCHmJpxsZsQrw05RmqdcpBpDUbPHLZqJBfTJiTTaWD6SziZ34', '2019-09-09 02:33:55', '2019-11-28 20:36:41', 'images/1191567978558.png', 'Μαριέλλα', 'Ανδρέου Ηλία', 'Σύμης 4 Zακάκι 3048', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357)  99 758 030', '(+357)  99 758 030', NULL),
(120, 'Los Ninos', 'stavros.Karasamanis@gmail.com', NULL, '$2y$10$T0oIZmdqIAlIagwBNsK3zePvpXPTtIjdowdP3MNTYqh1YF4XKdNXG', 'nYp3nT29g4atkmkmoemmV3cL26cuxRd0J6nNiv6Woy3DR2mlcBRlqSUpzz5j', '2019-09-09 02:47:38', '2019-09-09 02:54:34', 'images/1201567979670.png', 'Los', 'Ninos', 'Σύντομα κοντά σας', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'ADAMOS FISH TAVERN', 'soteris62@gmail.com', NULL, '$2y$10$VTtRtG9pZaoG9oCNsp/ayutU/zipFOLc9WDc2EGKV9DN40xtftAhG', 'KKWTh5bi3gynHLOGhEZLFCW5Eb3gH1u2iGQcyPdg6L0uVK2X7j5yOPcORMF9', '2019-09-09 03:01:37', '2019-11-25 21:21:45', 'images/1211567980226.jpg', 'Σωτήρης', 'Γιασεμί', 'Γρίβα Διγενή 9, Πεντάκωμο', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 632 410', '(+357) 25 632 410', NULL),
(122, 'INDUSTRY BAR & FOOD', 'info@industrybar.club', NULL, '$2y$10$6pBHM3ILShk.BaUkvUGEZeC5kuK1sIqjBbSwghBFLhGBws9FUGwKe', 'M22kjxhxeWQFuoZW5wVe02VOPCAXvkOYqu34QIwhTqRrzN3UQ4kvq1n5mcg7', '2019-09-09 20:30:18', '2019-11-30 00:50:38', 'images/1221575053438.jpeg', 'Aντρέας', 'Αγαθοκλέους', 'Σαριπόλου 63, Λεμεσός, Κύπρος', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 340 666', '(+357)  25 340 666', NULL),
(123, 'SECUREXPERTS', 'securexperts@cytanet.com.cy', NULL, '$2y$10$wfqt/8jbfavhEd9In8XEpe0LJYTU5rpaflI6NzuF1oYOsEMwebS9m', '7sAnFQF5foERXnnbOcC1ZVyYVUDSSEv7UdG20FPhi6sJIGRjLAljgMiXRGEg', '2019-09-09 20:39:51', '2019-09-09 20:41:51', 'images/1231568043706.jpg', 'SECUREXPERTS', 'text', '18Β Λεωφόρος Σπύρου Κυπριανού', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '70 007292', '70 007292', NULL),
(124, 'MORBIDEZZA BEAUTY SPOT', 'morbidezzabeauty@hotmail.com', NULL, '$2y$10$l0QpkxvV5OuPec0f.0zs0uBbYXQBb1Tn8/83nZGlQHU2iLSV4aSOW', 'T23BpZrpdd3hGVkbJFPmii7shhBDPXMldMKlY2YyeAGUSsVKK7b1AovDnO2k', '2019-09-09 20:49:47', '2019-09-09 20:53:48', 'images/1241568044406.png', 'MORBIDEZZA', 'BEAUTY SPOT', 'Φειδιππίδου 22  Κάτω Πολεμίδια', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '96 658608', '96 658608', NULL),
(125, 'demos', 'demos@diaskedazwdiscounts.com', NULL, '$2y$10$R98awJwsTrShcG668Rx22.Qr31y.IIhA5vAoOB3KSCSISlqriDcny', 'VkZ8zUb5fksq6OdAqJnGOrBq50Vt6Pehdx8kcWTVL3GcgbGa3SPjA5GbCvhZ', '2019-09-10 21:41:32', '2019-09-10 21:41:32', 'img/user-img/default.jpg', 'sfsdf', 'csdds', 'dsfsfs', 'dvs', 'czcz', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'aaaa', 'greatroyalone@outlook.com', NULL, '$2y$10$5YzsfjF4TfNTYZwBbYqgW.u8QZRrlBurYp5E79IIdzCbkYeUT34yy', 'dxDDnnFiVHzyewn6hZTa0vRvCQ7XANNuqI8jnrAUeDGM2wHWMLNNctC6raG2', '2019-04-18 04:41:39', '2019-09-12 18:07:00', 'img/user-img/default.jpg', 'jin', 'zhuping', 'shenyang', 'china', 'china', 'Emmanuel is above all a Crypto and Bitcoin enthusiast. His technical expertise is no coincidence, as', '1007.01', 'user', 0, '0000-00-00', '0000-00-00 00:00:00', NULL, NULL, NULL, ''),
(127, 'ΠΑΜΠΟΣ ΧΑΡΑΛΑΜΠΟΥΣ', 'charalambouspampos1974@gmail.com', NULL, '$2y$10$kgcMPSwZxiL94EJNaZuAQOyqOOq4kQG0R5icrA0ZPMWBA1wrnCEA.', 'EsGtGNBzcCzbuO3qB93U6mx4GF1wSOTHE9twYJ4orGKKSejjPFKBxqozPA2j', '2019-09-13 22:10:08', '2019-09-13 22:12:11', 'images/1271568394689.jpg', 'ΠΑΜΠΟΣ', 'ΧΑΡΑΛΑΜΠΟΥΣ', 'Σύντομα κοντά σας', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99795909', '99795909', NULL),
(128, 'Yiannis Katsambas Ltd', 'chrysostomoskatsambas@gmail.com\r\n', NULL, '$2y$10$dHpsMIrjGyutLN9fFwO0YeS5Kq.PTZTaOK3E7erpYuTLi13/2VuVS', 'Erf2zdCqA8x39tEDhXziejCHC085ZieXFCDPkZhR1oAnSOUsdEX39q44kUmT', '2019-09-13 22:28:30', '2019-09-13 22:40:39', 'images/1281568396238.jpg', 'Yiannis', 'Katsambas Ltd', '26 A+B Stassinos Avenue P.O.Box 27218', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '22 751211', '22 751211', NULL),
(129, 'THE HUB CAFE', 'info@thehubcafe.eu', NULL, '$2y$10$trAgVGrQbJ3wg6GyniFqqu6XA5891rhUMgRMPozceUGd7oAocl35C', 'mzutW3q6RiPpdzbGM5co3P8aZDrjSKMrbd3qJJ246yoAVv8edvcJ9YcFNYHp', '2019-09-13 22:56:43', '2019-09-13 22:58:13', 'images/1291568397440.jpg', 'THE HUB', 'CAFE', 'Arch Makariou 201E', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '70 088727', '70 088727', NULL),
(130, 'ΣΚΟΥΡΟΥΒΙΝΝΟΣ', 'skourouvinos@diaskedazwdiscounts.com', NULL, '$2y$10$kQiT77KQiFxBJs5ShYiXsOc72V4sam2KcwiiGotf9GfGILv/ndT8W', 'yolf5bVKDLiTDJ2QKuUNGzxoKjzW1GnLbrx68bwJsmi2FyPWYTRNc3ZCz7uH', '2019-09-13 23:14:17', '2019-09-13 23:16:52', 'images/1301568398578.jpg', 'ΣΚΟΥΡΟΥΒΙΝΟΣ', 'ΣΚΟΥΡΟΥΒΙΝΟΣ', '2 Fidia and Polixeni Diamanti  Agios Athanasios', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 720692', '25 720692', NULL),
(131, 'TΟ ΑΓΚΙΣΤΡΟ', 'toagkistro@cytanet.com.cy', NULL, '$2y$10$f7WcBrKH/qhE849Eqbph5uu7LGtPEydYacpOETEIgJ0IzQelZRq.C', '9GI7YtNtWzNN15QUW5JeDuR8TrrYBJRrSOaRiiKkKDMEWyLGvJIHQKADznp5', '2019-09-14 01:21:39', '2019-09-14 01:24:07', 'images/1311568406242.jpg', 'TΟ ΑΓΚΙΣΤΡΟ', 'TΟ ΑΓΚΙΣΤΡΟ', 'Marinou Geroulanou 3 Shop  2 Kato Polemidia', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 748008', '25 748008', NULL),
(132, 'JULIA HAIR & BEAUTY SALON', 'mayham2001@gmail.com', NULL, '$2y$10$Uqu/5pg808v44p7GpmdouOU7mDyMPE7LICVqIdXpeLaJtqPQ7V6/W', 'wLdbSGWu4m3F7r60QLRPr3xjBJscb2tbkr1pDqzjNwUFpDVoBEyJQdBhR5ng', '2019-09-14 02:28:27', '2019-10-06 00:32:55', 'images/1321568410221.jpg', 'JULIA HAIR', '& BEAUTY SALON', 'Georgiou Neophytou St Agate House 8 Shop', 'Λεμεσός', 'Κύπρος', NULL, '900.00', 'company_partner', 3, '2019-10-01', '2021-10-01 00:00:00', NULL, '25 109545', '25 109545', NULL),
(133, 'GPETFOOD', 'Pssiloss@hotmail.com', NULL, '$2y$10$pbAznYvM.ZBTefC79MIjxu2dd/24SPMVjJ3RD.kchSMUAmE5vZ.Ea', 'VVtgOHvdAozRIaMI929b85CM6P8K2JxC1TO5etCV754c4crL67WDzgNnLg2y', '2019-09-14 02:41:25', '2019-10-29 00:37:54', 'images/1331572290132.jpg', 'GPETFOOD', 'GPETFOOD', 'Aριστοφάνους 20  Στρόβολος', 'Λευκωσία', 'Κύπρος', NULL, '900.00', 'company_partner', 0, NULL, NULL, NULL, '99 568747', '99 568747', NULL),
(134, 'GENERAL FLOORING', 'generalflooring@cytanet.com.cy', NULL, '$2y$10$er7voyQcCerFv41./EdeFeBjvgKLKYEPtCfaWZlcTvk.eoMYl84iy', 'HAkTiMnKtsqqL9FSWe7n5asZN7CYHBhUcH2FMrnF3VJA2r5KrEkhSXKOtaud', '2019-09-14 04:06:13', '2019-09-14 04:18:40', 'images/1341568416058.jpg', 'GENERAL', 'FLOORING', 'Ilia Papakiriakou 34 Egkomi', 'Λευκωσία', 'Κύπρος', NULL, '400.00', 'company_partner', 0, NULL, NULL, NULL, '22 350526', '22 350526', NULL),
(135, 'ALETRI TAVERN', 'gavrilisavva@gmail.com', NULL, '$2y$10$p4Ufvwdybz2lkzn.1VIlJ.MO6hp0ICDUAPFsthGvkZB5zHMP.zrga', 'XULNBahBygFVtsIuhSjypQVdlmzlYaiiYOluJz02GIeNWjZbRjtlN6tYQTwn', '2019-09-14 04:23:09', '2019-09-14 19:49:55', 'images/1351568472553.jpg', 'ALETRI', 'TAVERN', 'Aletri Tavern Agias Paraskevis 35 Germasogeia', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25 325212', '99 058143', NULL),
(136, 'LUXURY BEAUTY BY ANTONIA', 'Ibantonia@hotmail.com', NULL, '$2y$10$CUM5zVywBrI7jG1JvQNxm.HFTkxSvLsYczzT72ALvJUETdmh/BjBW', NULL, '2019-09-14 20:05:18', '2019-09-14 20:08:03', 'images/1361568473679.jpg', 'LUXURY', 'BEAUTY BY ANTONIA', 'Panagioti Anagnostopoulou 62 Kato Polemidia', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25253147', '99313147', NULL),
(137, 'PEPPERONI PIZZA', 'pepperonipizzacy@gmail.com', NULL, '$2y$10$5emyEMnsxAxH1lOab6LnGuebxOKyGrf7iamybMn1RwBMWDsd6MvX2', '9PfEUNaXTcGXjuY2YQDJwKxjIpyheYkK6e1WpIMdgokuWK2dQjebBoQ98JRk', '2019-09-14 23:47:15', '2019-09-15 00:03:53', 'images/1371568487008.jpg', 'PEPPERONI', 'PIZZA', '10 Kolonakiou', 'Λεμεσός', 'Κύπρος', NULL, '400.00', 'company_partner', 0, NULL, NULL, NULL, '25 322225', '25 322225', NULL),
(138, 'ΑΝΘΙΜΟΣ ΣΤΑΥΡΟΥ', 'anthimos@diaskedazwdiscounts.com', NULL, '$2y$10$tp2O4W6YNWHaMQBLMoC6o.Yh4A2EAzr/QqjJR7utJZVVasD06LBDO', 'sNNpagUTleEmbcv5BAytRX8nzdI3D2BlALjVFq3w8GfjPTmQtC3MkLkomYe5', '2019-09-15 00:08:09', '2019-09-15 00:11:32', 'images/1381568488280.jpg', 'ΑΝΘΙΜΟΣ', 'ΣΤΑΥΡΟΥ', 'Palli 1', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '25565015', '99565016', NULL),
(139, 'Γιάννη Φαίδωνος', 'giannisfedonos@diaskedazwdiscounts.com', NULL, '$2y$10$n3Q98m19D/4UL.IbJXmocuyr3.WVDZmbjTlo6cMnv8bhjMmxwlXZ.', 'TSnp6klwlVQqvuFWz0jkhSsKvwZ3CpZm27whlEWnVTMCVOuNGU4jzDDfHvgg', '2019-09-15 00:18:51', '2019-09-15 00:20:16', 'images/1391568488811.jpg', 'Γιάννη', 'Φαίδωνος', 'Σύντομα κοντά σας', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Κανέλλα Grill & Bar', 'kanellagrillandbar77@gmail.com', NULL, '$2y$10$MtrMVoCLrQJXqPGlcMBWEOcgpbPxJQnXeQ5XM0yAQxOi9nKeVC6NO', 'zkTzSNW04UsX296hWcnMFss590w95hWBDQnVFtLUOs6nkDlUw2cptKBQopgK', '2019-09-15 00:26:19', '2019-09-15 00:28:48', 'images/1401568489303.jpg', 'Κανέλλα Grill', '& Bar', 'Saripolou square', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 284284', '99 284284', NULL),
(141, 'ΚΕΝΤΡΟ ΕΠΙΔΙΟΡΘΩΣΗΣ ΚΑΙ ΦΡΟΝΤΙΔΑΣ ΔΕΡΜΑΤΟΣ', 'malaktos@diaskedazwdiscounts.com', NULL, '$2y$10$QuIFkQ0gwN1L0KU8DAmWJexwV30lPFV7qGuq7MsIFc/LaypoKJfrW', 'f1WjmtNKPJ93SKPFDvUOuAw1FJ1zSXnwc3wZwY2NtIV25IsieuAX9rxontha', '2019-09-15 20:40:00', '2019-09-15 20:49:01', 'images/1411568562541.png', 'ΚΩΣΤΑΣ', 'ΜΑΛΑΚΤΟΣ', 'Γρίβα Διγενή 112', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99633515', '99633515', NULL),
(142, 'Celebrities Studio', 'irenegeo@windowslive.com', NULL, '$2y$10$sqxU3RSMtstY2teGM35e5eILJpNQpOteTlBTsDEKMuIfYeUl304gu', 'P7fRt4yIWBnJNMnW6GSAm6KFP0XldGL69xEIXbHOYylTBj3lq1d4i6Zk8ZoK', '2019-09-15 20:59:16', '2019-09-15 21:01:46', 'images/1421568563284.jpg', 'Celebrities', 'Studio', 'Andokidou 18  Potamos germasogeias', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99638669', '99638669', NULL),
(143, 'CHAMPIONS THE SOCCER ACADEMY', 'd_dimitriou7@hotmail.com', NULL, '$2y$10$STP4NFlMOqbeqzwg/MIJEO6Qpipx3Nxk1IveoDSm9xEZw2C3MYgPW', 'ejhKLo5mAhSfxAj6YDS6HKMWOVy4sQWDDe7C6BfEOgROVXG1TFwetulfAaP6', '2019-09-15 21:23:12', '2019-11-22 13:13:58', 'images/1431574402473.jpg', 'CHAMPIONS', 'THE SOCCER ACADEMY', 'Πετράκη Γιάλλουρου 10 Ύψωνας, 4187', 'Λεμεσός', 'Κύπρος', NULL, '900.18', 'company_partner', 0, NULL, NULL, NULL, '99 687907', '99 687907', NULL),
(144, 'GRILL fm', 'grillfm@diaskedazwdiscounts.com', NULL, '$2y$10$WoiaAzmLo/KsG8sKMiPkaeDfI3P7JfVzZ1P87zDSxb1ZyRVREoVwi', 'f1DbjQHKzUmgvf8KHMPxVbi6kTTzjPKxh9JouD5iswDJCeH1S5HA9Psb4Psk', '2019-09-15 21:49:17', '2019-11-29 20:31:37', 'images/1441568566443.png', 'Grill', 'fm', 'Αθηνών 65, Πλατεία Ανεξαρτησίας', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357) 25 375 200', '(+357) 25 375 200', NULL),
(145, 'HUMAN CAPITAL PRO', 'info@humancapitalpro.com', NULL, '$2y$10$C0Kp5kM0BfqBBHRTOwuIZu3r1RSBhlGZl80mcu/cqla0tP/E.Fy72', 'g1RIlBEjFzkwEUnup822SH41vt2f0snAuWfR6vZEeYSadqLa6yA4KqPtDtv3', '2019-09-15 23:14:13', '2019-09-15 23:18:58', 'images/1451568571445.jpg', 'HUMAN', 'CAPITAL PRO', 'online', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '70 087075', '70 087075', NULL),
(146, 'Andreas', 'andreas@diaskedazw.com', NULL, '$2y$10$.PDapttlFrJRRq5RciV4buFYWEbMxEaUwQybR73HgZDf6z4PuaXCu', 'W8cJLotFcU7MjjrEIA14m4VKqDJR5sMFGb0H4kPsRhSAhBjvmRDuuPOSjp8B', '2019-09-16 03:54:02', '2019-09-16 03:54:02', 'img/user-img/default.jpg', 'Eiee', 'Djidd', '7373', 'Ueueu', 'Kuprous', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'KK CAR BATTERIES', 'info@kkbatteries.com', NULL, '$2y$10$/JZagymDH.dL3Ef/pC/ay.qruhsMUhee1tJBmN0mJcKhPuGqoniE2', 'JvJevkXlvTkGBphWpTczIeO7U2p2wEWMcULSWWJ6ZzTTdcwb5hYaEePim7a1', '2019-09-17 00:44:18', '2019-11-28 20:46:56', 'images/1471568727711.jpg', 'Κωνσταντίνος', 'Κώστα', 'Ηλία Ιλιάδη 12 Κάτω Πολεμίδια 4154', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '(+357)  99 826 826', '(+357)  99 939 939', NULL),
(148, 'SMS DECO SOLUTIONS LTD', 'smsdecosolutions@gmail.com', NULL, '$2y$10$Tz72lWQ98C6wYH.0c..HOOulGi2gz4AtXlOqso/kLPetHTbYSMNva', 'V4cTmZU4gjSIthgUlOVcAOzuyG4mzrEXwTHhpJ1KVCkiyWmvju8A4zefIENo', '2019-09-17 18:55:05', '2019-09-17 18:57:33', 'images/1481568728650.png', 'SMS DECO', 'SOLUTIONS LTD', 'Stefanou Granitsa 21 Lemesos Municipality', 'Λεμεσός', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '99 599821', '99 599821', NULL),
(149, 'Ambitus Fitness Gym', 'info@ambitusfitness.com', NULL, '$2y$10$UNajGp9i4wYQ1mRZ.YHW3O20UcWVyMZfpvsgsGYbbLcUMSN17Bb9q', 'aYuB07j3a8W9shiKGWF08uu9pm24GmI4WEdTMTAntEVdUX5ALTJOVUw1rV4Z', '2019-09-18 22:03:58', '2019-09-19 18:42:59', 'images/1491568900574.png', 'Ambitus', 'Fitness Gym', 'Karava 6C Platy Aglantzias', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '22 253606', '22 253606', NULL),
(150, 'IHS TECHNOLOGY', 'IHS@diaskedazwdiscounts.com', NULL, '$2y$10$RLo/wfweWebhuVS/NsCZXug53ePuxy7nL9x5MFDXJ9bqycsfE1Rra', 'WDTbmE89icjp43jOJxcVwWIuPuteS2jQAwAQZRzVKoJTKjkXUaV937OigZUA', '2019-09-20 00:10:37', '2019-09-20 00:11:54', 'images/1501568920305.jpg', 'IHS', 'TECHNOLOGY', 'Σύντομα κοντά σας', 'Online', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'JOJO', 'jojo@diaskedazwdiscounts.com', NULL, '$2y$10$z3RqHusUynAAHwoWJr8Ymub.KJH1gPGvJR5PEAMJrXwPNTjKWdwd6', 'niIazNy6dJMefskGdXIHj425vG9Hh9zU24VeElEOT85AmtrP1vDuc0qMAb9W', '2019-09-20 00:21:01', '2019-09-20 00:22:42', 'images/1511568920958.jpg', 'JOJO', 'Fitness', 'Σύντομα κοντά σας', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '22 102323', '22 102323', NULL),
(152, 'OJO SUNGLASESS', 'ojo@diaskedazwdiscounts.com', NULL, '$2y$10$/BSArl9tQDoiXYgO9/X1iu1OPCvj3xNpgfXchxcGU7csTcCuPhxbS', 'DeUTvlGSVoe6eZULLf2oT8zjDpVeE17UPVMA39QckeCmpWBcMU7o7l1bD4MB', '2019-09-20 00:34:46', '2019-09-20 00:36:12', 'images/1521568921767.png', 'OJO', 'SUNGLASESS', '78A Odos Stavrou Strovolos', 'Λευκωσία', 'Κύπρος', NULL, '500.00', 'company_partner', 0, NULL, NULL, NULL, '22 369869', '22 369869', NULL),
(153, 'Athens', 'athina.diaskedazw@gmail.com', NULL, '$2y$10$Om40Thod6dClOfbdHgyoc.14lo0Pd/j22G7McitFxca063jER7LIC', NULL, '2019-09-21 19:42:10', '2019-09-21 19:42:10', 'img/user-img/default.jpg', 'Αθηνα', 'Νικολαου', 'Τασου Ισαακ 4', 'Επταγωνεια', 'Κυπρος', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'CY Gallery', 'mareminune1@yahoo.com', NULL, '$2y$10$rY32ivgFJhmpPMVSj3MlOuuzY.J4Lk0YS/OkaiQqMKtZ91PY2AGve', 'ZNumitMWnUF1AJxe12XfzT0qMNtEk0pxC6MTIIofOksEGE6jBTLjV10Oj8zx', '2019-10-06 00:37:43', '2019-10-06 00:45:10', 'images/1541570304671.jpg', 'Nikol', 'Kikesis', 'somewhere', 'Larnaca', 'Cyprus', NULL, '500.00', 'seller', 3, '2019-10-05', '2019-10-26 00:00:00', NULL, '99580036', '99580036', NULL),
(155, 'info@fosetico.com', 'info@fosetico.com', NULL, '$2y$10$tBzJ0tBM2PonLaqzWx6e0OhKjgbAcGjqu3jpffta3UDpuIvaLuAPO', NULL, '2019-10-15 11:12:41', '2019-10-15 11:12:41', 'img/user-img/default.jpg', 'Andreas', 'Aresti', 'Arkadias 38', 'Limassol', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'ΤΑΒΕΡΝΑ ΠΙΝΑΚΙΟ', 'info@pinakio.com', NULL, '$2y$10$PujLcXUxh1xkIMseByN8HO/JW8R1iBq/ih0cb4gqJp8Nu3V.BtGAG', 'hJqlNQHq69ueCJ7w0o1LSyLhvLiVTrCJ4JVc8ruPD08DGmvHZa4SEBUAXaYw', '2019-10-29 00:52:38', '2019-10-30 04:12:05', 'images/1561572292382.jpg', 'ΤΑΒΕΡΝΑ', 'ΠΙΝΑΚΙΟ', 'Σταυραετού Μαχαιρά 42, Άγιος Αθανάσιος', 'Λεμεσός', 'Κύπρος', NULL, '904.77', 'company_partner', 0, NULL, NULL, NULL, '(+357 )25 747480', '(+357 )25 747480', NULL),
(157, 'Nikol', 'nikoleta-94@hotmail.com', NULL, '$2y$10$QW/PsbxUhvIpdx.80W.eieGTU9Obmsex3S7ur0zeqlg1tu1x6FyWy', NULL, '2019-11-20 13:03:57', '2019-11-20 13:03:57', 'img/user-img/default.jpg', 'Nikoleta', 'Charalambous', 'Kithnou 13 Latsia', 'Lefkosia', 'Kipros', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Costas', 'costas38295@gmail.com', NULL, '$2y$10$6aIb6sevy6TSRcnWtYRqMep3/zleggycpauiQTpQPfjmJ.uOnFpuS', NULL, '2019-11-20 16:55:25', '2019-11-20 16:55:25', 'img/user-img/default.jpg', 'Costas', 'Pitsillides', 'Iosif xatziosif 115', 'Nicosia', 'Cyprus', NULL, '1000.00', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Essential Oils & Diffusers', 'georgiafasko@gmail.com', NULL, '$2y$10$2cIbXgAbW0WfeDY4l7zNHu4/3OM9hibhCgvtx1MiLenNr20Eb6AEC', 'ro317OKiMCVAgbD8z3zhDp6Iviqsyz3h47umMeSUZS5hQqYCdaZebJU7qSx4', '2019-11-28 20:41:08', '2019-11-28 22:08:17', 'images/1591574952282.jpg', 'Essential Oils', '& Diffusers', '1η Απριλίου 21 , Μέσα Γειτονιά', 'Λεμεσός', 'Κύπρος', NULL, '800.54', 'company_partner', 0, NULL, NULL, NULL, '+357 99 786 416', '+357 99 786 416', 'videos/upload/1591574953909.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `user_service`
--

CREATE TABLE `user_service` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_service`
--

INSERT INTO `user_service` (`user_id`, `service_id`) VALUES
(11, 1),
(10, 1),
(10, 2),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `video_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adimg_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promote` tinyint(4) DEFAULT NULL,
  `like` int(11) DEFAULT '0',
  `dislike` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `partner_id`, `video_url`, `title`, `adimg_url`, `popular`, `updated_at`, `created_at`, `description`, `promote`, `like`, `dislike`, `status`) VALUES
(1, 0, 'videos/upload/141555573538.mp4', 'LIVE', 'images/videos/141555573532.PNG', 0, '2019-08-26 13:20:58', '2019-04-18 07:45:59', 'This is frist video', 0, 0, 0, 2),
(2, 0, 'videos/upload/131555573605.mp4', 'Hi', 'images/videos/131555573598.jpg', 0, '2019-08-26 13:22:05', '2019-04-18 07:46:55', 'Hi this is my first video.', 0, 0, 0, 2),
(4, 0, 'videos/upload/151555573815.mp4', 'ASDF', 'images/videos/151555573807.png', 0, '2019-08-28 12:18:55', '2019-04-18 07:50:24', 'ASDF FIRST BVIDEo', 0, 0, 0, 2),
(5, 0, 'videos/upload/141555573538.mp4', 'LIVE', 'images/videos/141555573532.PNG', 0, '2019-08-28 12:19:09', '2019-04-19 07:45:59', 'This is frist video', 0, 0, 0, 2),
(8, 0, 'videos/upload/zise.mp4', 'Ζήσε τη ζωή σου', 'images/videos/first.jpg', 0, '2019-08-26 08:20:45', '2019-04-27 20:06:25', 'Zise ti zoi sou', 0, 0, 0, 1),
(9, 0, 'videos/upload/131556395792.mp4', 'Sport 1', 'images/videos/131556395787.jpg', 0, '2019-08-28 12:19:23', '2019-04-27 20:10:05', 'Sport 1 Lecture', 0, 0, 0, 2),
(10, 0, 'videos/upload/131556395819.mp4', 'Sport 2', 'images/videos/131556395813.jpg', 0, '2019-08-28 12:19:33', '2019-04-27 20:10:26', 'Sport 2 Lecture', 0, 0, 0, 2),
(11, 0, 'videos/upload/131556395840.mp4', 'Sport 3', 'images/videos/131556395835.jpg', 0, '2019-08-28 12:19:43', '2019-04-27 20:10:53', 'Sport 3 Lecture', 0, 0, 0, 2),
(12, 0, 'videos/upload/mall.mp4', 'Mall Υπηρεσιών Diaskedazw', 'images/videos/second.jpg', 0, '2019-08-26 08:37:26', '2019-04-27 20:11:19', 'Mall Υπηρεσιών Diaskedazw', 0, 0, 0, 1),
(13, 0, 'videos/upload/131556395792.mp4', 'Sport 1', 'images/videos/131556395787.jpg', 0, '2019-08-28 12:19:53', '2019-04-27 20:10:05', 'Sport 1 Lecture', 0, 0, 0, 2),
(14, 0, 'videos/upload/131556395819.mp4', 'Sport 2', 'images/videos/131556395813.jpg', 0, '2019-08-28 12:20:08', '2019-04-27 20:10:26', 'Sport 2 Lecture', 0, 0, 0, 2),
(15, 0, 'videos/upload/131556395840.mp4', 'Sport 3', 'images/videos/131556395835.jpg', 0, '2019-08-28 12:20:22', '2019-04-27 20:10:53', 'Sport 3 Lecture', 0, 0, 0, 2),
(16, 0, 'videos/upload/protasi.mp4', 'Επιχειρηματική πρόταση Diaskedazw', 'images/videos/third.jpg', 0, '2019-08-26 08:20:56', '2019-04-27 20:11:19', 'Επιχειρηματική πρόταση Diaskedazw', 0, 0, 0, 1),
(17, 0, 'videos/upload/131556395792.mp4', 'Sport 1', 'images/videos/131556395787.jpg', 0, '2019-08-28 12:20:32', '2019-04-27 20:10:05', 'Sport 1 Lecture', 0, 0, 0, 2),
(18, 0, 'videos/upload/131556395819.mp4', 'Sport 2', 'images/videos/131556395813.jpg', 0, '2019-08-28 12:20:43', '2019-04-27 20:10:26', 'Sport 2 Lecture', 0, 0, 0, 2),
(19, 0, 'videos/upload/131556395840.mp4', 'Sport 3', '', 0, '2019-08-28 12:20:58', '2019-04-27 20:10:53', 'Sport 3 Lecture', 0, 0, 0, 2),
(20, 73, 'videos/upload/mall.mp4', 'Εξειδικευμένοι Συνεργάτες ', 'images/videos/last.jpg', 0, '2019-08-26 08:38:48', '2019-04-27 20:11:19', 'Εξειδικευμένοι Συνεργάτες ', 2, 0, 0, 1),
(21, 0, 'videos/upload/101565447157.mp4', 'New Video', 'images/videos/101565447094.jpg', 0, '2019-08-28 12:21:08', '2019-08-10 14:26:10', 'sdlkfjsdlkfsdfsdf', 1, 0, 0, 2),
(22, 0, 'videos/upload/121565595212.mp4', 'New Video', 'images/videos/121565595178.jpg', 0, '2019-08-28 12:21:24', '2019-08-12 07:33:40', 'sdfsdfsdf', 0, 0, 0, 2),
(23, 73, 'videos/upload/731566258364.mp4', NULL, NULL, NULL, '2019-08-19 23:46:04', '2019-08-19 20:18:46', NULL, 3, 0, 0, 0),
(24, 73, 'videos/upload/731566306459.mp4', 'Ζήσε τη Ζωή σου', 'images/videos/731566306289.jpg', NULL, '2019-08-26 08:38:57', '2019-08-20 13:09:01', 'Ζήσε τη Ζωή σου', 2, 0, 0, 1),
(25, 73, 'videos/upload/731566309371.mp4', 'Mall Υπηρεσιών Diaskedazw', 'images/videos/731566309131.jpg', NULL, '2019-08-26 08:39:16', '2019-08-20 13:56:22', 'Mall Υπηρεσιών Diaskedazw', 2, 0, 0, 1),
(26, 73, 'videos/upload/731566310050.mp4', 'Επιχειρηματική πρόταση Diaskedazw', 'images/videos/731566309780.jpg', NULL, '2019-08-26 08:39:07', '2019-08-20 14:09:56', 'Επιχειρηματική πρόταση Diaskedazw', 2, 0, 0, 1),
(27, 41, 'videos/upload/731566315271.mp4', 'Επιχειρηματικά', 'images/videos/koreli3444.jpg', NULL, '2019-08-26 08:40:35', '2019-08-20 15:34:42', 'Επιχειρηματικά', 0, 0, 0, 1),
(28, 14, 'videos/upload/731566318108.mp4', 'Life Coach', 'images/videos/aggelk.jpg', NULL, '2019-08-26 08:21:08', '2019-08-20 16:24:15', 'Life Coach', 0, 0, 0, 1),
(29, 40, 'videos/upload/401561914427.mp4', 'Yoga - Διαλογισμός', 'images/videos/kalliani.jpg', 0, '2019-08-26 08:19:36', '2019-08-20 18:39:52', 'Yoga - Διαλογισμός', 0, 0, 0, 1),
(30, 13, 'videos/upload/131561580348.mp4', 'Βοτανολόγος', 'images/videos/nontas.jpg', NULL, '2019-08-26 08:20:34', '2019-08-21 01:12:10', 'Βοτανολόγος', 0, 0, 0, 1),
(31, 96, 'videos/upload/961566750210.mp4', 'That Red Dragon Roll looks so vibrant and fresh', 'images/videos/961566750201.jpg', 0, '2019-08-26 08:40:50', '2019-08-25 16:24:12', '1', 0, 0, 0, 1),
(32, 96, 'videos/upload/961566750393.mp4', 'Our california rolls are irresistible. You\'ll fall in love.', 'images/videos/961566750386.jpg', 0, '2019-08-26 08:40:58', '2019-08-25 16:26:54', '2', 0, 0, 0, 1),
(33, 98, 'videos/upload/981566756350.mp4', 'Μοσχαμυρίζει καφές!', 'images/videos/981566756350.jpg', 0, '2019-08-26 08:41:06', '2019-08-25 18:05:57', 'Μοσχαμυρίζει καφές!', 0, 0, 0, 1),
(34, 102, 'videos/upload/1021567007905.mp4', 'Balloon Madness!', 'images/videos/1021567007881.jpg', 0, '2019-08-28 16:02:42', '2019-08-28 15:59:01', 'Balloon Madness!', 0, 0, 0, 1),
(41, 54, 'videos/upload/731567620056.mp4', 'Life Coach', 'images/videos/sokratous.jpg', NULL, '2019-09-04 18:02:15', '2019-09-04 18:01:52', 'Life Coach', 0, 0, 0, 1),
(42, 38, 'videos/upload/731567629054.mp4', 'Αθλητική Επιστήμη', 'images/videos/731567628967.jpg', NULL, '2019-10-14 21:06:01', '2019-09-04 20:31:07', 'Αθλητική Επιστήμη', 0, 0, 0, 1),
(43, 137, 'videos/upload/1371568487426.mp4', 'Fresh every day and prepared with the highest standards for food safety...know what you eat!', 'images/videos/1371568487412.jpg', 0, '2019-10-14 21:05:56', '2019-09-14 18:57:46', 'Fresh every day and prepared with the highest standards for food safety...know what you eat!', 0, 0, 0, 1),
(44, 137, 'videos/upload/1371568487485.mp4', 'A great meal looks right from the start!', 'images/videos/1371568487475.jpg', 0, '2019-10-14 21:05:58', '2019-09-14 18:58:21', 'A great meal looks right from the start!', 0, 0, 0, 1),
(45, 137, 'videos/upload/1371568487521.mp4', 'Για να φας...πραγματική pizza', 'images/videos/1371568487509.jpg', 0, '2019-10-14 21:06:08', '2019-09-14 18:58:58', 'Για να φας...πραγματική pizza', 0, 0, 0, 1),
(46, 39, 'videos/upload/391571086874.mp4', 'Λιάνα Νικολάου', 'images/videos/391571086872.jpg', 0, '2019-10-14 21:05:45', '2019-10-14 21:02:29', 'Life Coaching', 1, 0, 0, 1),
(47, 39, 'videos/upload/391571517554.mp4', 'Life Coach', 'images/videos/391571517381.jpg', 0, '2019-10-19 20:41:10', '2019-10-19 20:39:26', 'Καλωσόρισμα', 0, 0, 0, 1),
(48, 156, 'videos/upload/1561572295750.mp4', NULL, 'images/videos/1561572295709.jpg', 0, '2019-10-28 20:59:54', '2019-10-28 20:52:59', 'Πάρτε μια μικρή γεύση, για το τι συμβαίνει στο #pinakiocy απο την ομάδα μας, πριν εσείς έρθετε στο χώρο μας. #behindthescenes', 0, 0, 0, 2),
(49, 156, 'videos/upload/1561572295750.mp4', 'Ταβέρνα Πινάκιο', 'images/videos/1561572295709.jpg', 0, '2019-10-28 21:00:03', '2019-10-28 20:53:31', 'Πάρτε μια μικρή γεύση, για το τι συμβαίνει στο #pinakiocy απο την ομάδα μας, πριν εσείς έρθετε στο χώρο μας. #behindthescenes', 0, 0, 0, 1),
(50, 156, 'videos/upload/1561572296117.mp4', 'Αυτά μόνο εδώ θα τα βρείτε !!!', 'images/videos/1561572296107.jpg', 0, '2019-10-28 21:00:14', '2019-10-28 20:56:42', 'Όταν η γεύση παύει να είναι απλά μια γεύση και γίνεται @pinakiocy', 0, 0, 0, 1),
(51, 156, 'videos/upload/1561572296231.mp4', 'Δημιουργούμε από την παράδοση!!!', 'images/videos/1561572296222.jpg', 0, '2019-10-28 21:00:24', '2019-10-28 20:58:05', 'Νέο μενού ακόμα πιο παραδοσιακό!!!', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `visit_statistic`
--

CREATE TABLE `visit_statistic` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `partner_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visit_statistic`
--

INSERT INTO `visit_statistic` (`id`, `ip_address`, `date`, `partner_id`) VALUES
(1, '69.6.28.42', '2019-06-25', 14),
(2, '69.6.28.42', '2019-06-26', 10),
(3, '65.18.208.218', '2019-06-26', 10),
(4, '185.78.129.215', '2019-06-26', 10),
(5, '185.230.112.43', '2019-06-26', 10),
(6, '69.6.28.42', '2019-06-27', 13),
(7, '31.153.73.73', '2019-06-27', 15),
(8, '213.149.185.41', '2019-06-27', 14),
(9, '31.216.65.5', '2019-06-27', 10),
(10, '46.251.120.141', '2019-06-27', 13),
(11, '213.7.98.113', '2019-06-28', 10),
(12, '46.251.118.88', '2019-06-28', 15),
(13, '213.207.135.8', '2019-06-28', 13),
(14, '69.6.28.42', '2019-06-28', 40),
(15, '80.244.26.222', '2019-06-29', 38),
(16, '93.109.0.187', '2019-06-29', 39),
(17, '69.6.28.42', '2019-06-29', 39),
(18, '46.251.118.88', '2019-06-29', 39),
(19, '69.6.28.42', '2019-06-30', 41),
(20, '104.247.130.170', '2019-06-30', 10),
(21, '46.199.16.130', '2019-06-30', 39),
(22, '213.7.246.82', '2019-07-01', 41),
(23, '69.6.28.42', '2019-07-01', 41),
(24, '62.228.0.67', '2019-07-01', 39),
(25, '46.251.118.88', '2019-07-01', 14),
(26, '62.228.170.139', '2019-07-02', 38),
(27, '46.199.211.165', '2019-07-02', 40),
(28, '213.207.135.26', '2019-07-02', 40),
(29, '69.6.28.42', '2019-07-02', 40),
(30, '31.153.25.103', '2019-07-02', 13),
(31, '213.133.90.54', '2019-07-02', 15),
(32, '69.6.28.42', '2019-07-03', 13),
(33, '46.199.247.58', '2019-07-03', 15),
(34, '185.78.129.215', '2019-07-03', 38),
(35, '80.244.26.222', '2019-07-03', 38),
(36, '31.153.91.197', '2019-07-04', 10),
(37, '46.199.38.12', '2019-07-04', 14),
(38, '91.184.209.65', '2019-07-04', 38),
(39, '185.78.129.215', '2019-07-04', 40),
(40, '164.215.10.235', '2019-07-05', 15),
(41, '83.168.47.178', '2019-07-05', 38),
(42, '46.199.224.146', '2019-07-05', 14),
(43, '216.241.152.137', '2019-07-05', 38),
(44, '194.30.131.42', '2019-07-05', 40),
(45, '62.74.0.128', '2019-07-05', 15),
(46, '65.18.216.35', '2019-07-05', 10),
(47, '62.74.3.28', '2019-07-05', 15),
(48, '139.138.206.26', '2019-07-05', 38),
(49, '91.184.208.151', '2019-07-05', 15),
(50, '94.66.223.142', '2019-07-05', 15),
(51, '124.13.124.248', '2019-07-06', 15),
(52, '128.0.237.216', '2019-07-06', 15),
(53, '213.207.135.51', '2019-07-06', 15),
(54, '213.7.137.0', '2019-07-06', 39),
(55, '91.184.209.65', '2019-07-08', 40),
(56, '216.241.153.116', '2019-07-08', 38),
(57, '104.247.132.212', '2019-07-08', 10),
(58, '35.214.255.127', '2019-07-08', 41),
(59, '65.18.208.218', '2019-07-09', 10),
(60, '213.7.38.227', '2019-07-09', 15),
(61, '194.42.151.125', '2019-07-09', 40),
(62, '69.6.28.42', '2019-07-09', 15),
(63, '104.247.130.170', '2019-07-10', 10),
(64, '213.207.135.22', '2019-07-12', 15),
(65, '213.207.159.27', '2019-07-15', 38),
(66, '212.50.97.52', '2019-07-16', 10),
(67, '213.133.95.98', '2019-07-19', 15),
(68, '213.207.159.54', '2019-07-19', 38),
(69, '213.133.95.98', '2019-07-22', 10),
(70, '160.202.160.3', '2019-07-23', 15),
(71, '69.6.28.42', '2019-07-23', 10),
(72, '69.6.28.42', '2019-07-24', 10),
(73, '69.6.28.42', '2019-07-25', 10),
(74, '185.78.129.215', '2019-07-25', 10),
(75, '69.6.28.42', '2019-07-27', 54),
(76, '69.6.28.42', '2019-07-28', 38),
(77, '69.6.28.42', '2019-07-29', 38),
(78, '213.133.95.98', '2019-07-29', 10),
(79, '213.207.159.1', '2019-07-30', 38),
(80, '185.162.16.188', '2019-07-31', 40),
(81, '69.6.28.42', '2019-08-01', 10),
(82, '94.46.198.88', '2019-08-02', 13),
(83, '213.133.87.62', '2019-08-02', 38),
(84, '65.18.208.218', '2019-08-04', 10),
(85, '213.207.159.44', '2019-08-04', 13),
(86, '185.230.112.43', '2019-08-05', 38),
(87, '213.133.95.98', '2019-08-05', 38),
(88, '213.7.204.194', '2019-08-05', 41),
(89, '80.244.26.222', '2019-08-05', 38),
(90, '83.168.47.5', '2019-08-06', 40),
(91, '82.102.124.174', '2019-08-08', 41),
(92, '213.140.195.230', '2019-08-08', 41),
(93, '82.102.63.160', '2019-08-08', 41),
(94, '87.228.190.134', '2019-08-10', 54),
(95, '222.112.215.115', '2019-08-10', 10),
(96, '160.202.160.104', '2019-08-12', 10),
(97, '213.7.34.95', '2019-08-12', 54),
(98, '69.6.28.42', '2019-08-12', 13),
(99, '213.7.34.95', '2019-08-13', 38),
(100, '213.140.195.128', '2019-08-13', 10),
(101, '213.7.34.95', '2019-08-14', 38),
(102, '31.216.123.75', '2019-08-17', 38),
(103, '81.4.176.221', '2019-08-19', 38),
(104, '62.228.182.136', '2019-08-20', 40),
(105, '176.92.147.184', '2019-08-20', 38),
(106, '62.228.182.136', '2019-08-21', 13),
(107, '213.133.95.98', '2019-08-21', 38),
(108, '62.228.182.136', '2019-08-24', 13),
(109, '31.153.34.201', '2019-08-24', 39),
(110, '62.228.182.136', '2019-08-26', 40),
(111, '113.232.117.146', '2019-08-26', 10),
(112, '109.110.240.167', '2019-08-27', 10),
(113, '185.162.16.188', '2019-08-28', 54),
(114, '81.4.176.221', '2019-08-29', 14),
(115, '113.232.116.49', '2019-08-31', 39),
(116, '155.94.207.5', '2019-08-31', 41),
(117, '185.162.16.188', '2019-08-31', 41),
(118, '185.162.16.188', '2019-09-02', 10),
(119, '185.162.16.188', '2019-09-04', 38),
(120, '104.203.155.97', '2019-09-04', 10),
(121, '65.18.208.218', '2019-09-05', 10),
(122, '128.0.238.245', '2019-09-06', 40),
(123, '213.7.93.192', '2019-09-06', 10),
(124, '185.78.129.215', '2019-09-10', 38),
(125, '213.149.173.174', '2019-09-10', 15),
(126, '83.168.32.249', '2019-09-10', 39),
(127, '213.7.117.58', '2019-09-11', 54),
(128, '213.149.190.0', '2019-09-14', 13),
(129, '213.207.135.62', '2019-09-15', 13),
(130, '185.7.158.189', '2019-09-16', 13),
(131, '213.133.95.98', '2019-09-16', 41),
(132, '213.149.190.0', '2019-09-16', 40),
(133, '213.7.230.85', '2019-09-17', 39),
(134, '46.199.58.100', '2019-09-17', 41),
(135, '62.228.104.192', '2019-09-17', 41),
(136, '69.94.112.66', '2019-09-19', 10),
(137, '65.18.216.35', '2019-09-19', 41),
(138, '212.50.101.125', '2019-09-19', 10),
(139, '212.50.97.12', '2019-09-19', 41),
(140, '31.216.123.75', '2019-09-21', 40),
(141, '213.133.95.98', '2019-09-23', 15),
(142, '213.207.159.24', '2019-09-23', 15),
(143, '213.7.213.234', '2019-09-24', 13),
(144, '213.7.64.14', '2019-09-25', 40),
(145, '78.158.135.112', '2019-09-25', 39),
(146, '212.31.109.186', '2019-09-25', 13),
(147, '31.216.121.165', '2019-10-02', 10),
(148, '109.110.236.35', '2019-10-04', 38),
(149, '82.116.212.32', '2019-10-07', 15),
(150, '109.110.252.37', '2019-10-09', 41),
(151, '213.149.188.154', '2019-10-12', 13),
(152, '109.110.252.37', '2019-10-14', 41),
(153, '109.110.252.37', '2019-10-16', 54),
(154, '81.4.134.82', '2019-10-17', 41),
(155, '87.228.220.181', '2019-10-18', 40),
(156, '213.207.135.39', '2019-10-18', 38),
(157, '69.6.28.42', '2019-10-19', 39),
(158, '109.110.252.37', '2019-10-21', 41),
(159, '213.207.159.55', '2019-10-26', 14),
(160, '69.6.28.42', '2019-10-28', 15),
(161, '69.6.28.42', '2019-10-29', 15),
(162, '109.110.252.37', '2019-10-30', 13),
(163, '212.50.98.230', '2019-10-31', 39),
(164, '46.199.207.80', '2019-10-31', 41),
(165, '185.78.129.73', '2019-10-31', 41),
(166, '213.207.135.27', '2019-11-05', 38),
(167, '69.6.28.42', '2019-11-12', 13),
(168, '185.78.129.215', '2019-11-13', 13),
(169, '82.102.92.11', '2019-11-13', 41),
(170, '212.31.124.234', '2019-11-15', 15),
(171, '213.207.159.2', '2019-11-19', 40),
(172, '213.7.229.51', '2019-11-20', 15),
(173, '213.149.182.27', '2019-11-20', 38),
(174, '69.6.28.42', '2019-11-21', 39),
(175, '109.110.252.37', '2019-11-21', 13),
(176, '213.7.198.142', '2019-11-25', 41),
(177, '185.230.112.43', '2019-11-25', 38),
(178, '185.230.112.43', '2019-11-30', 38);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_subscription`
--
ALTER TABLE `company_subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_3` (`id`),
  ADD KEY `id_4` (`id`),
  ADD KEY `id_5` (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_user`
--
ALTER TABLE `service_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistic`
--
ALTER TABLE `statistic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_service`
--
ALTER TABLE `user_service`
  ADD KEY `user_service_user_id_foreign` (`user_id`),
  ADD KEY `user_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_statistic`
--
ALTER TABLE `visit_statistic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `company_subscription`
--
ALTER TABLE `company_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1472;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_user`
--
ALTER TABLE `service_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `statistic`
--
ALTER TABLE `statistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `visit_statistic`
--
ALTER TABLE `visit_statistic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_service`
--
ALTER TABLE `user_service`
  ADD CONSTRAINT `user_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `user_service_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
