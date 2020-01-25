-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 07:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `animalId` int(11) NOT NULL,
  `animalName` varchar(50) NOT NULL,
  `weight` int(5) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`animalId`, `animalName`, `weight`, `date_created`, `date_modified`) VALUES
(2, 'Gajah', 0, '2020-01-05 09:43:36', '0000-00-00 00:00:00'),
(6, 'anjing', 12, '2020-01-05 09:43:36', '0000-00-00 00:00:00'),
(10, 'anoa', 5, '2020-01-05 10:40:13', '2020-01-05 17:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 10, 'b48be4a31f5abb12ff4ea0c728db30a2cac7001a', 1, 0, 0, NULL, '2020-01-25 15:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579967786, NULL, '0', 403),
(2, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579967786, 0.032409, '1', 200),
(3, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579967948, NULL, '0', 403),
(4, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579967948, 0.0171351, '1', 200),
(5, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579967950, NULL, '0', 403),
(6, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579967950, 0.0326591, '1', 200),
(7, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579968103, NULL, '0', 403),
(8, 'api/example/users', 'get', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579968103, 0.037703, '1', 200),
(9, 'api/example/users', 'get', 'a:13:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Pragma\";s:8:\"no-cache\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579968165, NULL, '0', 403),
(10, 'api/example/users', 'get', 'a:13:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Pragma\";s:8:\"no-cache\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:11:\"same-origin\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:7:\"Referer\";s:29:\"http://localhost/farhan-rest/\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579968165, 0.0378029, '1', 200),
(11, 'v1/auth/register', 'post', 'a:13:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6138d252-4ab0-4c83-9728-d137506d8b30\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------081205541685671723178225\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"546\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"jaka@gmail.com\";s:9:\"full_name\";s:17:\"farhan alfiy ibnu\";s:8:\"password\";s:10:\"bengawan76\";s:21:\"password_confirmation\";s:10:\"bengawan76\";}', '', '::1', 1579968178, NULL, '0', 403),
(12, 'v1/auth/register', 'post', 'a:13:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6138d252-4ab0-4c83-9728-d137506d8b30\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------081205541685671723178225\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"546\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:14:\"jaka@gmail.com\";s:9:\"full_name\";s:17:\"farhan alfiy ibnu\";s:8:\"password\";s:10:\"bengawan76\";s:21:\"password_confirmation\";s:10:\"bengawan76\";}', '', '::1', 1579968178, 0.0226541, '1', 400),
(13, 'v1/auth/register', 'post', 'a:13:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"53818a1b-c654-4270-a47e-6548a00028d4\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------891136236555470076146189\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"552\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:9:\"full_name\";s:17:\"farhan alfiy ibnu\";s:8:\"password\";s:10:\"bengawan76\";s:21:\"password_confirmation\";s:10:\"bengawan76\";}', '', '::1', 1579968192, NULL, '0', 403),
(14, 'v1/auth/register', 'post', 'a:13:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"53818a1b-c654-4270-a47e-6548a00028d4\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------891136236555470076146189\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"552\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:9:\"full_name\";s:17:\"farhan alfiy ibnu\";s:8:\"password\";s:10:\"bengawan76\";s:21:\"password_confirmation\";s:10:\"bengawan76\";}', '', '::1', 1579968192, 0.0249028, '1', 400),
(15, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a8e96d1d-ec69-42df-b149-cbfa53820265\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------766559589471677845540268\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"299\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:12:\"bengawan7687\";}', '', '::1', 1579968462, NULL, '0', 403),
(16, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"a8e96d1d-ec69-42df-b149-cbfa53820265\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------766559589471677845540268\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"299\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:12:\"bengawan7687\";}', '', '::1', 1579968462, 0.114287, '1', 400),
(17, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6cf921d2-f1af-4e90-9f9e-4feb310d0168\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------519851492345518344631927\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '::1', 1579968467, NULL, '0', 403),
(18, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"6cf921d2-f1af-4e90-9f9e-4feb310d0168\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------519851492345518344631927\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '::1', 1579968467, 0.113992, '1', 200),
(19, 'V1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579972194, 0.0312972, '0', 0),
(20, 'V1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579972197, 0.0125232, '0', 0),
(21, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579972435, 0.0568888, '0', 0),
(22, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579972593, 0.0211551, '0', 0),
(23, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ce248d49-1639-4873-b5a6-2b4c5377652a\";s:4:\"Host\";s:12:\"192.168.1.83\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------762924752354186941724081\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '192.168.1.83', 1579972653, NULL, '0', 403),
(24, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"ce248d49-1639-4873-b5a6-2b4c5377652a\";s:4:\"Host\";s:12:\"192.168.1.83\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------762924752354186941724081\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '192.168.1.83', 1579972653, 0.113609, '1', 200),
(25, 'v1/auth/login', 'option', 'a:11:{s:4:\"Host\";s:12:\"192.168.1.83\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '192.168.1.83', 1579972753, 0.0179849, '0', 0),
(26, 'v1/auth/login', 'option', 'a:11:{s:4:\"Host\";s:12:\"192.168.1.83\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '192.168.1.83', 1579973342, 0.01594, '0', 0),
(27, 'v1/auth/login', 'option', 'a:11:{s:4:\"Host\";s:12:\"192.168.1.83\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '192.168.1.83', 1579974109, 0.0124111, '0', 0),
(28, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3aa685b5-3408-4c57-96c8-89c11d7c9570\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------384928393066758828396801\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '::1', 1579974262, NULL, '0', 403),
(29, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"3aa685b5-3408-4c57-96c8-89c11d7c9570\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------384928393066758828396801\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '::1', 1579974262, 0.094043, '1', 200),
(30, 'v1/auth/login', 'option', 'a:11:{s:4:\"Host\";s:12:\"192.168.1.83\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:13:\"gzip, deflate\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '192.168.1.83', 1579974470, 0.0111179, '0', 0),
(31, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579974538, 0.0145411, '0', 0),
(32, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579974886, 0.0196941, '0', 0),
(33, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"aa5b50e1-9fb2-45ff-8640-d31710c23614\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------171298203920042356375166\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '::1', 1579975126, NULL, '0', 403),
(34, 'v1/auth/login', 'post', 'a:11:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"aa5b50e1-9fb2-45ff-8640-d31710c23614\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------171298203920042356375166\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"297\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:8:\"password\";s:10:\"bengawan76\";}', '', '::1', 1579975126, 0.120342, '1', 200),
(35, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975174, 0.078007, '0', 0),
(36, 'v1/auth/login', 'get', 'a:9:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975185, NULL, '0', 405),
(37, 'v1/auth/login', 'get', 'a:9:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975185, 0.0241311, '1', 0),
(38, 'v1/auth/register', 'post', 'a:13:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"cb19e417-b26e-4a08-8213-f9a9d7314dd8\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------877473780241906910424468\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"554\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:9:\"full_name\";s:17:\"farhan alfiy ibnu\";s:8:\"password\";s:12:\"bengawan7687\";s:21:\"password_confirmation\";s:10:\"bengawan76\";}', '', '::1', 1579975242, NULL, '0', 403),
(39, 'v1/auth/register', 'post', 'a:13:{s:10:\"User-Agent\";s:21:\"PostmanRuntime/7.22.0\";s:6:\"Accept\";s:3:\"*/*\";s:13:\"Cache-Control\";s:8:\"no-cache\";s:13:\"Postman-Token\";s:36:\"cb19e417-b26e-4a08-8213-f9a9d7314dd8\";s:4:\"Host\";s:9:\"localhost\";s:12:\"Content-Type\";s:80:\"multipart/form-data; boundary=--------------------------877473780241906910424468\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:14:\"Content-Length\";s:3:\"554\";s:10:\"Connection\";s:10:\"keep-alive\";s:5:\"email\";s:20:\"alfiibnu84@gmail.com\";s:9:\"full_name\";s:17:\"farhan alfiy ibnu\";s:8:\"password\";s:12:\"bengawan7687\";s:21:\"password_confirmation\";s:10:\"bengawan76\";}', '', '::1', 1579975242, 0.027406, '1', 400),
(40, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975250, 0.0163112, '0', 0),
(41, 'v1/auth/login', 'get', 'a:9:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975272, NULL, '0', 405),
(42, 'v1/auth/login', 'get', 'a:9:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975272, 0.0842879, '1', 0),
(43, 'v1/auth/login', 'get', 'a:11:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975331, NULL, '0', 405),
(44, 'v1/auth/login', 'get', 'a:11:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:13:\"Cache-Control\";s:9:\"max-age=0\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:14:\"Sec-Fetch-User\";s:2:\"?1\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975331, 0.0715029, '1', 0),
(45, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975347, 0.0679071, '0', 0),
(46, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975775, 0.025665, '0', 0),
(47, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579975911, 0.0195692, '0', 0),
(48, 'v1/auth/login', 'option', 'a:12:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:6:\"Accept\";s:3:\"*/*\";s:29:\"Access-Control-Request-Method\";s:4:\"POST\";s:30:\"Access-Control-Request-Headers\";s:12:\"content-type\";s:6:\"Origin\";s:21:\"http://localhost:4200\";s:14:\"Sec-Fetch-Mode\";s:4:\"cors\";s:14:\"Sec-Fetch-Site\";s:9:\"same-site\";s:7:\"Referer\";s:27:\"http://localhost:4200/login\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579976468, 0.0638211, '0', 0),
(49, 'v1/auth/login', 'get', 'a:9:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579976506, NULL, '0', 405),
(50, 'v1/auth/login', 'get', 'a:9:{s:4:\"Host\";s:9:\"localhost\";s:10:\"Connection\";s:10:\"keep-alive\";s:25:\"Upgrade-Insecure-Requests\";s:1:\"1\";s:10:\"User-Agent\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:6:\"Accept\";s:124:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9\";s:14:\"Sec-Fetch-Site\";s:4:\"none\";s:14:\"Sec-Fetch-Mode\";s:8:\"navigate\";s:15:\"Accept-Encoding\";s:17:\"gzip, deflate, br\";s:15:\"Accept-Language\";s:44:\"en,id-ID;q=0.9,id;q=0.8,en-US;q=0.7,la;q=0.6\";}', '', '::1', 1579976506, 0.0812352, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` enum('pria','wanita') NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `nama`, `gender`, `email`, `password`, `date_created`, `date_modified`) VALUES
(4, 'paijo abraham', 'pria', 'abra@yahoo.com', '$2y$10$2f6nCRYqwxf2XendySpnTOLrGH9uKdiscjSAux1a.DPRrXtJy7P.S', '2020-01-25 14:09:19', '2020-01-25 14:09:19'),
(10, 'farhan alfiy ibnu', 'pria', 'alfiibnu84@gmail.com', '$2y$10$001H.050uY2m5mC1wFkJZ.BRHwAJLinrsXYv2/8ewspOqFCEh7tsi', '2020-01-25 14:36:09', '2020-01-25 14:36:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`animalId`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `animalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
