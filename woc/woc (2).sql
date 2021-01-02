-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2017 at 07:04 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_pass`) VALUES
(1, 'kartik.gowda55@gmail.com', 'kartik'),
(2, 'shreyas@gmail.com', 'shreyas');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` int(10) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Cars'),
(2, 'Currency'),
(3, 'Comics'),
(4, 'Stamps'),
(5, 'Toys'),
(6, 'Books'),
(7, 'cards');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `country` varchar(10) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`firstname`, `lastname`, `country`, `subject`) VALUES
('Bhavin', 'bhavin@gmail.com', 'usa', 'Would like to sell some products.\r\nContact Asap'),
('kartik', 'gowda', 'australia', 'hello'),
('shreyas ', 'mistry', 'india', 'website is absoulutly amazing');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` bigint(100) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(4, 'Kartik', 'kartik.gowda55@gmail.com', 'kartik', 'India', 'Mumbai', 8976391629, 'C-1,34, Asmita Jyothi CHS, Marve Road , Malad West.', 'profile_img.png', 0),
(5, 'bhavin', 'b108@gmail.com', 'sammy123', 'India', 'Mumbai', 9619614218, 'C-1,34, Asmita Jyothi CHS, Marve Road , Malad West.', 'Penguins.jpg', 0),
(7, 'Shreyas', 'shreyas@gmail.com', 'shreyas', 'India', 'Mumbai', 12121, 'Borivali', 'download (2).jpg', 0),
(8, 'AIIT', 'aiit@gmail.com', 'aiit123', 'India', 'Mumbai', 9999999999, 'malad marve', '755.png', 0),
(9, 'Sammy', 'sammy@gmail.com', 'sammy', 'India', 'Mumbai', 1234567890, 'C-1,34, Asmita Jyothi CHS, Marve Road , Malad West.', '755.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `total_products` int(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `total_products`, `order_date`, `order_status`) VALUES
(16, 4, 40, 720290059, 1, '2017-06-13 17:02:14', 'Complete'),
(18, 4, 40, 1421882141, 1, '2017-06-14 06:46:43', 'Pending'),
(19, 4, 4, 1279918331, 1, '2017-06-14 07:01:33', 'Pending'),
(20, 4, 13600, 2006351277, 1, '2017-06-14 07:12:30', 'Complete'),
(21, 4, 11, 2018956376, 1, '2017-06-14 08:11:10', 'Complete'),
(22, 4, 13600, 588724958, 1, '2017-06-15 04:47:46', 'Complete'),
(23, 4, 4403500, 1548476429, 2, '2017-06-15 04:39:00', 'Pending'),
(24, 4, 3421152, 771287592, 4, '2017-06-15 04:48:18', 'Complete'),
(25, 4, 700, 1889617810, 1, '2017-06-15 04:48:40', 'Pending'),
(26, 4, 38000, 1499971442, 1, '2017-06-15 04:50:04', 'Pending'),
(29, 4, 4400000, 959246472, 1, '2017-06-15 04:52:27', 'Pending'),
(31, 4, 20, 1218750302, 1, '2017-06-15 04:55:10', 'Pending'),
(32, 4, 4, 565209003, 1, '2017-06-15 04:55:48', 'Pending'),
(33, 4, 0, 1655533945, 0, '2017-06-15 05:00:27', 'Pending'),
(34, 4, 13600, 338251809, 1, '2017-06-15 05:00:40', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1486377325, 13600, 'Paypal', 1111, 3213123, '12-05-17'),
(3, 2008799861, 13600, 'EasyPaisa', 3121312, 3123, '25-06-2014'),
(4, 1475196673, 13213, 'EasyPaisa', 1111, 1111, '12-05-17'),
(5, 1212121, 21212, 'Bank Transfer', 2121, 2121, '12-05-17'),
(6, 1212121, 21212, 'Bank Transfer', 2121, 2121, '12-05-17'),
(7, 1475196673, 111, 'Bank Transfer', 111111, 1312323, '12-05-17'),
(8, 1475196673, 111, 'Bank Transfer', 1111, 1111, '14-06-17'),
(9, 1475196673, 13213, 'Bank Transfer', 1111, 1111, '14-06-17'),
(10, 1475196673, 232, 'EasyPaisa', 323, 1111, '14-06-17'),
(11, 588724958, 111, 'Bank Transfer', 11321, 3132, '14-06-17'),
(12, 2121, 313, 'EasyPaisa', 3232, 3232, '14-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(100) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `order_status`) VALUES
(15, 4, 720290059, 1, 1, 'Pending'),
(17, 4, 1421882141, 1, 1, 'Pending'),
(18, 4, 1279918331, 8, 1, 'Pending'),
(19, 4, 2006351277, 4, 1, 'Pending'),
(20, 4, 2018956376, 9, 1, 'Pending'),
(21, 4, 588724958, 4, 1, 'Pending'),
(22, 4, 1548476429, 15, 1, 'Complete'),
(23, 4, 771287592, 22, 1, 'Pending'),
(24, 4, 1889617810, 16, 1, 'Pending'),
(25, 4, 1499971442, 26, 1, 'Pending'),
(26, 4, 31175634, 0, 1, 'Pending'),
(27, 4, 637265373, 0, 1, 'Pending'),
(28, 4, 959246472, 14, 1, 'Pending'),
(29, 4, 1158537397, 0, 1, 'Pending'),
(30, 4, 1218750302, 6, 1, 'Pending'),
(31, 4, 565209003, 8, 1, 'Pending'),
(32, 4, 1655533945, 0, 1, 'Pending'),
(33, 4, 338251809, 4, 1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keywords`, `status`) VALUES
(1, 3, '2017-05-10 10:14:46', 'CAPTAIN MARVEL #95', 'marvel.jpg', '', '', 40, 'GOod', 'captain, marvel comic', 'on'),
(2, 1, '2017-05-28 09:53:42', '1998 Jaguar XJ8 Exec', '4-27-762x456.jpg', '', '', 19901, 'This very luxurious saloon from Jaguar as a V8 engine with 281HP. Recently, the whole distributionset  including fan belt idler was replaced by a modified distributionset. This car has driven 56.000 real kms since 1998 and is in a really magnificent original condition, as good as new.', 'car jaguar 1998 used', 'on'),
(4, 1, '2017-05-10 06:22:04', '1992 Lamborghini Diablo', '3089_main_l.jpg', '3089_p3_l.jpg', '3089_p7_l.jpg', 13600, '1992 Lamborghini Diablo: A highly collectible modern classic super-car This 1992 Lamborghini Diablo is a beautiful original example and a California car with 26k kilometers.  This first generation Diablo comes finished in black with cream interior. Itâ€™s a three owner car accompanied by its books and tools. It also benefits from a new clutch just 1,000 km ago. After 17 years in production, the legendary Countach was replaced by the Diablo, which on its arrival was the fastest, most advanced, and expensive Lamborghini ever built. ', '1992 Lamborghini Diablo Car', 'on'),
(6, 4, '2017-06-14 15:45:59', 'India Scott # 676', 'thumbnail.jpg', '', '', 20, 'Gandhi Stamp Very Old Good Condition', 'Stamp Gandhi Indian', 'on'),
(7, 4, '2017-05-10 06:21:36', '1993 Canvasbacks ', '$_57.jpg', '', '', 57, '$15 Stamp FDC Olde-Well HandPainted S#RW60', '1993 Canvasbacks Stamp', 'on'),
(8, 4, '2017-05-10 06:21:10', '1998 Lunar Tiger New Year', '!CD8BHmgEGk-$(KGrHqV,!jkE0CsEOTISBNQNu)tUoQ--_35.jpg', '', '', 4, '3179 Asian 1998 Lunar Tiger New Year MNH Plate 4 Stamps', '1998 Lunar Year Stamps', 'on'),
(9, 6, '2017-05-10 06:20:43', 'COLLECTING BAYONETS', 's-l1600.jpg', 's-l1600 (2).jpg', 's-l1600 (1).jpg', 11, 'condition:Like New\r\nVery light rub marks on corners. Otherwise the book appears new', 'books Books Collecting', 'on'),
(10, 6, '2017-05-10 06:20:57', '1936 DONALD DUCK BOOK', 's-l500.jpg', 's-l64 (1).jpg', 's-l64.jpg', 49, 'RARE VINTAGE 1936 DONALD DUCK BOOK GROSSET & DUNLAP WALT DISNEY 1st Hard Cover', 'books book donald duck 1936', 'on'),
(11, 1, '2017-06-14 14:32:55', '1957 Morris Minor 1000', '1t-35-762x456.jpg', '2-55-762x456.jpg', '3-54-167x119.jpg', 1076713, 'This is a 1957 Morris Minor 1000. The car has white paint and a new burgundy red softtop. The interior has an original metal dashboard in the colour of the paint with a clock in the center. The seats have burgundy red leather with white piping. The Morris has a manual gearbox and drives, brakes and shifts gear very well.\r\nCar has Holland title and mot/tuv. Easy to register in every EU country. We can help with transport', '1957 Morris Minor 1000 car', 'on'),
(12, 1, '2017-06-15 02:42:53', '1992 Porsche 964 RS', '42884_0de7c908e846_low_res.jpg', '42885_99a907792aec_low_res.jpg', '42887_36857aac5da1_low_res.jpg', 1250000, 'This particular 964 Carrera RS was special ordered new in January of 1992 by the exclusive Porsche Distributor of Japan, MIZWA in Tokyo. The order requested a standard German domestic market model in left-hand drive configuration with the exterior color in Polar Silver Metallic, and a standard interior in grey/black with black carpeting. No other options or requests were made and this Porsche was completed and invoiced new on May 7th, 1992. It would be delivered by ocean-freight shortly there after to the Port of Yokohama, Japan.', 'car 1992 Porsche 964 RS', 'on'),
(13, 1, '2017-06-15 02:43:03', '1970 Ferrari 365 GTB/4', '42492_df49db76db77_low_res.jpg', '42495_3f37376e96b8_low_res.jpg', '42497_d94d187ae87a_low_res.jpg', 3400000, 'Ferrari first pulled the cover off the new 365 GTB/4 Berlinetta at the Paris Salon in 1968 to great acclaim. Equipped with an all-new 4.4-liter V-12 engine that was capable of producing 352 horsepower and 315 foot-pounds of torque at 7,500 rpm, the 365 GTB/4 was capable of a top speed of 174 mph, making it the fastest production car the world had ever seen. After its introduction, the car quickly gained the unofficial nickname â€œDaytonaâ€ from Ferrariâ€™s incredible 1-2-3 finish at the 1967 24 Hours of Daytona the year before.', '1970 Ferrari 365 GTB/4 car', 'on'),
(14, 1, '2017-06-15 02:43:14', '1955 Lancia Aurelia B24', '42615_980127709593_low_res.jpg', '42614_b47953d55f5b_low_res.jpg', '42616_eff900e218b8_low_res.jpg', 4400000, 'This B24S Spider America is a very special example that possesses an unbroken chain of ownership, the most desirable options, and an outstanding concours-quality restoration. The history of B24S 1077 can be traced back to July 1955, when it was sold to its first owner, Luigi Bosisio of Milan. A well-known gentleman driver, Bosisio was a frequent competitor in major Italian events throughout the early 1950s and owned a number of outstanding sports cars, including a Lancia Aurelia B20 GT, Fiat 8V, Maserati A6GCS, and a Zagato-bodied Ferrari 166 MM.', '1955 Lancia Aurelia B24 car', 'on'),
(15, 7, '2017-06-15 02:43:24', '2013 Bowman Cards', '2013-Bowman-Football-thumb-140.jpg', '2013-Bowman-Football-Gold-Robert-Griffin-III-214x300.jpg', '2013-Bowman-Football-Base-Rookie-Card-213x300.jpg', 3500, '2013 Bowman Football is a more traditional set for the Bowman brand. As always, the main focus is on rookies. But rather than going with a completely different look and feel like 2012 Bowman Football, long-time Bowman collectors may feel more at home with the Chrome cards and colorful parallels.', '2013 Bowman Cards card', 'on'),
(16, 2, '2017-06-15 02:44:00', '10 Paise 1957', 'k88__38368_zoom.jpg', 'download.jpg', 'download (1).jpg', 700, '10 Naye Paise of 1957 - Kolkata Mint - No Mint Mark', '10 Paise 1957 Coin coins currency', 'on'),
(17, 7, '2017-06-15 02:44:07', 'T205 Baseball Cards', '1911-T205-Gold-Border-Baseball-Ty-Cobb-140.jpg', '', '', 1500, 'Known for its distinctive look, the 1911 T205 Baseball set can broken down into three separate sets because it has different designs for American League, National League and minor league cards. In the end, however, the cards are forever linked thanks to their gold leaf border.', 'T205 Baseball Cards card', 'on'),
(18, 7, '2017-06-15 02:44:17', 'Donruss Football Cards', '16drelitefb1.jpg', '2016-Donruss-Elite-Football-140-thumb-1.jpg', 'images (1).jpg', 4000, 'Back for another run with collectors, 2016 Donruss Elite Football mixes brand staples and a new focus on hard-signed content. Every hobby contains two signatures, including one on-card autograph.\r\n\r\nShowcasing bright and bold patterns, the main base and rookie set includes a mix of parallel colors such as Gold, Blue and Orange.', 'Donruss Football Cards card', 'on'),
(19, 2, '2017-06-15 02:44:29', 'Saint Gaudens Gold Coin', 's-l1600 (3).jpg', 's-l1600 (4).jpg', '', 45000, 'The Saint-Gaudens double eagle is a twenty-dollar gold coin, or double eagle, produced by the United States Mint from 1907 to 1933. The coin is named after its designer, the sculptor Augustus Saint-Gaudens, who designed the obverse and reverse. It is considered by many to be the most beautiful of U.S. coins.', 'Saint Gaudens Gold Coin currency', 'on'),
(20, 2, '2017-06-15 02:45:21', 'Austria Gold 100 Coronas', 's-l1600 (5).jpg', 's-l1600 (6).jpg', '', 37000, 'These large Gold 100 Coronas from the Austrian Mint containing almost a full ounce of Gold are popular among investors for their high Gold content. Additionally, collectors value the classic, regal design of Franz Josef I. ', 'Austria Gold 100 Coronas currency coin', 'on'),
(21, 2, '2017-06-15 02:45:23', '1989 Russia Rouble', 's-l500 (1).jpg', 's-l500 (2).jpg', '', 51000, 'Many of the ruble designs were created by Ivan Dubasov. The production of Soviet rubles was the responsibility of the Federal State Unitary Enterprise, or Goznak, which was in charge of the printing of and materials production for banknotes and the minting of coins in Moscow and Leningrad.', '1989 Russia Rouble currency coin', 'on'),
(22, 6, '2017-06-15 02:54:24', 'A Gentle Madness', '9780805061765-us.jpg', 'images (2).jpg', 'download (3).jpg', 1240, 'Synopsis:\r\nThe passion to possess books has never been more widespread than it is today; indeed, obsessive book collecting remains the only hobby to have a disease named after it. A Gentle Madness, finalist for the 1995 National Book Critics Circle award, is an adventure among the afflicted. Richly anecdotal and fully documented, it combines the perspective of historical research with the immediacy of investigative journalism', '', 'on'),
(23, 6, '2017-06-15 03:02:36', 'Del Folklore Tortosi', '1743_2.jpg', 'md16726704056.jpg', 'md18258788794.jpg', 2400, 'Paperback. 9 1/4\" X 6 1/2\". 749pp. Inscribed by Joan Moreira to title page. Text in Catalan. Heavy edgewear to paper wraps, with chipping along all edges, no losses. Sunning and darkening to wraps. Very heavy creasing to spine. Pages are clean and unmarked. A solid signed copy of this collection of the folklore, customs, and songs of Tortosa by musician, folklorist, and journalist Joan Moreira', '', 'on'),
(24, 3, '2017-06-15 03:12:54', 'ADVENTURE COMICS #283', 's-l500 (3).jpg', 's-l500 (4).jpg', 's-l1600 (7).jpg', 18000, 'ADVENTURE COMICS #283 CGC SS 7.0 1ST APP OF GENERAL ZOD, DR, XADU & PHANTOM ZONE', 'ADVENTURE COMICS #283 comics comic', 'off'),
(25, 5, '2017-06-15 04:20:22', 'Barbie Doll Set', '$_1.jpg', '51Ba4p67acL.jpg', 'download.jpg', 57000, 'Launched by American toy company Mattel at the American International Toy Fair in March of 1959,  Barbie dolls have gone through hundreds of variations in the last 55 years. Over the decades, Barbie has had many faces, careers, outfits, friends, family members, and adventures, but one thing has stayed the sameâ€”her place in the hearts of girls young and old.  ', 'Barbie Doll Set toy toys', 'on'),
(26, 5, '2017-06-15 04:21:43', 'Pokemon Pokedex', '$_1 (1).jpg', 'download (1).jpg', 'download (2).jpg', 38000, 'Tiger Electronics released its second redesign of the original  Pokemon Pokedex in 2001. Featuring 100 more characters than its predecessor, this device gives fans the ability to sort 250 Pokemon creatures by characteristics and to leave their own personal notes. ', 'Pokemon Pokedex toy toys', 'on'),
(27, 5, '2017-06-15 04:23:46', 'Complete Skylanders', '$_1 (2).jpg', 'download (3).jpg', 'my_skylanders_collection_by_psyko6669-d7jvdu5.jpg', 89000, 'Activision started the popular Skylanders video game series in October 2011. In the last three years, Skylanders has seen three sequels and released nearly 300 figures.', 'Complete Skylanders toy toys', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`firstname`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
