-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 28, 2024 at 02:18 AM
-- Server version: 8.0.36-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elitedesignbd_union`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `designation`, `mobile`, `ads`, `type`, `created_at`, `updated_at`) VALUES
(118, 'মোঃ আব্দুল খালেক', 'লালমনির হাট কাউন্সিলর', '017XXXXXXXXX', 'public/ads/656e7e80f1d20.png', 2, NULL, NULL),
(120, 'মোঃ নাইম হোসেন', 'বড়বাড়ি কাউন্সিলর', '017XXXXXXXXX', 'public/ads/656e7ea26875d.jpg', 2, NULL, NULL),
(121, 'মোঃ আব্দুল মান্নান', 'কুড়িগ্রাম কাউন্সিলর', '017XXXXXXXXX', 'public/ads/656e7ed39b38a.png', 2, NULL, NULL),
(122, 'Md Rakibul Islam', 'Computer  Oparetor', '017XXXXXXXXX', 'public/ads/656e805dc41fe.png', 1, NULL, NULL),
(123, 'Md Nazrul Islam', 'Type Writer', '017XXXXXXXXX', 'public/ads/656e807e67874.jpg', 1, NULL, NULL),
(124, 'Md Nazrul Islam', 'Lalmonir Hat Councelor', '017XXXXXXXXX', 'public/ads/656e8a7a53608.jpg', 3, NULL, NULL),
(125, 'Ms. Jannatul Ferdaus', 'বড়বাড়ি কাউন্সিলর', '017XXXXXXXXX', 'public/ads/656e8b3b1d399.webp', 3, NULL, NULL),
(126, 'Md Nazrul Islam', 'Executive Member', '017XXXXXXXXX', 'public/ads/656e8b4c8ff88.webp', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_bn`, `category_en`, `soft_delete`, `created_at`, `updated_at`) VALUES
(15, 'নোটিশ', 'Notice', '0', NULL, NULL),
(16, 'প্রোজেক্ট', 'project', '0', NULL, NULL),
(17, 'ব্লগ', 'Blog', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_bn`, `district_en`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'ঢাকা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetv`
--

CREATE TABLE `livetv` (
  `id` bigint UNSIGNED NOT NULL,
  `embed_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetv`
--

INSERT INTO `livetv` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"300\" height=\"220\" src=\"https://www.youtube.com/embed/oqGO941aZAc\" title=\"রাতের আঁধারে সক্রিয় অবরোধকারীরা | BNP Oborodh | Fire in Bus | Somoy TV\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_16_115107_create_categories_table', 1),
(5, '2020_04_16_115141_create_subcategories_table', 1),
(6, '2020_04_29_153713_create_districts_table', 1),
(7, '2020_04_29_153726_create_subdistricts_table', 1),
(8, '2020_04_30_102439_create_posts_table', 1),
(9, '2020_05_31_131832_create_socials_table', 1),
(10, '2020_05_31_131923_create_seos_table', 1),
(11, '2020_05_31_134432_create_namaz_table', 1),
(12, '2020_05_31_135413_create_livetv_table', 1),
(13, '2020_06_01_150304_create_notices_table', 1),
(14, '2020_06_01_151613_create_websites_table', 1),
(15, '2020_06_10_224008_create_photos_table', 1),
(16, '2020_06_10_225639_create_videos_table', 1),
(17, '2020_07_03_125924_create_ads_table', 1),
(18, '2020_07_05_082330_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `namaz`
--

CREATE TABLE `namaz` (
  `id` bigint UNSIGNED NOT NULL,
  `fajr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `esha` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `namaz`
--

INSERT INTO `namaz` (`id`, `fajr`, `johr`, `asor`, `magrib`, `esha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, '৫.৩০ মিনিট', '১.৩০ মিনিট', '৪ টা', '৬ টা', '৭.৩০ মিনিট', '১.৪০ মিনিট', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint UNSIGNED NOT NULL,
  `notice` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'আমাদের ওয়েব সাইটের সার্বিক উন্নয়ন এর কাজ চলছে। কাজ চলাকালীন অবস্থায় , আপনাদের সাময়িকভাবে কিছুটা অসুবিধা হতে পারে এর জন্য আমরা আন্তরিকভাবে দুক্ষিত । আমাদের ওয়েবসাইট উন্নয়নের কাজটি আগামিকাল শেষ হবে। আমাদের সাথে থাকার জন্য ধন্যবাদ।', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(36, 'public/photos_gallery/65681f8b68120.jpg', 'অভিভাবগ সমাবেশ', '1', NULL, NULL),
(37, 'public/photos_gallery/65681fadc2b99.jpg', 'অভিভাবগ সমাবেশে পুরুস্কার বিতরনী', '1', NULL, NULL),
(38, 'public/photos_gallery/65681fc9d1138.jpg', 'Respect sir medam & sp sir...', '1', NULL, NULL),
(39, 'public/photos_gallery/65681fea9d9a2.jpg', 'SSC 2017 batch', '1', NULL, NULL),
(40, 'public/photos_gallery/6568204cc3239.jpg', '1st s.s.c batch of phakal', '1', NULL, NULL),
(41, 'public/photos_gallery/65682089a0698.jpg', 'বই বিতরনী', '1', NULL, NULL),
(42, 'public/photos_gallery/656821496f4d1.jpg', 'Bangabandhu with his family', '0', NULL, NULL),
(43, 'public/photos_gallery/6568216ca0f97.png', 'Bangla Literary Conference (February, 1974)', '0', NULL, NULL),
(44, 'public/photos_gallery/65682187ea5e2.jpeg', '1971-4april', '0', NULL, NULL),
(45, 'public/photos_gallery/656821aeefd82.png', 'Visiting Egyptian trade mission', '0', NULL, NULL),
(46, 'public/photos_gallery/656821cd335f1.jpeg', '7march', '0', NULL, NULL),
(47, 'public/photos_gallery/656821ea54d6b.jpg', 'Bangabandhu’s birthday', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` int NOT NULL,
  `subcat_id` int DEFAULT NULL,
  `dist_id` int DEFAULT NULL,
  `subdist_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `title_bn` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_bn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `tags_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `headline` int DEFAULT NULL,
  `first_section` int DEFAULT NULL,
  `first_section_thumbnail` int DEFAULT NULL,
  `bigthumbnail` int DEFAULT NULL,
  `post_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `categoryhomepage` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `subcat_id`, `dist_id`, `subdist_id`, `user_id`, `title_bn`, `title_en`, `image`, `details_en`, `details_bn`, `tags_bn`, `tags_en`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`, `short_details`, `categoryhomepage`) VALUES
(122, 16, 47, NULL, NULL, 1, 'মাইক্রোসফট অফিস এপ্লিকেশন', '1000', 'public/postimages/656823d660202.jpg', NULL, '<p>Microsoft Office is the most commonly used software in the world. More than 1.2 billion people across 140 countries and 107 languages use MS office. No matter how talented you are or an expert in any field, if you have the knowledge to play with MS office then your life is much easy. Yes, this skill is mandatory for every student &amp; professional either you have to create your resume, presentation, planning on a project, to manage inventory, to play with formulae and number or etc. The more you know about MS Office the better ease you get.</p><p><span style=\"font-size: 1rem;\">MS Office Course in Karachi</span><br></p><p><span style=\"font-size: 1rem;\">1-MS Word</span><br></p><p>2-MS Excel</p><p>3-MS PowerPoint.</p><p><span style=\"font-size: 1rem;\">Good news for All – On demand of our students and usage of MS Office Digitalize Training offer Specially Designed Complete and module wise MS Office Training course- that will help you to be an MS Office Expert. After completing MS Office course student will be awarded with MS office certification and will be eligible for data entry job.</span><br></p>', NULL, 'https://phakal.edu.bd/', 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(123, 16, 47, NULL, NULL, 1, 'Graphics Design', '3000', 'public/postimages/656824856a935.png', NULL, '<p>Anyone can join who has the interest to get into the ‘Graphic Design’ profession and want to do such type of task in various company and online freelancing marketplaces.&nbsp; Especially we recommend:</p><p>Media Professionals</p><ul><li>Entrepreneurs</li><li>Students</li><li>Business Owners</li></ul><p>Anyone who is desired to learn graphic design</p><p>As long as you have a basic understanding of computer graphics and design software, along with problem-solving and communication skills, Graphic Design is not Rocket Science. But of course, the unique element that degrees cannot teach you is creativity, which is perhaps the most crucial ladder that helps you climb up the levels of graphic design. But if you are a newbie then we will recommend you to join our Full Free Basic Computer Training to get a basic idea about all these staffs and we hope and believe that it will help you to take the proper decision that which course is better for you. Most importantly it will also help you to save your money and time. So, think again before you jump in this awesome colourful graphic design sector.</p><p><br></p><p>PREREQUISITES</p><ul><li>Technical skill: Must have the fluent operating skill of computer.</li><li>Must have the skill to use the internet.</li><li>A little knowledge of the graphic world would be fine but not necessary.</li><li>Fluency in English (both writing and speaking).</li><li>Academic: HSC or equivalent certificate.</li><li>LEARNING OUTCOME</li><li>3D Cartoon Designs</li><li>Abstract Artworks</li><li>All Types of Logo Design Process</li><li>Animated Gifs Design</li><li>Best Poster Design</li><li>Brochures</li><li>Calligraphy Process’s</li><li>Cartoon Character Design</li><li>Cartoon Designs</li><li>Client Management</li><li>Clipping Path</li><li>Colour Correction</li><li>Duotone effects</li><li>Effective Business Card Design</li><li>Flyers</li><li>Freelancing marketplaces</li><li>Gradient Designs for Print and Digital Use</li><li>Image editing</li><li>Landscape Art Design</li><li>Latest Software Uses for Learning</li><li>Layers and Masking</li><li>Mandala Design</li><li>Isometric Designs for UI</li><li>Local Marketplaces</li><li>Manipulations</li><li>Mockup Design</li><li>Painting and Retouching</li><li>Painting Artworks</li><li>Pattern Design</li><li>Portfolio Making</li><li>Portrait Art Design</li><li>Powerful Typographic Features will be Shown</li><li>Press Printing</li><li>Product Packaging Design</li><li>Production Tips and tricks</li><li>Quality Design Making</li><li>Selection Techniques</li><li>Tools and Workspace</li><li>Trendy Brochure Design</li><li>T-shirt Design</li><li>Using Illustrator with Photoshop</li><li>Water Color Design</li><li>Wedding Photography Editing</li><li>Well Organized Artwork</li></ul>', NULL, 'https://phakal.edu.bd/', 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(124, 16, 47, NULL, NULL, 1, 'Microsoft Excel 2023', '1500', 'public/postimages/656824fe610f3.jpg', NULL, '<p>Course Description:</p><p><span style=\"font-size: 1rem;\">Microsoft Excel is the most commonly used spreadsheet application. Learning how to use Excel is an investment in both your personal and professional life. Excel makes it easy to monitor financial performance, such as business profit or loss, calculate payments on large purchases, plan a budget, or stay organised with checklists. This course will give a full introduction to Excel, so if you’re a complete beginner you will build knowledge and learn to get the most out of Excel.</span></p><p><br></p><p>Our online courses offer you the opportunity to study 24/7 wherever you are in the world. These intensive on line courses are open to anyone with an interest in the topic and give you access to world-class learning led by IAP.</p><p><span style=\"font-size: 1rem;\">What skills will I gain?</span><br></p><p>Learn how to manage cell contents in a worksheetLearn how to create financial reportsUnderstand accounting formulas, functions &amp; specialised functionsLearn cell attributes &amp; cell formattingGain a full understanding of printing excel sheetsLogging in to this course, you’ll learn how to insert &amp; modify graphic objectsLearn conditional formatting and data validationsLearn how to export, import &amp; integrate data with other sources</p>', NULL, 'https://phakal.edu.bd/', 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(125, 17, 52, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/656825b13a25e.jpg', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(126, 17, 52, NULL, NULL, 1, 'Lorem ispum', NULL, 'public/postimages/656825d2b48e0.jpg', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(127, 17, 52, NULL, NULL, 1, 'Lorem Ispum', NULL, 'public/postimages/6568260d6c338.jpg', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(128, 15, 50, NULL, NULL, 1, 'আগামি কাল স্কুল বন্ধ থাকবে!', NULL, 'public/postimages/656832688c452.png', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(129, 15, 49, NULL, NULL, 1, 'বার্ষিক পরিক্ষা ২০২৩ , আগামি ২৩ তারিখ থেকে শুরু হবে!', NULL, 'public/postimages/656832a300cf2.png', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(130, 15, 49, NULL, NULL, 1, 'বার্ষিক পরিক্ষার  ফলাফল আগামি ১১ ডিসেম্বর প্রকাশ করা হবে', NULL, 'public/postimages/656835056826c.png', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(131, 15, 51, NULL, NULL, 1, 'আগামি কাল সকল স্টাফদের সেলারী প্রদান করা হবে', NULL, 'public/postimages/656835635fd8c.png', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(132, 15, 51, NULL, NULL, 1, 'স্টাফদের বন্ধের নোটিশ', NULL, 'public/postimages/6568359f6347f.png', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(133, 15, 50, NULL, NULL, 1, 'স্কুল আগামি সুক্রবার খোলা থাকবে', NULL, 'public/postimages/656835d76971c.png', NULL, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br></p>', NULL, NULL, 1, 1, 1, 1, '30-11-2023', 'November', NULL, NULL, NULL, 1),
(134, 15, 49, NULL, NULL, 1, 'Govt School Managment Website', NULL, 'public/postimages/656e86ea2c8db.jpg', NULL, '<p>Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the<br></p>', NULL, 'Conducting any public welfare activities or charitable activities for the needy people; Along with safe sanitation system, the aim is to improve socioeconomic condition of destitute women and men And it is necessary to make the destitute poor including the', 1, 1, 1, 1, '05-12-2023', 'December', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oddhakhorname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oddhakhorshortdetail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `oddhakhorlong` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `upodkahhoname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upodkahhoshortdetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `upodkahhoshorlong` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_verification` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admitcard` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marksheet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examroutine` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admissionform` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gurdinelogin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googlemaplink` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contactus` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `oddhakhorname`, `oddhakhorshortdetail`, `oddhakhorlong`, `upodkahhoname`, `upodkahhoshortdetails`, `upodkahhoshorlong`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`, `admitcard`, `marksheet`, `certificate`, `examroutine`, `admissionform`, `gurdinelogin`, `googlemaplink`, `contactus`) VALUES
(1, 'লালমনির হাট, বাংলাদেশ', 'লালমনির হাট, বাংলাদেশ', 'লালমনির হাট, বাংলাদেশ', 'লালমনির হাট, বাংলাদেশ', 'মাননীয় মেয়র', 'সম্মানীত সকল পৌরবাসীকে জানাই শুভেচ্ছা ও অভিনন্দন। বাংলাদেশের স্বাধীনতার সূতিকাগার প্রথম রাজধানী ঐতিহাসিক মুজিবনগরের প্রবেশদ্বার মেহেরপুর পৌরসভা। এ পৌরসভার সকল প্রতিকুলতা, ঘাত-প্রতিঘাত ও প্রতিবন্ধকতার অবসান ঘটিয়ে বিগত ২৫ এপ্রিল, ২০১৭ খ্রিষ্টাব্দের পৌর নির্বাচন এবং', '<div><div>আসসালামু আলাইকুম।</div><div>সম্মানীত সকল পৌরবাসীকে জানাই শুভেচ্ছা ও অভিনন্দন। বাংলাদেশের স্বাধীনতার সূতিকাগার প্রথম রাজধানী ঐতিহাসিক মুজিবনগরের প্রবেশদ্বার মেহেরপুর পৌরসভা। এ পৌরসভার সকল প্রতিকুলতা, ঘাত-প্রতিঘাত ও প্রতিবন্ধকতার অবসান ঘটিয়ে বিগত ২৫ এপ্রিল, ২০১৭ খ্রিষ্টাব্দের পৌর নির্বাচন এবং ৮ মে, ২০১৭ খিষ্টাব্দের উপ-নির্বাচনে আপনাদের দোয়া ও সমর্থন নিয়ে মহান আল্লাহতায়ালা আমাকে মেহেরপুর পৌরসভার মেয়র নির্বাচিত করেছেন। আমি বিগত ২৩ মে, ২০১৭ খ্রিঃ মেয়র হিসাবে শপথ এবং ২৮ মে, ২০১৭ খ্রিঃ তারিখে মেহেরপুর পৌরসভার দায়িত্বভার গ্রহণ করি।</div><div>মেহেরপুর পৌরসভা তথা এ শহর একটি ঐতিহাসিক প্রাচীন ও ঐতিহ্যবাহী শহর। ১৫ এপ্রিল, ১৮৬৯ সালে এ পৌরসভা প্রতিষ্ঠিত। ১৮৬৯ সালে প্রতিষ্ঠিত হলেও এ পৌরসভার রাস্তা, ড্রেনসহ অবকাঠামো উন্নয়ন কাজ অপ্রতুল। “আন্তর্জাতিক মাতৃভাষা দিবস ৫২ এর একুশ আর আমার মুজিবনগর” একসূত্রে বিশেষ তাৎপর্য বহন করে সারাবিশ্বে বাংলাদেশের প্রথম রাজধানী হিসেবে পরিচিত হয়েছে মুজিবনগরকে ধারনকারী মেহেরপুর।</div><div>আমি ছোট বেলা হতে পিতার মুখ থেকে মুক্তিযুদ্ধের ৯ মাসের গল্প শুনতে শুনতে বড় হয়েছি। জেনেছি সেই মহান নেতা বাংলার হাজার বছরের শ্রেষ্ঠ বাঙ্গালী জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের শ্রেষ্ঠত্বের অহংকারে আমি গর্বিত। তার অনুপ্রেরণায় আমার এ কর্মময় জীবনে অনেক স্বপ্ন চিন্তা-চেতনাকে শতভাগ সফল করার প্রয়াস অব্যাহত থাকবে।</div><div>সম্মানীত পৌরবাসী, আমি বিশ্বাস করি কোন ভাল কাজে পরিপূর্ণতা অর্জনে প্রয়োজন লক্ষ্য স্থির করা। সেই লক্ষ্য নিয়ে আপনারা আমাকে দোয়া ও সমর্থন প্রকাশ করে যে গুরুদায়িত্ব অর্পন করেছেন, আপনাদের দোয়াকে পাথেয় করে শুরু হলো আমার এ পথ চলা। এর মাঝে ভুলত্রুটি, সকল ব্যর্থতার দায় সবটুকু আমার। আর ভালো যা কিছু সুন্দর সৃষ্টি তা আপনাদের। আল্লাহর অশেষ রহমতে আপনাদের সার্বিক সহায়তায় আমার চিন্তা-চেতনা ও সৃষ্টিশীল ধ্যান-ধারনা বাস্তবায়নে আমি সর্বদা অবিচল। সন্ত্রাস, দূর্নীতি, অন্যায়, অত্যাচার, নিপীড়ন, মাদকমুক্ত, শোষণহীন সমাজ প্রতিষ্ঠাই হচ্ছে আমার মূল লক্ষ্য।</div><div>সম্মানীত পৌরবাসী, গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের “রুপকল্প ২০২১” বাস্তবায়নে সরকারী ও বেসরকারী প্রতিষ্ঠানসমূহকে উৎসাহিতকরণ ও জনগণের দোড় গোড়ায় ডিজিটাল সেবা পৌছে দেয়ার লক্ষ্যে দেশরত্ন মাননীয় প্রধানমন্ত্রী জননেত্রী শেখ হাসিনা নিরলসভাবে কাজ করে যাচ্ছেন। গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের “রুপকল্প ২০২১” বাস্তবায়নে তথা ক্ষুধা ও দারিদ্রমুক্ত বাংলাদেশ গড়ার স্বপ্ন ও প্রত্যয় নিয়ে মেহেরপুর পৌরসভাও অতিশীঘ্রই কাংখিত লক্ষ্যে পৌছে যাবে ইনশাল্লাহ।</div><div>সুপ্রিয় পৌরবাসী,</div><div>দেশ এগিয়ে চলেছে উন্নয়নের মহাসড়কে। সেই সাথে তাল মিলিয়ে মেহেরপুর পৌরসভাও এগিয়ে যাবে দ্রুত উন্নয়নের দিকে। গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের মাননীয় প্রধানমন্ত্রী শান্তির দূত। দেশরত্ন শেখ হাসিনার যোগ্য নেতৃত্বে ১৬ কোটি মানুষকে সাথে নিয়ে সুখী সমৃদ্ধশালী ও আত্ননির্ভরশীল ডিজিটাল বাংলাদেশ নির্মাণে নিরলসভাবে কাজ করে চলেছেন। সেই উন্নয়নের ধারাকে সমুন্নত রাখতে প্রান্তিক পর্যায়ে তার একজন সক্রিয় কর্মী হিসেবে আমরা নিরলসভাবে কাজ করে যাচ্ছি।</div><div>মাননীয় প্রধানমন্ত্রীর বলিষ্ঠ ভূমিকাই আমরা ২০২১ সালের মধ্যে মধ্যম আয়ের দেশ হিসেবে প্রতিষ্ঠা পাওয়ার দ্বার প্রান্তে। বর্তমান সরকারের গৃহীত ২০৪১ সালের রুপকল্প অনুযায়ী বাংলাদেশকে একটি উন্নত দেশ হিসেবে বিশ্বের মাঝে প্রতিষ্ঠিত করার লক্ষে সরকারের একটি ক্ষুদ্র একক হিসেবে আমরা কাজ করতে অঙ্গীকারাবদ্ধ।</div><div>আপনাদের কাছে আমার এতটুকু চাওয়া, আমার জন্য দোয়া করবেন। আমি যেন সুস্থ শরীরে আপনাদের নগন্য সেবক হিসেবে কাজ করতে করতে দৃষ্টান্ত স্থাপন করে সন্ত্রাসমুক্ত মেহেরপুর গড়ে বিশ্ব দরবারে সুপরিচিত করতে পারি।</div><div>সকলের দোয়া, সহযোগিতা ও অনুপ্রেরণাই আমার শক্তি। বিশ্ব মানবতার জয় হোক, বিশ্ব শান্তির জয় হোক। বিশ্ব ভাতৃত্ব ও সম্প্রীতির জয় হোক। জয় বাংলা। জয় বঙ্গবন্ধু।</div><div><br></div><div>মোঃ মাহফুজুর রহমান রিটন</div><div>মেয়র</div><div>মেহেরপুর পৌরসভা।</div><div><br></div></div>', 'প্রধান নির্বাহী কর্মকর্তা', 'সম্মানীত সকল পৌরবাসীকে জানাই শুভেচ্ছা ও অভিনন্দন। বাংলাদেশের স্বাধীনতার সূতিকাগার প্রথম রাজধানী ঐতিহাসিক মুজিবনগরের প্রবেশদ্বার মেহেরপুর পৌরসভা। এ পৌরসভার সকল প্রতিকুলতা, ঘাত-প্রতিঘাত ও প্রতিবন্ধকতার অবসান ঘটিয়ে বিগত ২৫ এপ্রিল, ২০১৭ খ্রিষ্টাব্দের পৌর নির্বাচন এবং', '<div><div>আসসালামু আলাইকুম।</div><div>সম্মানীত সকল পৌরবাসীকে জানাই শুভেচ্ছা ও অভিনন্দন। বাংলাদেশের স্বাধীনতার সূতিকাগার প্রথম রাজধানী ঐতিহাসিক মুজিবনগরের প্রবেশদ্বার মেহেরপুর পৌরসভা। এ পৌরসভার সকল প্রতিকুলতা, ঘাত-প্রতিঘাত ও প্রতিবন্ধকতার অবসান ঘটিয়ে বিগত ২৫ এপ্রিল, ২০১৭ খ্রিষ্টাব্দের পৌর নির্বাচন এবং ৮ মে, ২০১৭ খিষ্টাব্দের উপ-নির্বাচনে আপনাদের দোয়া ও সমর্থন নিয়ে মহান আল্লাহতায়ালা আমাকে মেহেরপুর পৌরসভার মেয়র নির্বাচিত করেছেন। আমি বিগত ২৩ মে, ২০১৭ খ্রিঃ মেয়র হিসাবে শপথ এবং ২৮ মে, ২০১৭ খ্রিঃ তারিখে মেহেরপুর পৌরসভার দায়িত্বভার গ্রহণ করি।</div><div>মেহেরপুর পৌরসভা তথা এ শহর একটি ঐতিহাসিক প্রাচীন ও ঐতিহ্যবাহী শহর। ১৫ এপ্রিল, ১৮৬৯ সালে এ পৌরসভা প্রতিষ্ঠিত। ১৮৬৯ সালে প্রতিষ্ঠিত হলেও এ পৌরসভার রাস্তা, ড্রেনসহ অবকাঠামো উন্নয়ন কাজ অপ্রতুল। “আন্তর্জাতিক মাতৃভাষা দিবস ৫২ এর একুশ আর আমার মুজিবনগর” একসূত্রে বিশেষ তাৎপর্য বহন করে সারাবিশ্বে বাংলাদেশের প্রথম রাজধানী হিসেবে পরিচিত হয়েছে মুজিবনগরকে ধারনকারী মেহেরপুর।</div><div>আমি ছোট বেলা হতে পিতার মুখ থেকে মুক্তিযুদ্ধের ৯ মাসের গল্প শুনতে শুনতে বড় হয়েছি। জেনেছি সেই মহান নেতা বাংলার হাজার বছরের শ্রেষ্ঠ বাঙ্গালী জাতির পিতা বঙ্গবন্ধু শেখ মুজিবুর রহমানের শ্রেষ্ঠত্বের অহংকারে আমি গর্বিত। তার অনুপ্রেরণায় আমার এ কর্মময় জীবনে অনেক স্বপ্ন চিন্তা-চেতনাকে শতভাগ সফল করার প্রয়াস অব্যাহত থাকবে।</div><div>সম্মানীত পৌরবাসী, আমি বিশ্বাস করি কোন ভাল কাজে পরিপূর্ণতা অর্জনে প্রয়োজন লক্ষ্য স্থির করা। সেই লক্ষ্য নিয়ে আপনারা আমাকে দোয়া ও সমর্থন প্রকাশ করে যে গুরুদায়িত্ব অর্পন করেছেন, আপনাদের দোয়াকে পাথেয় করে শুরু হলো আমার এ পথ চলা। এর মাঝে ভুলত্রুটি, সকল ব্যর্থতার দায় সবটুকু আমার। আর ভালো যা কিছু সুন্দর সৃষ্টি তা আপনাদের। আল্লাহর অশেষ রহমতে আপনাদের সার্বিক সহায়তায় আমার চিন্তা-চেতনা ও সৃষ্টিশীল ধ্যান-ধারনা বাস্তবায়নে আমি সর্বদা অবিচল। সন্ত্রাস, দূর্নীতি, অন্যায়, অত্যাচার, নিপীড়ন, মাদকমুক্ত, শোষণহীন সমাজ প্রতিষ্ঠাই হচ্ছে আমার মূল লক্ষ্য।</div><div>সম্মানীত পৌরবাসী, গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের “রুপকল্প ২০২১” বাস্তবায়নে সরকারী ও বেসরকারী প্রতিষ্ঠানসমূহকে উৎসাহিতকরণ ও জনগণের দোড় গোড়ায় ডিজিটাল সেবা পৌছে দেয়ার লক্ষ্যে দেশরত্ন মাননীয় প্রধানমন্ত্রী জননেত্রী শেখ হাসিনা নিরলসভাবে কাজ করে যাচ্ছেন। গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের “রুপকল্প ২০২১” বাস্তবায়নে তথা ক্ষুধা ও দারিদ্রমুক্ত বাংলাদেশ গড়ার স্বপ্ন ও প্রত্যয় নিয়ে মেহেরপুর পৌরসভাও অতিশীঘ্রই কাংখিত লক্ষ্যে পৌছে যাবে ইনশাল্লাহ।</div><div>সুপ্রিয় পৌরবাসী,</div><div>দেশ এগিয়ে চলেছে উন্নয়নের মহাসড়কে। সেই সাথে তাল মিলিয়ে মেহেরপুর পৌরসভাও এগিয়ে যাবে দ্রুত উন্নয়নের দিকে। গণপ্রজাতন্ত্রী বাংলাদেশ সরকারের মাননীয় প্রধানমন্ত্রী শান্তির দূত। দেশরত্ন শেখ হাসিনার যোগ্য নেতৃত্বে ১৬ কোটি মানুষকে সাথে নিয়ে সুখী সমৃদ্ধশালী ও আত্ননির্ভরশীল ডিজিটাল বাংলাদেশ নির্মাণে নিরলসভাবে কাজ করে চলেছেন। সেই উন্নয়নের ধারাকে সমুন্নত রাখতে প্রান্তিক পর্যায়ে তার একজন সক্রিয় কর্মী হিসেবে আমরা নিরলসভাবে কাজ করে যাচ্ছি।</div><div>মাননীয় প্রধানমন্ত্রীর বলিষ্ঠ ভূমিকাই আমরা ২০২১ সালের মধ্যে মধ্যম আয়ের দেশ হিসেবে প্রতিষ্ঠা পাওয়ার দ্বার প্রান্তে। বর্তমান সরকারের গৃহীত ২০৪১ সালের রুপকল্প অনুযায়ী বাংলাদেশকে একটি উন্নত দেশ হিসেবে বিশ্বের মাঝে প্রতিষ্ঠিত করার লক্ষে সরকারের একটি ক্ষুদ্র একক হিসেবে আমরা কাজ করতে অঙ্গীকারাবদ্ধ।</div><div>আপনাদের কাছে আমার এতটুকু চাওয়া, আমার জন্য দোয়া করবেন। আমি যেন সুস্থ শরীরে আপনাদের নগন্য সেবক হিসেবে কাজ করতে করতে দৃষ্টান্ত স্থাপন করে সন্ত্রাসমুক্ত মেহেরপুর গড়ে বিশ্ব দরবারে সুপরিচিত করতে পারি।</div><div>সকলের দোয়া, সহযোগিতা ও অনুপ্রেরণাই আমার শক্তি। বিশ্ব মানবতার জয় হোক, বিশ্ব শান্তির জয় হোক। বিশ্ব ভাতৃত্ব ও সম্প্রীতির জয় হোক। জয় বাংলা। জয় বঙ্গবন্ধু।</div><div><br></div><div>মোঃ আবু সাইদ</div><div>মেয়র</div><div>মেহেরপুর পৌরসভা।</div><div><br></div></div>', 'Phakal', NULL, 'phakal', NULL, NULL, 'https://soft.elitedesign.com.bd/roupnagar/admit_card', 'https://soft.elitedesign.com.bd/roupnagar/exam_results', 'https://soft.elitedesign.com.bd/roupnagar/certificates', '/routine.jpg', '/form.png', 'https://soft.elitedesign.com.bd/roupnagar/authentication', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6142.459375019344!2d90.38481283711245!3d23.735673180316383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b99e7c2c22bb%3A0xa7ecfda6b6557e36!2sElite%20Design!5e0!3m2!1sen!2sbd!4v1701738987625!5m2!1sen!2sbd', 'https://soft.elitedesign.com.bd/roupnagar/contact');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oddhakhorimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upodkahhoimg` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner1_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner2_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baner3_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_info_short` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_info_long` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `eiinno` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collegecode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_history` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institutehistoryimages` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilelogo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebookpage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `privacy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `teacherlogin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `studentlogin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resultlink` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onlineadmission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `oddhakhorimg`, `upodkahhoimg`, `address_bn`, `address_en`, `phone_bn`, `phone_en`, `email`, `created_at`, `updated_at`, `favicon`, `baner1`, `baner2`, `baner3`, `baner1_text`, `baner2_text`, `baner3_text`, `institute_info_short`, `institute_info_long`, `eiinno`, `collegecode`, `institute_history`, `institutehistoryimages`, `mobilelogo`, `facebookpage`, `terms`, `privacy`, `teacherlogin`, `studentlogin`, `resultlink`, `onlineadmission`) VALUES
(1, 'public/ads/656e5fd9b4f6c.jpg', 'public/ads/656e6bae0ea31.jpg', 'public/ads/656e6b9e46e13.png', 'পুলিশ লাইন, মিশন মোড়, লালমনির হাট, সদর', 'Police Line, Mission More, Lalmonir Hat Sadar.', '০১৭৭৫৪৫৭০০৮', '01775457008', 'info@elitedesign.com.bd', NULL, NULL, 'public/ads/656e6bf7c0578.png', 'public/ads/656e655819a1e.jpg', 'public/ads/656e6592be705.jpg', 'public/ads/656e65fddc929.jpg', 'ফাকল পুলিশ লাইন্স স্কুল অ্যান্ড কলেজ', 'সুবিশাল আধুনিক কম্পিউটার ল্যাব', 'সুবিশাল বইয়ের লাইব্রেরী (হরেক রকম বইয়ের সমাহার)', 'লালমনিরহাট বাংলাদেশের উত্তরাঞ্চলের রংপুর বিভাগের একটি জেলা। এটি উত্তরে ভারতের পশ্চিমবঙ্গ রাজ্য এবং আসাম, পূর্বে কুড়িগ্রাম ও নীলফামারী জেলা, দক্ষিণে রংপুর জেলা এবং পশ্চিমে কুড়িগ্রাম জেলা দ্বারা সীমাবদ্ধ। লালমনিরহাট একটি কৃষি অর্থনীতির একটি গ্রামীণ জেলা। জেলায় উৎপাদিত প্রধান ফসল ধান, পাট, গম ও আলু। এছাড়াও জেলাটিতে বেশ কয়েকটি চা বাগান রয়েছে। লালমনিরহাট উত্তর বাংলাদেশের একটি প্রধান পরিবহন কেন্দ্র। জেলাটি বেশ কয়েকটি সড়ক, রেলপথ এবং বিমানবন্দর দ্বারা পরিবেশিত হয়।  লালমনিরহাট একটি জনপ্রিয় পর্যটন গন্তব্য, বিশেষ করে এর প্রাকৃতিক সৌন্দর্য এবং সমৃদ্ধ সাংস্কৃতিক ঐতিহ্যের জন্য। জেলাটিতে লালমনিরহাট দুর্গের ধ্বংসাবশেষ, মাধবপুর মসজিদ এবং চর চাপরি বন্যপ্রাণী অভয়ারণ্য সহ অনেক ঐতিহাসিক স্থান রয়েছে। লালমনিরহাট নামকরণ ও জেলার ইতিহাস', '<div><div>লালমনিরহাট বাংলাদেশের উত্তরাঞ্চলের রংপুর বিভাগের একটি জেলা। এটি উত্তরে ভারতের পশ্চিমবঙ্গ রাজ্য এবং আসাম, পূর্বে কুড়িগ্রাম ও নীলফামারী জেলা, দক্ষিণে রংপুর জেলা এবং পশ্চিমে কুড়িগ্রাম জেলা দ্বারা সীমাবদ্ধ। লালমনিরহাট একটি কৃষি অর্থনীতির একটি গ্রামীণ জেলা। জেলায় উৎপাদিত প্রধান ফসল ধান, পাট, গম ও আলু। এছাড়াও জেলাটিতে বেশ কয়েকটি চা বাগান রয়েছে। লালমনিরহাট উত্তর বাংলাদেশের একটি প্রধান পরিবহন কেন্দ্র। জেলাটি বেশ কয়েকটি সড়ক, রেলপথ এবং বিমানবন্দর দ্বারা পরিবেশিত হয়।</div><div><br></div><div>লালমনিরহাট একটি জনপ্রিয় পর্যটন গন্তব্য, বিশেষ করে এর প্রাকৃতিক সৌন্দর্য এবং সমৃদ্ধ সাংস্কৃতিক ঐতিহ্যের জন্য। জেলাটিতে লালমনিরহাট দুর্গের ধ্বংসাবশেষ, মাধবপুর মসজিদ এবং চর চাপরি বন্যপ্রাণী অভয়ারণ্য সহ অনেক ঐতিহাসিক স্থান রয়েছে।</div><div>লালমনিরহাট নামকরণ ও জেলার ইতিহাস</div><div>লালমনিরহাট জেলা যা পূর্বে রংপুর সদর নামে পরিচিত ছিল। জনশ্রুতি আছে লালমনি নামে এক মহিলার নামে নামকরণ করা হয়েছিল। ১৭৮৩ সালে লালমনি কৃষক নেতা নুরুল ইসলামের সাথে ইংরেজ সৈন্য ও জমিদারদের বিরুদ্ধে সাধারণ কৃষকদের স্বার্থ প্রতিষ্ঠার জন্য যুদ্ধ করেছিলেন এবং শাসকদের অত্যাচারের বিরুদ্ধে জীবন উৎসর্গ করেছিলেন। শ্রদ্ধার নিদর্শন হিসেবে স্থানটির নামকরণ করা হয় লালমনি।</div><div>লাল পাথরের তত্ত্ব: ১৯ শতকের শেষের দিকে বেঙ্গল দুরাস রেলওয়ের (বিডিআর) শ্রমিকরা রেললাইন স্থাপনের জন্য কাদা খনন করার সময় একটি লাল রঙের পাথরের সন্ধান পান এবং তখন থেকেই জায়গাটি লালমনি নামে পরিচিতি পায়।</div><div>জমি অধিগ্রহণ তত্ত্ব: কিছু লোক বিশ্বাস করে যে রেলওয়ে লালমনি নামে একজন মহিলার মালিকানাধীন জমি অধিগ্রহণ করেছিল যার জন্য লোকেরা রেললাইনের জন্য জমির অবদানের স্বীকৃতি হিসাবে তার নামের পরে জায়গাটি রেখেছিল।</div><div>নামের উৎপত্তি যাই হোক না কেন, লালমনিরহাট জেলা বাংলাদেশের একটি সুন্দর ও ঐতিহাসিক স্থান। এটি লালমনিরহাট কেল্লা, লালমনিরহাট মসজিদ এবং লালমনিরহাট রাজবাড়ি সহ বেশ কয়েকটি গুরুত্বপূর্ণ ঐতিহাসিক স্থানের আবাসস্থল। জেলাটি লালমনিরহাট লেক এবং লালমনিরহাট পাহাড় সহ প্রাকৃতিক সৌন্দর্যের জন্যও পরিচিত।</div><div>লালমনিরহাট জেলার উপজেলা/থানা সমূহ</div><div>লালমনিরহাট জেলায় ৫টি থানা/উপজেলা রয়েছে, যা হল:</div><div>লালমনিরহাট সদর উপজেলা,</div><div>পাটগ্রাম উপজেলা,</div><div>আদিতমারী উপজেলা,</div><div>হাতীবান্ধা উপজেলা,</div><div>কালীগঞ্জ উপজেলা।</div><div>উপজেলাগুলো চাকমা, মারমা এবং গারোদের মতো জাতিগত সংখ্যালঘু সহ বিভিন্ন ধরনের মানুষের বসবাসের আবাসস্থল। এছাড়াও জেলাটিতে লালমনিরহাট দুর্গ, হাতীবান্ধা বন্যপ্রাণী অভয়ারণ্য এবং কালীগঞ্জ মসজিদ সহ বেশ কয়েকটি গুরুত্বপূর্ণ ঐতিহাসিক ও সাংস্কৃতিক স্থান রয়েছে।</div><div>লালমনিরহাট জেলার দর্শনীয় স্থান সমূহ</div><div>এখানে লালমনিরহাট জেলার কিছু পর্যটন/দর্শনীয় স্থান রয়েছে:</div><div>হাতিরঝিল লেক</div><div>এটি লালমনিরহাট শহরের প্রাণকেন্দ্রে অবস্থিত একটি মানবসৃষ্ট লেক এটি বোটিং, ফিশিং এবং পিকনিকের জন্য একটি জনপ্রিয় স্থান।</div><div>সবুজ নগরী</div><div>এটি লালমনিরহাট শহরের উপকণ্ঠে অবস্থিত একটি নতুন বিকশিত পর্যটন স্পট এটি পাখি পর্যবেক্ষন, হাইকিং এবং ক্যাম্পিং এর জন্য একটি জনপ্রিয় স্থান।</div><div>বুড়িমারী স্থল বন্দর</div><div>এটি বাংলাদেশ ও ভারতের সীমান্তে অবস্থিত একটি স্থলবন্দর। যারা ভারত ভ্রমণ করতে চান তাদের জন্য এটি একটি জনপ্রিয় স্থান।</div><div>তিস্তা ব্যারেজ</div><div>এটি তিস্তা নদীর উপর অবস্থিত একটি বাঁধ এটি মাছ ধরা এবং নৌকা চালানোর জন্য একটি জনপ্রিয় স্থান।</div><div>তিস্তা রেলওয়ে ব্রিজ</div><div>এটি তিস্তা নদীর উপর অবস্থিত একটি রেলওয়ে সেতু এটি ফটোগ্রাফি এবং দর্শনীয় স্থানগুলির জন্য একটি জনপ্রিয় স্থান।</div><div>তুষভাণ্ডার জমিদার বাড়ি</div><div>এটি তুষভাণ্ডার গ্রামে অবস্থিত একটি ধ্বংসপ্রাপ্ত প্রাসাদ এটি ইতিহাস উত্সাহীদের জন্য একটি জনপ্রিয় স্থান।</div><div>সিন্দুরমতি দীঘি</div><div>এটি সিন্দুরমতি গ্রামে অবস্থিত একটি বিশাল পুকুর এটি মাছ ধরা এবং নৌকা চালানোর জন্য একটি জনপ্রিয় স্থান।</div><div>নিদারিয়া জামে মসজিদ</div><div>এটি নিদারিয়া গ্রামে অবস্থিত একটি মসজিদ। মুসলিম তীর্থযাত্রীদের কাছে এটি একটি জনপ্রিয় স্থান।</div><div>বোতল বোর</div><div>এটি বোতল বোর গ্রামে অবস্থিত একটি প্রাকৃতিক ঝরনা। যারা বসন্তের পানিতে ডুব দিতে চান তাদের জন্য এটি একটি জনপ্রিয় স্থান।</div><div>লালমনিরহাট জেলার পাবলিক পার্ক সমূহ</div><div>এখানে লালমনিরহাট জেলার কয়েকটি পাবলিক পার্ক আছে:</div><div>হাতিরঝিল পার্ক</div><div>এটি লালমনিরহাট শহরের প্রাণকেন্দ্রে অবস্থিত একটি জনপ্রিয় পার্ক। এটি বিশ্রাম এবং বাইরে উপভোগ করার জন্য একটি চমৎকার জায়গা। পার্কটিতে একটি বড় হ্রদ, বিভিন্ন ধরণের গাছ এবং ফুল এবং বেশ কয়েকটি হাঁটার পথ রয়েছে।</div><div>হাতীবান্ধা উপজেলা উদ্যান</div><div>লালমনিরহাট শহর থেকে প্রায় ১৫ কিলোমিটার দূরে হাতীবান্ধা উপজেলায় এই পার্কটি অবস্থিত। এটি হাতিরঝিল পার্কের তুলনায় একটি ছোট পার্ক, তবে এটি এখনও বিশ্রাম নেওয়ার এবং বাইরে উপভোগ করার জন্য একটি দুর্দান্ত জায়গা। পার্কটিতে একটি খেলার মাঠ, একটি ছোট হ্রদ এবং অনেকগুলি হাঁটার পথ রয়েছে৷</div><div>দুলহুলি সুইচ গেট পার্ক</div><div>লালমনিরহাট শহরের উপকণ্ঠে অবস্থিত এই পার্কটি। দৃশ্যাবলী উপভোগ করার এবং তাজা বাতাসে নেওয়ার জন্য এটি একটি দুর্দান্ত জায়গা। পার্কটিতে অনেক গাছ এবং ফুলের পাশাপাশি একটি ছোট লেক রয়েছে।</div><div>যে কারনে লালমনিরহাট জেলা বিখ্যাত</div><div>লালমনিরহাট জেলা অনেক কিছুর জন্য বিখ্যাত, যার মধ্যে রয়েছে:</div><div>এর প্রাকৃতিক সৌন্দর্য: এই জেলাটি তিস্তা নদী, ধরলা নদী এবং লালমনিরহাট বন সহ বেশ কয়েকটি প্রাকৃতিক আকর্ষণের আবাসস্থল।</div><div>সমৃদ্ধ ইতিহাস এবং সংস্কৃতি: জেলার একটি দীর্ঘ এবং সমৃদ্ধ ইতিহাস রয়েছে যা ১৩ শতকে ফিরে এসেছে। এটি তাজহাট প্রাসাদ, বুড়িমারী কেল্লা এবং লালমনিরহাট মসজিদ সহ বেশ কয়েকটি ঐতিহাসিক ও সাংস্কৃতিক স্থানের আবাসস্থল।</div><div>কৃষি উৎপাদন: জেলাটি ভুট্টা, ধান এবং আলু উৎপাদনকারী প্রধান।</div><div>অবস্থান: জেলাটি ভারতের সাথে সীমান্তে অবস্থিত, এটিকে একটি প্রধান ব্যবসা-বাণিজ্য কেন্দ্র করে তুলেছে।</div><div>এখানে লালমনিরহাট জেলা বিখ্যাত কিছু নির্দিষ্ট জিনিস রয়েছে:</div><div>তাজহাট প্রাসাদ: তাজহাট প্রাসাদ হল সপ্তাদশ শতকের একটি প্রাসাদ যা কোচ রাজবংশ দ্বারা নির্মিত হয়েছিল। লালমনিরহাট জেলার বুড়িমারী উপজেলায় এটি অবস্থিত।</div><div>বুড়িমারী দুর্গ: বুড়িমারী দুর্গ হল ষোড়শ শতকের একটি দুর্গ যা মুঘলদের দ্বারা নির্মিত হয়েছিল। লালমনিরহাট জেলার বুড়িমারী উপজেলায় এটি অবস্থিত।</div><div>লালমনিরহাট মসজিদ: লালমনিরহাট মসজিদটি সপ্তাদশ শতকের একটি মসজিদ যা কোচ রাজবংশ দ্বারা নির্মিত হয়েছিল। লালমনিরহাট জেলার লালমনিরহাট শহরে এটি অবস্থিত।</div><div>তিস্তা নদী: তিস্তা নদী একটি প্রধান নদী যা লালমনিরহাট জেলার মধ্য দিয়ে প্রবাহিত হয়। এটি মাছ ধরা, বোটিং এবং সাঁতারের জন্য একটি জনপ্রিয় গন্তব্য।</div><div>ধরলা নদী: ধরলা নদী একটি প্রধান নদী যা লালমনিরহাট জেলার মধ্য দিয়ে প্রবাহিত হয়। এটি মাছ ধরা, বোটিং এবং সাঁতারের জন্য একটি জনপ্রিয় গন্তব্য।</div><div>লালমনিরহাট বন: লালমনিরহাট বন একটি বিশাল বন যা প্রায় হাজার বর্গ কিলোমিটার এলাকা জুড়ে রয়েছে। এটি বাঘ, হাতি এবং হরিণ সহ বিভিন্ন বন্যপ্রাণীর আবাসস্থল।</div><div>লালমনিরহাট জেলা একটি সুন্দর এবং ঐতিহাসিক জেলা বাংলাদেশের প্রাকৃতিক সৌন্দর্য অনুভব করার। সমৃদ্ধ ইতিহাস ও সংস্কৃতি সম্পর্কে জানতে এবং এর কৃষি উৎপাদন উপভোগ করার জন্যও এটি একটি দুর্দান্ত।</div></div>', '১৩১০১৫', '৭২৫৮', 'প্রতিষ্ঠানের ইতিহাস', 'public/ads/656e68adc1563.jpg', 'public/ads/65682ef346b66.png', 'elitedesignbd', '<h2><span style=\"font-size: 1rem;\">These terms and conditions outline the rules and regulations for the use of Phakal police lines school and college\'s Website, located at www.phakal.edu.bd.</span><br></h2>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Phakal police lines school and college if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company\'s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of bd. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing Phakal police lines school and college, you agreed to use cookies in agreement with the Phakal police lines school and college\'s Privacy Policy. </p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, Phakal police lines school and college and/or its licensors own the intellectual property rights for all material on Phakal police lines school and college. All intellectual property rights are reserved. You may access this from Phakal police lines school and college for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n<ul>\r\n    <li>Republish material from Phakal police lines school and college</li>\r\n    <li>Sell, rent or sub-license material from Phakal police lines school and college</li>\r\n    <li>Reproduce, duplicate or copy material from Phakal police lines school and college</li>\r\n    <li>Redistribute content from Phakal police lines school and college</li></ul>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Phakal police lines school and college does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Phakal police lines school and college,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Phakal police lines school and college shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>Phakal police lines school and college reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n    <li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n    <li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n    <li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n    <li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant Phakal police lines school and college a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n    <li>Government agencies;</li>\r\n    <li>Search engines;</li>\r\n    <li>News organizations;</li>\r\n    <li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n    <li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n    <li>commonly-known consumer and/or business information sources;</li>\r\n    <li>dot.com community sites;</li>\r\n    <li>associations or other groups representing charities;</li>\r\n    <li>online directory distributors;</li>\r\n    <li>internet portals;</li>\r\n    <li>accounting, law and consulting firms; and</li>\r\n    <li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Phakal police lines school and college; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Phakal police lines school and college. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n    <li>By use of our corporate name; or</li>\r\n    <li>By use of the uniform resource locator being linked to; or</li>\r\n    <li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li>\r\n</ul>\r\n\r\n<p>No use of Phakal police lines school and college\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n    <li>limit or exclude our or your liability for death or personal injury;</li>\r\n    <li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n    <li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n    <li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h1><span style=\"font-size: 1rem;\">At Phakal police lines school and college, accessible from www.phakal.edu.bd, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Phakal police lines school and college and how we use it.</span><br></h1>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in Phakal police lines school and college. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h2>Consent</h2>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h2>Information we collect</h2>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<h2>How we use your information</h2>\r\n\r\n<p>We use the information we collect in various ways, including to:</p>\r\n\r\n<ul>\r\n<li>Provide, operate, and maintain our website</li>\r\n<li>Improve, personalize, and expand our website</li>\r\n<li>Understand and analyze how you use our website</li>\r\n<li>Develop new products, services, features, and functionality</li>\r\n<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n<li>Send you emails</li>\r\n<li>Find and prevent fraud</li>\r\n</ul>\r\n\r\n<h2>Log Files</h2>\r\n\r\n<p>Phakal police lines school and college follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p>\r\n\r\n<h2>Cookies and Web Beacons</h2>\r\n\r\n<p>Like any other website, Phakal police lines school and college uses \"cookies\". These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p>\r\n\r\n\r\n<h2>Our Advertising Partners</h2>\r\n\r\n<p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p>\r\n\r\n<ul>\r\n    <li>\r\n        <p>Google</p>\r\n        <p><a href=\"https://policies.google.com/technologies/ads\">https://policies.google.com/technologies/ads</a></p>\r\n    </li>\r\n</ul>\r\n\r\n<h2>Advertising Partners Privacy Policies</h2>\r\n\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of Phakal police lines school and college.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Phakal police lines school and college, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that Phakal police lines school and college has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<h2>Third Party Privacy Policies</h2>\r\n\r\n<p>Phakal police lines school and college\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. </p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p>\r\n\r\n<h2>CCPA Privacy Rights (Do Not Sell My Personal Information)</h2>\r\n\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n<p>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>GDPR Data Protection Rights</h2>\r\n\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n<p>The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n<p>The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n<p>The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p>\r\n<p>The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n<p>The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n<p>The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2>Children\'s Information</h2>\r\n\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>Phakal police lines school and college does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\r\n\r\n<h2>Changes to This Privacy Policy</h2>\r\n\r\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>', 'https://soft.elitedesign.com.bd/roupnagar/authentication', 'https://soft.elitedesign.com.bd/roupnagar/authentication', 'https://soft.elitedesign.com.bd/roupnagar/exam_results', 'https://soft.elitedesign.com.bd/roupnagar/admission');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint UNSIGNED NOT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/phakal13', 'https://www.facebook.com/phakal13', 'https://www.youtube.com/@phakalonlineschool4860', 'https://www.facebook.com/phakal13', 'https://www.facebook.com/phakal13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_bn`, `subcategory_en`, `created_at`, `updated_at`) VALUES
(47, '16', 'কম্পিউটার কোর্স', 'Computer Course', NULL, NULL),
(48, '16', 'মেডিক্যাল কোর্স', 'Medical Course', NULL, NULL),
(49, '15', 'পরীক্ষার নোটিশ', 'Exam Notice', NULL, NULL),
(50, '15', 'বন্ধের নোটিশ', 'Off Notice', NULL, NULL),
(51, '15', 'অফিস নোটিশ', 'office Notice', NULL, NULL),
(52, '17', 'সকল', 'All Blog', NULL, NULL),
(53, '16', 'সকল প্রজেক্ট', 'All Project', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint UNSIGNED NOT NULL,
  `district_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_bn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_bn`, `subdistrict_en`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mirpur', 'মিরপুর', NULL, NULL),
(2, '1', 'bvbvbvcv', 'bvvbbvbv', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `district` int DEFAULT NULL,
  `post` int DEFAULT NULL,
  `setting` int DEFAULT NULL,
  `gallery` int DEFAULT NULL,
  `ads` int DEFAULT NULL,
  `role` int DEFAULT NULL,
  `facebookid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilepic` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allpost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`, `category`, `district`, `post`, `setting`, `gallery`, `ads`, `role`, `facebookid`, `profilepic`, `allpost`) VALUES
(1, 'Phakal Police Lines', 'info@phakal.edu.bd', '2023-11-04 18:40:46', '$2y$10$GUI4DwNqBMs956xDS2DfGeeleWVkXOZYDGjRYMzKjcoFgogsmEIDu', 'mM6xuQqWBafyDdKAmgUsZlQrvF6TR5aS4tyONV3MAiEAAMIbOYgxFyet7lzI', '2023-11-04 18:40:46', '2023-11-29 07:34:23', 1, 1, 1, 1, 1, 1, 1, 1, 'https://facebook.com/elitedesignbd', NULL, 1),
(2, 'মোঃ নাঈম হোসেন', 'nayeem@elitedesign.com.bd', NULL, '$2y$10$A4k4Wpgm9a4WM5svlJuR2eeECnXYjsHaWF5E9axWzqPAfG.4ec32K', '1TszKSdPXO6INgOU29dcBxKaviO07ntRaDZCNrBfsNoWIkCv6rhtNPqsnsnQ', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'https://elitedesign.com.bd', NULL, NULL),
(3, 'Abdullah Al Mamun', 'dearsabdullah@gmail.comgmail.com', NULL, '$2y$10$siGhUcIpLuTNtcjGMvzZ5uKixLGM/N6GtemWoEdcdj9cYo5iQTNvW', NULL, '2023-11-16 15:58:18', '2023-11-16 15:58:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Hridoy Islam', 'hridoy66665@gmail.com', NULL, '$2y$10$SzU3puEkKGf7wCH4ziI5..3rQ5bQ9EfAOi7E4.v2JWJWlcUxJ78v6', NULL, '2024-01-22 10:59:17', '2024-01-22 10:59:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'test', 'test@gmail.com', NULL, '$2y$10$3J9jYrjvzW.bhEHNZfwEU.cLVj8ttylzOy7M2u2J4hlS/xonXRw5m', NULL, '2024-03-01 09:33:05', '2024-03-01 09:33:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(21, 'জেলার সেরা প্রতিষ্ঠান লালমনিরহাটের ফাকল পুলিশ লাইন্স স্কুল অ্যান্ড কলেজ', 'V0FpkcUzFec', '1', NULL, NULL),
(22, '26 MARCH 2019 PHaKAL DISPLAY', 'xbTn-DRfgFE', '1', NULL, NULL),
(23, 'Class_7,Bangla', 'mfAufZ2EzEI', '0', NULL, NULL),
(24, 'class-10. Sub. History. Chapter 11. Humayra begum moni', '9wsHsVabb4g', '0', NULL, NULL),
(25, 'Science, Class 8, Rezaul Karim', 'kMwOJUZCBcg', '0', NULL, NULL),
(26, 'class - Nine , subject - History, Chapter - Three , Humayra Begum', 'EQwe1XAaWYk', '0', NULL, NULL),
(27, 'PHaKAL 16 DECEMBER 2019', '9sFU2YiDdHw', '1', NULL, NULL),
(28, 'Phakal Add 2020', 'G7z3G_vQiBs', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint UNSIGNED NOT NULL,
  `website_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(9, 'প্রধানমন্ত্রীর কার্যালয়', 'https://pmo.gov.bd/', NULL, NULL),
(10, 'বাংলাদেশ জাতীয় সংসদ', 'http://www.parliament.gov.bd/', NULL, NULL),
(17, 'বাংলাদেশ সেনাবাহিনী', 'https://www.army.mil.bd/', NULL, NULL),
(18, 'বাংলাদেশ পুলিশ বাহিনী', 'https://www.police.gov.bd/', NULL, NULL),
(20, 'বাংলাদেশ ফায়ার সার্ভিস', 'https://fireservice.gov.bd/', NULL, NULL),
(21, 'প্রতিরক্ষা মন্তানালয়', 'https://mod.gov.bd/', NULL, NULL),
(23, 'মাধ্যমিক শিক্ষা বোর্ড', 'https://dhakaeducationboard.portal.gov.bd/', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `livetv`
--
ALTER TABLE `livetv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `namaz`
--
ALTER TABLE `namaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetv`
--
ALTER TABLE `livetv`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `namaz`
--
ALTER TABLE `namaz`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
