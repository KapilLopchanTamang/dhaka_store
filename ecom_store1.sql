-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 08, 2024 at 04:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'kapil tamang', 'kapiltamang123@gmail.com', 'Admin@1234@', 'IMG_1489.png', 'Nepal', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci doloribus tempore non ut velit, nesciunt totam, perspiciatis corrupti expedita nulla aut necessitatibus eius nisi. Unde quasi, recusandae doloribus minus quisquam.\r\n                        ', '9816308527', 'web developer'),
(2, 'Smiriti Rai', 'smiritirai321@gmail.com', 'admin123', 'blue2.jpg', 'nepal', '', '9812732734', 'desginer');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, '  Best Products  ', 'Welcome to Dhaka Store, where quality meets affordability in our carefully curated selection of the best products.'),
(2, 'Best Offers', 'Welcome to Dhaka Store\'s Best Offers section, where exclusive deals and discounts await savvy shoppers like you.'),
(3, '   100% Satisfy   ', 'At Dhaka Store, we are committed to ensuring that every customer\'s experience is nothing short of exceptional.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'yes', 'men.jpg'),
(2, 'Women', 'no', 'women.jpg'),
(3, 'Kids', 'no', 'kids.jpg'),
(4, 'Others', 'yes', 'others.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` text NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(3, 'kapil lopchan tamang', 'kapillopchan2002@gmail.com', 'kapil@1234@', 'Biratnagar', '97163097789', 'mornag nepal', 'kapil.jpg', '::1'),
(5, 'Prasanga Pokhrel', 'prasangapokhrel321@gmail.com', 'kapil123', 'Biratnagar', '', 'mornag nepal', 'IMG_0514.png', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 3, 3500, 1163642091, 1, 'Medium', '2024-05-08', 'Complete'),
(2, 3, 3400, 1163642091, 1, 'Large', '2024-05-08', 'Complete'),
(3, 3, 24800, 1354199182, 4, 'Medium', '2024-05-08', 'pending'),
(4, 3, 5500, 1427260263, 1, 'Medium', '2024-05-08', 'pending'),
(5, 3, 9000, 1427260263, 1, 'Medium', '2024-05-08', 'pending'),
(6, 3, 6200, 338016057, 1, 'Large', '2024-05-08', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Dhivyan Dhaka', 'yes', 'man_1.jpg'),
(2, 'Chaubise dhaka ', 'yes', 'man_2.jpg'),
(3, 'sumdima silks', 'no', 'man_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 1163642091, 3400, 'Bank Transfer', 122432354, 12434, '9/11/2024');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 3, 1354199182, 20, 4, 'Medium', 'pending'),
(2, 3, 1427260263, 16, 1, 'Medium', 'Complete'),
(3, 3, 1427260263, 23, 1, 'Medium', 'pending'),
(4, 3, 338016057, 20, 1, 'Large', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_label` text NOT NULL,
  `product_sale` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`, `product_label`, `product_sale`) VALUES
(9, 1, 2, 2, '2024-05-08 13:57:28', 'Yellow Dhaka Saree ', 'yellow-1.jpg', 'yellow-2.jpg', 'yello-3.jpg', 6000, 'saree', '<p>yellow dhaka saree</p>', 'sale', 5900),
(10, 1, 2, 1, '2024-05-07 19:17:45', 'red dhaka saree', 'red1.jpg', 'red2.jpg', 'red3.jpg', 4000, 'saree', '<p>red dhaka saree</p>', 'sale', 3800),
(11, 1, 2, 2, '2024-05-07 19:18:32', 'Light Blue Dhaka saree', 'light blue.jpg', 'lightblue2.jpg', 'lightblue3.jpg', 3000, 'saree', '<p>Dhaka saree in lightblue color</p>', 'sale', 2700),
(12, 1, 2, 2, '2024-05-07 19:18:39', 'Yellow Dhaka Saree ', 'yellow-1.jpg', 'yellow-2.jpg', 'yello-3.jpg', 2000, 'saree', '<p>yellow dhaka saree</p>', 'new', 0),
(13, 1, 2, 1, '2024-05-07 19:18:47', 'Mix Color Dhaka Saree', 'colorful1.jpg', 'colorful2.jpg', '', 2500, 'saree', '<p>Mic Color dhaka saree</p>', 'sale', 2100),
(14, 1, 2, 2, '2024-05-07 19:18:57', 'White Dhaka Saree', 'white3.jpg', 'white2.jpg', '', 3500, 'White Dhaka saree', '<p>White dhaka saree</p>', 'new', 0),
(15, 1, 2, 2, '2024-05-07 19:21:35', 'Dark Red Dhaka saree', 'dark_red.jpg', 'darkred3.jpg', 'red6.jpg', 4500, 'saree', '<p>Red Dhaka saree</p>', 'sale', 4200),
(16, 1, 2, 2, '2024-05-07 19:19:05', 'Blue dhaka saree', 'blue1.jpg', 'blue2.jpg', 'blue3.jpg', 5500, 'saree', '<p>Blue Dhaka Saree</p>', 'new', 0),
(17, 1, 2, 1, '2024-05-07 19:19:13', 'Mix Blue Dhaka Saree', 'dark blue3.jpg', 'dark_blue.jpg', '', 6000, 'saree', '<p>Mix blue saree</p>', 'new', 5300),
(18, 1, 4, 3, '2024-05-07 19:19:21', 'Cloths', 'cloths2.jpg', 'cloths.jpg', 'cloths43.jpg', 3400, 'cloths', '<p>cloths for saree</p>', 'new', 0),
(19, 1, 2, 2, '2024-05-07 19:19:29', 'Dark blue sare', 'darkblue.jpg', 'darkblue2.jpg', '', 4300, 'saree', '<p>dark blue saree</p>', 'new', 0),
(20, 1, 2, 3, '2024-05-07 19:19:37', 'Mix White Dhaka Saree', 'white1.jpg', 'white4.jpg', '', 6200, 'saree', '<p>Mix Dhaka Saree</p>', 'sale', 6100),
(23, 1, 2, 2, '2024-05-08 07:37:20', 'Wedding Dhaka Saree ', '416233600_696202509384818_8903445043011645418_n.jpg', '416280563_696203616051374_1261920423109523575_n.jpg', '416283646_696795242658878_1398672281708614827_n.jpg', 9000, 'red dhaka saree', '<p>new wedding red dhaka saree</p>', 'new', 8500),
(24, 4, 1, 2, '2024-05-08 13:56:01', 'dhaka coat ', '410773221_681761434162259_7319106230170201069_n.jpg', '408530182_677940501211019_5798340226796255263_n.jpg', '410769020_681761510828918_7329939802459717219_n.jpg', 6600, 'coats', '<p>dhaka coats for men</p>', 'sale', 6300);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Saree', 'yes', 'saree.jpg'),
(2, 'Dhaka Topi', 'no', 'dhaka_topi.png'),
(3, 'Shoes', 'no', 'shoes.png'),
(4, 'Coats', 'yes', 'coat.jpg'),
(5, 'T-Shirt', 'no', 'tshirt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(1, 'Slide number 1', 'slide-1.jpg\r\n', 'http://localhost/m-dev-store-3/index.php'),
(2, 'Slide number 2', 'slide-2.png', 'http://localhost/m-dev-store-3/shop.php'),
(3, 'Slide number 3', 'slide-3.png', 'http://localhost/m-dev-store-3/contact.php'),
(4, 'Slide number 4', 'slide-4.png', 'http://localhost/m-dev-store-3/customer_register.php');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` text NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions', 'termLink', '                          \r\n                          this is the terms & condition of the website and dhaka store                 \r\n                          '),
(2, 'Refund Policy', 'refundLink', 'this is the refund policy'),
(3, 'Promo & Other \n TermConditions', 'PromoTermConditions', 'this is the promo term condtions');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

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
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

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
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
