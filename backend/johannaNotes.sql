-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 12, 2022 at 08:23 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `johannaNotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `docName` varchar(128) DEFAULT NULL,
  `docDescription` varchar(128) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tinymceText` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `docName`, `docDescription`, `createDate`, `tinymceText`) VALUES
(1, 'HelloWorld', 'testa', '2022-06-08 08:13:38', '<div>\n<h2>What is Lorem Ipsum?</h2>\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n</div>\n<div>\n<h2>Why do we use it?</h2>\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n</div>\n<p>&nbsp;</p>\n<div>\n<h2>Where does it come from?</h2>\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\n</div>\n<div>\n<h2>Where can I get some?</h2>\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\n</div>'),
(17, 'Deklaration', 'Skattepapper', '2022-06-09 10:07:54', '<div id=\"svid10_361dc8c15312eff6fd14d2a\" class=\"sv-row sv-layout sv-skip-spacer sv-template-layout\">\n<div id=\"svid94_10cbb69314111c2d94baa39\" class=\"pagecontent sv-layout\">\n<div id=\"svid12_10cbb69314111c2d94baa3a\" class=\"sv-text-portlet sv-use-margins sv-skip-spacer\">\n<div class=\"sv-text-portlet-content\">\n<h1 id=\"h-Bilforman\" class=\"sidrubrikxxh1x\">Bilf&ouml;rm&aring;n</h1>\n</div>\n</div>\n</div>\n</div>\n<div id=\"svid10_361dc8c15312eff6fd14d2b\" class=\"sv-row sv-layout sv-template-layout\">\n<div id=\"svid94_10cbb69314111c2d94baa3b\" class=\"pagecontent sv-layout\">\n<div id=\"Ingress\"></div>\n<div id=\"svid12_2cf1b5cd163796a5c8b43c7\" class=\"sv-text-portlet sv-use-margins sv-skip-spacer\">\n<div id=\"Ingress-0\"></div>\n<div class=\"sv-vertical sv-layout sv-skip-spacer\">\n<div class=\"sv-vertical sv-layout sv-skip-spacer sv-decoration-content\">\n<div class=\"sv-text-portlet-content\">\n<p class=\"ingress\">Om du f&aring;r anv&auml;nda din arbetsgivares bil privat &auml;r det en f&ouml;rm&aring;n som oftast &auml;r skattepliktig. Ett exempel p&aring; privat anv&auml;ndande &auml;r om du anv&auml;nder bilen f&ouml;r resor till och fr&aring;n ditt arbete. Samma regler g&auml;ller oavsett om arbetsgivaren &auml;ger eller leasar bilen.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div id=\"svid10_361dc8c15312eff6fd14d2c\" class=\"sv-row sv-layout sv-template-layout\">\n<div id=\"svid10_361dc8c15312eff6fd14d2d\" class=\"sv-layout sv-skip-spacer sv-column-12 sv-template-layout\">\n<div class=\"sv-vertical sv-layout sv-skip-spacer sv-template-layout\">\n<div class=\"sv-vertical sv-layout sv-skip-spacer sv-decoration-content sv-template-layout\">\n<div id=\"svid12_361dc8c15312eff6fd14d2e\" class=\"sv-html-portlet sv-portlet sv-skip-spacer sv-template-portlet\n\">\n<div id=\"HTML\"></div>\n<div class=\"section-spacer\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n<div id=\"svid10_361dc8c15312eff6fd2756e\" class=\"sv-vertical sv-layout sv-template-layout\">\n<div id=\"svid94_5c281c7015abecc2e202585a\" class=\"pagecontent sv-layout\">\n<div id=\"Innehall2\"></div>\n</div>\n</div>\n<div id=\"svid10_361dc8c15312eff6fd14d38\" class=\"sv-row sv-layout sv-template-layout\">\n<div id=\"svid10_361dc8c15312eff6fd14d39\" class=\"sv-layout sv-skip-spacer sv-column-12 sv-template-layout\">\n<div id=\"svid94_7459477810df5bccdd4800012343\" class=\"pagecontent sv-layout\">\n<div id=\"Innehall\"></div>\n<div id=\"svid12_96cca41179bad4b1aa459\" class=\"sv-text-portlet sv-use-margins sv-skip-spacer\">\n<div id=\"Text3\"></div>\n<div class=\"sv-text-portlet-content\">\n<h2 id=\"h-Narblirdetenbilforman\" class=\"underrubrikxxh2x\">N&auml;r blir det en bilf&ouml;rm&aring;n?</h2>\n<p class=\"normal\">Om du anv&auml;nder arbetsgivarens bil f&ouml;r privata resor mer &auml;n 100 mil eller vid mer &auml;n 10 tillf&auml;llen per &aring;r s&aring; blir det en bilf&ouml;rm&aring;n som du ska beskattas f&ouml;r. F&ouml;r att du ska kunna visa att du inte har anv&auml;nt bilen privat b&ouml;r du ha en k&ouml;rjournal och noggrant anteckna alla resor, b&aring;de privata och i tj&auml;nsten.</p>\n<p class=\"normal\">L&auml;s mer om vilka krav som finns p&aring; en k&ouml;rjournal och n&auml;r det &auml;r extra viktigt att den finns.</p>\n<ul class=\"onumrerad-svart-punkt normal\">\n<li><a href=\"https://www.skatteverket.se/privat/skatter/arbeteochinkomst/formaner/bilforman/korjournal.4.18e1b10334ebe8bc8000695.html\">Hur en k&ouml;rjournal ska se ut</a></li>\n</ul>\n<p class=\"normal\">Har du en f&ouml;rm&aring;nsbil, det vill s&auml;ga beskattas f&ouml;r en bilf&ouml;rm&aring;n, s&aring; f&aring;r du anv&auml;nda bilen b&aring;de f&ouml;r dina privata resor och resor i tj&auml;nsten men du b&ouml;r &auml;ven d&aring; ha en k&ouml;rjournal.</p>\n<h2 id=\"h-Kostnadenforenformansbil\" class=\"underrubrikxxh2x\">Kostnaden f&ouml;r en f&ouml;rm&aring;nsbil</h2>\n<p class=\"normal\">Hur mycket skatt du betalar n&auml;r du har en f&ouml;rm&aring;nsbil beror p&aring; f&ouml;rm&aring;nsv&auml;rdet f&ouml;r den bil du har valt. En bilf&ouml;rm&aring;n ber&auml;knas utifr&aring;n en schablon d&auml;r bland annat vad bilen kostade som ny, extrautrustning och fordonsskatten p&aring;verkar f&ouml;rm&aring;nsv&auml;rdet. F&ouml;rm&aring;nsv&auml;rdet r&auml;knas sedan ihop med din l&ouml;n vid ber&auml;kning av din skatt.</p>\n</div>\n</div>\n<div id=\"svid10_2cf1b5cd163796a5c8b43ce\" class=\"sv-vertical sv-layout\">\n<div class=\"sv-vertical sv-layout min-height panel panel-default sv-skip-spacer\">\n<div class=\"sv-vertical sv-layout sv-skip-spacer sv-decoration-content\">\n<div id=\"svid10_2cf1b5cd163796a5c8b43cf\" class=\"sv-vertical sv-layout sv-skip-spacer\">\n<div class=\"sv-vertical sv-layout panel-heading sv-skip-spacer\">\n<div class=\"sv-vertical sv-layout sv-skip-spacer sv-decoration-content\">\n<div id=\"svid12_2cf1b5cd163796a5c8b43d0\" class=\"sv-text-portlet sv-use-margins sv-skip-spacer\">\n<div id=\"Text4\"></div>\n<div class=\"sv-text-portlet-content\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>'),
(20, 'LOREM IPSUM', 'Generate lorem ipsum', '2022-06-10 14:22:50', '<p>Lorem ipsum&nbsp;&mdash; morbi nulla congue nulla tellus adipiscing eu eget porttitor pharetra vivamus proin arcu nulla commodo adipiscing pellentesque. Metus congue porttitor lorem pharetra et quam morbi duis magna molestie pharetra elementum&nbsp;&mdash; porttitor.</p>\n<p>Magna in cursus vivamus porta non sed rutrum congue: mattis ornare mauris urna cursus diam donec elementum enim non odio lorem: orci. Ligula, massa sem nibh curabitur mattis tellus lectus morbi eu sodales sed ornare. Morbi a congue odio sem, et orci lorem nam gravida porttitor, rutrum tempus quisque, leo lorem, curabitur non duis.</p>\n<p><span style=\"color: rgb(224, 62, 45);\">Curabitur eu pharetra commodo morbi ornare elementum magna lorem, auctor diam porttitor, in eu morbi enim eu sapien tellus odio molestie vivamus, fusce integer sapien. Ligula sodales fusce at odio sed, malesuada sem, diam, sagittis ipsum mattis pellentesque amet nec sed et ornare justo rutrum curabitur tempus. Enim sapien amet integer arcu massa nibh sed ipsum enim pellentesque malesuada vivamus metus at quam morbi tellus auctor. Quisque cursus metus cursus metus pellentesque quisque metus malesuada sit bibendum nam amet eget quam ligula congue commodo pharetra nulla mauris leo. Sapien metus urna pharetra molestie sapien commodo eget metus vitae vivamus et sagittis integer elementum lectus at lectus quam quisque, donec. At, risus adipiscing morbi non arcu cursus lorem malesuada pellentesque auctor risus eros amet ultricies duis porttitor sem gravida cursus tempus integer maecenas. Pellentesque adipiscing elementum adipiscing pellentesque enim nec urna eget pellentesque ipsum duis eros tempus ut massa auctor tempus adipiscing nam ipsum. Integer urna metus tellus molestie lectus lorem pellentesque duis lectus tempus, sagittis tellus urna sodales ornare sagittis sem eros et proin metus maecenas sit ligula. Bibendum pellentesque commodo odio eu a, vivamus elementum ut: ornare, sapien nam sodales maecenas tellus risus eu magna, ut risus congue ut. Quisque, odio, sed quisque donec, orci adipiscing, donec amet porta commodo, nulla in ultricies adipiscing ligula: ultricies. Tempus enim massa adipiscing ipsum sagittis porta urna quam gravida vivamus ornare curabitur.</span></p>\n<p>Ultricies diam fusce eget metus orci arcu amet duis in justo auctor maecenas justo rutrum integer maecenas, in metus duis sagittis, risus. Morbi urna, gravida molestie et enim odio, quisque sit non morbi. Sem elementum magna lorem et amet vitae urna nam leo tellus adipiscing ipsum: pharetra congue gravida eu rutrum maecenas&nbsp;&mdash; enim. Porta arcu, commodo nec porta sagittis eget amet magna, malesuada eget ultricies eu odio justo eu ut odio porttitor mauris sed: nam.</p>\n<p>Sodales eu, molestie justo, ultricies, nec, gravida magna vivamus duis justo sodales sed congue nam at amet et justo commodo malesuada molestie eget ut. Porttitor, eros duis nulla malesuada, duis pellentesque fusce ut a pellentesque metus at porta, mauris pellentesque fusce&nbsp;&mdash; lectus. Massa maecenas bibendum mauris fusce malesuada nam et nam rutrum duis. Adipiscing&nbsp;&mdash; curabitur sem sagittis, vulputate quisque proin, arcu eget duis mattis in vulputate morbi, nam elementum, vivamus tellus, et risus ornare. Molestie massa gravida, vitae&nbsp;&mdash; tempus urna quam odio fusce ut quisque et vivamus mauris et porttitor porta, molestie ligula, sapien auctor nibh eros. Congue diam sodales auctor nibh porttitor cursus curabitur, ornare sagittis, tempus at tellus orci maecenas mattis orci sit ligula. Justo sit eget lectus malesuada in, fusce morbi leo, amet porttitor sed et lectus, orci congue gravida, massa a proin. Sodales quam morbi magna pellentesque orci maecenas integer lectus, et. Eget elementum maecenas non mauris porttitor et: fusce bibendum vulputate nec leo vitae curabitur nec risus. At, fusce congue urna mattis eget gravida morbi sit porta eros elementum molestie bibendum et gravida. Ut, vitae in quisque morbi, magna risus duis, pellentesque: curabitur quam. Proin, quam metus morbi lorem pellentesque, massa justo risus pharetra.</p>'),
(21, 'Sommar', 'Sommarbrev', '2022-06-11 15:36:28', '<p>Nu &auml;r kontoret st&auml;ngt!</p>'),
(22, 'Sommarbrev', 'Till Alla kunder', '2022-06-11 15:42:34', '<p>Hej Alla kunder!</p>\n<p>Nu tar vi semester!</p>\n<p>&nbsp;</p>\n<p><span style=\"color: rgb(230, 126, 35);\">Tillbaka i h&ouml;st&nbsp;</span></p>'),
(24, 'Sommarlov', '', '2022-06-11 16:03:37', '<pre class=\"ujudUb\"><span style=\"color: rgb(132, 63, 161);\">Du ska inte tro det blir sommar</span><br><span style=\"color: rgb(132, 63, 161);\">Ifall inte n&aring;n s&auml;tter fart</span><br><span style=\"color: rgb(132, 63, 161);\">P&aring; sommarn och g&ouml;r lite somrigt</span><br><span style=\"color: rgb(132, 63, 161);\">D&aring; kommer blommorna snart</span><br><span style=\"color: rgb(132, 63, 161);\">Jag g&ouml;r s&aring; att blommorna blommar</span><br><span style=\"color: rgb(132, 63, 161);\">Jag g&ouml;r hela kohagen gr&ouml;n</span><br><span style=\"color: rgb(132, 63, 161);\">Och nu s&aring; har sommaren kommit</span><br><span style=\"color: rgb(132, 63, 161);\">F&ouml;r jag har just tagit bort sn&ouml;n</span><br><br><span style=\"color: rgb(132, 63, 161);\">Jag g&ouml;r mycket vatten i b&auml;cken</span><br><span style=\"color: rgb(132, 63, 161);\">S&aring; d&auml;r s&aring; det hoppar och far</span><br><span style=\"color: rgb(132, 63, 161);\">Jag g&ouml;r fullt med svalor som flyger</span><br><span style=\"color: rgb(132, 63, 161);\">Och myggor som svalorna tar</span><br><span style=\"color: rgb(132, 63, 161);\">Jag g&ouml;r l&ouml;ven nya p&aring; tr&auml;den</span><br><span style=\"color: rgb(132, 63, 161);\">Och sm&aring; f&aring;gelbon h&auml;r och d&auml;r</span><br><span style=\"color: rgb(132, 63, 161);\">Jag g&ouml;r himlen vacker om kv&auml;llen</span><br><span style=\"color: rgb(132, 63, 161);\">F&ouml;r jag g&ouml;r den alldeles</span><br><span style=\"color: rgb(132, 63, 161);\">SOMMAR, SOMMAR</span><br><br><span style=\"color: rgb(132, 63, 161);\">Och smultron det g&ouml;r jag &aring;t barna</span><br><span style=\"color: rgb(132, 63, 161);\">F&ouml;r det tycker jag dom kan f&aring;</span><br><span style=\"color: rgb(132, 63, 161);\">Och andra sm&aring; roliga saker</span><br><span style=\"color: rgb(132, 63, 161);\">Som passar n&auml;r barna &auml;r sm&aring;</span><br><span style=\"color: rgb(132, 63, 161);\">Och jag g&ouml;r s&aring; roliga st&auml;llen</span><br><span style=\"color: rgb(132, 63, 161);\">D&auml;r barna kan springa omkring</span><br><span style=\"color: rgb(132, 63, 161);\">D&aring; blir barna fulla av sommar</span><br><span style=\"color: rgb(132, 63, 161);\">Och bena blir fulla med spriiiiing</span><br><span style=\"color: rgb(132, 63, 161);\">D&aring; blir barna fulla av sommar</span><br><span style=\"color: rgb(132, 63, 161);\">Och bena blir fulla med spriiiiing</span><br><span style=\"color: rgb(132, 63, 161);\">Och bena blir fulla med spriiiiing</span><br><span style=\"color: rgb(132, 63, 161);\">Och bena blir fulla med spriiiiing</span></pre>'),
(26, '', '', '2022-06-11 16:11:59', '<p>Nytt Dokument</p>'),
(27, 'NORD', 'av Katarina Ekstedt, Anna Winberg Sääf', '2022-06-11 16:58:41', '<p>Efter en &ouml;desdiger olycka i ton&aring;ren st&aring;r Alex ensam, arbetsl&ouml;s och med sj&auml;lvk&auml;nslan p&aring; botten. N&auml;r han f&aring;r ett erbjudande som verkar f&ouml;r bra f&ouml;r att vara sant tvekar han inte en sekund. Det &auml;r ett eftertraktat jobb som&nbsp;<em>Commis de Cuisine</em>, k&ouml;ksassistent, p&aring; den v&auml;rldsber&ouml;mda stj&auml;rnkrogen NORD i de j&auml;mtl&auml;ndska fj&auml;llen.<br><br>Jobbet &auml;r stentufft, och snart kompliceras saker av att han faller f&ouml;r &auml;garen Alice Duwal, som &auml;r vacker och sp&auml;nnande men betydligt &auml;ldre &auml;n Alex och dessutom gift. Det dr&ouml;jer inte l&auml;nge f&ouml;rr&auml;n Alex inser att allt inte &auml;r som det verkar. Alice visar sig ha m&aring;nga hemligheter, och han dras in i en h&auml;rva av l&ouml;gner, sex och hot som verkar helt om&ouml;jlig att ta sig ur.<br><br>Vart kan du v&auml;nda dig n&auml;r ditt f&ouml;rflutna v&auml;grar sl&auml;ppa dig fri?</p>'),
(28, '', '', '2022-06-11 17:00:01', '<p>Nytt Dokument</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(128) DEFAULT NULL,
  `userPassword` varchar(128) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `userPassword`, `createDate`) VALUES
(1, 'admin', 'dokument', '2022-06-11 15:08:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
