-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2024 at 11:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Jamia LTD`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(2, 'Apple iPhone 15 Pro', '6.1-inch Super Retina XDR display, A17 Pro chip, triple 48 MP camera, Dynamic Island, USB-C.', 20000, 'phones', 'phone1.jpg'),
(3, 'Samsung Galaxy S23 Ultra', '6.8-inch Dynamic AMOLED, 200 MP camera, Snapdragon 8 Gen 2, S-Pen support, 5000mAh battery.', 49999, 'phones', 'phone2.jpg'),
(4, 'Google Pixel 8 Pro', '6.8-inch Dynamic AMOLED, 200 MP camera, Snapdragon 8 Gen 2, S-Pen support, 5000mAh battery.', 35999, 'phones', 'phone3.jpg'),
(5, 'OnePlus 11', '	6.7-inch AMOLED, Snapdragon 8 Gen 2, Hasselblad 50 MP camera system, 120Hz refresh rate, 5000mAh battery.', 26999, 'phones', 'phone4.jpg'),
(6, 'Xiaomi 13 Pro', '6.73-inch AMOLED, Snapdragon 8 Gen 2, Leica triple-camera system, 120W fast charging.', 35999, 'phones', 'phone5.jpg'),
(7, 'Samsung Galaxy Z Fold 5', '7.6-inch foldable AMOLED display, Snapdragon 8 Gen 2, 6.2-inch cover display, multitasking capabilities.', 35999, 'phones', 'phone6.jpg'),
(8, 'Google Pixel Fold', '7.6-inch foldable OLED, Tensor G2 chip, advanced camera system optimized for foldable use.', 35999, 'phones', 'phone1.jpg'),
(9, 'Sony Xperia 1 V', '6.5-inch 4K HDR OLED display, Snapdragon 8 Gen 2, triple-camera system with advanced manual controls, pro-level photo and video features.', 20099, 'phones', 'phone2.jpg'),
(10, 'ASUS ROG Phone 7 Ultimate', '6.78-inch AMOLED, 165Hz refresh rate, Snapdragon 8 Gen 2, 6000mAh battery, AeroActive cooling system, gaming-specific triggers.', 35999, 'phones', 'phone3.jpg'),
(11, 'Motorola Edge+ (2024)', '6.7-inch OLED display, 144Hz refresh rate, Snapdragon 8 Gen 2, 50 MP triple-camera setup, 5000mAh battery, wireless charging.', 20000, 'phones', 'phone4.jpg'),
(12, 'Apple MacBook Air (M2, 2023)', '13.6-inch Retina Display, M2 chip, 8-core CPU, 18-hour battery life, lightweight design.', 65999, 'Electronics', 'screen1.jpg'),
(13, 'Sony WH-1000XM5', 'Wireless noise-canceling over-ear headphones, 30-hour battery life, touch controls, and advanced noise isolation.', 35999, 'Electronics', 'screen2.jpg'),
(14, 'Samsung QN90C Neo QLED TV', '65-inch 4K UHD QLED TV with Neo Quantum Processor, HDR 32X, and Quantum Matrix technology for superior picture quality and deep blacks.', 49999, 'Electronics', 'screen3.jpg'),
(15, 'Apple iPad Pro (12.9-inch, M2)', '12.9-inch Liquid Retina XDR display, M2 chip, ProMotion, True Tone, 5G support, and up to 2TB storage.', 20000, 'Electronics', 'screen4.jpg'),
(16, 'Sony PlayStation 5', 'Next-gen gaming console, 4K gaming at 120 FPS, ultra-fast SSD, 3D audio, and support for exclusive titles like \"Horizon Forbidden West\" and \"God of War.\"', 20000, 'Electronics', 'screen5.jpg'),
(17, 'Nikon Z7 II', 'Full-frame mirrorless camera, 45.7 MP, dual processors for faster performance, 4K UHD video recording, and in-body image stabilization.', 35999, 'Electronics', 'screen6.jpg'),
(18, 'Bose SoundLink Revolve+ II', 'Portable Bluetooth speaker with 360-degree sound, water-resistant design, 17-hour battery life, and voice assistant integration (Siri/Google Assistant).', 20000, 'Electronics', 'screen1.jpg'),
(19, 'Dell XPS 13 (2023)', '13.4-inch InfinityEdge display, 12th Gen Intel i7, 16GB RAM, 1TB SSD, and long battery life in an ultra-portable design.', 35098, 'Electronics', 'screen2.jpg'),
(20, 'GoPro Hero 11 Black', 'Action camera with 5.3K video, HyperSmooth 5.0 stabilization, waterproof up to 33ft, and front-facing display for vlogging.', 20000, 'Electronics', 'screen3.jpg'),
(21, 'Amazon Echo Show 10 (3rd Gen)', 'Smart display with a 10.1-inch screen, motion tracking, Alexa voice assistant, and support for video calls, home automation, and entertainment streaming.', 20000, 'Electronics', 'screen4.jpg'),
(22, 'Nike Air Max 270 Sneakers', 'Lightweight and breathable mesh upper, large visible Air unit in the heel for cushioning, modern design with multiple color options.', 1899, 'clothes', 'bed1.jpg'),
(23, 'Levi\'s 501 Original Jeans', 'Classic straight-leg fit, button-fly, made from durable cotton denim, available in various washes, timeless and versatile.', 1799, 'clothes', 'bed2.jpg'),
(24, 'The North Face Apex Bionic Jacket', 'Windproof softshell jacket, water-repellent, fleece-lined for added warmth, and designed for outdoor activities in cooler climates.', 1999, 'clothes', 'bed3.jpg'),
(25, 'Adidas Originals Track Pants', 'Slim-fit athletic track pants with iconic 3-stripe design, elastic waistband, and made from moisture-wicking fabric for comfort.', 1599, 'clothes', 'bed5.jpg'),
(26, 'L’Oréal Paris Revitalift Cream', 'Anti-aging cream with Pro-Retinol and Centella Asiatica for firm and smooth skin.', 25, 'Skincare', 'bed1.jpg'),
(27, 'Maybelline SuperStay Matte Ink', 'Long-lasting liquid lipstick with a bold matte finish, available in multiple shades.', 10, 'Makeup', 'bed2.jpg'),
(28, 'Neutrogena Hydro Boost Gel', 'Oil-free hydrating gel moisturizer with hyaluronic acid for dry skin.', 18, 'Skincare', 'bed3.jpg'),
(29, 'Revlon One-Step Hair Dryer', '2-in-1 hair dryer and volumizer that provides smooth blowouts and volume.', 60, 'Haircare', 'bed5.jpg'),
(30, 'MAC Studio Fix Fluid Foundation', 'Long-wear foundation with buildable medium-to-full coverage and SPF 15.', 35, 'Makeup', 'bed6.jpg'),
(31, 'Dove Nourishing Body Wash', 'Moisturizing body wash with gentle cleansers and skin natural nutrients.', 6, 'Body Care', 'bed8.jpg'),
(32, 'Olay Regenerist Micro-Sculpting Cream', 'Anti-aging moisturizer with hyaluronic acid, peptides, and vitamin B3 for hydration and firm skin.', 29, 'Skincare', 'bed9.jpg'),
(33, 'Garnier Micellar Cleansing Water', 'All-in-one cleanser and makeup remover suitable for sensitive skin.', 8, 'Skincare', 'bed10.jpg'),
(34, 'Pantene Pro-V Repair Shampoo', 'Shampoo for damaged hair, with nutrients to help repair and strengthen hair.', 6, 'Haircare', 'bed11.jpg'),
(35, 'Urban Decay All Nighter Setting Spray', 'Long-lasting makeup setting spray that keeps makeup in place for up to 16 hours.', 33, 'Makeup', 'bed12.jpg'),
(36, 'Nike Air Max 270', 'Lightweight sneakers with a breathable mesh upper and a large visible Air unit in the heel for cushioning.', 150, 'Footwear', 'bath1.jpg'),
(37, 'Adidas Ultraboost 21', 'Running shoes with responsive Boost cushioning and a flexible knit upper for comfort and performance.', 180, 'Footwear', 'bath2.jpg'),
(38, 'Converse Chuck Taylor All Star', 'Classic canvas high-top sneakers with a durable rubber sole and iconic star logo.', 60, 'Footwear', 'bath3.jpg'),
(39, 'Vans Old Skool', 'Low-top skate shoes with a canvas and suede upper, padded collar for support, and signature side stripe.', 65, 'Footwear', 'bath4.jpg'),
(40, 'Puma RS-X Reinvention', 'Retro-inspired sneakers with a chunky silhouette, featuring a mix of textures and bold colors.', 110, 'Footwear', 'bath5.jpg'),
(41, 'Reebok Club C 85', 'Vintage-style leather sneakers with a minimalist design, durable sole, and soft cushioning.', 75, 'Footwear', 'decor1.jpg'),
(42, 'New Balance 990v5', 'Made-in-USA running shoes with premium materials, a supportive fit, and a cushioned midsole for all-day comfort.', 175, 'Footwear', 'decor2.jpg'),
(43, 'Asics Gel-Kayano 28', 'Stability running shoes with GEL cushioning, designed to support overpronation and provide comfort on long runs.', 160, 'Footwear', 'decor3.jpg'),
(44, 'Timberland 6-Inch Premium Waterproof Boots', 'Iconic waterproof leather boots with seam-sealed construction and padded collar for rugged durability.', 198, 'Footwear', 'decor5.jpg'),
(45, 'Dr. Martens 1460 Boots', 'Durable leather boots with the signature yellow stitching and air-cushioned sole for comfort and style.', 150, 'Footwear', 'appl4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
