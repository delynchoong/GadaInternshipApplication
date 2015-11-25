-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2014 at 03:33 AM
-- Server version: 5.5.40-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `khcy4cln_quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `inspirational_quotes`
--

CREATE TABLE IF NOT EXISTS `inspirational_quotes` (
  `quoteID` int(3) NOT NULL AUTO_INCREMENT,
  `quotes` varchar(500) NOT NULL,
  `author` varchar(100) NOT NULL,
  `book` varchar(100) NOT NULL,
  `category` varchar(10) NOT NULL,
  PRIMARY KEY (`quoteID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `inspirational_quotes`
--

INSERT INTO `inspirational_quotes` (`quoteID`, `quotes`, `author`, `book`, `category`) VALUES
(1, 'I am going to take this bucket of water and pour it on the flames of hell, and then I am going to use this torch to burn down the gates of paradise so that people will not love God for want of heaven or fear of hell, but because He is God.', 'John Green', 'Looking For Alaska', 'Life'),
(2, 'The most beautiful things in the world cannot be seen or touched, they are felt with the heart.', 'Antoine de Saint-Exupery', 'The Little Prince', 'Life'),
(3, 'Whats the opposite of two?\n	A lonely me, \n	A lonely you.', 'Richard Wilbur', 'Opposites, More Opposites, and a Few Differences', 'Love'),
(4, 'Wasn''t that what religions did? Squint at one another and declare, ''My unprovable belief is better than your unprovable belief. Suck it.', 'Laini Taylor', 'Dreams of Gods and Monsters', 'Life'),
(5, 'And we are quotation marks, inverted and upside down, clinging to one another at the end of this life sentence. Trapped by lives we did not choose.', 'Tahereh Mafi', 'Ignite Me', 'Life'),
(6, 'We''ll just have to try to make better mistakes tomorrow', 'Alexandra Bracken', 'N/A', 'Life'),
(7, 'Fairy tales are more than true: not because they tell us that dragons exist, but because they tell us that dragons can be beaten.', 'Neil Gaiman', 'Coraline', 'Life'),
(8, 'If you were half as funny as you think you are, you''d be twice as funny as you are now.', 'Cassandra Clare', 'City of Bones', 'Laughter'),
(9, 'You''re so full of crap, You could pass for a toilet', 'Kami Garcia', 'Beautiful Creatures', 'Laughter'),
(10, 'Be who you are and say what you feel, because those who mind don''t matter, and those who matter don''t mind.', 'Bernard M. Baruch', 'N/A', 'Life'),
(11, 'It matters not what someone is born, but what they grow to be.', 'J.K Rowling', 'Harry Potter and the Goblet of Fire', 'Life'),
(12, 'So, this is my life. And I want you to know that I am both happy and sad and I''m still trying to figure out how that could be.', 'Stephen Chbosky', 'The Perks of Beint a Wallflower', 'Life'),
(13, 'But better to get hurt by the truth than comforted with a lie.', 'Khaled Hosseini', 'N/A', 'Life'),
(14, 'Maybe our favorite quotations say more about us than about the stories and people we''re quoting.', 'John Green', 'N/A', 'Life'),
(15, 'Twenty years from now you will be more disappointed by the things that you didn''t do than by the ones you did do. So throw off the bowlines. Sail away from the safe harbor. Catch the trade winds in your sails. Explore. Dream. Discover.', 'H. Jackson Brown Jr', 'P.S I Love You', 'Life'),
(16, 'Becoming fearless isn''t the point. That''s impossible. It''s learning how to control your fear, and how to be free from it.', 'Veronica Roth', 'Divergent', 'Life'),
(17, 'In three words I can sum up everything I''ve learned about life: it goes on.', 'Robert Frost', 'N/A', 'Life'),
(18, 'Live as if you were to die tomorrow. Learn as if you were to live forever.', 'Mahatma Gandhi', 'N/A', 'Life'),
(19, 'You dont get to choose if you get hurt in this world...but you do have some say in who hurts you. I like my choices.', 'John Green', 'The Fault in our Stars', 'Love'),
(20, 'Love is like the wind, you can''t see it but you can feel it.', 'Nicholas Sparks', 'A Walk to Remember', 'Love'),
(21, 'Forty thousand brothers, could not, with all their quantity of love, make up my sum.', 'William Shakespeare', 'Hamlet', 'Love'),
(22, 'Love is needing someone. Love is putting up with someone''s bad qualities because they somehow complete you.', 'Sarah Dessen', 'This Lullaby', 'Love'),
(23, '(I was)Thinking that if people were rain, I was drizzle and she was hurricane.', 'John Green', 'Looking For Alaska', 'Love'),
(24, 'Don''t cry because it''s over, smile because it happened.', 'Dr Seuss', 'N/A', 'Love'),
(25, 'You can''t force love, I realized. It''s there or it isn''t. If it''s not there, you''ve got to be able to admit it. If it is there, you''ve got to do whatever it takes to protect the ones you love.', 'Richelle Mead', 'Frostbite', 'Love'),
(26, 'I never loved you any more than I do, right this second. And I''ll never love you any less than I do, right this second.', 'Kami Garcia ', 'Beautiful Creatures', 'Love'),
(27, 'Three can keep a secret if two of them are dead.', 'Kami Garcia', 'Beautiful Creatures', 'Life'),
(28, 'I''ll love you until the day after forever.', 'Kami Garcia', 'Beautiful Chaos', 'Love'),
(29, 'No, I''m too busy trying to deflect your Power of Stupidity. But I don''t think I''m strong enough.', 'Kami Garcia', 'Beautiful Creatures', 'Laughter'),
(30, 'Love is a decision, it is a judgment, it is a promise. If love were only a feeling, there would be no basis for the promise to love each other forever. A feeling comes and it may go. How can I judge that it will stay forever, when my act does not involve judgment and decision.', 'Erich Fromm', 'The Art of Loving', 'Love'),
(31, 'Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.', 'Martin Luther King Jr', 'A Testament of Hope', 'Love'),
(32, 'Lonely, Vaguely Pedophilic Swing Set Seeks the Butts of Children.', 'John Green', 'The Fault in our Stars', 'Laughter'),
(33, 'I just did some calculations and I''ve been able to determine that you''re full of shit.', 'John Green', 'Looking for Alaska', 'Laughter'),
(34, 'When a girl cries, few things are more worthless than a boy.', 'Alexandra Bracken', 'The Darkest Minds', 'Laughter'),
(35, 'And people like you are the reason we have middle fingers.', 'Alexandra Bracken', 'The Darkest Minds', 'Laughter'),
(36, 'What a slut time is, she screws everybody', 'John Green', 'The Fault in our Stars', 'Laughter'),
(37, 'I am so clever that sometimes I don''t understand a single word of what I am saying.', 'Oscar Wilde', 'The Happy Prince and other Stories', 'Laughter'),
(38, 'Ive learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.', 'Maya Angelou', 'N/A', 'Life'),
(39, 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.', 'Albert Einstein', 'N/A', 'Life'),
(40, 'I have not failed. I''ve just found 10,000 ways that won''t work.', 'Thomas Edison', 'N/A', 'Life'),
(41, 'Be nice to nerds. You may end up working for them. We all could.', 'Charles J. Skyes', 'Dumbing Down Our Kids', 'Laughter'),
(42, 'There is nothing better than a friend, unless it is a friend with chocolate.', 'Linda Grayson', 'N/A', 'Laughter'),
(43, 'But who prays for Satan? Who, in eighteen centuries, has had the common humanity to pray for the one sinner that needed it most?', 'Mark Twain', 'N/A', 'Life'),
(44, 'When you remembered to forget, you were remembering. It was when you forgot to forget that you forgot.', 'Ann Brashares', 'Forever In Blue', 'Laughter'),
(45, 'Rule #1: The customer is always right. Rule #2: If the customer is wrong, please refer to rule #1. ', 'Ann Brashares', 'The Sisterhood of the Traveling Pants', 'Laughter'),
(46, 'The end of THE END is the best place to begin THE END, because if you read THE END from the beginning of the beginning of THE END to the end of the end of THE END, you will arrive at the end.', 'Lemony Snicket', 'The End', 'Laughter'),
(47, 'I have to live if I want to be remembered.', 'Suzanne Young', 'A Need So Beautiful', 'Life'),
(48, 'If invisible people eat invisible food does invisible wind blow invisible trees?', 'Cecelia Ahern', 'If You Could See Me Now', 'Laughter'),
(49, 'He didn’t give me flowers or candy. He gave me the moon and the stars. Infinity.', 'Jenny Han', 'We''ll Always Have Summer', 'Love'),
(50, 'Maybe that was how it was with all first loves. They own a little piece of your heart, always.', 'Jenny Han', 'We''ll ALways Have Summer', 'Love'),
(51, 'And in life, at least her new life, chances were the best she could hope for. They were like her rocks. Imperfect and surprising and maybe better in the long run than certainties. Chances, she thought, WERE life.\n', 'Veronica Rossi', 'Under the Never Sky', 'Life'),
(52, 'Everyone needs reality to punch them in the face every once in a while. Keeps you on guard.', 'Alexandra Bracken', 'In The Afterlight', 'Life'),
(53, 'Women who seek to be equal with men lack ambition.', 'Timothy Leary', 'N/A', 'Life'),
(54, 'Some things you hear with your ears. Others, you hear with your heart.', 'Sarah J. Maas', 'Crown of Midnight', 'Life'),
(55, 'There is a crack in everything. That''s how the light gets in.', 'Kami Garcia', 'Beautiful Chaos', 'Life'),
(56, 'Your sense of judgement could use a dash of common sense.', 'Susan Ee', 'Angelfall', 'Laughter'),
(57, 'If drunk were cookies,\r\nId be Famous Amos.', 'john green', 'Looking For Alaska', 'Laughter'),
(104, 'Do you believe in love after last sight?', 'Kami Garcia', 'Beautiful Chaos', 'Love');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
