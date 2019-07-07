
CREATE TABLE `Home` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `bounty` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Home` (`id`, `name`, `code`, `image`, `bounty`) VALUES
(1, 'Going Merry', '3D2Y01', 'Merchs/Ships/ship1.jpg', 1500.00),
(2, 'Thousand Sunny Go', '3D2Y0NHP2', 'Merchs/Ships/ship2.jpg', 800.00),
(3, 'Oro Jackson', '3D2YFP03', 'Merchs/Ships/ship3.jpg', 300.00),
(4, 'Mobydick', '3D2YSDJ04', 'Merchs/Ships/ship4.png', 800.00),
(5, 'Red Force', '3D2Y05', 'Merchs/Ships/ship5.png', 800.00),
(6, 'goat', '3D2Z01', 'Merchs/Animals/goat.jpg', 25500.00),
(7, 'llama', '3D2Z02', 'Merchs/Animals/llama.jpg',39800.00),
(8, 'cat', '3D2Z03', 'Merchs/Animals/cat.jpg', 20300.00),
(9, 'puppy', '3D2Z04', 'Merchs/Animals/puppy.jpg', 12800.00),
(10, 'sheep', '3D2Z05', 'Merchs/Animals/sheep.jpg', 25800.00);

--
-- Indexes for table `Home`
--
ALTER TABLE `Home`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Home`
--
ALTER TABLE `Home`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;