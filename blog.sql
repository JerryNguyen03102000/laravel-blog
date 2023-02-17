-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 17, 2023 lúc 03:53 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_posts`
--

CREATE TABLE `category_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc_short` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_posts`
--

INSERT INTO `category_posts` (`id`, `title`, `desc_short`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ĐỊA ĐIỂM DU LỊCH', 'Các địa điểm du lịch nhất định không thể bỏ qua khi đến với thành phố mộng mơ.', 1, '2021-08-29 10:05:41', '2021-08-29 20:21:52'),
(2, 'ẨM THỰC', 'Ẩm thực đường phố là một trong những đặc trưng nổi bật của ẩm thực Đà Lạt. Các món ngon của Đà Lạt lạ không chỉ ở tên gọi mà còn bởi cách chế biến và hương vị không lẫn vào đâu.', 1, '2021-08-29 10:15:05', '2021-08-29 20:22:29'),
(3, 'KHÁCH SẠN & HOMESTAY', 'Tất tần tật những khách sạn, Homestay đẹp ở Đà Lạt cho các bạn mê khám phá cũng như thưởng thức thiên nhiên trong lành.', 1, '2021-08-29 20:10:04', '2021-08-29 20:10:04'),
(4, 'CHIA SẺ KINH NGHIỆM', 'Chia sẻ kinh nghiệm du lịch Đà Lạt, hướng dẫn đi phượt Đà Lạt, chơi gì, ăn gì ở Đà Lạt, các homestay đẹp, khách sạn giá rẻ ở Đà Lạt.', 1, '2021-08-29 20:21:27', '2021-08-29 20:25:21'),
(5, 'Tin Mới', 'Các địa điểm du lịch nhất định không thể bỏ qua khi đến với thành phố mộng mơ.', 0, '2021-08-30 02:46:48', '2021-08-30 02:46:48'),
(6, 'fgrseawdfesg', 'àdgdwafsgrsfe', 1, '2023-02-17 14:31:05', '2023-02-17 14:31:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 1),
(41, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(42, '2021_08_17_135346_create_sessions_table', 1),
(43, '2021_08_18_095827_create_category_posts_table', 1),
(44, '2021_08_24_034247_create_posts', 1),
(45, '2021_08_29_170158_create_category_posts', 2),
(46, '2021_08_30_033249_create_posts', 3),
(48, '2021_08_30_035201_create_posts', 4),
(49, '2020_05_21_100000_create_teams_table', 5),
(50, '2020_05_21_200000_create_team_user_table', 5),
(51, '2020_05_21_300000_create_team_invitations_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_post_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `titles`, `short_desc`, `desc`, `image`, `date`, `category_post_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Bà Obama nói về chuyện mãn kinh', '<p>TTO - Phụ nữ ng&agrave;y nay cởi mở hơn trước những vấn đề ngại n&oacute;i. Sức khỏe thể chất, tinh thần của phụ nữ được thảo luận, chia sẻ nhiều...</p>', '<p>Ở tuổi 58, cựu đệ nhất phu nh&acirc;n nước Mỹ Michelle Obama chia sẻ với tạp ch&iacute; People về trải nghiệm tuổi m&atilde;n kinh với hy vọng khuyến kh&iacute;ch những phụ nữ c&ograve;n e ngại chịu mở l&ograve;ng hơn khi đề cập tới giai đoạn thay đổi sức khỏe vốn rất hay bị lờ đi (v&igrave; xấu hổ) n&agrave;y của nữ giới.</p>\r\n\r\n<p>Nếu t&ocirc;i c&oacute; thể đi bộ v&agrave; di chuyển, t&ocirc;i kh&ocirc;ng cần phải chạy. T&ocirc;i kh&ocirc;ng cần phải vượt qua mọi người. T&ocirc;i đ&atilde; thay đổi c&aacute;ch nh&igrave;n về bản th&acirc;n trong lĩnh vực sức khỏe.</p>\r\n\r\n<p>B&agrave; MICHELLE OBAMA (cựu đệ nhất phu nh&acirc;n nước Mỹ)</p>\r\n\r\n<p>M&atilde;n kinh l&agrave; giai đoạn m&agrave; bất cứ phụ nữ n&agrave;o cũng sẽ tới l&uacute;c phải trải qua trong đời. Tuy nhi&ecirc;n, cho tới nay vẫn rất nhiều người ngại ngần khi n&oacute;i về n&oacute; hay chia sẻ c&aacute;c vấn đề gặp phải trong giai đoạn đ&oacute;.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; l&yacute; do m&agrave; đầu th&aacute;ng 11 n&agrave;y tạp ch&iacute; People (Mỹ) quyết định khởi động những cuộc tr&ograve; chuyện &yacute; nghĩa với c&aacute;c nh&acirc;n vật c&oacute; ảnh hưởng để x&oacute;a bỏ hiểu lầm cũng như ngại ngần kh&ocirc;ng đ&aacute;ng c&oacute; về c&aacute;c vấn đề xung quanh chuyện m&atilde;n kinh.</p>\r\n\r\n<p>Hai trong số c&aacute;c cuộc tr&ograve; chuyện đ&oacute; l&agrave; với cựu đệ nhất phu nh&acirc;n nước Mỹ Michelle Obama (58 tuổi) v&agrave; cựu si&ecirc;u mẫu Beverly Johnson (70 tuổi).</p>\r\n\r\n<p><strong>B&agrave; Obama ch&uacute; trọng&nbsp;sự c&acirc;n bằng</strong></p>\r\n\r\n<p>T&aacute;m năm trước, cũng trong một cuộc tr&ograve; chuyện của tạp ch&iacute; People với b&agrave; Obama (l&uacute;c đ&oacute; 50 tuổi), họ đ&atilde; đề cập chuyện m&atilde;n kinh. Nhưng khi đ&oacute; b&agrave; Obama c&ograve;n chưa c&oacute; nhiều trải nghiệm v&agrave; rất &iacute;t th&ocirc;ng tin về vấn đề n&agrave;y.</p>\r\n\r\n<p>Giờ đ&acirc;y, ở tuổi 58, b&agrave; Obama đ&atilde; trực tiếp trải nghiệm điều đ&oacute;, nhưng theo b&agrave;, cho tới nay th&ocirc;ng tin về m&atilde;n kinh vẫn chưa phổ biến như b&agrave; mong muốn.</p>\r\n\r\n<p>&quot;T&ocirc;i đang trải qua n&oacute;, v&agrave; t&ocirc;i biết tất cả bạn b&egrave; t&ocirc;i cũng đang trải qua. V&agrave; th&ocirc;ng tin rất &iacute;t&quot;. Những người bạn g&aacute;i đ&atilde; gi&uacute;p b&agrave; nhiều hơn cả một sự hỗ trợ tinh thần th&ocirc;ng thường trong giai đoạn cơ thể c&oacute; sự biến chuyển lớn n&agrave;y.</p>\r\n\r\n<p>Mặc d&ugrave; vẫn tiếp tục tập luyện thể thao nhưng b&agrave; Obama thừa nhận c&aacute;c b&agrave;i tập n&agrave;y của b&agrave; đ&atilde; thay đổi. &quot;T&ocirc;i nhận thấy m&igrave;nh kh&ocirc;ng thể th&uacute;c &eacute;p bản th&acirc;n mạnh mẽ như trước đ&acirc;y nữa&quot;.</p>\r\n\r\n<p>Thay v&agrave;o đ&oacute;, th&oacute;i quen r&egrave;n luyện mỗi ng&agrave;y của b&agrave; l&uacute;c n&agrave;y tập trung v&agrave;o sự dẻo dai, bớt c&aacute;c b&agrave;i tập cardio (đốt mỡ, tăng nhịp tim kiểu như aerobic), tăng gi&atilde;n cơ nhiều hơn.</p>\r\n\r\n<p>Trong một podcast ph&aacute;t h&agrave;nh th&aacute;ng 7-2020 của b&agrave; Obama, cựu đệ nhất phu nh&acirc;n Mỹ từng tiết lộ việc b&agrave; đ&atilde; d&ugrave;ng liệu ph&aacute;p thay thế hormone để trị chứng bốc hỏa do m&atilde;n kinh.</p>\r\n\r\n<p>Về tổng thể, b&agrave; Obama vẫn cho rằng m&igrave;nh &quot;may mắn&quot; trong c&aacute;c trải nghiệm m&atilde;n kinh. &quot;T&ocirc;i nghĩ da m&igrave;nh vẫn khỏe. T&oacute;c vẫn c&ograve;n tr&ecirc;n đầu. Đ&acirc;y l&agrave; những điều khiến t&ocirc;i thấy m&igrave;nh may mắn&quot;, b&agrave; n&oacute;i.</p>\r\n\r\n<p><strong>Ai cũng thấy m&agrave; &iacute;t ai d&aacute;m n&oacute;i</strong></p>', '1676644955.jpg', '17-02-23', '5', 1, '2023-02-17 14:42:35', '2023-02-17 14:42:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jqLCiUudpoO218Z6xZ2KxDmKY7zedWl435QiVPAa', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR203elIwM2h6ZzY5cDBxRjdiN2FQaVZ4Wll2NWhQVUFZUnl1bHJ3QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0X2hvbWUtc2hvdy8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFE1TEFyYkVld3RxYmdveGtKV2tCaGVMTHpKaFBjdlQxc2JSYzNPRkxpVUlUSW1yYUpQU0p1Ijt9', 1676645234),
('kZfwZ9wI4JAf4lvkODR50Db2ig8ydXOqz5RjYZNc', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVpLRTJpUVBwV0RVZ25hQlpjbnl0RWJDZ3JlTFhUcGRyZWExTjNveiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3QvTkVXUy9ibG9nL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1635304210),
('LQr1WlWofZNAeXnyFPuYX2H3Qt1lLwi2qAJaUlx4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY0Y1RjU3dEVBY0hzSnkwSzdCTHJ3WDBDdW5pT0FkaUN4SHZjc0lrWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMk9UcWJGTWg0b3JjWGhRMTZtSGpBZTRPTkMyU1NkbzJMRm9CcUc4U1ZTRzBJZUZRWFNhMnUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDJPVHFiRk1oNG9yY1hoUTE2bUhqQWU0T05DMlNTZG8yTEZvQnFHOFNWU0cwSWVGUVhTYTJ1Ijt9', 1630316817),
('QqDoj5VN1dnyeLMbWKNxMPqf4ZFMoTO9CSpO4i94', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU1FZZDY0WHJKWXVZTE54alRBdW1HM1dFbkRwOHB3N1YwcjBGMk5pZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3QvTkVXUy9ibG9nL3B1YmxpYy9ob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1633750512),
('wdB7TL4U5KuPs50AkWGqhgns05iNdawRJ7EWzhvh', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTGFmbkVCcGo5Y2kybWI3OUQ3QVgzcDMxeDhkeUhza1YzbmxvYVd0dCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Byb2ZpbGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkUTVMQXJiRWV3dHFiZ294a0pXa0JoZUxMekpoUGN2VDFzYlJjM09GTGlVSVRJbXJhSlBTSnUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFE1TEFyYkVld3RxYmdveGtKV2tCaGVMTHpKaFBjdlQxc2JSYzNPRkxpVUlUSW1yYUpQU0p1Ijt9', 1676599752),
('Yslp3Ilfi90AxO9rvKOX09CeKAeDfgw1xtNol6yh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEwxOG9acENOT1kzUnM3eWZHRHpPYmFQNnBVbVRZakN4b1pQdU41bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1676644114);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 2, 'nguyễn\'s Team', 1, '2023-02-17 01:55:11', '2023-02-17 01:55:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Long', 'duclong1619@gmail.com', NULL, '$2y$10$2OTqbFMh4orcXhQ16mHjAe4ONC2SSdo2LFoBqG8SVSG0IeFQXSa2u', NULL, NULL, NULL, NULL, NULL, '2021-08-29 09:58:05', '2021-08-29 09:58:05'),
(2, 'nguyễn trung kiên', 'admin@localhost.com', NULL, '$2y$10$Q5LArbEewtqbgoxkJWkBheLLzJhPcvT1sbRc3OFLiUITImraJPSJu', NULL, NULL, 'KS9RqCdfIssQv2pYuAmh8s0fLe51DZFoF9iEs9lwlpZ57NGblAJauhEb0JI3', 1, NULL, '2023-02-17 01:55:11', '2023-02-17 02:08:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Chỉ mục cho bảng `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
