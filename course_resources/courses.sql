# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.20)
# Database: sliminstantsearch
# Generation Time: 2020-06-30 09:41:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table courses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `teaser` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;

INSERT INTO `courses` (`id`, `title`, `teaser`, `created_at`, `updated_at`)
VALUES
	(1,'Full Text Search with TNTSearch in Slim 4','Build a fast, powerful search into your project with Eloquent and TNTSearch. This course covers setting up a database, creating a search index, searching, and displaying the most relevant results.',NULL,NULL),
	(2,'Array Destructuring in PHP','When you need to pull values from arrays, destructuring often makes sense. In this course, we\'ll dive into everything you need to know about destructuring arrays in PHP.',NULL,NULL),
	(3,'Realtime Private Messages with Laravel Livewire','Build a realtime private message dashboard that allows conversations between any number of users, with everything updated in realtime.',NULL,NULL),
	(4,'Build a Multi-room Realtime Chat with Livewire','Join a room and start chatting! This course covers building a multi-room text chat app with Laravel Livewire, including Laravel Websockets for realtime updates, and a sprinkle of Alpine.js to handle showing when a user is typing in realtime.',NULL,NULL),
	(5,'Infinite Scroll with Vue','Here\'s how to implement a simple, clean pattern for infinite scrolling content in Vue. We\'ll refactor to make it more reusable, too.',NULL,NULL),
	(6,'The Nuxt fetch method','If you\'re working with Nuxt, you\'re probably using the asyncData method to fetch content before rendering it. Nuxt 2.12 introduces a new and improved fetch method that works like asyncData, but with some awesome additions. Let\'s dive in and see fetch in action.',NULL,NULL),
	(7,'Build a Vue Dropdown Menu','A quick course on building a super flexible dropdown menu with Vue, focusing on how to achieve ultimate customisation using slots and slot props.',NULL,NULL),
	(8,'Alpine.js State Management with Spruce','Missing state management in Alpine.js? Meet Spruce, a lightweight state management layer for Alpine.js that makes managing state between components a breeze. Core Alpine.js team member and Spruce author, Ryan Chandler, walks us through using it.',NULL,NULL),
	(9,'Build an RSS reader with Alpine.js','Just for fun, let\'s build a simple RSS reader with Alpine.js that fetches and renders entries from a list of your chosen RSS publications.',NULL,NULL),
	(10,'Learn Alpine.js','Alpine.js is a refreshingly minimal JavaScript framework that gives you the reactive nature of Vue and React, but with much more simplicity. This course will get you up to speed on how to use it.',NULL,NULL),
	(11,'Laravel Sanctum (Airlock) with Postman','You\'ve got Sanctum up and running for authentication, but it\'s cookie based, so making requests to your API with Postman is a little more complicated. This snippet shows you how.',NULL,NULL),
	(12,'The Vue 3 Composition API','With Vue 3 comes a brand new way to define component logic. This function-based API gives you everything you\'re used to, but allows for more flexibility and better code and project organisation. This course covers everything you need to know.',NULL,NULL),
	(13,'New in Vue 3','A roundup of what\'s new in Vue 3, including a dive into the Composition API and plenty of practical examples.',NULL,NULL),
	(14,'Getting started with Laravel Livewire','If you use Vue or React but don’t like the hassle of making requests to an API to drive components, you’ll love Livewire. Using a single PHP class and a Blade template, you’ll be creating powerful, reactive components in no time, without the need for Vue or React.',NULL,NULL),
	(15,'Build a Twitter Clone','Let\'s recreate Twitter with Laravel! Completely from scratch, we\'ll use Laravel and Vue to build out a Twitter Clone with as many features as we can. Includes a timeline, notifications, media uploads, hashtags, mentions, granular search and much more. To top it off, everything is updated in true realtime.',NULL,NULL),
	(16,'API Token Authentication with Laravel Sanctum (Airlock)','Give users the ability to issue GitHub style personal access tokens within your app, which can be used to authenticate with your API. We\'ll also be attaching abilities (permissions) to tokens and creating a clean way to check these in your API controllers.',NULL,NULL),
	(17,'Laravel Sanctum (Airlock) with Nuxt','Get Laravel Sanctum (formerly known as Airlock) installed, configured and have authentication up and running with Nuxt using the Nuxt Auth module.',NULL,NULL),
	(18,'Laravel Sanctum (Airlock) with Vue','Get Laravel Sanctum (formerly known as Airlock) installed, configured and have authentication up and running with Vue using Vue CLI and a simple Vuex store.',NULL,NULL),
	(19,'Slim 4 Events and Listeners','As your app starts to grow, events and listeners come to the rescue. They keep your controllers clean, your files organised and make testing much easier. In this course, we\'ll implement the Symfony EventDispatcher component into Slim 4, then refactor our solution so you spend less time registering events and listeners, and more time writing code.',NULL,NULL),
	(20,'Build a Referral System in Laravel','All the core functionality you\'ll need to implement referrals in your Laravel app. When you\'re done, just hook in what happens when a referral is successful.',NULL,NULL);

/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
