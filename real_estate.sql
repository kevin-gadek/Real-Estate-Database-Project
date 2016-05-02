-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 03, 2016 at 12:57 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_street` varchar(100) NOT NULL,
  `address_city` varchar(100) NOT NULL,
  `address_state` varchar(100) NOT NULL,
  `address_zip` varchar(100) NOT NULL,
  `num_bathrooms` int(11) NOT NULL,
  `num_bedrooms` int(11) NOT NULL,
  `listing_price` int(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `contact_email` varchar(20) DEFAULT NULL,
  `square_feet` int(11) DEFAULT NULL,
  `next_open_house_date` varchar(100) DEFAULT NULL,
  `last_reno_date` varchar(100) NOT NULL,
  `num_stories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `type_id`, `user_id`, `address_street`, `address_city`, `address_state`, `address_zip`, `num_bathrooms`, `num_bedrooms`, `listing_price`, `created`, `description`, `contact_email`, `square_feet`, `next_open_house_date`, `last_reno_date`, `num_stories`) VALUES
(1, 1, 1, '1147 Zurich Court', 'San Jose', 'CA', '95131', 2, 3, 500000, '2016-04-26 08:26:03', 'Built in 1978 and located in the heart of Silicon Valley, this rental is a great investment for new parents. The rental''s close proximity to Summervale Elementary School provides a great opportunity for potential renters looking for a good neighborhood.', 'agent@email.com', 1500, '5/21/16', '2005', 2),
(3, 2, 1, '1234 Main Street', 'Fremont', 'CA', '95132', 2, 1, 750000, '2016-04-26 08:26:04', 'Located in a great neighborhood in Fremont devoid of crime, this condominium is a great opportunity for people interested in purchasing new property in the Bay Area. ', 'test@yahoo.com', 1100, '5/21/16', '2006', 2),
(4, 1, 1, '1234 First Avenue', 'Milpitas', 'CA', '95133', 2, 1, 750000, '2016-04-26 08:26:04', 'This rental property was recently built in 2005 and offers an incredible value for those looking to own new properties. At the low price of $7.5 million/month, this rental offers a competitive rental price in the Bay Area.', 'test@gmail.com', 850, '5/4/16', '1999', 3),
(5, 3, 2, '1234 Second Boulevard', 'Oakland', 'CA', '95137', 2, 1, 750000, '2016-04-26 08:26:04', 'Located in West Oakland, you''re about as likely to get stabbed as soon as you step outside as you''re likely to breathe. Buy now!', 'test@email.com', 1500, '5/4/16', '2001', 4),
(10, 3, 4, '1652 3rd Street', 'San Francisco', 'CA', '95678', 4, 5, 1500, '2016-04-26 10:19:00', 'Beautifully remodeled 1st floor end unit 2bedr 2 bathr condo in the Shadow Wood community! Great location, close to SJ Municipal Golf Course, Townsend Park, Ranch 99, & Costco.\r\nPorcelain tile in entry, dining & bathrooms with freshly paint of 3 ascent color tones thru-out. Brand new 2? wood blinds thru-out. \r\nNew 2-panel doors & light fixtures.\r\nRemodeled kitchen with brand new & modern White Thermofoil cabinets (w/corner lazy susan & spice racks, dovetail, soft close & full extended drawers) & Brown Pearl quartz c/tops. Added with elegant mosaic backsplash surround, stainless steel sink, brushed nickel pull-out faucet & powerful Pacific range hood!\r\nRemodeled 2 bathr w/new vanity, mosaic backsplash, light fixtures, medcabs, brushed nickel SS faucets, brushed pewter framed mirrors, efficiency dual flush elongated toilets completed with new bathtubs & shower/tub faucets surrounded wall by porcelain tile and filled with mosaic tile to finish.\r\nOne car detached/enclosed garage#44 behind the unit. \r\nLots of guest parking.\r\nOpen floor plan. End unit w/lots of natural Light from all 3 sides.\r\nPrivate patio w/large storage closet overlooking greenbelt & pool/spa.\r\nHOA dues include water, garbage & hazard ins.\r\nInside laundry-Washer/Dryer included. \r\nRefrigerator stay.\r\nConvenient commute location to 101, 880 & 680, Post Office, VTA & upcoming BART stations. Close to Great Mall, shopping, dining & grocery nearby. This stunning apartment is ready to be your home!', 'test@yahoo.com', 1500, '5/21/16', '2003', 3),
(11, 3, 5, '1652 Main Street', 'San Francisco', 'CA', '95678', 4, 5, 650000, '2016-04-26 10:19:00', 'This rustic property is located 5 miles from Golden \r\n\r\nGate Park and is available at the low, low price of $30,000/month. Across the street from an elementary school, this \r\n\r\nproperty is a great value for new parents. Totally different from the previous property', 'test@gmail.com', 900, '5/16/16', '2006', 3);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `color`) VALUES
(1, 'Rental', '#4169E1'),
(2, 'Condo', '#32CD32'),
(3, 'Apartment', '#D400FF'),
(4, 'House', '#FFD700'),
(5, 'Timeshare', '#FFA500');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`, `created`) VALUES
(1, 'Brad', 'Smith', 'test@test.com', 'bsmith', 'password', 'Agent', '2016-04-28 16:04:23'),
(2, 'Susan', 'Nguyen', 'test@yahoo.com', 'snguyen', 'password1', 'Seller', '2016-04-28 16:05:23'),
(3, 'Kevin', 'Johnson', 'test@gmail.com', 'kjohnson', 'password2', 'Buyer', '2016-04-28 16:06:23'),
(4, 'John', 'Doe', 'jdoe@yahoo.com', 'jdoe', '3cce2f63a270bf498c6719febcaf2d6c8cabae61', 'Agent', '2016-05-01 20:33:15'),
(5, 'Kevin', 'Gadek', 'test@askjeeves.com', 'kgadek', '3cce2f63a270bf498c6719febcaf2d6c8cabae61', 'Agent', '2016-05-01 21:11:18'),
(6, 'John', 'Smith', 'jsmith@askjeeves.com', 'jsmith', '3cce2f63a270bf498c6719febcaf2d6c8cabae61', 'Agent', '2016-05-02 04:33:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
