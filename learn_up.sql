-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 30 avr. 2025 à 00:23
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `learn_up`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Declares a block-scoped variable', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(2, 1, 'Declares a global variable', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(3, 1, 'Declares a constant variable', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(4, 1, 'Declares a function', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(5, 2, 'push()', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(6, 2, 'pop()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(7, 2, 'shift()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(8, 2, 'unshift()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(9, 3, 'The object that owns the function', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(10, 3, 'The global object in non-strict mode', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(11, 3, 'The function itself', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(12, 3, 'The parent function', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(13, 4, 'Using the `async` keyword', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(14, 4, 'Using the `sync` keyword', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(15, 4, 'Using the `await` keyword alone', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(16, 4, 'Using the `promise` keyword', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(17, 5, '\"object\"', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(18, 5, '\"null\"', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(19, 5, '\"undefined\"', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(20, 5, '\"string\"', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(21, 6, '===', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(22, 6, '!==', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(23, 6, '==', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(24, 6, '=', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(25, 7, 'A function with access to its outer scope', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(26, 7, 'A function that retains variable bindings', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(27, 7, 'A loop inside a function', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(28, 7, 'A global variable', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(29, 8, 'event.preventDefault()', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(30, 8, 'event.stopPropagation()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(31, 8, 'event.cancel()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(32, 8, 'event.halt()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(33, 9, 'Creates a new array with transformed elements', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(34, 9, 'Applies a function to each element', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(35, 9, 'Removes elements from an array', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(36, 9, 'Sorts an array', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(37, 10, 'Handle exceptions in code', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(38, 10, 'Loop through arrays', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(39, 10, 'Define functions', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(40, 10, 'Create objects', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(41, 11, 'A reusable UI building block', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(42, 11, 'A function or class returning JSX', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(43, 11, 'A database query', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(44, 11, 'A CSS stylesheet', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(45, 12, 'Using props', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(46, 12, 'Using state', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(47, 12, 'Using context', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(48, 12, 'Using hooks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(49, 13, 'Manage state in functional components', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(50, 13, 'Add reactivity to variables', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(51, 13, 'Handle side effects', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(52, 13, 'Fetch data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(53, 14, 'JavaScript XML', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(54, 14, 'JavaScript Extension', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(55, 14, 'JSON XML', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(56, 14, 'Java Syntax', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(57, 15, 'Using event handlers like onClick', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(58, 15, 'Passing functions as props', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(59, 15, 'Using CSS selectors', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(60, 15, 'Using global variables', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(61, 16, 'A lightweight copy of the real DOM', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(62, 16, 'A database schema', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(63, 16, 'A CSS framework', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(64, 16, 'A server-side renderer', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(65, 17, 'Handle side effects in components', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(66, 17, 'Run code after rendering', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(67, 17, 'Manage state variables', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(68, 17, 'Define component props', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(69, 18, 'Using a function returning JSX', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(70, 18, 'Using a class with render', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(71, 18, 'Using a constructor', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(72, 18, 'Using a loop', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(73, 19, 'A component with state-controlled inputs', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(74, 19, 'A form with React-managed values', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(75, 19, 'A component without props', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(76, 19, 'A component with CSS styles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(77, 20, 'Helps React identify list items', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(78, 20, 'Styles list elements', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(79, 20, 'Sorts list items', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(80, 20, 'Filters list items', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(81, 21, 'Data manipulation and analysis', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(82, 21, 'Working with DataFrames', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(83, 21, 'Creating visualizations', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(84, 21, 'Building machine learning models', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(85, 22, 'df[column].mean()', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(86, 22, 'df[column].sum()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(87, 22, 'df[column].median()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(88, 22, 'df[column].mode()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(89, 23, 'Numerical computing tools', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(90, 23, 'Array and matrix operations', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(91, 23, 'Database management', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(92, 23, 'Web scraping', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(93, 24, 'First 5 rows of the DataFrame', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(94, 24, 'Last 5 rows of the DataFrame', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(95, 24, 'Column names', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(96, 24, 'DataFrame summary', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(97, 25, 'Using df.dropna()', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(98, 25, 'Using df.fillna()', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(99, 25, 'Using df.sort_values()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(100, 25, 'Using df.groupby()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(101, 26, 'Data visualization', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(102, 26, 'Data cleaning', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(103, 26, 'Machine learning', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(104, 26, 'Web development', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(105, 27, 'Groups data by column values', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(106, 27, 'Aggregates data with functions', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(107, 27, 'Sorts data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(108, 27, 'Filters rows', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(109, 28, 'Using df.merge()', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(110, 28, 'Using df.append()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(111, 28, 'Using df.concat()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(112, 28, 'Using df.join()', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(113, 29, 'A multi-dimensional array', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(114, 29, 'A data structure for numerical data', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(115, 29, 'A plotting tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(116, 29, 'A database table', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(117, 30, 'Statistical data visualization', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(118, 30, 'Data cleaning', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(119, 30, 'Machine learning', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(120, 30, 'Web scraping', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(121, 31, 'Learning from labeled data', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(122, 31, 'Predicting outcomes with inputs', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(123, 31, 'Clustering unlabeled data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(124, 31, 'Reinforcement learning', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(125, 32, 'Measure prediction error', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(126, 32, 'Optimize model weights', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(127, 32, 'Split data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(128, 32, 'Visualize data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(129, 33, 'Model learns noise in training data', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(130, 33, 'Poor generalization to new data', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(131, 33, 'Underperforming on training data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(132, 33, 'Simplifying the model', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(133, 34, 'Splits data based on features', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(134, 34, 'Clusters data points', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(135, 34, 'Reduces dimensions', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(136, 34, 'Optimizes gradients', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(137, 35, 'Minimize the loss function', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(138, 35, 'Update model parameters', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(139, 35, 'Split data into subsets', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(140, 35, 'Visualize predictions', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(141, 36, 'Table of prediction outcomes', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(142, 36, 'Loss function graph', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(143, 36, 'Feature correlation matrix', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(144, 36, 'Data transformation tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(145, 37, 'Groups data into k clusters', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(146, 37, 'Minimizes intra-cluster variance', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(147, 37, 'Predicts continuous values', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(148, 37, 'Classifies labeled data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(149, 38, 'Evaluate model performance', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(150, 38, 'Clean data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(151, 38, 'Visualize data', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(152, 38, 'Transform features', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(153, 39, 'A model inspired by the brain', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(154, 39, 'Layers of interconnected nodes', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(155, 39, 'A clustering algorithm', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(156, 39, 'A decision tree', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(157, 40, 'Overfitting', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(158, 40, 'Underfitting', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(159, 40, 'Data leakage', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(160, 40, 'Feature selection', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(161, 41, 'A product with basic features', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(162, 41, 'Used to test market demand', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(163, 41, 'A fully developed product', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(164, 41, 'A marketing campaign', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(165, 42, 'Present business to investors', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(166, 42, 'Create a product prototype', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(167, 42, 'Analyze competitors', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(168, 42, 'Design a website', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(169, 43, 'Identifying target customers', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(170, 43, 'Understanding customer needs', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(171, 43, 'Building a product', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(172, 43, 'Launching a campaign', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(173, 44, 'A strategic planning tool', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(174, 44, 'A financial spreadsheet', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(175, 44, 'A marketing plan', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(176, 44, 'A product prototype', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(177, 45, 'Describes customer benefits', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(178, 45, 'Differentiates from competitors', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(179, 45, 'Sets pricing strategy', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(180, 45, 'Defines team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(181, 46, 'Funding with own resources', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(182, 46, 'Raising venture capital', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(183, 46, 'Hiring a team', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(184, 46, 'Building a prototype', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(185, 47, 'Changing business direction', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(186, 47, 'Adapting based on feedback', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(187, 47, 'Hiring new staff', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(188, 47, 'Increasing prices', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(189, 48, 'Confirm demand for product', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(190, 48, 'Design a logo', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(191, 48, 'Hire a team', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(192, 48, 'Build a website', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(193, 49, 'How to reach customers', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(194, 49, 'Product launch plan', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(195, 49, 'Team structure', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(196, 49, 'Financial forecast', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(197, 50, 'Building with minimal resources', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(198, 50, 'A large-scale enterprise', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(199, 50, 'A marketing agency', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(200, 50, 'A software tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(201, 51, 'Evaluates strengths and weaknesses', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(202, 51, 'Assesses opportunities and threats', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(203, 51, 'Creates financial forecasts', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(204, 51, 'Designs marketing campaigns', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(205, 52, 'Industry competitiveness', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(206, 52, 'Employee performance', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(207, 52, 'Product pricing', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(208, 52, 'Customer segmentation', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(209, 53, 'Unique business strength', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(210, 53, 'Edge over competitors', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(211, 53, 'High employee turnover', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(212, 53, 'Large office space', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(213, 54, 'Defines company purpose', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(214, 54, 'Lists financial goals', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(215, 54, 'Describes team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(216, 54, 'Outlines marketing tactics', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(217, 55, 'Unique product features', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(218, 55, 'Standing out in the market', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(219, 55, 'Reducing costs', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(220, 55, 'Increasing production', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(221, 56, 'Activities creating customer value', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(222, 56, 'A pricing model', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(223, 56, 'A marketing campaign', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(224, 56, 'A team hierarchy', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(225, 57, 'Setting long-term goals', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(226, 57, 'Defining resource allocation', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(227, 57, 'Designing a website', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(228, 57, 'Hiring staff', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(229, 58, 'External business factors', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(230, 58, 'Internal team performance', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(231, 58, 'Product pricing', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(232, 58, 'Customer feedback', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(233, 59, 'Unique business capability', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(234, 59, 'Drives competitive advantage', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(235, 59, 'A marketing tactic', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(236, 59, 'A financial metric', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(237, 60, 'Performance measurement tool', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(238, 60, 'A pricing strategy', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(239, 60, 'A team hierarchy', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(240, 60, 'A marketing plan', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(241, 61, 'Facilitates Scrum processes', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(242, 61, 'Removes team obstacles', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(243, 61, 'Writes code', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(244, 61, 'Designs products', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(245, 62, 'A time-boxed iteration', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(246, 62, 'A daily meeting', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(247, 62, 'A product launch', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(248, 62, 'A team role', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(249, 63, 'Team discusses progress', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(250, 63, 'Plans next 24 hours', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(251, 63, 'Assigns new tasks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(252, 63, 'Reviews code', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(253, 64, 'Lists prioritized work items', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(254, 64, 'Tracks sprint progress', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(255, 64, 'Assigns team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(256, 64, 'Documents bugs', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(257, 65, 'Reviews what went well', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(258, 65, 'Plans improvements', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(259, 65, 'Assigns new tasks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(260, 65, 'Designs features', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(261, 66, 'Product Owner', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(262, 66, 'Scrum Master', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(263, 66, 'Development Team', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(264, 66, 'Stakeholders', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(265, 67, 'Selects backlog items', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(266, 67, 'Defines sprint goal', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(267, 67, 'Reviews past sprints', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(268, 67, 'Assigns team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(269, 68, 'Tracks sprint progress', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(270, 68, 'Lists backlog items', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(271, 68, 'Shows team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(272, 68, 'Maps user stories', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(273, 69, 'Work meets quality standards', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(274, 69, 'Completeness of tasks', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(275, 69, 'Task assignment', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(276, 69, 'Sprint duration', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(277, 70, 'Measure of work completed', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(278, 70, 'Team meeting frequency', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(279, 70, 'Backlog size', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(280, 70, 'Sprint duration', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(281, 71, 'Provides project management standards', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(282, 71, 'Guides best practices', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(283, 71, 'Lists software tools', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(284, 71, 'Designs team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(285, 72, 'Authorizes the project', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(286, 72, 'Lists tasks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(287, 72, 'Tracks progress', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(288, 72, 'Defines team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(289, 73, 'Identifies longest task sequence', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(290, 73, 'Determines project duration', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(291, 73, 'Assigns resources', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(292, 73, 'Tracks costs', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(293, 74, 'Decomposes project into tasks', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(294, 74, 'Tracks project progress', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(295, 74, 'Assigns team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(296, 74, 'Lists risks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(297, 75, 'Identifies potential risks', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(298, 75, 'Mitigates project uncertainties', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(299, 75, 'Assigns tasks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(300, 75, 'Designs deliverables', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(301, 76, 'Visualizes project schedule', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(302, 76, 'Lists project risks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(303, 76, 'Assigns team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(304, 76, 'Tracks costs', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(305, 77, 'Engaging key stakeholders', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(306, 77, 'Managing expectations', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(307, 77, 'Writing code', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(308, 77, 'Designing products', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(309, 78, 'Tracks project performance', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(310, 78, 'Assigns tasks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(311, 78, 'Lists risks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(312, 78, 'Designs deliverables', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(313, 79, 'Defines project deliverables', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(314, 79, 'Outlines project boundaries', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(315, 79, 'Assigns team roles', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(316, 79, 'Tracks costs', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(317, 80, 'Aligns team on project goals', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(318, 80, 'Reviews deliverables', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(319, 80, 'Tracks progress', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(320, 80, 'Assigns tasks', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(321, 81, 'Creates precise paths', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(322, 81, 'Draws vector shapes', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(323, 81, 'Applies colors', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(324, 81, 'Edits text', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(325, 82, 'Using the Artboard tool', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(326, 82, 'Using the Pen tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(327, 82, 'Using the Text tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(328, 82, 'Using the Brush tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(329, 83, 'Scalable without quality loss', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(330, 83, 'Based on mathematical paths', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(331, 83, 'Pixel-based image', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(332, 83, 'A 3D model', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(333, 84, 'Combines shapes', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(334, 84, 'Applies gradients', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(335, 84, 'Edits text', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(336, 84, 'Adjusts colors', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(337, 85, 'Organizes artwork', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(338, 85, 'Controls visibility', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(339, 85, 'Applies filters', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(340, 85, 'Creates animations', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(341, 86, 'Using the Gradient panel', 1, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(342, 86, 'Using the Pen tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(343, 86, 'Using the Text tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(344, 86, 'Using the Brush tool', 0, '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(345, 151, 'select * from table', 1, '2025-04-29 16:41:22', '2025-04-29 16:41:22'),
(346, 151, 'select number from table', 0, '2025-04-29 16:41:23', '2025-04-29 16:41:23'),
(347, 152, 'select name from table', 1, '2025-04-29 16:41:24', '2025-04-29 16:41:24'),
(348, 152, 'select table where name = true', 0, '2025-04-29 16:41:25', '2025-04-29 16:41:25');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passed_exam_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `speciality_id` bigint(20) UNSIGNED DEFAULT NULL,
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `is_accepted` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `name`, `speciality_id`, `creator_id`, `description`, `image`, `is_accepted`, `created_at`, `updated_at`) VALUES
(1, 'Complete JavaScript Mastery', 1, 2, 'Learn JavaScript from beginner to advanced.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963330/js_dkbjgb.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(2, 'React for Beginners', 1, 2, 'Build web apps with React.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/react_qar5t5.png', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(3, 'Python for Data Science', 2, 2, 'Analyze data with Python and pandas.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/python_for_DataSc_beoe8e.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(4, 'Machine Learning A-Z', 2, 2, 'Master ML with Python and R.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963330/machineLearnin_ylaqqj.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(5, 'Start Your Own Business', 3, 3, 'Launch a startup from scratch.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/startYourOwnBusiness_x4yi8z.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(6, 'Business Strategy 101', 3, 3, 'Develop winning business strategies.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/businessStrategy101_fee6u6.png', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(7, 'Scrum Master Certification', 4, 4, 'Master Scrum frameworks and Agile practices.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/scrum_fde8ry.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(8, 'PMP Certification Prep', 4, 4, 'Pass the PMP exam on your first try with expert guidance.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963330/pmp_xmipys.png', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(9, 'Adobe Illustrator Fundamentals', 5, 5, 'Learn to create vector graphics with Illustrator.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/illustrator_ego5jg.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(10, 'Photoshop Essentials', 5, 5, 'Edit and design stunning visuals with Photoshop.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963330/ps_rbmm2y.webp', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(11, 'UX Design Principles', 6, 6, 'Design intuitive user experiences and interfaces.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963332/us_pricipales_bxjvlx.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(12, 'Figma for Beginners', 6, 6, 'Create and collaborate on designs using Figma.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963331/figma_xwdxoa.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(13, 'Digital Marketing Basics', 7, 2, 'Master the fundamentals of online marketing.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963330/Digital-Mkg-Basics_dyma0c.webp', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(14, 'Social Media Marketing', 7, 2, 'Grow brands through social media strategies.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963332/socialMedia_llonrb.jpg', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(15, 'SEO Fundamentals', 8, 3, 'Boost website rankings and drive organic traffic.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963332/seo_fundementals_ja5q01.webp', 0, '2025-04-27 09:00:00', '2025-04-27 09:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `disciplines`
--

CREATE TABLE `disciplines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `disciplines`
--

INSERT INTO `disciplines` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Technology', 'Courses in software development, IT, and data science.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963336/technology_fvibrv.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(2, 'Business', 'Learn entrepreneurship, management, and marketing.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963334/business_b9ebnz.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(3, 'Design', 'Master graphic design, UX/UI, and animation.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963334/design_dgcacr.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(4, 'Marketing', 'Explore digital marketing, SEO, and social media.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963335/marketing_fo4apc.jpghttps://res.cloudinary.com/def2o7hxm/image/upload/v1745963335/marketing_fo4apc.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(5, 'Personal Development', 'Improve leadership, productivity, and communication.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963335/personalDev_xs6oqt.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(6, 'Finance', 'Learn accounting, investing, and financial planning.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963334/finance_pggfvu.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(7, 'Health & Fitness', 'Courses on nutrition, yoga, and fitness training.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963335/health_fitness_wym5cy.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(8, 'Music', 'Learn instruments, music theory, and production.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963335/music_h8slne.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(9, 'Photography', 'Master photography techniques and editing.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963336/photography_pf3jgl.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(10, 'Teaching', 'Develop skills for education and online teaching.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963336/teaching_b6b9c2.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cours_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `exams`
--

INSERT INTO `exams` (`id`, `description`, `cours_id`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript Final Exam', 1, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(2, 'React Midterm', 2, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(3, 'Python Data Science Quiz', 3, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(4, 'ML Final Exam', 4, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(5, 'Startup Strategy Test', 5, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(6, 'Business Strategy Quiz', 6, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(7, 'Scrum Master Final', 7, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(8, 'PMP Practice Exam', 8, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(9, 'Illustrator Midterm', 9, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(10, 'Photoshop Final Exam', 10, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(11, 'UX Design Quiz', 11, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(12, 'Figma Design Test', 12, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(13, 'Digital Marketing Final', 13, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(14, 'Social Media Quiz', 14, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(15, 'SEO Final Exam', 15, '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(16, 'Final exam for data science', NULL, '2025-04-29 16:41:20', '2025-04-29 16:41:20');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cour_id` varchar(255) NOT NULL,
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` datetime NOT NULL DEFAULT '2025-04-29 00:27:34',
  `end_date` datetime NOT NULL DEFAULT '2025-05-29 00:27:34',
  `description` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `max_students` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groups`
--

INSERT INTO `groups` (`id`, `name`, `cour_id`, `creator_id`, `created_at`, `updated_at`, `start_date`, `end_date`, `description`, `image`, `price`, `max_students`) VALUES
(1, 'JavaScript Bootcamp 2025', '1', 2, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Intensive JavaScript course.', 'js_group.jpg', 49.99, 20),
(2, 'React Cohort Spring 2025', '2', 2, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Learn React with live sessions.', 'react_group.jpg', 59.99, 15),
(3, 'Python Data Science Group', '3', 2, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Data analysis with Python.', 'python_group.jpg', 69.99, 25),
(4, 'ML Masterclass 2025', '4', 2, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Machine learning bootcamp.', 'ml_group.jpg', 79.99, 20),
(5, 'Startup Workshop', '5', 3, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Launch your business.', 'startup_group.jpg', 39.99, 30),
(6, 'Business Strategy Cohort', '6', 3, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Develop strategic skills.', 'strategy_group.jpg', 44.99, 25),
(7, 'Scrum Master Prep', '7', 4, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Prepare for Scrum certification.', 'scrum_group.jpg', 89.99, 15),
(8, 'PMP Bootcamp 2025', '8', 4, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'PMP exam preparation.', 'pmp_group.jpg', 99.99, 10),
(9, 'Illustrator Workshop', '9', 5, '2025-04-27 09:00:00', '2025-04-27 09:00:00', '2025-05-01 09:00:00', '2025-06-01 09:00:00', 'Master Adobe Illustrator.', 'illustrator_group.jpg', 49.99, 20);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_26_145000_create_disciplines_table', 1),
(5, '2025_03_26_145010_create_specialities_table', 1),
(6, '2025_03_26_145016_create_cours_table', 1),
(7, '2025_03_26_145022_create_exams_table', 1),
(8, '2025_03_26_145035_create_groups_table', 1),
(9, '2025_03_26_145045_create_user_groups_table', 1),
(10, '2025_03_26_145050_create_passed_exams_table', 1),
(11, '2025_03_26_145201_create_certifications_table', 1),
(12, '2025_03_26_145304_create_questions_table', 1),
(13, '2025_03_26_145313_create_answers_table', 1),
(14, '2025_03_26_150018_create_permission_tables', 1),
(15, '2025_04_06_105728_create_personal_access_tokens_table', 1),
(16, '2025_04_13_104507_create_user_answers_table', 1),
(17, '2025_04_26_150058_add_columns_to_groups', 1),
(18, '2025_04_27_150158_add_columns_to_user_answers', 1);

-- --------------------------------------------------------

--
-- Structure de la table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21);

-- --------------------------------------------------------

--
-- Structure de la table `passed_exams`
--

CREATE TABLE `passed_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'Bob Wilson', '34d3489abcf53cfcfcf358219861d8f60f7510abedd0a1d2b2af8b75f566cb3f', '[\"*\"]', NULL, NULL, '2025-04-29 10:02:38', '2025-04-29 10:02:38'),
(2, 'App\\Models\\User', 3, 'Bob Wilson', 'd03bfeea97fedb0db70adfa02207c4c194e0edfe0d3de7b8a2e608fff07eb5b8', '[\"*\"]', NULL, NULL, '2025-04-29 16:28:04', '2025-04-29 16:28:04'),
(3, 'App\\Models\\User', 21, 'dhouib', 'c4262f1f558858ccc3c8b1c7978775474d4fadb3bf9573d1cea123c5bcfb7cc7', '[\"*\"]', NULL, NULL, '2025-04-29 16:33:14', '2025-04-29 16:33:14'),
(4, 'App\\Models\\User', 2, 'Alice Brown', '8656cce2dd993d47b820ae15f3e99f84a9b66d9125a422b92c4f8e0a03bad3a0', '[\"*\"]', '2025-04-29 16:41:25', NULL, '2025-04-29 16:36:44', '2025-04-29 16:41:25');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exams_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` enum('multiple_choice','unique_choice') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `exams_id`, `question`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is the purpose of the `let` keyword in JavaScript?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(2, 1, 'Which method is used to add an element to the end of an array?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(3, 1, 'What does the `this` keyword refer to in a function?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(4, 1, 'How do you define an asynchronous function in JavaScript?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(5, 1, 'What is the output of `typeof null`?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(6, 1, 'Which operator is used for strict equality?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(7, 1, 'What is a closure in JavaScript?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(8, 1, 'How can you prevent default behavior in an event handler?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(9, 1, 'What does the `map` method do?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(10, 1, 'What is the purpose of `try...catch`?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(11, 2, 'What is a React component?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(12, 2, 'How do you pass data to a component?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(13, 2, 'What is the purpose of the `useState` hook?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(14, 2, 'What does JSX stand for?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(15, 2, 'How do you handle events in React?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(16, 2, 'What is the virtual DOM?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(17, 2, 'What is the purpose of `useEffect`?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(18, 2, 'How do you create a functional component?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(19, 2, 'What is a controlled component?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(20, 2, 'What does the `key` prop do in a list?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(21, 3, 'What is the purpose of the `pandas` library?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(22, 3, 'How do you calculate the mean of a DataFrame column?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(23, 3, 'What does `numpy` provide for Python?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(24, 3, 'What is the output of `df.head()`?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(25, 3, 'How do you handle missing data in pandas?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(26, 3, 'What is the purpose of `matplotlib`?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(27, 3, 'What does `groupby` do in pandas?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(28, 3, 'How do you merge two DataFrames?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(29, 3, 'What is a NumPy array?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(30, 3, 'What does `seaborn` enhance?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(31, 4, 'What is supervised learning?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(32, 4, 'What is the purpose of a loss function?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(33, 4, 'What is overfitting in machine learning?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(34, 4, 'What does a decision tree do?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(35, 4, 'What is the role of gradient descent?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(36, 4, 'What is a confusion matrix?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(37, 4, 'What does k-means clustering do?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(38, 4, 'What is the purpose of cross-validation?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(39, 4, 'What is a neural network?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(40, 4, 'What does regularization prevent?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(41, 5, 'What is a minimum viable product (MVP)?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(42, 5, 'What is the purpose of a pitch deck?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(43, 5, 'What does customer discovery involve?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(44, 5, 'What is a business model canvas?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(45, 5, 'What is the role of a value proposition?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(46, 5, 'What does bootstrapping mean?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(47, 5, 'What is a pivot in a startup?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(48, 5, 'What is the purpose of market validation?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(49, 5, 'What does a go-to-market strategy define?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(50, 5, 'What is a lean startup?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(51, 6, 'What is a SWOT analysis?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(52, 6, 'What does Porter’s Five Forces analyze?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(53, 6, 'What is a competitive advantage?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(54, 6, 'What is a mission statement?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(55, 6, 'What does differentiation strategy focus on?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(56, 6, 'What is a value chain?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(57, 6, 'What is strategic planning?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(58, 6, 'What does a PEST analysis evaluate?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(59, 6, 'What is a core competency?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(60, 6, 'What is a balanced scorecard?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(61, 7, 'What is the role of a Scrum Master?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(62, 7, 'What is a sprint in Scrum?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(63, 7, 'What happens during a daily Scrum?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(64, 7, 'What is the purpose of a product backlog?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(65, 7, 'What is a sprint retrospective?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(66, 7, 'Who is responsible for the product backlog?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(67, 7, 'What is the purpose of sprint planning?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(68, 7, 'What is a burndown chart?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(69, 7, 'What does the Definition of Done ensure?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(70, 7, 'What is velocity in Scrum?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(71, 8, 'What is the purpose of the PMBOK Guide?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(72, 8, 'What is a project charter?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(73, 8, 'What is the critical path method?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(74, 8, 'What is a work breakdown structure (WBS)?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(75, 8, 'What is the purpose of risk management?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(76, 8, 'What is a Gantt chart?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(77, 8, 'What does stakeholder management involve?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(78, 8, 'What is earned value management?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(79, 8, 'What is a project scope statement?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(80, 8, 'What is the purpose of a kickoff meeting?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(81, 9, 'What is the purpose of the Pen tool in Illustrator?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(82, 9, 'How do you create a new artboard?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(83, 9, 'What is a vector graphic?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(84, 9, 'What does the Pathfinder panel do?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(85, 9, 'What is the purpose of layers in Illustrator?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(86, 9, 'How do you apply a gradient?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(87, 9, 'What is the use of the Clipping Mask?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(88, 9, 'What is the Align panel used for?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(89, 9, 'What does the Shape Builder tool do?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(90, 9, 'How do you export a file as a PNG?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(91, 10, 'What is the purpose of the Lasso tool?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(92, 10, 'How do you adjust image brightness?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(93, 10, 'What is a layer mask?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(94, 10, 'What does the Clone Stamp tool do?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(95, 10, 'What is the purpose of adjustment layers?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(96, 10, 'How do you crop an image?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(97, 10, 'What is the use of the Healing Brush?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(98, 10, 'What does the Quick Selection tool do?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(99, 10, 'What is the purpose of blending modes?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(100, 10, 'How do you save a file as a JPEG?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(101, 11, 'What is user experience (UX) design?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(102, 11, 'What is a user persona?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(103, 11, 'What is the purpose of wireframing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(104, 11, 'What does usability testing involve?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(105, 11, 'What is a user journey map?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(106, 11, 'What is the purpose of A/B testing?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(107, 11, 'What does information architecture define?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(108, 11, 'What is a prototype in UX design?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(109, 11, 'What is the role of empathy in UX?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(110, 11, 'What is heuristic evaluation?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(111, 12, 'What is Figma primarily used for?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(112, 12, 'How do you create a frame in Figma?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(113, 12, 'What is the purpose of auto-layout?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(114, 12, 'What is a component in Figma?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(115, 12, 'What does the prototype feature do?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(116, 12, 'How do you share a Figma file?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(117, 12, 'What is the use of styles in Figma?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(118, 12, 'What is the Layout Grid used for?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(119, 12, 'What does the Team Library enable?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(120, 12, 'How do you export assets in Figma?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(121, 13, 'What is digital marketing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(122, 13, 'What is a call-to-action (CTA)?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(123, 13, 'What is the purpose of email marketing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(124, 13, 'What does PPC stand for?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(125, 13, 'What is the role of content marketing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(126, 13, 'What is a landing page?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(127, 13, 'What does ROI measure in marketing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(128, 13, 'What is the purpose of A/B testing?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(129, 13, 'What is the role of analytics in marketing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(130, 13, 'What is a marketing funnel?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(131, 14, 'What is the purpose of social media marketing?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(132, 14, 'What is a hashtag?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(133, 14, 'What does engagement measure?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(134, 14, 'What is an influencer?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(135, 14, 'What is the role of content calendars?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(136, 14, 'What is a boosted post?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(137, 14, 'What does reach measure?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(138, 14, 'What is a social media audit?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(139, 14, 'What is the purpose of social listening?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(140, 14, 'What is a social media KPI?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(141, 15, 'What does SEO stand for?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(142, 15, 'What is a meta description?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(143, 15, 'What is the purpose of keyword research?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(144, 15, 'What is a backlink?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(145, 15, 'What is on-page SEO?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(146, 15, 'What is a sitemap?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(147, 15, 'What is the role of alt text in SEO?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(148, 15, 'What is a 301 redirect?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(149, 15, 'What is the purpose of Google Analytics?', 'multiple_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(150, 15, 'What is organic search?', 'unique_choice', '2025-04-27 08:00:00', '2025-04-27 08:00:00'),
(151, 16, 'how to get number of records', 'unique_choice', '2025-04-29 16:41:21', '2025-04-29 16:41:21'),
(152, 16, 'how to fect name from tanble', 'unique_choice', '2025-04-29 16:41:23', '2025-04-29 16:41:23');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-04-28 23:38:46', '2025-04-28 23:38:46'),
(2, 'teacher', 'web', '2025-04-28 23:38:46', '2025-04-28 23:38:46'),
(3, 'student', 'web', '2025-04-28 23:38:46', '2025-04-28 23:38:46');

-- --------------------------------------------------------

--
-- Structure de la table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `discipline_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `specialities`
--

INSERT INTO `specialities` (`id`, `name`, `discipline_id`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 1, 'Build modern websites and web apps.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963345/web-development-concept_vtlpbq.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(2, 'Data Science', 1, 'Analyze data with Python and machine learning.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963342/data-science_axogeb.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(3, 'Entrepreneurship', 2, 'Start and grow your own business.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963342/entrepreneur_kgajfb.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(4, 'Project Management', 2, 'Master Agile, Scrum, and PMP.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963345/projectMnagement_j0mqoc.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(5, 'Graphic Design', 3, 'Create stunning visuals with Adobe tools.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963343/graphicDesign_lyedep.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(6, 'UX/UI Design', 3, 'Design user-friendly interfaces.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963341/blog-ui-ux_rxjq9j.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(7, 'Digital Marketing', 4, 'Grow your brand online.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963343/online-marketing-analytics-k2exd3xmq04c7jc1_mcaqsa.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(8, 'SEO', 4, 'Optimize websites for search engines.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963345/seo_yysoxd.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(9, 'Leadership', 5, 'Develop leadership and team management skills.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963343/HD-wallpaper-leadership_nggr5n.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(10, 'Time Management', 5, 'Boost productivity and efficiency.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963345/time-management_dvjdd1.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(11, 'Accounting', 6, 'Learn bookkeeping and financial reporting.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963340/accounting_hjno8f.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(12, 'Investing', 6, 'Master stock markets and portfolios.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963343/investing_makhcx.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(13, 'Yoga', 7, 'Practice yoga for health and mindfulness.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963346/yoga_y2zgxh.webp', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(14, 'Nutrition', 7, 'Understand diet and wellness.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963343/nutrition_ys1jwt.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(15, 'Guitar', 8, 'Learn to play guitar from beginner to pro.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963342/guitar_s08wfq.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(16, 'Music Production', 8, 'Produce music with DAWs like Ableton.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963343/musicProd_pw0ybm.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(17, 'Portrait Photography', 9, 'Capture stunning portraits.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963344/portraitPhotography_mtyupt.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(18, 'Photo Editing', 9, 'Edit photos with Lightroom and Photoshop.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963344/photoEditing_y92mol.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(19, 'Online Teaching', 10, 'Create engaging online courses.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963345/onlineTeaching_fj0per.jpg', '2025-04-27 09:00:00', '2025-04-27 09:00:00'),
(20, 'Curriculum Design', 10, 'Design effective educational programs.', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963341/BLOG-images-Curriculum-Design-1_t7p5bf.webp', '2025-04-27 09:00:00', '2025-04-27 09:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `avatar`, `email`, `email_verified_at`, `password`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'John', 'Doe', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/3_rzqh3q.png', 'john.doe@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(2, 'Alice Brown', 'Alice', 'Brown', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'alice.brown@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(3, 'Bob Wilson', 'Bob', 'Wilson', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/3_rzqh3q.png', 'bob.wilson@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(4, 'Emma Davis', 'Emma', 'Davis', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'emma.davis@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(5, 'Michael Lee', 'Michael', 'Lee', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/1_fhg80q.png', 'michael.lee@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(6, 'Sarah Johnson', 'Sarah', 'Johnson', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'sarah.johnson@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(7, 'David Kim', 'David', 'Kim', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/1_fhg80q.png', 'david.kim@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(8, 'Emily Chen', 'Emily', 'Chen', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'emily.chen@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(9, 'James Patel', 'James', 'Patel', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/1_fhg80q.png', 'james.patel@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(10, 'Laura Garcia', 'Laura', 'Garcia', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'laura.garcia@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(11, 'Chris Evans', 'Chris', 'Evans', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/1_fhg80q.png', 'chris.evans@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(12, 'Anna Lopez', 'Anna', 'Lopez', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'anna.lopez@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(13, 'Mark Taylor', 'Mark', 'Taylor', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/1_fhg80q.png', 'mark.taylor@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(14, 'Sophie Nguyen', 'Sophie', 'Nguyen', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'sophie.nguyen@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(15, 'Ryan Moore', 'Ryan', 'Moore', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/1_fhg80q.png', 'ryan.moore@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(16, 'Lisa Adams', 'Lisa', 'Adams', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'lisa.adams@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(17, 'Tom Harris', 'Tom', 'Harris', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/3_rzqh3q.png', 'tom.harris@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(18, 'Megan Clark', 'Megan', 'Clark', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'megan.clark@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(19, 'Daniel Young', 'Daniel', 'Young', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/3_rzqh3q.png', 'daniel.young@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(20, 'Olivia King', 'Olivia', 'King', 'https://res.cloudinary.com/def2o7hxm/image/upload/v1745963347/2_w0mkvl.png', 'olivia.king@example.com', NULL, '$2y$12$nkXuJHyzYHtqXopXwSX3Guik2DRFkb6Y68qsGs/1rJy1ioXPQvZHq', 1, NULL, '2025-04-27 09:00:00', '2025-04-29 09:42:13'),
(21, 'dhouib', 'achrafDH', 'achraf', 'default-avatar.png', 'achraf.dhouib.7@gmail.com', NULL, '$2y$12$MXHNuD3Hm2T6Gl11DJ6rSeTHTQqm2WXCL16lPHWwpPv4lt8rEKl9a', 1, NULL, '2025-04-29 16:33:14', '2025-04-29 16:33:14');

-- --------------------------------------------------------

--
-- Structure de la table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `passed_exam_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certifications_passed_exam_id_unique` (`passed_exam_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cours_speciality_id_foreign` (`speciality_id`),
  ADD KEY `cours_creator_id_foreign` (`creator_id`);

--
-- Index pour la table `disciplines`
--
ALTER TABLE `disciplines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_cour_id_foreign` (`cours_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `groups_name_unique` (`name`),
  ADD KEY `groups_creator_id_foreign` (`creator_id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Index pour la table `passed_exams`
--
ALTER TABLE `passed_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passed_exams_user_id_foreign` (`user_id`),
  ADD KEY `passed_exams_exam_id_foreign` (`exam_id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_exams_id_foreign` (`exams_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Index pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialities_discipline_id_foreign` (`discipline_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_answers_passed_exam_id_foreign` (`passed_exam_id`),
  ADD KEY `user_answers_question_id_foreign` (`question_id`),
  ADD KEY `user_answers_answer_id_foreign` (`answer_id`),
  ADD KEY `user_answers_user_id_foreign` (`user_id`);

--
-- Index pour la table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_groups_group_id_foreign` (`group_id`),
  ADD KEY `user_groups_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT pour la table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `disciplines`
--
ALTER TABLE `disciplines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `passed_exams`
--
ALTER TABLE `passed_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `certifications`
--
ALTER TABLE `certifications`
  ADD CONSTRAINT `certifications_passed_exam_id_foreign` FOREIGN KEY (`passed_exam_id`) REFERENCES `passed_exams` (`id`);

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cours_speciality_id_foreign` FOREIGN KEY (`speciality_id`) REFERENCES `specialities` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_cour_id_foreign` FOREIGN KEY (`cours_id`) REFERENCES `cours` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `passed_exams`
--
ALTER TABLE `passed_exams`
  ADD CONSTRAINT `passed_exams_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `passed_exams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_exams_id_foreign` FOREIGN KEY (`exams_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `specialities`
--
ALTER TABLE `specialities`
  ADD CONSTRAINT `specialities_discipline_id_foreign` FOREIGN KEY (`discipline_id`) REFERENCES `disciplines` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_answers_passed_exam_id_foreign` FOREIGN KEY (`passed_exam_id`) REFERENCES `passed_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_groups`
--
ALTER TABLE `user_groups`
  ADD CONSTRAINT `user_groups_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_groups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
