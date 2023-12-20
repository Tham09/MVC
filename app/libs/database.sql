-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2023 lúc 02:56 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `students`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to Programming', 'Learn the basics of programming', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 'Web Development Fundamentals', 'Explore the world of web development', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 'Database Design and SQL', 'Master the art of database management', '2023-12-19 21:49:04', '2023-12-19 21:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(1, 2, '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 2, '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 3, '2023-12-19 21:49:04', '2023-12-19 21:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Getting Started with Python', 'Introduction to Python programming language', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 2, 'HTML and CSS Basics', 'Learn the fundamentals of web development', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 3, 'Relational Database Concepts', 'Understanding database design', '2023-12-19 21:49:04', '2023-12-19 21:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `materials`
--

INSERT INTO `materials` (`id`, `lesson_id`, `title`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Python Tutorial', 'python_tutorial.pdf', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 2, 'CSS Basics', 'css_basics_video.mp4', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 3, 'Normalization in Databases', 'database_normalization.doc', '2023-12-19 21:49:04', '2023-12-19 21:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option` text NOT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `question_id`, `option`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'for i in range(5):', 1, '2023-12-19 21:49:05', '2023-12-19 21:49:05'),
(2, 1, 'foreach (var i in array)', 0, '2023-12-19 21:49:05', '2023-12-19 21:49:05'),
(3, 2, '<ul>', 1, '2023-12-19 21:49:05', '2023-12-19 21:49:05'),
(4, 2, '<ol>', 0, '2023-12-19 21:49:05', '2023-12-19 21:49:05'),
(5, 3, 'Ensuring data consistency and eliminating redundancy', 1, '2023-12-19 21:49:05', '2023-12-19 21:49:05'),
(6, 3, 'Maximizing table joins', 0, '2023-12-19 21:49:05', '2023-12-19 21:49:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is the syntax for a for loop in Python?', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 2, 'Which HTML tag is used to define an unordered list?', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 3, 'What is normalization in the context of databases?', '2023-12-19 21:49:04', '2023-12-19 21:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quizzes`
--

INSERT INTO `quizzes` (`id`, `lesson_id`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Python Basics Quiz', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 2, 'HTML and CSS Quiz', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 3, 'Database Concepts Quiz', '2023-12-19 21:49:04', '2023-12-19 21:49:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', 'password123', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(2, 'Jane Smith', 'jane.smith@example.com', 'pass456', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'secure789', '2023-12-19 21:49:04', '2023-12-19 21:49:04'),
(4, 'Ranee Iremonger', 'riremonger3@ucoz.ru', 'sR06$ubV6$', '2023-09-21 17:00:00', '2023-06-16 17:00:00'),
(5, 'Vinny Velte', 'vvelte4@google.es', 'kX2TN2AOY`sq(i)', '2023-05-13 17:00:00', '2023-10-23 17:00:00'),
(6, 'Brandon Franciskiewicz', 'bfranciskiewicz5@nhs.uk', 'uH4A(ja_L', '2023-11-12 17:00:00', '2023-07-03 17:00:00'),
(7, 'Rafaello Gummer', 'rgummer6@exblog.jp', 'jI4O\'Sma', '2023-05-04 17:00:00', '2023-10-17 17:00:00'),
(8, 'Anthea Gurnell', 'agurnell7@i2i.jp', 'lR1K0l{h.|>uk4G', '2023-11-19 17:00:00', '2023-03-15 17:00:00'),
(9, 'Blondelle Blakely', 'bblakely8@jugem.jp', 'iY1@I,<<', '2023-10-16 17:00:00', '2023-07-17 17:00:00'),
(10, 'Early Windas', 'ewindas9@seesaa.net', 'jD3i+i8,U0S%_', '2023-10-15 17:00:00', '2023-09-03 17:00:00'),
(11, 'Dulcia Duiguid', 'dduiguida@nba.com', 'oH4q/_pqorDrXd', '2023-12-09 17:00:00', '2023-11-11 17:00:00'),
(12, 'Griffie Colam', 'gcolamb@mac.com', 'iY0LRs@78Z', '2023-03-01 17:00:00', '2023-02-03 17:00:00'),
(13, 'Emmalyn Vakhonin', 'evakhoninc@jigsy.com', 'yI0KAnoQ\'eRN', '2023-07-03 17:00:00', '2023-10-15 17:00:00'),
(14, 'Judie Arber', 'jarberd@ftc.gov', 'xI9f+p5UgG}D9f', '2023-02-13 17:00:00', '2023-03-29 17:00:00'),
(15, 'Olivero Simeoni', 'osimeonie@1und1.de', 'cA2z|9Pw<tDG)', '2023-05-27 17:00:00', '2023-10-29 17:00:00'),
(16, 'Codi Faiers', 'cfaiersf@multiply.com', 'gM962fQX8n!}nXu', '2023-07-12 17:00:00', '2023-09-24 17:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`course_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Chỉ mục cho bảng `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Chỉ mục cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Các ràng buộc cho bảng `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Các ràng buộc cho bảng `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`);

--
-- Các ràng buộc cho bảng `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
