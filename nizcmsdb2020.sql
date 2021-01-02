-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2021 pada 03.33
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nizcmsdb2020`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_activities`
--

CREATE TABLE `za_activities` (
  `userID` varchar(200) NOT NULL,
  `activityName` char(200) NOT NULL,
  `activityPublic` enum('Y','N') NOT NULL,
  `activityDatetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `activityStatus` enum('Success','Failed') NOT NULL,
  `activityIP` char(50) NOT NULL,
  `activityBrowser` char(20) NOT NULL,
  `activityOS` char(20) NOT NULL,
  `activityCountry` char(50) NOT NULL,
  `activityRegion` char(50) NOT NULL,
  `activityCity` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_activities`
--

INSERT INTO `za_activities` (`userID`, `activityName`, `activityPublic`, `activityDatetime`, `activityStatus`, `activityIP`, `activityBrowser`, `activityOS`, `activityCountry`, `activityRegion`, `activityCity`) VALUES
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 12:26:53', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 12:27:46', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:16:18', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:17:26', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:25:13', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:27:10', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:28:22', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:32:52', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:35:06', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:35:50', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:36:43', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:38:50', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:41:40', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:42:50', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:43:29', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:47:40', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:48:27', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:48:55', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:50:17', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 13:51:23', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:40:05', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:42:06', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:43:04', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:45:59', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:46:13', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:46:34', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:47:27', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:51:29', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:51:49', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:52:02', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:52:18', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:52:32', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:54:45', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-25 15:59:35', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-26 07:17:15', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-26 08:17:29', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-26 09:09:10', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-27 17:54:34', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-27 17:55:22', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-27 17:56:21', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-27 17:56:38', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-27 23:16:27', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-27 23:25:09', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 02:47:37', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 02:59:11', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 03:01:03', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 03:33:40', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 04:36:33', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 04:44:48', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:00:40', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:01:13', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:02:07', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:02:35', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:02:54', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:19:34', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:20:38', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:23:36', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:24:45', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 05:26:19', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 06:35:25', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 07:55:35', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 08:12:39', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 08:46:19', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 08:49:07', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 08:49:43', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 08:57:45', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 10:19:41', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 11:13:11', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 11:45:25', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 12:22:03', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 13:43:19', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 14:06:42', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 14:13:22', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:15:01', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:16:02', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:17:09', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:27:42', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:28:28', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:31:08', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:31:55', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:32:37', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:42:06', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:43:33', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:45:13', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:45:53', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 15:48:10', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:09:10', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:09:28', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:12:29', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:23:24', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:25:33', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:35:56', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:41:03', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:41:38', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:43:29', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 16:45:52', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:04:37', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:06:20', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:08:16', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:10:08', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:11:28', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:29:28', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 17:33:44', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-28 18:06:49', 'Success', '::1', 'Chrome 87.0.4280.88', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:23:36', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:28:28', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:29:05', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:29:42', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:29:57', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:41:55', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:43:15', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:43:57', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 01:47:27', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 02:45:54', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 04:47:41', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 04:48:20', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 05:26:22', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 06:15:28', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 06:42:18', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 07:17:34', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 07:34:21', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 07:35:34', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 07:50:04', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 08:23:39', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 09:05:09', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 10:10:53', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 10:32:17', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 11:12:21', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 12:26:57', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 12:55:00', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 13:34:13', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 14:16:44', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 15:21:57', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 16:02:29', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-29 17:30:01', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-30 01:58:33', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-30 07:08:35', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-30 07:09:06', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-30 08:18:12', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-30 09:12:26', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-31 03:13:00', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-31 03:52:11', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-31 04:34:52', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-31 04:35:20', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor'),
('2b330335bb31babe890da9a6866d7abf', 'Nizza.SignInAccount', 'N', '2020-12-31 05:51:37', 'Success', '127.0.0.1', 'Firefox 84.0', 'Windows 10', 'Indonesia', 'West Java', 'Bogor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_config`
--

CREATE TABLE `za_config` (
  `configID` tinyint(3) NOT NULL,
  `configFrontThemeID` int(11) NOT NULL,
  `configBackThemeID` int(11) NOT NULL,
  `configLoginThemeID` int(11) NOT NULL,
  `configRegisterThemeID` int(11) NOT NULL,
  `configRecoverThemeID` int(11) NOT NULL,
  `configName` char(50) NOT NULL,
  `configTitle` char(250) NOT NULL,
  `configCompany` char(100) NOT NULL,
  `configLogo` char(100) NOT NULL,
  `configActive` enum('Y','N') NOT NULL DEFAULT 'N',
  `configBoardingTitle` varchar(100) NOT NULL,
  `configWelcomeMessage` text NOT NULL,
  `configFacebook` varchar(200) NOT NULL,
  `configTwitter` varchar(200) NOT NULL,
  `configInstagram` varchar(200) NOT NULL,
  `configYoutube` varchar(200) NOT NULL,
  `configOfficialWeb` varchar(200) NOT NULL,
  `configTokenExpire` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_config`
--

INSERT INTO `za_config` (`configID`, `configFrontThemeID`, `configBackThemeID`, `configLoginThemeID`, `configRegisterThemeID`, `configRecoverThemeID`, `configName`, `configTitle`, `configCompany`, `configLogo`, `configActive`, `configBoardingTitle`, `configWelcomeMessage`, `configFacebook`, `configTwitter`, `configInstagram`, `configYoutube`, `configOfficialWeb`, `configTokenExpire`) VALUES
(1, 0, 2, 2, 2, 2, 'Melati', 'Perakaria Comunity', 'Perakaria Comunity', 'logo.jpeg', 'Y', 'Prakaria', 'Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence.', '', '', '', '', 'https://www.perakaria.com', '900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_content`
--

CREATE TABLE `za_content` (
  `languageID` int(11) NOT NULL,
  `moduleID` int(11) NOT NULL,
  `moduleRow` char(100) NOT NULL,
  `moduleContent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_content`
--

INSERT INTO `za_content` (`languageID`, `moduleID`, `moduleRow`, `moduleContent`) VALUES
(1, 2, 'welcomeMessage', 'Jangan pernah berhenti belajar karena hidup tidak pernah berhenti mengajar. Percaya diri bukan berarti Anda merasa selalu benar tetap sebaliknya Anda tidak pernah merasa takut untuk mengakui bahwa Anda salah.'),
(2, 2, 'welcomeMessage', 'Never stop learning because life never stops teaching. Confidence doesn\'t mean you\'re always right, it means You\'re not afraid to be wrong.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_dates`
--

CREATE TABLE `za_dates` (
  `date` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_dates`
--

INSERT INTO `za_dates` (`date`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_language`
--

CREATE TABLE `za_language` (
  `languageID` int(11) NOT NULL,
  `languageName` char(50) NOT NULL,
  `languageCode` char(5) NOT NULL,
  `languageActive` enum('Y','N') NOT NULL,
  `languagePublish` enum('Y','N') NOT NULL DEFAULT 'N',
  `languageIcon` char(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_language`
--

INSERT INTO `za_language` (`languageID`, `languageName`, `languageCode`, `languageActive`, `languagePublish`, `languageIcon`) VALUES
(1, 'Afghanistan', 'AF', 'N', 'N', ''),
(2, 'South Africa', 'ZA', 'N', 'N', ''),
(3, 'Central African Republic', 'CF', 'N', 'N', ''),
(4, 'Aland Islands', 'AX', 'N', 'N', ''),
(5, 'Albania', 'AL', 'N', 'N', ''),
(6, 'Algeria', 'DZ', 'N', 'N', ''),
(7, 'United States', 'US', 'N', 'N', ''),
(8, 'Andorra', 'AD', 'N', 'N', ''),
(9, 'Angola', 'AO', 'N', 'N', ''),
(10, 'Anguilla', 'AI', 'N', 'N', ''),
(11, 'Antarctica', 'AQ', 'N', 'N', ''),
(12, 'Antigua and Barbuda', 'AG', 'N', 'N', ''),
(13, 'Netherlands Antilles', 'AN', 'N', 'N', ''),
(14, 'Saudi Arabia', 'SA', 'N', 'N', ''),
(15, 'Argentina', 'AR', 'N', 'N', ''),
(16, 'Armenia', 'AM', 'N', 'N', ''),
(17, 'Aruba', 'AW', 'N', 'N', ''),
(18, 'Australia', 'AU', 'N', 'N', ''),
(19, 'Austria', 'AT', 'N', 'N', ''),
(20, 'Azerbaijan', 'AZ', 'N', 'N', ''),
(21, 'Bahamas', 'BS', 'N', 'N', ''),
(22, 'Bahrain', 'BH', 'N', 'N', ''),
(23, 'Bangladesh', 'BD', 'N', 'N', ''),
(24, 'Barbados', 'BB', 'N', 'N', ''),
(25, 'Netherlands', 'NL', 'N', 'N', ''),
(26, 'Belarus', 'BY', 'N', 'N', ''),
(27, 'Belgium', 'BE', 'N', 'N', ''),
(28, 'Belize', 'BZ', 'N', 'N', ''),
(29, 'Benin', 'BJ', 'N', 'N', ''),
(30, 'Bermuda', 'BM', 'N', 'N', ''),
(31, 'Bhutan', 'BT', 'N', 'N', ''),
(32, 'Bolivia', 'BO', 'N', 'N', ''),
(33, 'Bosnia and Herzegovina', 'BA', 'N', 'N', ''),
(34, 'Bostwana', 'BW', 'N', 'N', ''),
(35, 'Bouvet Island', 'BV', 'N', 'N', ''),
(36, 'Brazil', 'BR', 'N', 'N', ''),
(37, 'United Kingdom', 'GB', 'Y', 'Y', 'gb.png'),
(38, 'Brunei Darussalam', 'BN', 'N', 'N', ''),
(39, 'Bulgaria', 'BG', 'N', 'N', ''),
(40, 'Burkina Faso', 'BF', 'N', 'N', ''),
(41, 'Burundi', 'BI', 'N', 'N', ''),
(42, 'Cayman Islands', 'KY', 'N', 'N', ''),
(43, 'Chad', 'TD', 'N', 'N', ''),
(44, 'Czechia', 'CZ', 'N', 'N', ''),
(45, 'Chile', 'CL', 'N', 'N', ''),
(46, 'Cocos (Keeling) Islands', 'CC', 'N', 'N', ''),
(47, 'Cook Islands', 'CK', 'N', 'N', ''),
(48, 'Denmark', 'DK', 'N', 'N', ''),
(49, 'Djibouti', 'DJ', 'N', 'N', ''),
(50, 'Dominica', 'DM', 'N', 'N', ''),
(51, 'Dominican Republic', 'DO', 'N', 'N', ''),
(52, 'Ecuador', 'EC', 'N', 'N', ''),
(53, 'El Salvador', 'SV', 'N', 'N', ''),
(54, 'Eritrea', 'ER', 'N', 'N', ''),
(55, 'Estonia', 'EE', 'N', 'N', ''),
(56, 'Ethiopia', 'ET', 'N', 'N', ''),
(57, 'Falkland Islands', 'FK', 'N', 'N', ''),
(58, 'Faroe Islands', 'FO', 'N', 'N', ''),
(59, 'Fiji', 'FJ', 'N', 'N', ''),
(60, 'Philippines', 'PH', 'N', 'N', ''),
(61, 'Finland', 'FI', 'N', 'N', ''),
(62, 'Gabon', 'GA', 'N', 'N', ''),
(63, 'Gambia', 'GM', 'N', 'N', ''),
(64, 'Georgia', 'GE', 'N', 'N', ''),
(65, 'South Georgia and the South Sandwich Islands', 'GS', 'N', 'N', ''),
(66, 'Ghana', 'GH', 'N', 'N', ''),
(67, 'Gibraltar', 'GI', 'N', 'N', ''),
(68, 'Greenland', 'GL', 'N', 'N', ''),
(69, 'Grenada', 'GD', 'N', 'N', ''),
(70, 'Guadeloupe', 'GP', 'N', 'N', ''),
(71, 'Guam', 'GU', 'N', 'N', ''),
(72, 'Guatemala', 'GT', 'N', 'N', ''),
(73, 'Guernsey', 'GG', 'N', 'N', ''),
(74, 'Guinea', 'GN', 'N', 'N', ''),
(75, 'Guinea-Bissau', 'GW', 'N', 'N', ''),
(76, 'Equatorial Guinea', 'GQ', 'N', 'N', ''),
(77, 'Guyana', 'GY', 'N', 'N', ''),
(78, 'French Guiana', 'GF', 'N', 'N', ''),
(79, 'Haiti', 'HT', 'N', 'N', ''),
(80, 'Heard Island and McDonald Islands', 'HM', 'N', 'N', ''),
(81, 'Honduras', 'HN', 'N', 'N', ''),
(82, 'Hong Kong', 'HK', 'N', 'N', ''),
(83, 'Hungary', 'HU', 'N', 'N', ''),
(84, 'Iceland', 'IS', 'N', 'N', ''),
(85, 'India', 'IN', 'N', 'N', ''),
(86, 'Indonesia', 'ID', 'N', 'Y', 'id.png'),
(87, 'Iraq', 'IQ', 'N', 'N', ''),
(88, 'Iran, Islamic Republic of', 'IR', 'N', 'N', ''),
(89, 'Republic of Ireland', 'IE', 'N', 'N', ''),
(90, 'Israel', 'IL', 'N', 'N', ''),
(91, 'Italy', 'IT', 'N', 'N', ''),
(92, 'Jamaica', 'JM', 'N', 'N', ''),
(93, 'Japan', 'JP', 'N', 'N', ''),
(94, 'Germany', 'DE', 'N', 'N', ''),
(95, 'Jersey', 'JE', 'N', 'N', ''),
(96, 'New Caledonia', 'NC', 'N', 'N', ''),
(97, 'Cambodia', 'KH', 'N', 'N', ''),
(98, 'Cameroon', 'CM', 'N', 'N', ''),
(99, 'Canada', 'CA', 'N', 'N', ''),
(100, 'Kazakhstan', 'KZ', 'N', 'N', ''),
(101, 'Kenya', 'KE', 'N', 'N', ''),
(102, 'Kiribati', 'KI', 'N', 'N', ''),
(103, 'Kyrgyzstan', 'KG', 'N', 'N', ''),
(104, 'Colombia', 'CO', 'N', 'N', ''),
(105, 'Comoros', 'KM', 'N', 'N', ''),
(106, 'Republic of the Congo', 'CG', 'N', 'N', ''),
(107, 'Democratic Republic of the Congo', 'CD', 'N', 'N', ''),
(108, 'Korea, Republic of', 'KR', 'N', 'N', ''),
(109, 'Korea, Demokratic People\'s Republic of', 'KP', 'N', 'N', ''),
(110, 'Costa Rica', 'CR', 'N', 'N', ''),
(111, 'Croatia', 'HR', 'N', 'N', ''),
(112, 'Cuba', 'CU', 'N', 'N', ''),
(113, 'Kuwait', 'KW', 'N', 'N', ''),
(114, 'Lao People\'s Democratic Republic', 'LA', 'N', 'N', ''),
(115, 'Latvia', 'LV', 'N', 'N', ''),
(116, 'Lebanon', 'LB', 'N', 'N', ''),
(117, 'Lesotho', 'LS', 'N', 'N', ''),
(118, 'Liberia', 'LR', 'N', 'N', ''),
(119, 'Libyan Arab Jamahiriya', 'LY', 'N', 'N', ''),
(120, 'Liechtenstein', 'LI', 'N', 'N', ''),
(121, 'Lithuania', 'LT', 'N', 'N', ''),
(122, 'Luxembourg', 'LU', 'N', 'N', ''),
(123, 'Macao', 'MO', 'N', 'N', ''),
(124, 'Republic of Macedonia', 'MK', 'N', 'N', ''),
(125, 'Madagascar', 'MG', 'N', 'N', ''),
(126, 'Malawi', 'MW', 'N', 'N', ''),
(127, 'Malaysia', 'MY', 'N', 'N', ''),
(128, 'Maldives', 'MV', 'N', 'N', ''),
(129, 'Mali', 'ML', 'N', 'N', ''),
(130, 'Malta', 'MT', 'N', 'N', ''),
(131, 'Isle of Man', 'IM', 'N', 'N', ''),
(132, 'Northern Mariana Islands', 'MP', 'N', 'N', ''),
(133, 'Marocco', 'MA', 'N', 'N', ''),
(134, 'Marshall Islands', 'MH', 'N', 'N', ''),
(135, 'Martinique', 'MQ', 'N', 'N', ''),
(136, 'Mauritania', 'MR', 'N', 'N', ''),
(137, 'Mauritius', 'MU', 'N', 'N', ''),
(138, 'Mayotte', 'YT', 'N', 'N', ''),
(139, 'Mexico', 'MX', 'N', 'N', ''),
(140, 'Federates States of Micronesia', 'FM', 'N', 'N', ''),
(141, 'Moldova', 'MD', 'N', 'N', ''),
(142, 'Egypt', 'EG', 'N', 'N', ''),
(143, 'Monaco', 'MC', 'N', 'N', ''),
(144, 'United States Minor Outlying Islands', 'UM', 'N', 'N', ''),
(145, 'Mongolia', 'MN', 'N', 'N', ''),
(146, 'Montenegro', 'ME', 'N', 'N', ''),
(147, 'Montserrat', 'MS', 'N', 'N', ''),
(148, 'Mozambique', 'MZ', 'N', 'N', ''),
(149, 'Myanmar', 'MM', 'N', 'N', ''),
(150, 'Namibia', 'NA', 'N', 'N', ''),
(151, 'Nauru', 'NR', 'N', 'N', ''),
(152, 'Christmas Island', 'CX', 'N', 'N', ''),
(153, 'Nepal', 'NP', 'N', 'N', ''),
(154, 'Nicaragua', 'NI', 'N', 'N', ''),
(155, 'Niger', 'NE', 'N', 'N', ''),
(156, 'Nigeria', 'NG', 'N', 'N', ''),
(157, 'Niue', 'NU', 'N', 'N', ''),
(158, 'Norfolk Island', 'NF', 'N', 'N', ''),
(159, 'Norway', 'NO', 'N', 'N', ''),
(160, 'Oman', 'OM', 'N', 'N', ''),
(161, 'Pakistan', 'PK', 'N', 'N', ''),
(162, 'Palau', 'PW', 'N', 'N', ''),
(163, 'Palestinian Territory, Occupied', 'PS', 'N', 'N', ''),
(164, 'Panama', 'PA', 'N', 'N', ''),
(165, 'C?te d\'Ivoire', 'CI', 'N', 'N', ''),
(166, 'Papua New Guinea', 'PG', 'N', 'N', ''),
(167, 'Paraguay', 'PY', 'N', 'N', ''),
(168, 'France', 'FR', 'N', 'N', ''),
(169, 'French Southern Territories', 'TF', 'N', 'N', ''),
(170, 'Peru', 'PE', 'N', 'N', ''),
(171, 'Pitcairn', 'PN', 'N', 'N', ''),
(172, 'Poland', 'PL', 'N', 'N', ''),
(173, 'French Polynesia', 'PF', 'N', 'N', ''),
(174, 'Portugal', 'PT', 'N', 'N', ''),
(175, 'Puerto Rico', 'PR', 'N', 'N', ''),
(176, 'Qatar', 'QA', 'N', 'N', ''),
(177, 'R?union', 'RE', 'N', 'N', ''),
(178, 'Romania', 'RO', 'N', 'N', ''),
(179, 'Russian Federation', 'RU', 'N', 'N', ''),
(180, 'Rwanda', 'RW', 'N', 'N', ''),
(181, 'Western Sahara', 'EH', 'N', 'N', ''),
(182, 'Saint Barth?lemy', 'BL', 'N', 'N', ''),
(183, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'N', 'N', ''),
(184, 'Saint Kitts and Nevis', 'KN', 'N', 'N', ''),
(185, 'Saint Lucia', 'LC', 'N', 'N', ''),
(186, 'Saint Martin (French part)', 'MF', 'N', 'N', ''),
(187, 'Saint-Pierre and Miquelon', 'PM', 'N', 'N', ''),
(188, 'Saint Vincent and the Grenadines', 'VC', 'N', 'N', ''),
(189, 'Samoa', 'WS', 'N', 'N', ''),
(190, 'American Samoa', 'AS', 'N', 'N', ''),
(191, 'British Indian Ocean Territory', 'IO', 'N', 'N', ''),
(192, 'San Marino', 'SM', 'N', 'N', ''),
(193, 'S?o Tom? and Pr?ncipe', 'ST', 'N', 'N', ''),
(194, 'New Zealand', 'NZ', 'N', 'N', ''),
(195, 'Senegal', 'SN', 'N', 'N', ''),
(196, 'Serbia', 'RS', 'N', 'N', ''),
(197, 'Seychelles', 'SC', 'N', 'N', ''),
(198, 'Sierra Leone', 'SL', 'N', 'N', ''),
(199, 'Singapore', 'SG', 'N', 'N', ''),
(200, 'Cyprus', 'CY', 'N', 'N', ''),
(201, 'Slovenia', 'SI', 'N', 'N', ''),
(202, 'Slowakia', 'SK', 'N', 'N', ''),
(203, 'Salomon Islands', 'SB', 'N', 'N', ''),
(204, 'Somalia', 'SO', 'N', 'N', ''),
(205, 'Spain', 'ES', 'N', 'N', ''),
(206, 'Sri Lanka', 'LK', 'N', 'N', ''),
(207, 'Sudan', 'SD', 'N', 'N', ''),
(208, 'Syrian Arab Republic', 'SY', 'N', 'N', ''),
(209, 'Suriname', 'SR', 'N', 'N', ''),
(210, 'Svalbard and Jan Mayen', 'SJ', 'N', 'N', ''),
(211, 'Swaziland', 'SZ', 'N', 'N', ''),
(212, 'Sweden', 'SE', 'N', 'N', ''),
(213, 'Switzerland', 'CH', 'N', 'N', ''),
(214, 'Republic of China (Taiwan)', 'TW', 'N', 'N', ''),
(215, 'Tajikistan', 'TJ', 'N', 'N', ''),
(216, 'Cape Verde', 'CV', 'N', 'N', ''),
(217, 'Tanzania', 'TZ', 'N', 'N', ''),
(218, 'Thailand', 'TH', 'N', 'N', ''),
(219, 'Timor Leste', 'TL', 'N', 'N', ''),
(220, 'People\'s Republic of China', 'CN', 'N', 'N', ''),
(221, 'Togo', 'TG', 'N', 'N', ''),
(222, 'Tokelau', 'TK', 'N', 'N', ''),
(223, 'Tonga', 'TO', 'N', 'N', ''),
(224, 'Trinidad and Tobago', 'TT', 'N', 'N', ''),
(225, 'Tunisia', 'TN', 'N', 'N', ''),
(226, 'Turkey', 'TR', 'N', 'N', ''),
(227, 'Turkmenistan', 'TM', 'N', 'N', ''),
(228, 'Turks and Caicos Islands', 'TC', 'N', 'N', ''),
(229, 'Tuvalu', 'TV', 'N', 'N', ''),
(230, 'Uganda', 'UG', 'N', 'N', ''),
(231, 'Ukraine', 'UA', 'N', 'N', ''),
(232, 'United Arab Emirates', 'AE', 'N', 'N', ''),
(233, 'Uruguay', 'UY', 'N', 'N', ''),
(234, 'Uzbekistan', 'UZ', 'N', 'N', ''),
(235, 'Vanuatu', 'VU', 'N', 'N', ''),
(236, 'Vatican City', 'VA', 'N', 'N', ''),
(237, 'Venezuela', 'VE', 'N', 'N', ''),
(238, 'Viet Nam', 'VN', 'N', 'N', ''),
(239, 'U.S. Virgin Islands', 'VI', 'N', 'N', ''),
(240, 'British Virgin Islands', 'VG', 'N', 'N', ''),
(241, 'Wallis and Futuna', 'WF', 'N', 'N', ''),
(242, 'Yemen', 'YE', 'N', 'N', ''),
(243, 'Jordan', 'JO', 'N', 'N', ''),
(244, 'Greece', 'GR', 'N', 'N', ''),
(245, 'Zambia', 'ZM', 'N', 'N', ''),
(246, 'Zimbabwe', 'ZW', 'N', 'N', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_menu`
--

CREATE TABLE `za_menu` (
  `menuID` int(10) UNSIGNED NOT NULL,
  `menuName` char(100) NOT NULL,
  `nameEn` char(100) NOT NULL,
  `menuLink` char(250) DEFAULT NULL,
  `menuParent` int(10) NOT NULL,
  `menuFrontpage` enum('Y','N') NOT NULL,
  `menuPublish` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_menu`
--

INSERT INTO `za_menu` (`menuID`, `menuName`, `nameEn`, `menuLink`, `menuParent`, `menuFrontpage`, `menuPublish`) VALUES
(1, 'Beranda', 'Home', '', 0, 'Y', 'Y'),
(2, 'Tentang', 'About', 'about', 0, 'Y', 'Y'),
(3, 'Layanan', 'Services', 'services', 0, 'Y', 'Y'),
(4, 'Portofolio', 'Portfolio', 'portfolio', 0, 'Y', 'Y'),
(5, 'Blog', 'Blog', 'blog', 0, 'Y', 'Y'),
(6, 'Kontak', 'Contact', 'contact', 0, 'Y', 'Y'),
(7, 'Area Klien', 'Client Area', 'boarding', 0, 'Y', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_modules`
--

CREATE TABLE `za_modules` (
  `moduleID` int(11) NOT NULL,
  `moduleName` char(200) NOT NULL,
  `moduleFolder` char(200) NOT NULL,
  `moduleFrontpage` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_modules`
--

INSERT INTO `za_modules` (`moduleID`, `moduleName`, `moduleFolder`, `moduleFrontpage`) VALUES
(1, 'Dashboard', '', 'N'),
(2, 'Boarding', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_months`
--

CREATE TABLE `za_months` (
  `number` int(2) NOT NULL,
  `name` char(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_months`
--

INSERT INTO `za_months` (`number`, `name`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_themes`
--

CREATE TABLE `za_themes` (
  `themeID` int(11) NOT NULL,
  `themeName` char(50) NOT NULL,
  `themeFrontpage` enum('Y','N') NOT NULL,
  `themeFolder` char(50) NOT NULL,
  `themeDeveloper` char(200) NOT NULL,
  `themeActive` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_themes`
--

INSERT INTO `za_themes` (`themeID`, `themeName`, `themeFrontpage`, `themeFolder`, `themeDeveloper`, `themeActive`) VALUES
(1, 'Retnews', 'Y', 'retnews', 'Muhammad Abror', 'N'),
(2, 'AdminLTE', 'N', 'adminlte', 'Muhammad Abror', 'Y'),
(3, 'Neoto', 'Y', 'neoto', 'Muhammad Abror', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_translate`
--

CREATE TABLE `za_translate` (
  `translateID` int(20) NOT NULL,
  `translateCode` varchar(200) NOT NULL,
  `translateContent` varchar(200) NOT NULL,
  `translateResult` varchar(200) NOT NULL,
  `translateLangCode` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_translate`
--

INSERT INTO `za_translate` (`translateID`, `translateCode`, `translateContent`, `translateResult`, `translateLangCode`) VALUES
(1, 'GoodMorning', 'Good Morning', 'Selamat Pagi', 'ID'),
(2, 'GoodMorning', 'Good Morning', 'Good Morning', 'GB'),
(3, 'GoodAfternoon', 'Good Afternoon', 'Selamat Siang', 'ID'),
(4, 'GoodEvening', 'Good Evening', 'Selamat Sore', 'ID'),
(5, 'GoodNight', 'Good Night', 'Selamat Malam', 'ID'),
(6, 'GoodNight', 'Good Night', 'Good Night', 'GB'),
(7, 'GoodAfternoon', 'Good Afternoon', 'Good Afternoon', 'GB'),
(8, 'GoodEvening', 'Good Evening', 'Good Evening', 'GB'),
(10, 'Dashboard', 'Dashboard', 'Dashboard', 'GB'),
(11, 'Profile', 'Profile', 'Profile', 'GB'),
(12, 'PersonalInfo', 'Personal Info', 'Personal Info', 'GB'),
(13, 'Education', 'Education', 'Education', 'GB'),
(14, 'Experiences', 'Experiences', 'Experiences', 'GB'),
(15, 'Skills', 'Skills', 'Skills', 'GB'),
(16, 'Portfolio', 'Portfolio', 'Portfolio', 'GB'),
(17, 'SocialMedia', 'Social Media', 'Social Media', 'GB'),
(18, 'Projects', 'Projects', 'Projects', 'GB'),
(19, 'Tasks', 'Tasks', 'Tasks', 'GB'),
(20, 'Messages', 'Messages', 'Messages', 'GB'),
(21, 'ChatRoom', 'Chat Room', 'Chat Room', 'GB'),
(22, 'Meeting', 'Meeting', 'Meeting', 'GB'),
(23, 'Account', 'Account', 'Account', 'GB'),
(24, 'Logout', 'Logout', 'Logout', 'GB'),
(25, 'ContentManagement', 'Content Management', 'Content Management', 'GB'),
(26, 'Posts', 'Posts', 'Posts', 'GB'),
(27, 'Pages', 'Pages', 'Pages', 'GB'),
(28, 'Media', 'Media', 'Media', 'GB'),
(29, 'Events', 'Events', 'Events', 'GB'),
(30, 'Pollings', 'Pollings', 'Pollings', 'GB'),
(31, 'Comments', 'Comments', 'Comments', 'GB'),
(32, 'Appereance', 'Appereance', 'Appereance', 'GB'),
(33, 'ProjectManagement', 'Project Management', 'Project Management', 'GB'),
(34, 'Themes', 'Themes', 'Themes', 'GB'),
(35, 'Menu', 'Menu', 'Menu', 'GB'),
(36, 'Slider', 'Slider', 'Slider', 'GB'),
(37, 'Logo', 'Logo', 'Logo', 'GB'),
(38, 'Background', 'Background', 'Background', 'GB'),
(39, 'Categories', 'Categories', 'Categories', 'GB'),
(40, 'InvoiceManagement', 'Invoice Management', 'Invoice Management', 'GB'),
(41, 'Invoices', 'Invoices', 'Invoices', 'GB'),
(42, 'PaymentMethods', 'Payment Methods', 'Payment Methods', 'GB'),
(43, 'ClientManagement', 'Client Management', 'Client Management', 'GB'),
(44, 'Clients', 'Clients', 'Clients', 'GB'),
(45, 'Tickets', 'Tickets', 'Tickets', 'GB'),
(46, 'TeamManagement', 'Team Management', 'Team Management', 'GB'),
(47, 'Teams', 'Teams', 'Teams', 'GB'),
(48, 'Expertise', 'Expertise', 'Expertise', 'GB'),
(49, 'Position', 'Position', 'Position', 'GB'),
(50, 'UserManagement', 'User Management', 'User Management', 'GB'),
(51, 'Users', 'Users', 'Users', 'GB'),
(52, 'Groups', 'Groups', 'Groups', 'GB'),
(53, 'Roles', 'Roles', 'Roles', 'GB'),
(54, 'Dashboard', 'Dashboard', 'Dasbor', 'ID'),
(55, 'PersonalDesk', 'Personal Desk', 'Desk Personal', 'ID'),
(56, 'Profile', 'Profile', 'Profil', 'ID'),
(57, 'PersonalInfo', 'Personal Info', 'Info Personal', 'ID'),
(58, 'Education', 'Education', 'Pendidikan', 'ID'),
(59, 'Experiences', 'Experiences', 'Pengalaman', 'ID'),
(60, 'Skills', 'Skills', 'Keahlian', 'ID'),
(61, 'Portfolio', 'Portfolio', 'Portofolio', 'ID'),
(62, 'SocialMedia', 'Social Media', 'Media Sosial', 'ID'),
(63, 'Projects', 'Projects', 'Proyek', 'ID'),
(64, 'Tasks', 'Tasks', 'Tugas', 'ID'),
(65, 'Messages', 'Messages', 'Kotak Pesan', 'ID'),
(66, 'ChatRoom', 'Chat Room', 'Ruang Obrolan', 'ID'),
(67, 'Meeting', 'Meeting', 'Pertemuan', 'ID'),
(68, 'Account', 'Account', 'Akun', 'ID'),
(69, 'Logout', 'Logout', 'Keluar', 'ID'),
(70, 'ContentManagement', 'Content Management', 'Kelola Kontren', 'ID'),
(71, 'Posts', 'Posts', 'Postingan', 'ID'),
(72, 'Pages', 'Pages', 'Halaman', 'ID'),
(73, 'Media', 'Media', 'Media', 'ID'),
(74, 'Events', 'Events', 'Agenda', 'ID'),
(75, 'Pollings', 'Pollings', 'Polling', 'ID'),
(76, 'Comments', 'Comments', 'Komentar', 'ID'),
(77, 'Appereance', 'Appereance', 'Tampilan', 'ID'),
(78, 'ProjectManagement', 'Project Management', 'Kelola Proyek', 'ID'),
(79, 'Themes', 'Themes', 'Tema', 'ID'),
(80, 'Menu', 'Menu', 'Menu', 'ID'),
(81, 'Slider', 'Slider', 'Slider', 'ID'),
(82, 'Logo', 'Logo', 'Logo', 'ID'),
(83, 'Background', 'Background', 'Background', 'ID'),
(84, 'Categories', 'Categories', 'Kategori', 'ID'),
(85, 'InvoiceManagement', 'Invoice Management', 'Kelola Faktur', 'ID'),
(86, 'Invoices', 'Invoices', 'Invoice', 'ID'),
(87, 'PaymentMethods', 'Payment Methods', 'Metode Pembayaran', 'ID'),
(88, 'ClientManagement', 'Client Management', 'Kelola Klien', 'ID'),
(89, 'Clients', 'Clients', 'Klien', 'ID'),
(90, 'Tickets', 'Tickets', 'Tiket', 'ID'),
(91, 'TeamManagement', 'Team Management', 'Kelola Tim', 'ID'),
(92, 'Teams', 'Teams', 'Tim', 'ID'),
(93, 'Expertise', 'Expertise', 'Keahlian', 'ID'),
(94, 'Position', 'Position', 'Posisi', 'ID'),
(95, 'UserManagement', 'User Management', 'Kelola Pengguna', 'ID'),
(96, 'Users', 'Users', 'Pengguna', 'ID'),
(97, 'Groups', 'Groups', 'Group', 'ID'),
(98, 'Roles', 'Roles', 'Hak Akses', 'ID'),
(99, 'Enteryourpasswordtoretrieveyoursession', 'Enter your password to retrieve your session', 'Enter your password to retrieve your session', 'GB'),
(100, 'Enteryourpasswordtoretrieveyoursession', 'Enter your password to retrieve your session', 'Masukan kembali kata sandi Anda untuk memperbarui token login', 'GB'),
(101, 'Orsigninasadifferentuser', 'Or sign in as a different user', 'Or sign in as a different user', 'GB'),
(102, 'Orsigninasadifferentuser', 'Or sign in as a different user', 'Atau masuk sebagai pengguna lain', 'ID'),
(103, 'Password', 'Password', 'Password', 'GB'),
(104, 'Password', 'Password', 'Kata Sandi', 'ID'),
(105, 'Passwordiswrong', 'Password is wrong', 'Password is wrong', 'GB'),
(106, 'Passwordiswrong', 'Password is wrong', 'Kata sandi salah', 'ID'),
(107, 'Forbidden', 'Forbidden', 'Forbidden', 'GB'),
(108, 'Forbidden', 'Forbidden', 'Dilarang', 'ID'),
(109, 'Youdon’thavepermissiontoaccessthismodule', 'You don’t have permission to access this module', 'You don’t have permission to access this module', 'GB'),
(110, 'Youdon’thavepermissiontoaccessthismodule', 'You don’t have permission to access this module', 'Anda tidak diijinkan mengakses halaman ini', 'ID'),
(111, 'Please', 'Please', 'Please', 'GB'),
(112, 'Please', 'Please', 'Silahkan', 'ID'),
(113, 'returntodashboard', 'return to dashboard', 'return to dashboard', 'GB'),
(114, 'returntodashboard', 'return to dashboard', 'kembali ke dashboard', 'ID'),
(115, 'General', 'General', 'General', 'GB'),
(116, 'General', 'General', 'Umum', 'ID'),
(117, 'Address', 'Address', 'Address', 'GB'),
(118, 'Address', 'Address', 'Alamat', 'ID'),
(119, 'Photo', 'Photo', 'Photo', 'GB'),
(120, 'Photo', 'Photo', 'Foto', 'ID'),
(121, 'PersonalDesk', 'Personal Desk', 'Personal Desk', 'GB'),
(122, 'Rules', 'Rules', 'Rules', 'GB'),
(123, 'Rules', 'Rules', 'Aturan', 'ID'),
(124, 'Signintoyouraccount', 'Sign in to your account', 'Sign in to your account', 'GB'),
(125, 'Signintoyouraccount', 'Sign in to your account', 'Masuk ke akun Anda', 'ID'),
(126, 'Email', 'Email', 'Email', 'GB'),
(127, 'Email', 'Email', 'Surel', 'ID'),
(128, 'HandphoneNumber', 'Handphone Number', 'Handphone Number', 'GB'),
(129, 'HandphoneNumber', 'Handphone Number', 'Nomor Ponsel', 'ID'),
(130, 'Iforgotmypassword', 'I forgot my password', 'I forgot my password', 'GB'),
(131, 'Iforgotmypassword', 'I forgot my password', 'Lupa kata sandi', 'ID'),
(132, 'Createanewaccount', 'Create a new account', 'Create a new account', 'GB'),
(133, 'Createanewaccount', 'Create a new account', 'Buat akun baru', 'ID'),
(134, 'RememberMe', 'Remember Me', 'Remember Me', 'GB'),
(135, 'RememberMe', 'Remember Me', 'Ingat Saya', 'ID'),
(136, 'SignIn', 'Sign In', 'Sign In', 'GB'),
(137, 'SignIn', 'Sign In', 'Masuk', 'ID'),
(138, 'BacktoHome', 'Back to Home', 'Back to Home', 'GB'),
(139, 'BacktoHome', 'Back to Home', 'Kembali ke Depan', 'ID'),
(140, 'Alreadyhaveanaccount?', 'Already have an account?', 'Already have an account?', 'GB'),
(141, 'Alreadyhaveanaccount?', 'Already have an account?', 'Sudah punya akun?', 'ID'),
(142, 'Fullname', 'Fullname', 'Fullname', 'GB'),
(143, 'Fullname', 'Fullname', 'Nama Lengkap', 'ID'),
(144, 'Cancel', 'Cancel', 'Cancel', 'GB'),
(145, 'Cancel', 'Cancel', 'Batal', 'ID'),
(146, 'SignUp', 'Sign Up', 'Sign Up', 'GB'),
(147, 'SignUp', 'Sign Up', 'Daftar', 'ID'),
(148, 'LogIn', 'Log In', 'Log In', 'GB'),
(149, 'LogIn', 'Log In', 'Masuk', 'ID'),
(150, 'Alreadyhaveanaccount?', 'Already have an account?', 'Already have an account?', 'GB'),
(151, 'Alreadyhaveanaccount?', 'Already have an account?', 'Sudah punya akun?', 'ID'),
(152, 'Orsignupwith', 'Or sign up with', 'Or sign up with', 'GB'),
(153, 'Orsignupwith', 'Or sign up with', 'Atau daftar dengan', 'ID'),
(154, 'AgreementatSignUp', 'Agreement at Sign Up', 'By clicking Sign Up, you agree to our Terms, Data Policy and Cookie Policy.', 'GB'),
(155, 'AgreementatSignUp', 'Agreement at Sign Up', 'Dengan mengklik Daftar, Anda menyetujui Ketentuan, Kebijakan Data dan Kebijakan Cookie kami.', 'ID'),
(156, 'ConfirmPassword', 'Confirm Password', 'Confirm Password', 'GB'),
(157, 'ConfirmPassword', 'Confirm Password', 'Konfirmasi Kata Sandi', 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_users`
--

CREATE TABLE `za_users` (
  `userID` varchar(100) NOT NULL,
  `userFullname` char(100) NOT NULL,
  `userNickname` char(50) NOT NULL,
  `userEmail` char(100) NOT NULL,
  `userMobilePhone` varchar(20) NOT NULL,
  `userTelephone` varchar(20) NOT NULL,
  `userPassword` varchar(250) NOT NULL,
  `userActive` enum('Y','N') NOT NULL,
  `userBanned` enum('Y','N') NOT NULL,
  `userCode` char(10) NOT NULL,
  `userPhoto` varchar(100) NOT NULL,
  `userToken` varchar(250) NOT NULL,
  `userSession` varchar(250) NOT NULL,
  `birthDate` char(2) NOT NULL,
  `birthMonth` char(2) NOT NULL,
  `birthYear` char(4) NOT NULL,
  `userGender` enum('L','P','K') NOT NULL DEFAULT 'K',
  `userLevel` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_users`
--

INSERT INTO `za_users` (`userID`, `userFullname`, `userNickname`, `userEmail`, `userMobilePhone`, `userTelephone`, `userPassword`, `userActive`, `userBanned`, `userCode`, `userPhoto`, `userToken`, `userSession`, `birthDate`, `birthMonth`, `birthYear`, `userGender`, `userLevel`) VALUES
('2b330335bb31babe890da9a6866d7abf', 'Muhammad Abror', '', 'abrorcapital@gmail.com', '', '', '$2y$10$51/blEjciiJMkfFiXVQyd.qB/49wPgeYSxUzz3CGmRQEK5W3K.7mi', 'Y', 'N', '18681b25', 'mayuko.png', '$2y$10$hwDLfEMZc38OHx/F5J9koulBSjbN7QkqvRJuKUwxocmyIQ2BljtH2', '$2y$10$hwDLfEMZc38OHx/F5J9koulBSjbN7QkqvRJuKUwxocmyIQ2BljtH2', '', '', '', 'L', 1),
('ef537874b90b277d7ec44173fde0a83d', 'Dian Sastrowardoyo', '', 'diansastro@gmail.com', '', '', '$2y$10$3LGmVTliEb2XnCoJ2RU7N.f.y9MjYXO1huk1hYR8CNfGUOPn.4LBi', 'Y', 'N', '81bbbd86', '', '$2y$10$kg0cHx.IaeqgypgVXzNMTOCHvxqeg8A13JXSMPfTKq0bvXptiJuUq', '', '', '', '', 'P', 3),
('7baf593aaa317fd3dca442472d3708fc', 'Muhammad Abror', '', '', '08113939881', '', '$2y$10$nF9AXk.5Dt2do4wfofc41eNAEobGbJdevrIzMNrro5YTqwfoVqrHG', 'Y', 'N', 'c2892136', '', '$2y$10$eLK1lavb4s.2WBoeU6LSeeJFjv3J/EV/Wdl1/ZVb/ZmE6ouX2HEUC', '', '', '', '', 'K', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_users_level`
--

CREATE TABLE `za_users_level` (
  `levelID` int(11) NOT NULL,
  `levelName` char(200) NOT NULL,
  `levelFolder` char(200) NOT NULL,
  `levelBanned` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_users_level`
--

INSERT INTO `za_users_level` (`levelID`, `levelName`, `levelFolder`, `levelBanned`) VALUES
(1, 'Administrator', 'administrator', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_users_level_access`
--

CREATE TABLE `za_users_level_access` (
  `moduleID` int(11) NOT NULL,
  `levelID` int(11) NOT NULL,
  `permitRead` tinyint(4) NOT NULL DEFAULT 0,
  `permitCreate` tinyint(4) NOT NULL DEFAULT 0,
  `permitUpdate` tinyint(4) NOT NULL DEFAULT 0,
  `permitDelete` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_users_level_access`
--

INSERT INTO `za_users_level_access` (`moduleID`, `levelID`, `permitRead`, `permitCreate`, `permitUpdate`, `permitDelete`) VALUES
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `za_years`
--

CREATE TABLE `za_years` (
  `year` smallint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `za_years`
--

INSERT INTO `za_years` (`year`) VALUES
(1905),
(1906),
(1907),
(1908),
(1909),
(1910),
(1911),
(1912),
(1913),
(1914),
(1915),
(1916),
(1917),
(1918),
(1919),
(1920),
(1921),
(1922),
(1923),
(1924),
(1925),
(1926),
(1927),
(1928),
(1929),
(1930),
(1931),
(1932),
(1933),
(1934),
(1935),
(1936),
(1937),
(1938),
(1939),
(1940),
(1941),
(1942),
(1943),
(1944),
(1945),
(1946),
(1947),
(1948),
(1949),
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020),
(2021);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`id`) USING BTREE;

--
-- Indeks untuk tabel `za_config`
--
ALTER TABLE `za_config`
  ADD PRIMARY KEY (`configID`);

--
-- Indeks untuk tabel `za_dates`
--
ALTER TABLE `za_dates`
  ADD PRIMARY KEY (`date`);

--
-- Indeks untuk tabel `za_language`
--
ALTER TABLE `za_language`
  ADD PRIMARY KEY (`languageID`);

--
-- Indeks untuk tabel `za_menu`
--
ALTER TABLE `za_menu`
  ADD PRIMARY KEY (`menuID`);

--
-- Indeks untuk tabel `za_modules`
--
ALTER TABLE `za_modules`
  ADD PRIMARY KEY (`moduleID`);

--
-- Indeks untuk tabel `za_months`
--
ALTER TABLE `za_months`
  ADD PRIMARY KEY (`number`);

--
-- Indeks untuk tabel `za_themes`
--
ALTER TABLE `za_themes`
  ADD PRIMARY KEY (`themeID`);

--
-- Indeks untuk tabel `za_translate`
--
ALTER TABLE `za_translate`
  ADD PRIMARY KEY (`translateID`);

--
-- Indeks untuk tabel `za_users`
--
ALTER TABLE `za_users`
  ADD PRIMARY KEY (`userID`);

--
-- Indeks untuk tabel `za_users_level`
--
ALTER TABLE `za_users_level`
  ADD PRIMARY KEY (`levelID`);

--
-- Indeks untuk tabel `za_years`
--
ALTER TABLE `za_years`
  ADD PRIMARY KEY (`year`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `za_config`
--
ALTER TABLE `za_config`
  MODIFY `configID` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `za_language`
--
ALTER TABLE `za_language`
  MODIFY `languageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `za_menu`
--
ALTER TABLE `za_menu`
  MODIFY `menuID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `za_modules`
--
ALTER TABLE `za_modules`
  MODIFY `moduleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `za_themes`
--
ALTER TABLE `za_themes`
  MODIFY `themeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `za_translate`
--
ALTER TABLE `za_translate`
  MODIFY `translateID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT untuk tabel `za_users_level`
--
ALTER TABLE `za_users_level`
  MODIFY `levelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
