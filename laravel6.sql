-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Sze 14. 11:28
-- Kiszolgáló verziója: 10.4.11-MariaDB
-- PHP verzió: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `laravel6`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `articles`
--

CREATE TABLE `articles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `articles`
--

INSERT INTO `articles` (`user_id`, `id`, `title`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Learn Laravel', 'Vel qui recusandae quia aut.', 'Non consequuntur voluptas rem dolores dolores voluptas voluptate aut. Atque placeat impedit eligendi nisi. Possimus aut deserunt sit qui possimus odit. Sint laboriosam odio sint consequatur voluptates et.', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(2, 2, 'Ut adipisci aut et voluptate.', 'Magni quo doloribus ipsa ut autem sit.', 'Ipsam ea voluptatem est sit maxime corrupti. Ab distinctio ut odit impedit. Facere accusantium illo expedita eveniet rerum recusandae molestias doloribus.', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(3, 3, 'Quas ipsam reiciendis dolor maxime repellendus ut.', 'Velit labore et molestias rerum eaque asperiores earum.', 'Cumque et blanditiis est atque. Aperiam amet cumque neque accusantium quia. Ab fugiat quia in necessitatibus perspiciatis.', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(4, 4, 'Adipisci reprehenderit quis animi impedit veniam qui quisquam.', 'Quia praesentium vitae deserunt a dolor et sint aliquam.', 'Adipisci laudantium ratione repellendus modi ex iusto velit. Possimus quae aut omnis distinctio impedit. Impedit possimus qui quisquam laudantium.', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(5, 5, 'Enim dolorum dolor quas error nisi dolorum.', 'Maxime at saepe ut laborum magni officia dolorum.', 'Sit magnam et facilis dolorem. Accusamus magni amet sunt illum. Est ut officiis consequatur rerum esse. Molestiae quasi illo deleniti.', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(1, 22, 'teszt', 'ds', 'ds', '2020-07-22 09:16:29', '2020-07-22 09:16:29');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `article_tag`
--

CREATE TABLE `article_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2020-07-22 07:09:11', '2020-07-22 07:09:11'),
(2, 1, 3, '2020-07-22 07:09:11', '2020-07-22 07:09:11'),
(3, 1, 4, '2020-07-22 07:09:11', '2020-07-22 07:09:11'),
(7, 5, 1, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 5, 4, NULL, NULL),
(29, 22, 1, '2020-07-22 09:16:29', '2020-07-22 09:16:29'),
(30, 22, 2, '2020-07-22 09:16:29', '2020-07-22 09:16:29');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_06_100912_create_posts_table', 1),
(5, '2020_07_08_103525_create_projects_table', 1),
(6, '2020_07_08_104424_create_assignments_table', 1),
(7, '2020_07_10_082802_create_articles_table', 1),
(8, '2020_07_21_110820_create_tags_table', 1),
(9, '2020_07_21_112055_create_article_tag_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

CREATE TABLE `tags` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`name`, `id`, `created_at`, `updated_at`) VALUES
('php', 1, '2020-07-22 07:05:55', '2020-07-22 07:05:55'),
('laravel', 2, '2020-07-22 07:05:55', '2020-07-22 07:05:55'),
('work', 3, '2020-07-22 07:05:55', '2020-07-22 07:05:55'),
('education', 4, '2020-07-22 07:05:55', '2020-07-22 07:05:55');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Malika Durgan I', 'hsauer@example.com', '2020-07-22 05:02:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BpdkPd8rEc', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(2, 'Prof. Eldora West MD', 'tyreek.mertz@example.org', '2020-07-22 05:02:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8YVyVdcq3a', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(3, 'Dr. Dorris Goldner', 'aisha.hilpert@example.org', '2020-07-22 05:02:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bdc7ZzWRLE', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(4, 'Jackie Corkery', 'raynor.melvina@example.com', '2020-07-22 05:02:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4WO9hnu49c', '2020-07-22 05:02:38', '2020-07-22 05:02:38'),
(5, 'Broderick Renner', 'stokes.marianna@example.net', '2020-07-22 05:02:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xwZmrmrXTo', '2020-07-22 05:02:38', '2020-07-22 05:02:38');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- A tábla indexei `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_tag_article_id_tag_id_unique` (`article_id`,`tag_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- A tábla indexei `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- A tábla indexei `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT a táblához `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Megkötések a táblához `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
