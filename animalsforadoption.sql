-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 01:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animalsforadoption`
--
CREATE DATABASE IF NOT EXISTS `animalsforadoption` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `animalsforadoption`;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `ID` varchar(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Picture1` varchar(511) NOT NULL,
  `Picture2` varchar(511) DEFAULT NULL,
  `Picture3` varchar(511) DEFAULT NULL,
  `Picture4` varchar(511) DEFAULT NULL,
  `Picture5` varchar(511) DEFAULT NULL,
  `Species` varchar(255) NOT NULL,
  `Memo` varchar(255) DEFAULT NULL,
  `LongDescription` varchar(4096) NOT NULL,
  `Sex` char(255) NOT NULL,
  `Age` varchar(255) NOT NULL,
  `Reserved` tinyint(1) DEFAULT NULL,
  `Childfriendly` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animals`
--

INSERT INTO `animals` (`ID`, `Name`, `Picture1`, `Picture2`, `Picture3`, `Picture4`, `Picture5`, `Species`, `Memo`, `LongDescription`, `Sex`, `Age`, `Reserved`, `Childfriendly`) VALUES
('A2021056', 'Lucky', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19149', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19149&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19149&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19149&seq=4', NULL, 'Dog', NULL, 'Meet the lovely Lucky, a sweet boy in search of a home.\r\nDon\'t let his age fool you, Lucky is always on the go! He enjoys his walks, and would love an active home where he can have plenty of these. He would love a secure garden to play in.\r\nLucky has been spending time in one of our fantastic foster homes, where he enjoys plenty of walks and lots of affection. He enjoys a cosy night in, after his evening walk he curls up in his bed and doesnt think much to going anywhere after that!\r\nLuckys fosterers have described him as a friendly boy, and everyone who meets him remarks on how gentle and sweet he is. Lucky would enjoy living in a home where someone is around most of the day. He would be happy to be left for short periods once he has settled into his new home.\r\nHe could live with older children who are used to dogs. Lucky would be happiest as the only pet in the home.\r\nLucky is strong on his lead when first starting his walks, so would need someone who could handle him. He settles nicely into his walks, and will stay close to his fosterer when off lead in a secure area. He is a quick learner, who really enjoys short training sessions with his fosterer. Lucky is such a clever boy that he lets his fosterer know when it is time for his tea!\r\nAs Lucky is over 10 years old, he is available to be adopted on the Elderly Animal Rehoming Scheme (EARS), which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas.', 'Male', '10 Years 5 Months', 0, 1),
('A2021067', 'Florence (and Albus)', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19234', 'https://service.sheltermanager.com/asmservice?account=rk2788&method=animal_image&animalid=19234&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19234&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19234&seq=4', NULL, 'Ferret', NULL, 'Little Florence is looking for a new home with her best pal Albus.\r\n\r\nAlbus and Florence are a wonderful fun packed pair who love nothing more than exploring and getting into trouble,we would love a new home for this lovely couple that is willing to spend lots of time keeping them entertained and in return they will give you nothing but laughter.\r\nall ferrets are active little critters and for this reason they need plenty of space to run around and express their natural sillyness.\r\nFlorence can be a handful and dispite her dainty size she knows what she wants and when she wants it,for this reason we would ask that she is adopted by a person with previous ferret experience or someone that is willing to learn when to give her the space she needs, because she can be nippy when excited we feel she wouldn’t be suitable to a home where children are wanting to handle her however in the right home with the right stimulation and handling she should improve.\r\n', 'Female', 'Young Adult', 0, 0),
('A2022010', 'Dakota', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19386', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19386&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19386&seq=3', NULL, NULL, 'Cat', 'Sponsored by Dr Martin Smith, in memory of all our lovely cats', 'Delightful Dakota is looking for a new home.\r\nShe is a typical kitten who loves to play with a variety of toys. It will be nice for her new owners to spend time playing with her and providing lots of enrichment to keep her entertained. She will need someone around for most of the day for socialisation, regular feeds and to keep her out of mischief.\r\nDakota would be ok to live with other pets as long as the introductions were done carefully and she could live with children.\r\nWhen she is old enough he will need to have access to go outside and explore the great outdoors. She will need a home away from busy roads and railway lines.', 'Female', '12 Weeks.', 0, 1),
('A2022011', 'Alaska', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19387&d=2022-06-08T11:24:49.793051', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19387&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19387&seq=3', NULL, NULL, 'Cat', 'Sponsored by Dr Martin Smith, in memory of all our lovely cats.', 'Sweet Alaska is looking for a new home.\r\n\r\nAlaska came into our care as a stray, nursing 3 young kittens. She is currently in one of our fantastic foster homes where she has raised her babies beautifully. Now they are old enough to fly the nest it is time for Alaska to find her happily ever after too.\r\n\r\nAlaska is a friendly and affectionate girl who loves to be stroked and given some fuss.\r\nAlaska is playful lady who enjoys playing with teaser toys and especially loves catnip. It will be nice for her new owners to spend time playing with her and providing her lots of enrichment so she doesn\'t get bored.\r\n\r\nOnce Alaska has settled in she would love to be able to explore outside. A home away from busy roads and railway lines is essential so she can do this safely.', 'Female', 'Young Adult', 0, NULL),
('A2022023', 'Polly', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19509', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19509&seq=2', NULL, NULL, NULL, 'Cat', NULL, 'Meet Polly, a pretty young cat looking for a new home.\r\nPolly has been spending time in one of our fantastic foster homes, where she loves to play and cuddle up to her fosterer. Polly is happy to be stroked but most of all she just likes to be around you she follows her foster carer around the home and chirps for attention\r\nPolly would like a home without other pets, but could live with children who understand how to interact with cats. Polly settled in quickly with her fosterer and we think she will make a great addition to a new family.\r\nWhen she has settled into her new home, Polly would like to go outside and explore. A home away from busy roads and railway lines will allow her to do this safely.', 'Female', '7 Months', 0, 1),
('A2022024', 'Margaret', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19519', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19519&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19519&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19519&seq=4', NULL, 'Cat', 'Sponsored by Sue and Martin Cox', 'Marvelous Margaret is looking for a loving new home.\r\nMargaret is super friendly and affectionate and wants to make friends with anyone who walks into her pen. Margaret loves to be fussed and will even climb on you to get extra close and give you lots of lovely head bumps whilst nuzzling into your neck.\r\nMargaret is full of character and will make a smashing companion for that special somebody.\r\nAs Margaret is 11 years old she can be adopted on the Elderly Animal Rehoming scheme (EARS) which has lots of great benefits for people living in the Halifax, Huddersfield, Bradford area.', 'Female', '11 Years', 0, NULL),
('C2022002', 'Sam', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19265', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19265&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19265&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19265&seq=4', '', 'Dog', 'Sponsored by Tricia Boyd In memory of Greyhound Racing Victims', 'Super Sam is looking for a new home.\r\n\r\nDon\'t let Sam\'s age fool you - he loves getting out and about for lots of walks! He would love an active home, where he is the only dog. He could live with a friendly cat.\r\nSam\'s ideal home would be calm, and one where he wouldn\'t be left alone for too long - he loves company! He enjoys lots of bum scratches and cuddles. He would best suit a home with no young children.\r\n\r\nA home with a secure garden, and very tall fence, is a must for Sam to enjoy some off lead play. Terrier-savvy adopters would be great for Sam, and he will benefit from a home where he can continue his training.\r\n\r\nAs Sam is 10 years old, he qualifies to be adopted on the Elderly Animal Rehoming Scheme (EARS), which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas.', 'Male', '10 Years 4 Months', 0, 0),
('C2022006', 'Zara', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19356', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19356&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19356&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19356&seq=4', NULL, 'Cat', NULL, 'Zara is a cheeky young cat looking for a new home.\r\n\r\nZara has spent her time with us in one of our fantastic foster homes, where she enjoys playing with everything, and everyone! She is a chatty girl, who lets her fosterer know what she wants. She will play with a variety of toys, and even things that aren\'t technically toys.\r\n\r\nZara\'s fosterer says she will entertain would with her antics, then cuddle up to you at night for a nap.\r\n\r\nZara is an affectionate cat, who would be a wonderful addition to any family, she would be happy to live with other cats, and could live with cat-savvy children. Zara would be happy to live with a friendly dog - the more playmates, the better!\r\nHer new home will need to be kitten proof, as Zara likes to investigate everything and everywhere. She will need someone around most of the day to keep her out of mischief.\r\n\r\nWhen Zara is settled, she will need access to the outside to explore and play. A home away from busy roads and railway lines is essential to keep her safe.', 'Female', 'Baby', 1, 1),
('C2022013', 'Tigger', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19493', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19493&seq=2', NULL, NULL, NULL, 'Cat', 'Sponsored by Linda, Dave and Sophie In Memory of Patches Walker', 'Good with children over 12\r\nHousetrained\r\nNOT Good with cats\r\nNOT Good with dogs\r\nMeet the terrific Tigger, who is looking for a new home!\r\n\r\nTigger is a confident cat, who would be best suited to a home without young children or other pets. She could live with older children who were able to give her space when she needs it.\r\n\r\nShe would love lots of different toys and things to do in her new home. She enjoys playing with staff in her pen, and is often spotted using her scratching post. When she isn\'t busy playing, Tigger enjoys a cosy cat nap in her bed.\r\n\r\nIn her new home, Tigger will need to be able to go out side and explore once she has settled. A home away from busy roads and railway lines is important to allow Tigger to do this safely.', 'Female', 'Senior', 0, 1),
('G2022005', 'Boycie', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19463', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19463&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19463&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19463&seq=4', NULL, 'Cat', 'Sponsored by Renata Boyle in memory of Natasha, Sasha, Rambo & Mulder', 'Beautiful Boycie is a friendly older gentleman looking for a new home.\r\n\r\nBoycie is a chatty boy who will let staff know he is waiting for some fuss. He loves to be stroked - especially behind his ears. When he isn\'t being fussed, Boycie loves to relax in his comfy bed and watch the world go by.\r\n\r\nBoycie is a pleasure to have around and would make someone a great companion.\r\n\r\nBoycie would prefer to be the only pet in the home and he could live with cat-savvy, older children. Once he has settled into his new home, Boycie will need access to the outdoors to explore. A home away from busy roads and railway lines is perfect to allow him to do this safely.\r\n\r\nAs Boycie is over the age of 10, he is available to be adopted on the Elderly Animal Rehoming Scheme (EARS), which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas.\r\n', 'Male', '16 Years 9 Months', 1, 1),
('H2019050', 'Poppy May', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=17261', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=17261&seq=4', NULL, NULL, NULL, 'Dog', 'Sponsored by Serif Systems LTD', 'Good with children\r\nHousetrained\r\nMeet Poppy May, a pretty girl looking for a fresh start.\r\n\r\nPoopy May is super friendly, affectionate and social with people. She really enjoys a fuss and will even try to sit on your lap to get extra close.\r\n\r\nPoppy May is really playful and loves to play with anything and everything, her favourite toys are balls. She has bundles of energy and loves running around our enclosed paddock. Poppy May would like a very secure garden for supervised play but we would not rule out a home without a garden.\r\n\r\nPoppy May is looking for an active, calm home, where she can have lots of love and plenty of exercise. She is a clever girl, who enjoys training, which she would like to continue in her new home.\r\n\r\nPoppy May would be best as the only pet in the home so she can keep all the love to herself. She would be fine to live older children.', 'Female', 'Adult', 1, 1),
('R2015020', 'Mia', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=12995', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=12995&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=12995&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=12995&seq=4', NULL, 'Cat', 'Sponsored by Robert & Lesley. In memory of Sam, Sam Mk2, Smokey, Rambo, Tilly, Missymoo', 'Housetrained\r\nNOT Good with cats\r\nNOT Good with dogs\r\nNOT Good with children\r\nMeet the marvelous Mia, a sweet girl looking for a new home.\r\nMia has been spending time in one of our fantastic foster homes, where she made herself at home very quickly! She loves to be made a fuss of, and enjoys lots of head rubs.\r\nMia is a lady who knows what she wants  as soon as it gets close to her feeding times, she makes sure her fosterer knows! Mia really enjoys being groomed, and is good for her diabetes treatment.\r\nMias ideal home will have lots of nap spots, lots of opportunity for affection, and access to a garden for pottering outside. A home without young children or other pets is important for Mia.\r\nAs Mia is diabetic, she is eligible for adoption on the Elderly Animal Rehoming Scheme, which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas. You can read more about the scheme on our website.', 'Female', '8 Years 3 Months', 0, 0),
('R2022002', 'Basil', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19394', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19394&seq=2', NULL, NULL, NULL, 'Cat', 'Sponsored by Sue and Martin Cox', 'Basil is a confident kitten looking for a home.\r\n\r\nBasil has grown up in one of our fantastic foster homes, where he enjoyed playing with his siblings and lots of fuss from the fosterer. Now back in cattery, he loves playing with a variety of toys, and is learning to use a scratching post.\r\n\r\nBasil would make a loving addition to most homes, he would be happy to live with children and a calm, cat-savvy dog. Basil is a flu cat, so must be the only cat, or live with another flu-cat.\r\n\r\nBasil would love a home where someone is around most of the day, for regular feeds and lots of playtime! When he is older, Basil will need to go outside and explore, so a home away from busy roads and railway lines is needed.\r\n', 'Male', '14 weeks', 0, 1),
('T2022001', 'Albus (and Florence)', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19329', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19329&seq=2', NULL, NULL, NULL, 'Ferret', NULL, 'Albus is a friendly ferret looking for a new home with his best pal Florence.\r\n\r\nAlbus loves to curl up in his bed and snooze, but always pops his head out when people come to visit and play.\r\n\r\nAlbus and Florence will need a big accommodation, where they can play and explore. We can offer advice on accommodation.', 'Male', 'Adult', 0, NULL),
('T2022003', 'Logan', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19425', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19425&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19425&seq=4', NULL, NULL, 'Dog', 'Sponsored by TLC dog walking', 'Luscious Logan is looking for a new home could you be the right match for him?\r\nDespite his age Logan is an active boy, sometimes he does need reminding that he is an OAP. Logan is a very affectionate boy and loves a good fuss, he also loves to play with toys, and soft toys are his favourite!\r\nLogan can be enthusiastic on lead so will need somebody who can handle him. He would be best suited to a home with older teens or adults, no cats. Although in future he will be able to make some doggy friends while out on walk, he would prefer his home to be his own, after all as his age he shouldn?t have to share.\r\nLogan would suit quite an active home and would need a fully secure and enclosed garden for him to run around in and play with his toys of course! Logan?s previous owner has said he is housetrained he may just need a reminder coming out of kennels. Logan can be left for short periods although not too long as he does enjoy company.\r\nAs Logan is 11 years old he qualifies for the EARS scheme. This scheme has lots of benefits for people living in the Halifax Huddersfield and Bradford area.', 'Male', '11 Years 2 Months', 0, 0),
('T2022004', 'Sprout', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19426', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19426&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19426&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19426&seq=4', NULL, 'Girbil', NULL, 'Meet Super Sprout - a gerbil looking for a new home!\r\n\r\nSprout is a shy gerbil, who will need patient owners willing to work on handling. A home without young children would be best.\r\nSprout would like to live as a single gerbil, with lots of space to play, and different things to do.\r\n', 'Female', '1 Year 2 Months', 1, 0),
('T2022005', 'Sue', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19427', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19427&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19427&seq=3', NULL, NULL, 'Mouse', 'Sponsored by Julie Cockroft. In memory of Honey', 'Sweet Sue is looking for a new home with her friend Mel.\r\n\r\nThis pair are slowly building their confidence around people, and enjoying playing with lots of different activities in their accommodation.\r\n\r\nMel and Sue will need a good sized accommodation, with lots of different things to do! We are happy to offer advice on accommodation and enrichment for mice.', 'Female', '1 Year 2 Months', 0, NULL),
('T2022006', 'Mel', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19428', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19428&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19428&seq=3', NULL, NULL, 'Mouse', 'Sponsored by Julie Cockroft. In memory of Honey', 'Mel the Mouse is looking for a new home with friend Sue.\r\n\r\nThis pair are slowly building their confidence around people, and enjoying playing with lots of different activities in their accommodation.\r\n\r\nMel and Sue will need a good sized accommodation, with lots of different things to do! We are happy to offer advice on accommodation and enrichment for mice.', 'Female', '1 Year 2 Months', 0, NULL),
('W2021217', 'Rosie', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19235', 'https://service.sheltermanager.com/asmservice?account=rk2788&method=animal_image&animalid=19235&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19235&seq=4', NULL, NULL, 'Cat', 'Sponsored by Linda, Dave and Sophie In Memory of Patches Walker', 'Pretty little Rosie is looking for a very particular home.\r\n\r\nRosie is what we call an \'inbetweener\' cat, she is not feral but she is also not a pet cat, she is a cat that requires less human interaction than a usual domestic cat.\r\nShe likes home comforts like a comfy bed or a cardboard box to play in but does not like being petted.\r\nWe are looking for someone who is happy for a cat who will live alongside them, with the freedom for her to come and go as she pleases.\r\n\r\nWe can offer advice and guidance if you are interested in offering an alternative home.', 'Female', 'Adult', 0, NULL),
('W2022033', 'Luigi', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19341', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19341&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19341&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19341&seq=4', NULL, 'Ferret', NULL, 'Luigi is a confident ferret looking for a new home.\r\n\r\nLuigi loves to climb and explore in his pen, when he\'s not curled up in his bed for a snooze!\r\n\r\nLuigi needs a home with an existing ferret to join, as ferrets are social animals who like to have company. We are happy to offer advice on bonding.\r\n\r\nLuigi and his new friend will need a big accommodation, where they can play and explore. We can offer advice on accommodation.', 'Male', '11 Months', 0, NULL),
('W2022042', 'Andy', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19362', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19362&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19362&seq=3\r\n', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19362&seq=4', NULL, 'Dog', NULL, 'Little Andy is looking for his happily ever after.\r\nAndy looking for a quiet and peaceful home where he can spend his days. His does take time to get to know you so he will need a patient owner who is going to give him time and space to settle in and go at his pace. Once he is comfortable with you he is quite affectionate.\r\nHe will need a home with a secure garden, to help him with toilet training, and help him get used to the world before he starts going on any big adventures.\r\nAndy has lived with dogs before and we think he would be quite happy to live with another, he has shown interest in meeting dogs at the centre as well and there has been no issue. We think Andy may be ok to live with a dog savvy cat that is calm and confident.\r\nAndy would need to be with adult only home or older calm and quiet teens in the home. Andy has started to show a cute little cheeky side and we hope once he is settled in to his new home his true personality will come out', 'Male', 'Senior', 1, 0),
('W2022050', 'Casper', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19380', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19380&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19380&seq=3', NULL, NULL, 'Cat', NULL, 'NOT Good with cats\r\nNOT Good with dogs\r\nNOT Good with children\r\nCasper is a sensitive soul looking for a new home with patient and understanding owners.\r\nCasper will need to be given time and space to settle and will be best suited to a calm home with no other pets or young children.\r\nFrom Casper\'s previous history they have said that he is shy but when he gets to know and trust you he is loving and enjoys sitting on your knee. He is currently in one of our amazing foster homes away from the hustle and bustle of the cattery life. We are yet to see his true colours shine through but he is very slowly growing with confidence each day.\r\nAs Casper is 10 years old he is eligible for the EARS scheme that has lots of benefits for people living in the Halifax, Huddersfield and Bradford area.', 'Male', '10 Years 10 Months', 0, 0),
('W2022053', 'Tash', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19383', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19383&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19383&seq=4', NULL, NULL, 'Cat', 'Sponsored by Julie & Kevin Pugh. In memory of Micky & Bubbles, and all our foster cats\r\n', 'Terrific Tash is a lovely older boy looking for a new home.\r\n\r\nTash is a chatty boy, who always makes it known when he wants some fuss. He is a cuddly cat, who would happily spend hours being petted.\r\n\r\nTash would like a quiet, pet free home, where he can have all the love and affection he desires. He could live with older, cat-savvy children.\r\n\r\nWhen he has settled into his new home, Tash would like the option to go out and explore. A home away from busy roads and railway lines would be perfect for this.\r\n\r\nAs Tash is 15 years old, he is eligible to be adopted on our Elderly Animal Rehoming Scheme (EARS), which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas.', 'Male', '15 Years 5 Months', 0, 1),
('W2022056', 'Rosemary', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19391', 'https://service.sheltermanager.com/asmservice?account=rk2788&method=animal_image&animalid=19391&seq=2', 'https://service.sheltermanager.com/asmservice?account=rk2788&method=animal_image&animalid=19391&seq=3', NULL, NULL, 'Cat', 'cattery Space 18 - Sponsored for Bobbie', 'Radiant Rosemary is a sweet cat looking for a new home.\r\n\r\nRosemary has spent time in one of our foster homes, raising her kittens, but is now ready to find a forever home of her own.\r\n\r\nRosemary is a confident, affectionate cat, who would make a wonderful addition to most family homes. She loves to be fussed, and enjoys playing with feather toys. She could live with children, who were aware of how to interact with cats.\r\n\r\nRosemary would be happy to live with a friendly other cat, providing introductions were done properly. She is a confident girl, so may be able to live with a calm, cat-savvy dog.\r\n\r\nOnce she has settled into her new home, Rosemary would love to go out and explore the outside. A home away from busy roads and railway lines would be perfect for her to do so safely.', 'Female', 'Adult', 0, 1),
('W2022075', 'Pappi', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19457', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19457&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19457&seq=3', NULL, NULL, 'Cat', NULL, 'Pretty Pappi is looking for a new home with best friend Izzi.\r\n\r\nPappi is the shyer of the two, but once she has settled, loves to cuddle. She enjoys being groomed, and loves attention.\r\nPappi and Izzi are spending time in one of our fantastic foster homes, where they both settled quickly. They love to sleep on the bed!\r\n\r\nPappi enjoys using a scratching post, and playing with ball toys. She enjoys sitting on the windowsill and watching the birds play in the garden.\r\n\r\nPappi and Izzi would like to be the only pets in the home, so they can have as much attention as they wish. They would prefer a home without young children, but could live with calmer, older children.\r\nWhen she has settled into her new home, Pappi would like to explore outside. A home away from busy roads and railway lines would be perfect, to allow her to do this safely.\r\n\r\nAs Pappi is over the age of 10, she can be adopted on our Elderly Animal Rehoming Scheme (EARS), which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas.', 'Female', 'Senior', 0, 1),
('W2022076', 'Izzi', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19458', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19458&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19458&seq=3', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19458&seq=4', NULL, 'Cat', NULL, 'Izzi is a friendly older girl, looking for a new home with her best friend Pappi.\r\n\r\nIzzi is a confident girl, who will approach everyone for fuss and attention. She is spending time in one of our fantastic foster homes, where she and Pappi made themselves at home very quickly. She loves to be groomed, and will sleep on her fosterer\'s shoulder.\r\n\r\nIzzi loves to play with ball toys, and uses her scratching post lots. She enjoys sitting on the windowsill with Pappi, watching the birds play in the garden!\r\n\r\nIzzi and Pappi would like to be the only pets in the home, so they can have as much attention as they wish. They would prefer a home without young children, but could live with calmer, older children.\r\nWhen she has settled into her new home, Izzi would like to explore outside. A home away from busy roads and railway lines would be perfect, to allow her to do this safely.\r\n\r\nAs Izzi is over the age of 10, she can be adopted on our Elderly Animal Rehoming Scheme (EARS), which has a number of benefits for adopters in the Halifax, Huddersfield and Bradford areas.', 'Female', 'Senior', 0, 0),
('W2022077', 'Arthur', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19459', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19459&seq=2', NULL, NULL, NULL, 'Cat', 'Sponsored by Wayne Harris. In memory of Popeye and Pebbles', 'Arthur is a sensitive soul looking for a calm new home.\r\nHe is looking for patient and understanding owners who will give him the time and space that he will need to settle into his new home. Arthur will be best suited to a quiet, adult only home with no other pets where he can relax in peace. Arthur has been placed in one of our wonderful foster homes and is showing a new side to himself. The foster has said Arthur is a very sweet soul who loves a good head rub and all the fuss. He would make the perfect companion and happily sit by your side or follow you up and around the house especially if food is involved.\r\nHe still enjoys some quiet time to himself and enjoys hiding in a comfy spot either under the bed or the hallway. Arthur is very chatty and loves a little conversation and enjoys playing with lots of cat toys as well as his scratch post.\r\nArthur will need access to the great outdoors where he can explore and express his natural behaviors. A home away from busy roads and railway lines would be best so he can do this safely.\r\nArthur is eligible for the Elderly Animal Rehoming scheme (EARS) which has lots of benefits for the adopter if you are adopting in the Halifax, Huddersfield and Bradford area.', 'Male', 'Senior', 0, 0),
('W2022095', 'Molly', 'https://service.sheltermanager.com/asmservice?account=rk2788&method=animal_image&animalid=19489', NULL, NULL, NULL, NULL, 'Dog', 'Sponsored In loving Memory of Raymond Barlow\r\n', 'Magical Molly is looking for her forever home.\r\nMolly is friendly and affectionate girl she loves human company and would fit into most households. She loves to go outdoors and explore so she will need an active home and she will need access to secure garden so she can have a run round and play safely.\r\nMolly has lived with children in the past and we think she could live with children again but younger children could be too much for her. She could live with another dog and we would do a dog mix here at the Centre to make sure both parties are happy. Molly has lived with cats as well so we would not rule her out living with them again, but due to her breed introductions would need to be done correctly, and the cat would need to be used to dogs.\r\nMolly loves people so would like somebody around with her most of the day but she could be left for a few hours a day. Molly may need a little help with housetraining although her past owner said she had the odd accident so it should be easy for her to become fully trained. Molly also enjoys a good brush, she has started to play with some toys but only when people play with her.', 'Female', 'Adult', 0, 1),
('W2022097', 'Neo', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19495', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19495&seq=2', 'https://eur04b.sheltermanager.com/service?account=rk2788&method=animal_image&animalid=19495&seq=3', NULL, NULL, 'Cat', 'Sponsored by Robert & Lesley. In memory of Sam, Sam Mk2, Smokey, Rambo, Tilly, Missymoo', 'Neo is looking for a new home could you be the one for him?\r\nNeo is a quiet boy and can be a bit unsure of people so will need time to settle in, once he knows you he is affectionate but he will let you know when he has had enough. Neo likes to be stroked and can be picked up for short periods.\r\nWe feel Neo would be better suited to an adult home and one without other pets so he can get all the attention he craves. Neo will play with toys and he will need access to the outside away from busy roads and railway lines after the initial setting in period.', 'Male', '6 Years', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userip`
--

CREATE TABLE `userip` (
  `IP` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userip`
--
ALTER TABLE `userip`
  ADD PRIMARY KEY (`IP`);
--
-- Database: `pets`
--
CREATE DATABASE IF NOT EXISTS `pets` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pets`;

-- --------------------------------------------------------

--
-- Table structure for table `ages`
--

CREATE TABLE `ages` (
  `AgeInt` tinyint(4) NOT NULL,
  `AgeStr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `PetID` char(8) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Picture1` varchar(255) NOT NULL,
  `Picture2` varchar(255) DEFAULT NULL,
  `Picture3` varchar(255) DEFAULT NULL,
  `Picture4` varchar(255) DEFAULT NULL,
  `Picture5` varchar(255) DEFAULT NULL,
  `Memo` varchar(255) DEFAULT NULL,
  `Description` text NOT NULL,
  `Sex` char(1) NOT NULL,
  `AgeInt` tinyint(4) NOT NULL,
  `Reserved` tinyint(1) NOT NULL,
  `Childfriendly` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ages`
--
ALTER TABLE `ages`
  ADD PRIMARY KEY (`AgeInt`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`PetID`),
  ADD KEY `AgeInt` (`AgeInt`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`AgeInt`) REFERENCES `ages` (`AgeInt`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'standard', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"animalsforadoption\",\"pets\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"animalsforadoption\",\"table\":\"animals\"},{\"db\":\"animalsforadoption\",\"table\":\"userip\"},{\"db\":\"users\",\"table\":\"ip\"},{\"db\":\"users\",\"table\":\"IP\"},{\"db\":\"pets\",\"table\":\"ages\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'animalsforadoption', 'animals', '{\"sorted_col\":\"`animals`.`ID` ASC\"}', '2022-06-16 17:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-06-16 23:38:51', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
