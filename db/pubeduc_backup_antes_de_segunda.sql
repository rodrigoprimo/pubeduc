-- phpMyAdmin SQL Dump
-- version 2.9.1.1-Debian-13
-- http://www.phpmyadmin.net
-- 
-- Host: 172.20.1.84
-- Generation Time: Mar 20, 2010 at 10:35 PM
-- Server version: 5.0.32
-- PHP Version: 5.2.0-8+etch16
-- 
-- Database: `pubeduc`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `messu_archive`
-- 

CREATE TABLE `messu_archive` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(40) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `messu_archive`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `messu_messages`
-- 

CREATE TABLE `messu_messages` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL default '',
  `user_from` varchar(200) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`),
  KEY `userIsRead` (`user`,`isRead`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `messu_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `messu_sent`
-- 

CREATE TABLE `messu_sent` (
  `msgId` int(14) NOT NULL auto_increment,
  `user` varchar(40) NOT NULL default '',
  `user_from` varchar(40) NOT NULL default '',
  `user_to` text,
  `user_cc` text,
  `user_bcc` text,
  `subject` varchar(255) default NULL,
  `body` text,
  `hash` varchar(32) default NULL,
  `replyto_hash` varchar(32) default NULL,
  `date` int(14) default NULL,
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `priority` int(2) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `messu_sent`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `sessions`
-- 

CREATE TABLE `sessions` (
  `sesskey` char(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `expireref` varchar(64) default NULL,
  `data` text NOT NULL,
  PRIMARY KEY  (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `sessions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_actionlog`
-- 

CREATE TABLE `tiki_actionlog` (
  `actionId` int(8) NOT NULL auto_increment,
  `action` varchar(255) NOT NULL default '',
  `lastModif` int(14) default NULL,
  `object` varchar(255) default NULL,
  `objectType` varchar(32) NOT NULL default '',
  `user` varchar(200) default '',
  `ip` varchar(15) default NULL,
  `comment` varchar(200) default NULL,
  `categId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`actionId`),
  KEY `lastModif` (`lastModif`),
  KEY `object` (`object`(100),`objectType`,`action`(100))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `tiki_actionlog`
-- 

INSERT INTO `tiki_actionlog` (`actionId`, `action`, `lastModif`, `object`, `objectType`, `user`, `ip`, `comment`, `categId`) VALUES 
(1, 'Created', 1268835166, 'HomePage', 'wiki page', 'admin', '127.0.0.1', 'add=18', 0),
(2, 'Updated', 1268858162, 'HomePage', 'wiki page', 'admin', '127.0.0.1', 'add=70&amp;del=17', 0),
(3, 'Created', 1268947413, 'http:tiki-list_file_gallery.php', 'wiki page', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'add=18', 0),
(4, 'Updated', 1269008825, 'HomePage', 'wiki page', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'add=98&amp;del=39', 0),
(5, 'Updated', 1269129390, 'HomePage', 'wiki page', 'carlosseabra@tvcultura.com.br', '201.83.72.150', 'add=441&amp;del=4', 0),
(6, 'Updated', 1269131673, 'HomePage', 'wiki page', 'carlosseabra@tvcultura.com.br', '201.83.72.150', 'add=771&amp;del=231', 0),
(7, 'Updated', 1269132068, 'HomePage', 'wiki page', 'carlosseabra@tvcultura.com.br', '201.83.72.150', 'add=214&amp;del=94', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_actionlog_conf`
-- 

CREATE TABLE `tiki_actionlog_conf` (
  `id` int(11) NOT NULL auto_increment,
  `action` varchar(32) NOT NULL default '',
  `objectType` varchar(32) NOT NULL default '',
  `status` char(1) default '',
  PRIMARY KEY  (`action`,`objectType`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

-- 
-- Dumping data for table `tiki_actionlog_conf`
-- 

INSERT INTO `tiki_actionlog_conf` (`id`, `action`, `objectType`, `status`) VALUES 
(1, 'Created', 'wiki page', 'y'),
(2, 'Updated', 'wiki page', 'y'),
(3, 'Removed', 'wiki page', 'y'),
(4, 'Viewed', 'wiki page', 'n'),
(5, 'Viewed', 'forum', 'n'),
(6, 'Posted', 'forum', 'n'),
(7, 'Replied', 'forum', 'n'),
(8, 'Updated', 'forum', 'n'),
(9, 'Viewed', 'file gallery', 'n'),
(10, 'Viewed', 'image gallery', 'n'),
(11, 'Uploaded', 'file gallery', 'n'),
(12, 'Uploaded', 'image gallery', 'n'),
(13, '*', 'category', 'n'),
(14, '*', 'login', 'n'),
(15, 'Posted', 'message', 'n'),
(16, 'Replied', 'message', 'n'),
(17, 'Viewed', 'message', 'n'),
(18, 'Removed version', 'wiki page', 'n'),
(19, 'Removed last version', 'wiki page', 'n'),
(20, 'Rollback', 'wiki page', 'n'),
(21, 'Removed', 'forum', 'n'),
(22, 'Downloaded', 'file gallery', 'n'),
(23, 'Posted', 'comment', 'n'),
(24, 'Replied', 'comment', 'n'),
(25, 'Updated', 'comment', 'n'),
(26, 'Removed', 'comment', 'n'),
(27, 'Renamed', 'wiki page', 'n'),
(28, 'Created', 'sheet', 'n'),
(29, 'Updated', 'sheet', 'n'),
(30, 'Removed', 'sheet', 'n'),
(31, 'Viewed', 'sheet', 'n'),
(32, 'Viewed', 'blog', 'n'),
(33, 'Posted', 'blog', 'n'),
(34, 'Updated', 'blog', 'n'),
(35, 'Removed', 'blog', 'n'),
(36, 'Removed', 'file', 'n'),
(37, 'Viewed', 'article', 'n');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_actionlog_params`
-- 

CREATE TABLE `tiki_actionlog_params` (
  `actionId` int(8) NOT NULL,
  `name` varchar(40) NOT NULL,
  `value` text,
  KEY `actionId` (`actionId`),
  KEY `nameValue` (`name`,`value`(200))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_actionlog_params`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_article_types`
-- 

CREATE TABLE `tiki_article_types` (
  `type` varchar(50) NOT NULL,
  `use_ratings` varchar(1) default NULL,
  `show_pre_publ` varchar(1) default NULL,
  `show_post_expire` varchar(1) default 'y',
  `heading_only` varchar(1) default NULL,
  `allow_comments` varchar(1) default 'y',
  `show_image` varchar(1) default 'y',
  `show_avatar` varchar(1) default NULL,
  `show_author` varchar(1) default 'y',
  `show_pubdate` varchar(1) default 'y',
  `show_expdate` varchar(1) default NULL,
  `show_reads` varchar(1) default 'y',
  `show_size` varchar(1) default 'n',
  `show_topline` varchar(1) default 'n',
  `show_subtitle` varchar(1) default 'n',
  `show_linkto` varchar(1) default 'n',
  `show_image_caption` varchar(1) default 'n',
  `show_lang` varchar(1) default 'n',
  `creator_edit` varchar(1) default NULL,
  `comment_can_rate_article` char(1) default NULL,
  PRIMARY KEY  (`type`),
  KEY `show_pre_publ` (`show_pre_publ`),
  KEY `show_post_expire` (`show_post_expire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_article_types`
-- 

INSERT INTO `tiki_article_types` (`type`, `use_ratings`, `show_pre_publ`, `show_post_expire`, `heading_only`, `allow_comments`, `show_image`, `show_avatar`, `show_author`, `show_pubdate`, `show_expdate`, `show_reads`, `show_size`, `show_topline`, `show_subtitle`, `show_linkto`, `show_image_caption`, `show_lang`, `creator_edit`, `comment_can_rate_article`) VALUES 
('Article', NULL, NULL, 'y', NULL, 'y', 'y', NULL, 'y', 'y', NULL, 'y', 'n', 'n', 'n', 'n', 'n', 'n', NULL, NULL),
('Review', 'y', NULL, 'y', NULL, 'y', 'y', NULL, 'y', 'y', NULL, 'y', 'n', 'n', 'n', 'n', 'n', 'n', NULL, NULL),
('Event', NULL, NULL, 'n', NULL, 'y', 'y', NULL, 'y', 'y', NULL, 'y', 'n', 'n', 'n', 'n', 'n', 'n', NULL, NULL),
('Classified', NULL, NULL, 'n', 'y', 'n', 'y', NULL, 'y', 'y', NULL, 'y', 'n', 'n', 'n', 'n', 'n', 'n', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_articles`
-- 

CREATE TABLE `tiki_articles` (
  `articleId` int(8) NOT NULL auto_increment,
  `topline` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `subtitle` varchar(255) default NULL,
  `linkto` varchar(255) default NULL,
  `lang` varchar(16) default NULL,
  `state` char(1) default 's',
  `authorName` varchar(60) default NULL,
  `topicId` int(14) default NULL,
  `topicName` varchar(40) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_caption` text,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `heading` text,
  `body` text,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `nbreads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` int(14) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  `isfloat` char(1) default NULL,
  PRIMARY KEY  (`articleId`),
  KEY `title` (`title`),
  KEY `heading` (`heading`(255)),
  KEY `body` (`body`(255)),
  KEY `nbreads` (`nbreads`),
  KEY `author` (`author`(32)),
  KEY `topicId` (`topicId`),
  KEY `publishDate` (`publishDate`),
  KEY `expireDate` (`expireDate`),
  KEY `type` (`type`),
  FULLTEXT KEY `ft` (`title`,`heading`,`body`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_articles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_banners`
-- 

CREATE TABLE `tiki_banners` (
  `bannerId` int(12) NOT NULL auto_increment,
  `client` varchar(200) NOT NULL default '',
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `alt` varchar(250) default NULL,
  `which` varchar(50) default NULL,
  `imageData` longblob,
  `imageType` varchar(200) default NULL,
  `imageName` varchar(100) default NULL,
  `HTMLData` text,
  `fixedURLData` varchar(255) default NULL,
  `textData` text,
  `fromDate` int(14) default NULL,
  `toDate` int(14) default NULL,
  `useDates` char(1) default NULL,
  `mon` char(1) default NULL,
  `tue` char(1) default NULL,
  `wed` char(1) default NULL,
  `thu` char(1) default NULL,
  `fri` char(1) default NULL,
  `sat` char(1) default NULL,
  `sun` char(1) default NULL,
  `hourFrom` varchar(4) default NULL,
  `hourTo` varchar(4) default NULL,
  `created` int(14) default NULL,
  `maxImpressions` int(8) default NULL,
  `impressions` int(8) default NULL,
  `maxUserImpressions` int(8) default '-1',
  `maxClicks` int(8) default NULL,
  `clicks` int(8) default NULL,
  `zone` varchar(40) default NULL,
  PRIMARY KEY  (`bannerId`),
  KEY `ban1` (`zone`,`useDates`,`impressions`,`maxImpressions`,`hourFrom`,`hourTo`,`fromDate`,`toDate`,`mon`,`tue`,`wed`,`thu`,`fri`,`sat`,`sun`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_banners`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_banning`
-- 

CREATE TABLE `tiki_banning` (
  `banId` int(12) NOT NULL auto_increment,
  `mode` enum('user','ip') default NULL,
  `title` varchar(200) default NULL,
  `ip1` char(3) default NULL,
  `ip2` char(3) default NULL,
  `ip3` char(3) default NULL,
  `ip4` char(3) default NULL,
  `user` varchar(200) default '',
  `date_from` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `date_to` timestamp NOT NULL default '0000-00-00 00:00:00',
  `use_dates` char(1) default NULL,
  `created` int(14) default NULL,
  `message` text,
  PRIMARY KEY  (`banId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_banning`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_banning_sections`
-- 

CREATE TABLE `tiki_banning_sections` (
  `banId` int(12) NOT NULL default '0',
  `section` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`banId`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_banning_sections`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_blog_activity`
-- 

CREATE TABLE `tiki_blog_activity` (
  `blogId` int(8) NOT NULL default '0',
  `day` int(14) NOT NULL default '0',
  `posts` int(8) default NULL,
  PRIMARY KEY  (`blogId`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_blog_activity`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_blog_posts`
-- 

CREATE TABLE `tiki_blog_posts` (
  `postId` int(8) NOT NULL auto_increment,
  `blogId` int(8) NOT NULL default '0',
  `data` text,
  `data_size` int(11) unsigned NOT NULL default '0',
  `created` int(14) default NULL,
  `user` varchar(200) default '',
  `trackbacks_to` text,
  `trackbacks_from` text,
  `title` varchar(255) default NULL,
  `priv` varchar(1) default NULL,
  PRIMARY KEY  (`postId`),
  KEY `data` (`data`(255)),
  KEY `blogId` (`blogId`),
  KEY `created` (`created`),
  FULLTEXT KEY `ft` (`data`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_blog_posts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_blog_posts_images`
-- 

CREATE TABLE `tiki_blog_posts_images` (
  `imgId` int(14) NOT NULL auto_increment,
  `postId` int(14) NOT NULL default '0',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `data` longblob,
  PRIMARY KEY  (`imgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_blog_posts_images`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_blogs`
-- 

CREATE TABLE `tiki_blogs` (
  `blogId` int(8) NOT NULL auto_increment,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `title` varchar(200) default NULL,
  `description` text,
  `user` varchar(200) default '',
  `public` char(1) default NULL,
  `posts` int(8) default NULL,
  `maxPosts` int(8) default NULL,
  `hits` int(8) default NULL,
  `activity` decimal(4,2) default NULL,
  `heading` text,
  `use_find` char(1) default NULL,
  `use_title` char(1) default NULL,
  `add_date` char(1) default NULL,
  `add_poster` char(1) default NULL,
  `allow_comments` char(1) default NULL,
  `show_avatar` char(1) default NULL,
  PRIMARY KEY  (`blogId`),
  KEY `title` (`title`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_blogs`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendar_categories`
-- 

CREATE TABLE `tiki_calendar_categories` (
  `calcatId` int(11) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`calcatId`),
  UNIQUE KEY `catname` (`calendarId`,`name`(16))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_calendar_categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendar_items`
-- 

CREATE TABLE `tiki_calendar_items` (
  `calitemId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `start` int(14) NOT NULL default '0',
  `end` int(14) NOT NULL default '0',
  `locationId` int(14) default NULL,
  `categoryId` int(14) default NULL,
  `nlId` int(12) NOT NULL default '0',
  `priority` enum('0','1','2','3','4','5','6','7','8','9') default '0',
  `status` enum('0','1','2') NOT NULL default '0',
  `url` varchar(255) default NULL,
  `lang` char(16) NOT NULL default 'en',
  `name` varchar(255) NOT NULL default '',
  `description` text,
  `recurrenceId` int(14) default NULL,
  `changed` tinyint(1) default '0',
  `user` varchar(200) default '',
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  `allday` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`calitemId`),
  KEY `calendarId` (`calendarId`),
  KEY `fk_calitems_recurrence` (`recurrenceId`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_calendar_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendar_locations`
-- 

CREATE TABLE `tiki_calendar_locations` (
  `callocId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` blob,
  PRIMARY KEY  (`callocId`),
  UNIQUE KEY `locname` (`calendarId`,`name`(16))
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_calendar_locations`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendar_options`
-- 

CREATE TABLE `tiki_calendar_options` (
  `calendarId` int(14) NOT NULL default '0',
  `optionName` varchar(120) NOT NULL default '',
  `value` varchar(255) default NULL,
  PRIMARY KEY  (`calendarId`,`optionName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_calendar_options`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendar_recurrence`
-- 

CREATE TABLE `tiki_calendar_recurrence` (
  `recurrenceId` int(14) NOT NULL auto_increment,
  `calendarId` int(14) NOT NULL default '0',
  `start` int(4) NOT NULL default '0',
  `end` int(4) NOT NULL default '2359',
  `allday` tinyint(1) NOT NULL default '0',
  `locationId` int(14) default NULL,
  `categoryId` int(14) default NULL,
  `nlId` int(12) NOT NULL default '0',
  `priority` enum('1','2','3','4','5','6','7','8','9') NOT NULL default '1',
  `status` enum('0','1','2') NOT NULL default '0',
  `url` varchar(255) default NULL,
  `lang` char(16) NOT NULL default 'en',
  `name` varchar(255) NOT NULL default '',
  `description` blob,
  `weekly` tinyint(1) default '0',
  `weekday` tinyint(1) default NULL,
  `monthly` tinyint(1) default '0',
  `dayOfMonth` int(2) default NULL,
  `yearly` tinyint(1) default '0',
  `dateOfYear` int(4) default NULL,
  `nbRecurrences` int(8) default NULL,
  `startPeriod` int(14) default NULL,
  `endPeriod` int(14) default NULL,
  `user` varchar(200) default '',
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  PRIMARY KEY  (`recurrenceId`),
  KEY `calendarId` (`calendarId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_calendar_recurrence`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendar_roles`
-- 

CREATE TABLE `tiki_calendar_roles` (
  `calitemId` int(14) NOT NULL default '0',
  `username` varchar(200) NOT NULL default '',
  `role` enum('0','1','2','3','6') NOT NULL default '0',
  PRIMARY KEY  (`calitemId`,`username`(16),`role`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_calendar_roles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_calendars`
-- 

CREATE TABLE `tiki_calendars` (
  `calendarId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` varchar(255) default NULL,
  `user` varchar(200) NOT NULL default '',
  `customlocations` enum('n','y') NOT NULL default 'n',
  `customcategories` enum('n','y') NOT NULL default 'n',
  `customlanguages` enum('n','y') NOT NULL default 'n',
  `custompriorities` enum('n','y') NOT NULL default 'n',
  `customparticipants` enum('n','y') NOT NULL default 'n',
  `customsubscription` enum('n','y') NOT NULL default 'n',
  `customstatus` enum('n','y') NOT NULL default 'y',
  `created` int(14) NOT NULL default '0',
  `lastmodif` int(14) NOT NULL default '0',
  `personal` enum('n','y') NOT NULL default 'n',
  PRIMARY KEY  (`calendarId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_calendars`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_categories`
-- 

CREATE TABLE `tiki_categories` (
  `categId` int(12) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `description` varchar(250) default NULL,
  `parentId` int(12) default NULL,
  `hits` int(8) default NULL,
  `rootCategId` int(12) default NULL,
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_categorized_objects`
-- 

CREATE TABLE `tiki_categorized_objects` (
  `catObjectId` int(11) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_categorized_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_category_objects`
-- 

CREATE TABLE `tiki_category_objects` (
  `catObjectId` int(12) NOT NULL default '0',
  `categId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`,`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_category_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_category_sites`
-- 

CREATE TABLE `tiki_category_sites` (
  `categId` int(10) NOT NULL default '0',
  `siteId` int(14) NOT NULL default '0',
  PRIMARY KEY  (`categId`,`siteId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_category_sites`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_chat_channels`
-- 

CREATE TABLE `tiki_chat_channels` (
  `channelId` int(8) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `description` varchar(250) default NULL,
  `max_users` int(8) default NULL,
  `mode` char(1) default NULL,
  `moderator` varchar(200) default NULL,
  `active` char(1) default NULL,
  `refresh` int(6) default NULL,
  PRIMARY KEY  (`channelId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_chat_channels`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_chat_messages`
-- 

CREATE TABLE `tiki_chat_messages` (
  `messageId` int(8) NOT NULL auto_increment,
  `channelId` int(8) NOT NULL default '0',
  `data` varchar(255) default NULL,
  `poster` varchar(200) NOT NULL default 'anonymous',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`messageId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_chat_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_chat_users`
-- 

CREATE TABLE `tiki_chat_users` (
  `nickname` varchar(200) NOT NULL default '',
  `channelId` int(8) NOT NULL default '0',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`nickname`,`channelId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_chat_users`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_comments`
-- 

CREATE TABLE `tiki_comments` (
  `threadId` int(14) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL default '',
  `objectType` varchar(32) NOT NULL default '',
  `parentId` int(14) default NULL,
  `userName` varchar(200) default '',
  `commentDate` int(14) default NULL,
  `hits` int(8) default NULL,
  `type` char(1) default NULL,
  `points` decimal(8,2) default NULL,
  `votes` int(8) default NULL,
  `average` decimal(8,4) default NULL,
  `title` varchar(255) default NULL,
  `data` text,
  `hash` varchar(32) default NULL,
  `user_ip` varchar(15) default NULL,
  `summary` varchar(240) default NULL,
  `smiley` varchar(80) default NULL,
  `message_id` varchar(128) default NULL,
  `in_reply_to` varchar(128) default NULL,
  `comment_rating` tinyint(2) default NULL,
  `archived` char(1) default NULL,
  `approved` char(1) NOT NULL default 'y',
  `locked` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`threadId`),
  UNIQUE KEY `no_repeats` (`parentId`,`userName`(40),`title`(100),`commentDate`,`message_id`(40),`in_reply_to`(40)),
  KEY `title` (`title`),
  KEY `data` (`data`(255)),
  KEY `hits` (`hits`),
  KEY `tc_pi` (`parentId`),
  KEY `objectType` (`object`,`objectType`),
  KEY `commentDate` (`commentDate`),
  KEY `threaded` (`message_id`,`in_reply_to`,`parentId`),
  FULLTEXT KEY `ft` (`title`,`data`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_comments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_content`
-- 

CREATE TABLE `tiki_content` (
  `contentId` int(8) NOT NULL auto_increment,
  `description` text,
  `contentLabel` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`contentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_content`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_content_templates`
-- 

CREATE TABLE `tiki_content_templates` (
  `templateId` int(10) NOT NULL auto_increment,
  `content` longblob,
  `name` varchar(200) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`templateId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_content_templates`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_content_templates_sections`
-- 

CREATE TABLE `tiki_content_templates_sections` (
  `templateId` int(10) NOT NULL default '0',
  `section` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`templateId`,`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_content_templates_sections`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_contributions`
-- 

CREATE TABLE `tiki_contributions` (
  `contributionId` int(12) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `description` varchar(250) default NULL,
  PRIMARY KEY  (`contributionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_contributions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_contributions_assigned`
-- 

CREATE TABLE `tiki_contributions_assigned` (
  `contributionId` int(12) NOT NULL,
  `objectId` int(12) NOT NULL,
  PRIMARY KEY  (`objectId`,`contributionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_contributions_assigned`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_cookies`
-- 

CREATE TABLE `tiki_cookies` (
  `cookieId` int(10) NOT NULL auto_increment,
  `cookie` text,
  PRIMARY KEY  (`cookieId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_cookies`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_copyrights`
-- 

CREATE TABLE `tiki_copyrights` (
  `copyrightId` int(12) NOT NULL auto_increment,
  `page` varchar(200) default NULL,
  `title` varchar(200) default NULL,
  `year` int(11) default NULL,
  `authors` varchar(200) default NULL,
  `copyright_order` int(11) default NULL,
  `userName` varchar(200) default '',
  PRIMARY KEY  (`copyrightId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_copyrights`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_directory_categories`
-- 

CREATE TABLE `tiki_directory_categories` (
  `categId` int(10) NOT NULL auto_increment,
  `parent` int(10) default NULL,
  `name` varchar(240) default NULL,
  `description` text,
  `childrenType` char(1) default NULL,
  `sites` int(10) default NULL,
  `viewableChildren` int(4) default NULL,
  `allowSites` char(1) default NULL,
  `showCount` char(1) default NULL,
  `editorGroup` varchar(200) default NULL,
  `hits` int(12) default NULL,
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_directory_categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_directory_search`
-- 

CREATE TABLE `tiki_directory_search` (
  `term` varchar(250) NOT NULL default '',
  `hits` int(14) default NULL,
  PRIMARY KEY  (`term`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_directory_search`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_directory_sites`
-- 

CREATE TABLE `tiki_directory_sites` (
  `siteId` int(14) NOT NULL auto_increment,
  `name` varchar(240) default NULL,
  `description` text,
  `url` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `hits` int(12) default NULL,
  `isValid` char(1) default NULL,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `cache` longblob,
  `cache_timestamp` int(14) default NULL,
  PRIMARY KEY  (`siteId`),
  KEY `isValid` (`isValid`),
  KEY `url` (`url`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_directory_sites`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_download`
-- 

CREATE TABLE `tiki_download` (
  `id` int(11) NOT NULL auto_increment,
  `object` varchar(255) NOT NULL default '',
  `userId` int(8) NOT NULL default '0',
  `type` varchar(20) NOT NULL default '',
  `date` int(14) NOT NULL default '0',
  `IP` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `object` (`object`,`userId`,`type`),
  KEY `userId` (`userId`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_download`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_dsn`
-- 

CREATE TABLE `tiki_dsn` (
  `dsnId` int(12) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `dsn` varchar(255) default NULL,
  PRIMARY KEY  (`dsnId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_dsn`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_dynamic_variables`
-- 

CREATE TABLE `tiki_dynamic_variables` (
  `name` varchar(40) NOT NULL,
  `data` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_dynamic_variables`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_events`
-- 

CREATE TABLE `tiki_events` (
  `callback_type` int(1) NOT NULL default '3',
  `order` int(2) NOT NULL default '50',
  `event` varchar(200) NOT NULL default '',
  `file` varchar(200) NOT NULL default '',
  `object` varchar(200) NOT NULL default '',
  `method` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`callback_type`,`order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_events`
-- 

INSERT INTO `tiki_events` (`callback_type`, `order`, `event`, `file`, `object`, `method`) VALUES 
(1, 20, 'user_registers', 'lib/registration/registrationlib.php', 'registrationlib', 'callback_tikiwiki_setup_custom_fields'),
(3, 50, 'user_registers', 'lib/registration/registrationlib.php', 'registrationlib', 'callback_tikiwiki_save_registration'),
(5, 20, 'user_registers', 'lib/registration/registrationlib.php', 'registrationlib', 'callback_logslib_user_registers'),
(5, 25, 'user_registers', 'lib/registration/registrationlib.php', 'registrationlib', 'callback_tikiwiki_send_email'),
(5, 30, 'user_registers', 'lib/registration/registrationlib.php', 'registrationlib', 'callback_tikimail_user_registers');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_extwiki`
-- 

CREATE TABLE `tiki_extwiki` (
  `extwikiId` int(12) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `extwiki` varchar(255) default NULL,
  PRIMARY KEY  (`extwikiId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_extwiki`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_faq_questions`
-- 

CREATE TABLE `tiki_faq_questions` (
  `questionId` int(10) NOT NULL auto_increment,
  `faqId` int(10) default NULL,
  `position` int(4) default NULL,
  `question` text,
  `answer` text,
  `created` int(14) default NULL,
  PRIMARY KEY  (`questionId`),
  KEY `faqId` (`faqId`),
  KEY `question` (`question`(255)),
  KEY `answer` (`answer`(255)),
  KEY `created` (`created`),
  FULLTEXT KEY `ft` (`question`,`answer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_faq_questions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_faqs`
-- 

CREATE TABLE `tiki_faqs` (
  `faqId` int(10) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `questions` int(5) default NULL,
  `hits` int(8) default NULL,
  `canSuggest` char(1) default NULL,
  PRIMARY KEY  (`faqId`),
  KEY `title` (`title`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_faqs`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_feature`
-- 

CREATE TABLE `tiki_feature` (
  `feature_id` mediumint(9) NOT NULL auto_increment,
  `feature_name` varchar(150) NOT NULL,
  `parent_id` mediumint(9) NOT NULL,
  `status` varchar(12) NOT NULL default 'active',
  `setting_name` varchar(50) default NULL,
  `feature_type` varchar(30) NOT NULL default 'feature',
  `template` varchar(50) default NULL,
  `permission` varchar(50) default NULL,
  `ordinal` mediumint(9) NOT NULL default '1',
  `depends_on` mediumint(9) default NULL,
  `keyword` varchar(30) default NULL,
  `tip` text,
  `feature_count` mediumint(9) NOT NULL default '0',
  `feature_path` varchar(20) NOT NULL default '0',
  PRIMARY KEY  (`feature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_feature`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_featured_links`
-- 

CREATE TABLE `tiki_featured_links` (
  `url` varchar(200) NOT NULL default '',
  `title` varchar(200) default NULL,
  `description` text,
  `hits` int(8) default NULL,
  `position` int(6) default NULL,
  `type` char(1) default NULL,
  PRIMARY KEY  (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_featured_links`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_file_galleries`
-- 

CREATE TABLE `tiki_file_galleries` (
  `galleryId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `type` varchar(20) NOT NULL default 'default',
  `description` text,
  `created` int(14) default NULL,
  `visible` char(1) default NULL,
  `lastModif` int(14) default NULL,
  `user` varchar(200) default '',
  `hits` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` decimal(8,2) default NULL,
  `maxRows` int(10) default NULL,
  `public` char(1) default NULL,
  `show_id` char(1) default NULL,
  `show_icon` char(1) default NULL,
  `show_name` char(1) default NULL,
  `show_size` char(1) default NULL,
  `show_description` char(1) default NULL,
  `max_desc` int(8) default NULL,
  `show_created` char(1) default NULL,
  `show_hits` char(1) default NULL,
  `parentId` int(14) NOT NULL default '-1',
  `lockable` char(1) default 'n',
  `show_lockedby` char(1) default NULL,
  `archives` int(4) default '-1',
  `sort_mode` char(20) default NULL,
  `show_modified` char(1) default NULL,
  `show_author` char(1) default NULL,
  `show_creator` char(1) default NULL,
  `subgal_conf` varchar(200) default NULL,
  `show_last_user` char(1) default NULL,
  `show_comment` char(1) default NULL,
  `show_files` char(1) default NULL,
  `show_explorer` char(1) default NULL,
  `show_path` char(1) default NULL,
  `show_slideshow` char(1) default NULL,
  `default_view` varchar(20) default NULL,
  `quota` int(8) default '0',
  `size` int(14) default NULL,
  `wiki_syntax` varchar(200) default NULL,
  PRIMARY KEY  (`galleryId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

-- 
-- Dumping data for table `tiki_file_galleries`
-- 

INSERT INTO `tiki_file_galleries` (`galleryId`, `name`, `type`, `description`, `created`, `visible`, `lastModif`, `user`, `hits`, `votes`, `points`, `maxRows`, `public`, `show_id`, `show_icon`, `show_name`, `show_size`, `show_description`, `max_desc`, `show_created`, `show_hits`, `parentId`, `lockable`, `show_lockedby`, `archives`, `sort_mode`, `show_modified`, `show_author`, `show_creator`, `subgal_conf`, `show_last_user`, `show_comment`, `show_files`, `show_explorer`, `show_path`, `show_slideshow`, `default_view`, `quota`, `size`, `wiki_syntax`) VALUES 
(1, 'File Galleries', 'system', '', NULL, 'y', 1269022126, 'admin', NULL, NULL, NULL, 0, 'y', 'n', 'n', 'f', 'n', 'n', 0, 'n', 'n', -1, 'n', 'n', -1, 'name_asc', 'n', 'n', 'n', NULL, 'n', 'n', 'y', 'n', 'y', NULL, 'list', 0, NULL, NULL),
(4, 'SEE', 'default', '', 1268851517, 'y', 1269022608, 'admin', 8, NULL, NULL, 50, 'y', 'n', 'n', 'f', 'n', 'n', 1024, 'n', 'n', 1, 'n', 'n', -1, 'name_asc', 'n', 'n', 'n', NULL, 'n', 'n', 'y', 'n', 'y', NULL, 'list', 0, NULL, NULL),
(5, 'Arte', 'default', '', 1268851549, 'y', 1268932102, 'admin', 1, NULL, NULL, 50, 'y', 'n', 'y', 'f', 'y', 'n', 1024, 'y', 'n', 4, 'n', 'n', -1, 'name_asc', 'n', 'n', 'y', NULL, 'n', 'n', 'n', 'n', 'y', NULL, 'list', 0, NULL, NULL),
(7, 'EducaÃ§Ã£o fÃ­sica', 'default', '', 1268851582, 'y', 1268851582, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(8, 'CiÃªncias', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(9, 'MatemÃ¡tica', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(10, 'HistÃ³ria', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(11, 'Geografia', 'default', '', 1268851674, 'y', 1268851674, 'admin', 1, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(12, 'LÃ­ngua portuguesa', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(13, 'LÃ­ngua estrangeira', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(14, 'Biologia', 'default', '', 1268851674, 'y', 1268853098, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(15, 'Quimica', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(16, 'FÃ­sica', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(17, 'Filosofia', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(18, 'Sociologia', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(19, 'NÃºcleo bÃ¡sico', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(20, 'EducaÃ§Ã£o especial', 'default', '', 1268851674, 'y', 1268851674, 'admin', 0, NULL, NULL, 50, 'y', 'n', 'y', 'f', NULL, 'o', 1024, 'o', 'n', 4, 'n', 'n', -1, NULL, 'n', 'n', 'o', NULL, 'n', 'n', 'n', 'y', 'y', NULL, 'list', 0, NULL, NULL),
(21, 'SMESP', 'default', 'Secretaria Municipal de EducaÃ§Ã£o, Cadernos de Apoio e Aprendizagem.', 1268934641, 'y', 1268947962, 'admin', 27, NULL, NULL, 50, 'n', 'n', 'n', 'f', NULL, 'n', 1024, 'y', 'n', 1, 'n', 'n', -1, NULL, 'n', 'y', 'n', NULL, 'n', 'n', 'n', 'n', 'y', NULL, 'list', 0, NULL, NULL),
(22, 'CPS', 'default', 'Centro Paula Souza', 1268947850, 'y', 1268947850, 'carlosseabra@tvcultura.com.br', 1, NULL, NULL, 50, 'y', 'n', 'n', 'f', NULL, 'n', 1024, 'y', 'n', 1, 'n', 'n', -1, NULL, 'n', 'y', 'n', NULL, 'n', 'n', 'n', 'n', 'y', NULL, 'list', 0, NULL, NULL),
(23, 'MatemÃ¡tica', 'default', '', 1269010348, 'y', 1269010348, 'janainacardoso@tvcultura.com.br', 4, NULL, NULL, 50, 'y', 'n', 'n', 'f', NULL, 'n', 1024, 'y', 'n', 21, 'n', 'n', -1, NULL, 'n', 'y', 'n', NULL, 'n', 'n', 'n', 'n', 'y', NULL, 'list', 0, NULL, NULL),
(24, 'LÃ­ngua Portuguesa', 'default', '', 1269010398, 'y', 1269012692, 'janainacardoso@tvcultura.com.br', 22, NULL, NULL, 50, 'y', 'n', 'n', 'f', NULL, 'n', 1024, 'y', 'n', 21, 'n', 'n', -1, NULL, 'n', 'y', 'n', NULL, 'n', 'n', 'n', 'n', 'y', NULL, 'list', 0, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_file_handlers`
-- 

CREATE TABLE `tiki_file_handlers` (
  `mime_type` varchar(64) default NULL,
  `cmd` varchar(238) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_file_handlers`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_files`
-- 

CREATE TABLE `tiki_files` (
  `fileId` int(14) NOT NULL auto_increment,
  `galleryId` int(14) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `filename` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `filetype` varchar(250) default NULL,
  `data` longblob,
  `user` varchar(200) default '',
  `author` varchar(40) default NULL,
  `hits` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` decimal(8,2) default NULL,
  `path` varchar(255) default NULL,
  `reference_url` varchar(250) default NULL,
  `is_reference` char(1) default NULL,
  `hash` varchar(32) default NULL,
  `search_data` longtext,
  `lastModif` int(14) default NULL,
  `lastModifUser` varchar(200) default NULL,
  `lockedby` varchar(200) default '',
  `comment` varchar(200) default NULL,
  `archiveId` int(14) default '0',
  PRIMARY KEY  (`fileId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `created` (`created`),
  KEY `archiveId` (`archiveId`),
  KEY `galleryId` (`galleryId`),
  KEY `hits` (`hits`),
  FULLTEXT KEY `ft` (`name`,`description`,`search_data`,`filename`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `tiki_files`
-- 

INSERT INTO `tiki_files` (`fileId`, `galleryId`, `name`, `description`, `created`, `filename`, `filesize`, `filetype`, `data`, `user`, `author`, `hits`, `votes`, `points`, `path`, `reference_url`, `is_reference`, `hash`, `search_data`, `lastModif`, `lastModifUser`, `lockedby`, `comment`, `archiveId`) VALUES 
(12, 24, 'teste', 'sadf', 1269012692, 'formulariosubsidioformacaoacademica.doc', 96256, 'application/msword', '', 'janainacardoso@tvcultura.com.br', 'janainacardoso@tvcultura.com.br', 0, NULL, NULL, 'dbb71477cbb08c560da99d8e144921a0', NULL, NULL, '6b9bf90182489cdd2804e7c378a00858', '', 1269012692, 'janainacardoso@tvcultura.com.br', NULL, '', 0),
(11, 24, 'LÃ­ngua Portuguesa ano 2', 'Arquivo para testes...', 1268947962, 'P-A1u2_copy.doc', 3282432, 'application/msword', '', 'carlosseabra@tvcultura.com.br', 'carlosseabra@tvcultura.com.br', 2, NULL, NULL, '6d8ee2ebd977c5a0ab9417accf0bcf58', NULL, NULL, 'cb3bcbd0e5a7e76fb85e114250755073', '', 1268947962, 'carlosseabra@tvcultura.com.br', NULL, '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_forum_attachments`
-- 

CREATE TABLE `tiki_forum_attachments` (
  `attId` int(14) NOT NULL auto_increment,
  `threadId` int(14) NOT NULL default '0',
  `qId` int(14) NOT NULL default '0',
  `forumId` int(14) default NULL,
  `filename` varchar(250) default NULL,
  `filetype` varchar(250) default NULL,
  `filesize` int(12) default NULL,
  `data` longblob,
  `dir` varchar(200) default NULL,
  `created` int(14) default NULL,
  `path` varchar(250) default NULL,
  PRIMARY KEY  (`attId`),
  KEY `threadId` (`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_forum_attachments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_forum_reads`
-- 

CREATE TABLE `tiki_forum_reads` (
  `user` varchar(200) NOT NULL default '',
  `threadId` int(14) NOT NULL default '0',
  `forumId` int(14) default NULL,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`user`,`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_forum_reads`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_forums`
-- 

CREATE TABLE `tiki_forums` (
  `forumId` int(8) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastPost` int(14) default NULL,
  `threads` int(8) default NULL,
  `comments` int(8) default NULL,
  `controlFlood` char(1) default NULL,
  `floodInterval` int(8) default NULL,
  `moderator` varchar(200) default NULL,
  `hits` int(8) default NULL,
  `mail` varchar(200) default NULL,
  `useMail` char(1) default NULL,
  `section` varchar(200) default NULL,
  `usePruneUnreplied` char(1) default NULL,
  `pruneUnrepliedAge` int(8) default NULL,
  `usePruneOld` char(1) default NULL,
  `pruneMaxAge` int(8) default NULL,
  `topicsPerPage` int(6) default NULL,
  `topicOrdering` varchar(100) default NULL,
  `threadOrdering` varchar(100) default NULL,
  `att` varchar(80) default NULL,
  `att_store` varchar(4) default NULL,
  `att_store_dir` varchar(250) default NULL,
  `att_max_size` int(12) default NULL,
  `ui_level` char(1) default NULL,
  `forum_password` varchar(32) default NULL,
  `forum_use_password` char(1) default NULL,
  `moderator_group` varchar(200) default NULL,
  `approval_type` varchar(20) default NULL,
  `outbound_address` varchar(250) default NULL,
  `outbound_mails_for_inbound_mails` char(1) default NULL,
  `outbound_mails_reply_link` char(1) default NULL,
  `outbound_from` varchar(250) default NULL,
  `inbound_pop_server` varchar(250) default NULL,
  `inbound_pop_port` int(4) default NULL,
  `inbound_pop_user` varchar(200) default NULL,
  `inbound_pop_password` varchar(80) default NULL,
  `topic_smileys` char(1) default NULL,
  `ui_avatar` char(1) default NULL,
  `ui_flag` char(1) default NULL,
  `ui_posts` char(1) default NULL,
  `ui_email` char(1) default NULL,
  `ui_online` char(1) default NULL,
  `topic_summary` char(1) default NULL,
  `show_description` char(1) default NULL,
  `topics_list_replies` char(1) default NULL,
  `topics_list_reads` char(1) default NULL,
  `topics_list_pts` char(1) default NULL,
  `topics_list_lastpost` char(1) default NULL,
  `topics_list_author` char(1) default NULL,
  `vote_threads` char(1) default NULL,
  `forum_last_n` int(2) default '0',
  `threadStyle` varchar(100) default NULL,
  `commentsPerPage` varchar(100) default NULL,
  `is_flat` char(1) default NULL,
  `mandatory_contribution` char(1) default NULL,
  PRIMARY KEY  (`forumId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_forums`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_forums_queue`
-- 

CREATE TABLE `tiki_forums_queue` (
  `qId` int(14) NOT NULL auto_increment,
  `object` varchar(32) default NULL,
  `parentId` int(14) default NULL,
  `forumId` int(14) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(200) default '',
  `title` varchar(240) default NULL,
  `data` text,
  `type` varchar(60) default NULL,
  `hash` varchar(32) default NULL,
  `topic_smiley` varchar(80) default NULL,
  `topic_title` varchar(240) default NULL,
  `summary` varchar(240) default NULL,
  `in_reply_to` varchar(128) default NULL,
  `tags` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  PRIMARY KEY  (`qId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_forums_queue`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_forums_reported`
-- 

CREATE TABLE `tiki_forums_reported` (
  `threadId` int(12) NOT NULL default '0',
  `forumId` int(12) NOT NULL default '0',
  `parentId` int(12) NOT NULL default '0',
  `user` varchar(200) default '',
  `timestamp` int(14) default NULL,
  `reason` varchar(250) default NULL,
  PRIMARY KEY  (`threadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_forums_reported`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_freetagged_objects`
-- 

CREATE TABLE `tiki_freetagged_objects` (
  `tagId` int(12) NOT NULL auto_increment,
  `objectId` int(11) NOT NULL default '0',
  `user` varchar(200) NOT NULL default '',
  `created` int(14) NOT NULL default '0',
  PRIMARY KEY  (`tagId`,`user`,`objectId`),
  KEY `tagId` (`tagId`),
  KEY `user` (`user`),
  KEY `objectId` (`objectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_freetagged_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_freetags`
-- 

CREATE TABLE `tiki_freetags` (
  `tagId` int(10) unsigned NOT NULL auto_increment,
  `tag` varchar(30) NOT NULL default '',
  `raw_tag` varchar(50) NOT NULL default '',
  `lang` varchar(16) default NULL,
  PRIMARY KEY  (`tagId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_freetags`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_friends`
-- 

CREATE TABLE `tiki_friends` (
  `user` varchar(200) NOT NULL default '',
  `friend` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`user`(120),`friend`(120))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_friends`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_friendship_requests`
-- 

CREATE TABLE `tiki_friendship_requests` (
  `userFrom` varchar(200) NOT NULL default '',
  `userTo` varchar(200) NOT NULL default '',
  `tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`userFrom`(120),`userTo`(120))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_friendship_requests`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_galleries`
-- 

CREATE TABLE `tiki_galleries` (
  `galleryId` int(14) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `description` text,
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `visible` char(1) default NULL,
  `geographic` char(1) default NULL,
  `theme` varchar(60) default NULL,
  `user` varchar(200) default '',
  `hits` int(14) default NULL,
  `maxRows` int(10) default NULL,
  `rowImages` int(10) default NULL,
  `thumbSizeX` int(10) default NULL,
  `thumbSizeY` int(10) default NULL,
  `public` char(1) default NULL,
  `sortorder` varchar(20) NOT NULL default 'created',
  `sortdirection` varchar(4) NOT NULL default 'desc',
  `galleryimage` varchar(20) NOT NULL default 'first',
  `parentgallery` int(14) NOT NULL default '-1',
  `showname` char(1) NOT NULL default 'y',
  `showimageid` char(1) NOT NULL default 'n',
  `showdescription` char(1) NOT NULL default 'n',
  `showcreated` char(1) NOT NULL default 'n',
  `showuser` char(1) NOT NULL default 'n',
  `showhits` char(1) NOT NULL default 'y',
  `showxysize` char(1) NOT NULL default 'y',
  `showfilesize` char(1) NOT NULL default 'n',
  `showfilename` char(1) NOT NULL default 'n',
  `defaultscale` varchar(10) NOT NULL default 'o',
  `showcategories` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`galleryId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  KEY `parentgallery` (`parentgallery`),
  KEY `visibleUser` (`visible`,`user`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_galleries`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_galleries_scales`
-- 

CREATE TABLE `tiki_galleries_scales` (
  `galleryId` int(14) NOT NULL default '0',
  `scale` int(11) NOT NULL default '0',
  PRIMARY KEY  (`galleryId`,`scale`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_galleries_scales`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_group_inclusion`
-- 

CREATE TABLE `tiki_group_inclusion` (
  `groupName` varchar(255) NOT NULL default '',
  `includeGroup` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`groupName`(30),`includeGroup`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_group_inclusion`
-- 

INSERT INTO `tiki_group_inclusion` (`groupName`, `includeGroup`) VALUES 
('Registered', 'Anonymous');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_group_watches`
-- 

CREATE TABLE `tiki_group_watches` (
  `watchId` int(12) NOT NULL auto_increment,
  `group` varchar(200) NOT NULL default '',
  `event` varchar(40) NOT NULL default '',
  `object` varchar(200) NOT NULL default '',
  `title` varchar(250) default NULL,
  `type` varchar(200) default NULL,
  `url` varchar(250) default NULL,
  PRIMARY KEY  (`group`(50),`event`,`object`(100)),
  KEY `watchId` (`watchId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_group_watches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_groupalert`
-- 

CREATE TABLE `tiki_groupalert` (
  `groupName` varchar(255) NOT NULL default '',
  `objectType` varchar(20) NOT NULL default '',
  `objectId` varchar(10) NOT NULL default '',
  `displayEachuser` char(1) default NULL,
  PRIMARY KEY  (`groupName`,`objectType`,`objectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_groupalert`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_history`
-- 

CREATE TABLE `tiki_history` (
  `historyId` int(12) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `version` int(8) NOT NULL default '0',
  `version_minor` int(8) NOT NULL default '0',
  `lastModif` int(14) default NULL,
  `description` varchar(200) default NULL,
  `user` varchar(200) NOT NULL default '',
  `ip` varchar(15) default NULL,
  `comment` varchar(200) default NULL,
  `data` longblob,
  `type` varchar(50) default NULL,
  `is_html` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`pageName`,`version`),
  KEY `user` (`user`),
  KEY `historyId` (`historyId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `tiki_history`
-- 

INSERT INTO `tiki_history` (`historyId`, `pageName`, `version`, `version_minor`, `lastModif`, `description`, `user`, `ip`, `comment`, `data`, `type`, `is_html`) VALUES 
(1, 'HomePage', 1, 0, 1268835166, NULL, 'admin', '0.0.0.0', 'Tiki initialization', 0x5f484f4d45504147455f434f4e54454e545f, NULL, 0),
(2, 'HomePage', 2, 0, 1268858162, NULL, 'admin', '127.0.0.1', NULL, 0x546578746f206465206170726573656e7461c3a7c3a36f20696e696369616c206578706c6963616e646f2071756520c3a920756d20616d6269656e746520726573747269746f2e, NULL, 0),
(3, 'HomePage', 3, 0, 1269008825, NULL, 'carlosseabra@tvcultura.com.br', '172.20.1.17', NULL, 0x213a3a4573746520c3a920756d20616d6269656e746520726573747269746f2061206175746f726573206520636f6c61626f7261646f72657320646f732070726f6a65746f73206465205075626c696361c3a7c3b56573204564756361c3a7c3a36f2064612046756e6461c3a7c3a36f20506164726520416e6368696574612e3a3a, NULL, 0),
(4, 'HomePage', 4, 0, 1269129390, NULL, 'carlosseabra@tvcultura.com.br', '201.83.72.150', NULL, 0x214573746520c3a920756d20616d6269656e746520726573747269746f2061206175746f726573206520636f6c61626f7261646f72657320646f732070726f6a65746f73206465205075626c696361c3a7c3b56573204564756361c3a7c3a36f2064612046756e6461c3a7c3a36f20506164726520416e6368696574612e0d0a0d0a2121534d455350202d2053656372657461726961204d756e69636970616c206465204564756361c3a7c3a36f20646520532e205061756c6f202843616465726e6f732064652041706f696f206520417072656e64697a6167656d290d0a0d0a212153455254202d205365637265746172696120646f20456d707265676f20652052656c61c3a7c3b5657320646f2054726162616c686f2028436f6e7465c3ba646f73204765726169732c204172636f73204f6375706163696f6e6169732c2054696d6520646f20456d707265676f20652042616e636f20646f20506f766f290d0a0d0a2121435053202d2043656e74726f205061756c6120536f757a612028496e666f726dc3a1746963612c204d6563c3a26e6963612c20456c657472c3b46e6963612065204ec3ba636c656f2042c3a17369636f290d0a0d0a2121534545202d205365637265746172696120457374616475616c206465204564756361c3a7c3a36f20646520535020284573636f6c6120646520466f726d61c3a7c3a36f2064652050726f666573736f726573290d0a, NULL, 0),
(5, 'HomePage', 5, 0, 1269131673, NULL, 'carlosseabra@tvcultura.com.br', '201.83.72.150', NULL, 0x2121214573746520c3a920756d20616d6269656e746520726573747269746f2061206175746f726573206520636f6c61626f7261646f72657320646f732070726f6a65746f73206465200d0a2121212671756f743b5075626c696361c3a7c3b56573204564756361c3a7c3a36f2671756f743b2064612046756e6461c3a7c3a36f20506164726520416e6368696574612e0d0a0d0a2a5f5f534d455350202d2053656372657461726961204d756e69636970616c206465204564756361c3a7c3a36f20646520532e205061756c6f202843616465726e6f732064652041706f696f206520417072656e64697a6167656d295f5f0d0a2a5f5f53455254202d205365637265746172696120646f20456d707265676f20652052656c61c3a7c3b5657320646f2054726162616c686f2028436f6e7465c3ba646f73204765726169732c204172636f73204f6375706163696f6e6169732c2054696d6520646f20456d707265676f20652042616e636f20646f20506f766f295f5f0d0a2a5f5f435053202d2043656e74726f205061756c6120536f757a612028496e666f726dc3a1746963612c204d6563c3a26e6963612c20456c657472c3b46e6963612065204ec3ba636c656f2042c3a17369636f295f5f0d0a2a5f5f534545202d205365637265746172696120457374616475616c206465204564756361c3a7c3a36f20646520535020284573636f6c6120646520466f726d61c3a7c3a36f2064652050726f666573736f726573295f5f0d0a0d0a456d206361736f2064652064c3ba7669646173206f75206e65636573736964616465206465206573636c61726563696d656e746f2c20636f6e746163746520617320706573736f61732061626169786f3a0d0a0d0a7c7c202020272750726f6a65746f27277c2020202727526573706f6e73c3a176656c27277c2020202727452d6d61696c27277c202020272754656c65666f6e6527270d0a2020205f5f5345455f5f7c202020497a6162656c20506572657a7c202020697a6162656c706572657a40747663756c747572612e636f6d2e62727c202020323138322d33313836200d0a2020205f5f534d4553505f5f7c2020204a616e61c3ad6e61204368657276657a616e7c2020206a616e61696e61636172646f736f40747663756c747572612e636f6d2e62727c20323138322d333231352020200d0a2020205f5f534552545f5f7c202020536f6c616e6765204c656d6f737c202020736f6c616e67656c656d6f7340747663756c747572612e636f6d2e62727c202020323138322d333231350d0a2020205f5f4350535f5f7c202020416e746f6e696f204d656c6c6f7c202020616e746f6e696f6d656c6c6f40747663756c747572612e636f6d2e62727c2020323336362d34393131207c7c0d0a0d0a0d0a, NULL, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_hotwords`
-- 

CREATE TABLE `tiki_hotwords` (
  `word` varchar(40) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_hotwords`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_html_pages`
-- 

CREATE TABLE `tiki_html_pages` (
  `pageName` varchar(200) NOT NULL default '',
  `content` longblob,
  `refresh` int(10) default NULL,
  `type` char(1) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`pageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_html_pages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_html_pages_dynamic_zones`
-- 

CREATE TABLE `tiki_html_pages_dynamic_zones` (
  `pageName` varchar(40) NOT NULL default '',
  `zone` varchar(80) NOT NULL default '',
  `type` char(2) default NULL,
  `content` text,
  PRIMARY KEY  (`pageName`,`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_html_pages_dynamic_zones`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_images`
-- 

CREATE TABLE `tiki_images` (
  `imageId` int(14) NOT NULL auto_increment,
  `galleryId` int(14) NOT NULL default '0',
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `lon` float default NULL,
  `lat` float default NULL,
  `created` int(14) default NULL,
  `user` varchar(200) default '',
  `hits` int(14) default NULL,
  `path` varchar(255) default NULL,
  PRIMARY KEY  (`imageId`),
  KEY `name` (`name`),
  KEY `description` (`description`(255)),
  KEY `hits` (`hits`),
  KEY `ti_gId` (`galleryId`),
  KEY `ti_cr` (`created`),
  KEY `ti_us` (`user`),
  FULLTEXT KEY `ft` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_images`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_images_data`
-- 

CREATE TABLE `tiki_images_data` (
  `imageId` int(14) NOT NULL default '0',
  `xsize` int(8) NOT NULL default '0',
  `ysize` int(8) NOT NULL default '0',
  `type` char(1) NOT NULL default '',
  `filesize` int(14) default NULL,
  `filetype` varchar(80) default NULL,
  `filename` varchar(80) default NULL,
  `data` longblob,
  `etag` varchar(32) default NULL,
  PRIMARY KEY  (`imageId`,`xsize`,`ysize`,`type`),
  KEY `t_i_d_it` (`imageId`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_images_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_integrator_reps`
-- 

CREATE TABLE `tiki_integrator_reps` (
  `repID` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `path` varchar(255) NOT NULL default '',
  `start_page` varchar(255) NOT NULL default '',
  `css_file` varchar(255) NOT NULL default '',
  `visibility` char(1) NOT NULL default 'y',
  `cacheable` char(1) NOT NULL default 'y',
  `expiration` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  PRIMARY KEY  (`repID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `tiki_integrator_reps`
-- 

INSERT INTO `tiki_integrator_reps` (`repID`, `name`, `path`, `start_page`, `css_file`, `visibility`, `cacheable`, `expiration`, `description`) VALUES 
(1, 'Doxygened (1.3.4) Documentation', '', 'index.html', 'doxygen.css', 'n', 'y', 0, 'Use this repository as rule source for all your repositories based on doxygened docs. To setup yours just add new repository and copy rules from this repository :)');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_integrator_rules`
-- 

CREATE TABLE `tiki_integrator_rules` (
  `ruleID` int(11) NOT NULL auto_increment,
  `repID` int(11) NOT NULL default '0',
  `ord` int(2) unsigned NOT NULL default '0',
  `srch` blob NOT NULL,
  `repl` blob NOT NULL,
  `type` char(1) NOT NULL default 'n',
  `casesense` char(1) NOT NULL default 'y',
  `rxmod` varchar(20) NOT NULL default '',
  `enabled` char(1) NOT NULL default 'n',
  `description` text NOT NULL,
  PRIMARY KEY  (`ruleID`),
  KEY `repID` (`repID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `tiki_integrator_rules`
-- 

INSERT INTO `tiki_integrator_rules` (`ruleID`, `repID`, `ord`, `srch`, `repl`, `type`, `casesense`, `rxmod`, `enabled`, `description`) VALUES 
(1, 1, 1, 0x2e2a3c626f64795b5e3e5d2a3f3e282e2a3f293c2f626f64792e2a, 0x31, 'y', 'n', 'i', 'y', 'Extract code between <body> and </body> tags'),
(2, 1, 2, 0x696d67207372633d28227c2729283f21687474703a2f2f29, 0x696d67207372633d317b706174687d2f, 'y', 'n', 'i', 'y', 'Fix image paths'),
(3, 1, 3, 0x687265663d28227c2729283f2128237c28687474707c667470293a2f2f2929, 0x687265663d3174696b692d696e7465677261746f722e7068703f72657049443d7b72657049447d2666696c653d, 'y', 'n', 'i', 'y', 'Replace internal links to integrator. Don''t touch an external link.');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_language`
-- 

CREATE TABLE `tiki_language` (
  `source` tinyblob NOT NULL,
  `lang` char(16) NOT NULL default '',
  `tran` tinyblob,
  PRIMARY KEY  (`source`(255),`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_language`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_languages`
-- 

CREATE TABLE `tiki_languages` (
  `lang` char(16) NOT NULL default '',
  `language` varchar(255) default NULL,
  PRIMARY KEY  (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_languages`
-- 

INSERT INTO `tiki_languages` (`lang`, `language`) VALUES 
('en', 'English');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_link_cache`
-- 

CREATE TABLE `tiki_link_cache` (
  `cacheId` int(14) NOT NULL auto_increment,
  `url` varchar(250) default NULL,
  `data` longblob,
  `refresh` int(14) default NULL,
  PRIMARY KEY  (`cacheId`),
  KEY `url` (`url`),
  KEY `urlindex` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_link_cache`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_links`
-- 

CREATE TABLE `tiki_links` (
  `fromPage` varchar(160) NOT NULL default '',
  `toPage` varchar(160) NOT NULL default '',
  `reltype` varchar(50) default NULL,
  PRIMARY KEY  (`fromPage`,`toPage`),
  KEY `toPage` (`toPage`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_links`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_live_support_events`
-- 

CREATE TABLE `tiki_live_support_events` (
  `eventId` int(14) NOT NULL auto_increment,
  `reqId` varchar(32) NOT NULL default '',
  `type` varchar(40) default NULL,
  `seqId` int(14) default NULL,
  `senderId` varchar(32) default NULL,
  `data` text,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`eventId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_live_support_events`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_live_support_message_comments`
-- 

CREATE TABLE `tiki_live_support_message_comments` (
  `cId` int(12) NOT NULL auto_increment,
  `msgId` int(12) default NULL,
  `data` text,
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`cId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_live_support_message_comments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_live_support_messages`
-- 

CREATE TABLE `tiki_live_support_messages` (
  `msgId` int(12) NOT NULL auto_increment,
  `data` text,
  `timestamp` int(14) default NULL,
  `user` varchar(200) NOT NULL default '',
  `username` varchar(200) default NULL,
  `priority` int(2) default NULL,
  `status` char(1) default NULL,
  `assigned_to` varchar(200) default NULL,
  `resolution` varchar(100) default NULL,
  `title` varchar(200) default NULL,
  `module` int(4) default NULL,
  `email` varchar(250) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_live_support_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_live_support_modules`
-- 

CREATE TABLE `tiki_live_support_modules` (
  `modId` int(4) NOT NULL auto_increment,
  `name` varchar(90) default NULL,
  PRIMARY KEY  (`modId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `tiki_live_support_modules`
-- 

INSERT INTO `tiki_live_support_modules` (`modId`, `name`) VALUES 
(1, 'wiki'),
(2, 'forums'),
(3, 'image galleries'),
(4, 'file galleries'),
(5, 'directory');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_live_support_operators`
-- 

CREATE TABLE `tiki_live_support_operators` (
  `user` varchar(200) NOT NULL default '',
  `accepted_requests` int(10) default NULL,
  `status` varchar(20) default NULL,
  `longest_chat` int(10) default NULL,
  `shortest_chat` int(10) default NULL,
  `average_chat` int(10) default NULL,
  `last_chat` int(14) default NULL,
  `time_online` int(10) default NULL,
  `votes` int(10) default NULL,
  `points` int(10) default NULL,
  `status_since` int(14) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_live_support_operators`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_live_support_requests`
-- 

CREATE TABLE `tiki_live_support_requests` (
  `reqId` varchar(32) NOT NULL default '',
  `user` varchar(200) NOT NULL default '',
  `tiki_user` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  `operator` varchar(200) default NULL,
  `operator_id` varchar(32) default NULL,
  `user_id` varchar(32) default NULL,
  `reason` text,
  `req_timestamp` int(14) default NULL,
  `timestamp` int(14) default NULL,
  `status` varchar(40) default NULL,
  `resolution` varchar(40) default NULL,
  `chat_started` int(14) default NULL,
  `chat_ended` int(14) default NULL,
  PRIMARY KEY  (`reqId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_live_support_requests`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_logs`
-- 

CREATE TABLE `tiki_logs` (
  `logId` int(8) NOT NULL auto_increment,
  `logtype` varchar(20) NOT NULL,
  `logmessage` text NOT NULL,
  `loguser` varchar(40) NOT NULL,
  `logip` varchar(200) default NULL,
  `logclient` text NOT NULL,
  `logtime` int(14) NOT NULL,
  PRIMARY KEY  (`logId`),
  KEY `logtype` (`logtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=151 ;

-- 
-- Dumping data for table `tiki_logs`
-- 

INSERT INTO `tiki_logs` (`logId`, `logtype`, `logmessage`, `loguser`, `logip`, `logclient`, `logtime`) VALUES 
(1, 'system', 'erased full cache', 'Anonymous', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268835159),
(2, 'login', 'logged out', 'Anonymous', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268835159),
(3, 'login', 'logged from change_password', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268835166),
(4, 'system', 'erased full cache', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268835209),
(5, 'login', 'logged from http://localhost/tiki/tiki-list_file_gallery.php?galleryId=1', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268849097),
(6, 'system', 'erased templates_c content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268849431),
(7, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268849433),
(8, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268849749),
(9, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268850006),
(10, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268850220),
(11, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268850699),
(12, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268851306),
(13, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268852175),
(14, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268852178),
(15, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268852845),
(16, 'system', 'erased templates_c content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268852859),
(17, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268853798),
(18, 'perms', 'unassigned perm tiki_p_view from group Anonymous', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268854001),
(19, 'system', 'erased all Tiki cache content', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268854340),
(20, 'admingroups', 'created group Leitores', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268854445),
(21, 'admingroups', 'created group Editores', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268854528),
(22, 'admingroups', 'created group Autores', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268854537),
(23, 'perms', 'Assigned rodrigo@utopia.org.br in group Autores', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268856265),
(24, 'login', 'logged out', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268856282),
(25, 'login', 'logged from change_password', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268856411),
(26, 'login', 'logged out', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268856512),
(27, 'login', 'logged from http://localhost/tiki/tiki-list_file_gallery.php?galleryId=1', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268856515),
(28, 'system', 'erased full cache', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268857878),
(29, 'admingroups', 'modified group Anonymous to Anonymous', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858011),
(30, 'login', 'logged out', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858060),
(31, 'login', 'logged from http://localhost/tiki/tiki-index.php?page=tiki-index.php', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858072),
(32, 'admingroups', 'modified group Anonymous to Anonymous', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858098),
(33, 'login', 'logged out', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858104),
(34, 'login', 'logged from http://localhost/tiki/tiki-index.php?page=HomePage', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858123),
(35, 'login', 'logged out', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858165),
(36, 'login', 'logged from http://localhost/tiki/tiki-index.php?page=HomePage', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; pt-BR; rv:1.9.0.18) Gecko/2010021501 Ubuntu/9.04 (jaunty) Firefox/3.0.18', 1268858172),
(37, 'login', 'logged from http://localhost/pubeduc/tiki-index.php?page=HomePage', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268921135),
(38, 'login', 'logged out', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268922957),
(39, 'login', 'logged from http://localhost/pubeduc/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268922968),
(40, 'login', 'logged out', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268923011),
(41, 'login', 'logged from http://localhost/pubeduc/HomePage', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268923081),
(42, 'login', 'logged from http://localhost/pubeduc/HomePage', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268923093),
(43, 'admingroups', 'modified group Registered to Registered', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268923156),
(44, 'login', 'logged out', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268923172),
(45, 'login', 'logged from http://localhost/pubeduc/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268923176),
(46, 'adminmodules', 'assigned module Application Menu', 'admin', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268923228),
(47, 'login', 'logged from http://pubeduc.tvcultura.com.br/HomePage', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268930287),
(48, 'system', 'erased full cache', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268930325),
(49, 'login', 'logged out', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268930359),
(50, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268930364),
(51, 'system', 'erased all Tiki cache content', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268930710),
(52, 'system', 'erased all Tiki cache content', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932061),
(53, 'adminmodules', 'changed user module Menu', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932375),
(54, 'adminmodules', 'assigned module Menu', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932417),
(55, 'adminmodules', 'assigned module Application Menu', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932577),
(56, 'adminmodules', 'assigned module Application Menu', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932592),
(57, 'adminmodules', 'changed user module Application Menu', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932609),
(58, 'adminmodules', 'changed user module Application Menu', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932619),
(59, 'login', 'logged out', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932630),
(60, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932688),
(61, 'login', 'logged out', 'rodrigo@utopia.org.br', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932713),
(62, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932748),
(63, 'adminusers', 'changed password for admin', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932769),
(64, 'login', 'logged out', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932822),
(65, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268932828),
(66, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268933380),
(67, 'login', 'logged out', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268933637),
(68, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268933644),
(69, 'login', 'logged out', 'rodrigo@utopia.org.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268933953),
(70, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268933964),
(71, 'login', 'logged out', 'rodrigo@utopia.org.br', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268934008),
(72, 'login', 'logged out', 'Anonymous', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268934009),
(73, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.62.181', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268934013),
(74, 'perms', 'Assigned carlosseabra@tvcultura.com.br in group Admins', 'admin', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268934434),
(75, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-remind_password.php', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268945965),
(76, 'perms', 'Assigned carlos@seabra.com in group Leitores', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268946123),
(77, 'login', 'logged out', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268946135),
(78, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268946921),
(79, 'perms', 'Assigned janainacardoso@tvcultura.com.br in group Admins', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1268947671),
(80, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268969275),
(81, 'login', 'logged out', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268972493),
(82, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268972775),
(83, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268972792),
(84, 'login', 'logged from change_password', 'rodrigo@utopia.org.br', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268973035),
(85, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268974657),
(86, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268974733),
(87, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268974872),
(88, 'login', 'logged out', 'rodrigo@utopia.org.br', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268976749),
(89, 'users', 'Deleted account rodrigosprimo@gmail.com', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268977125),
(90, 'users', 'Deleted account rodrigosprimo@gmail.com', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1268977311),
(91, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268977500),
(92, 'login', 'logged out', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1268977692),
(93, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-login_scr.php', 'carlosseabra@tvcultura.com.br', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269006621),
(94, 'login', 'logged from change_password', 'carlos@seabra.com', '172.20.1.17', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269008656),
(95, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269010073),
(96, 'admingroups', 'created group Autor (SMESP/LP)', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269010862),
(97, 'perms', 'Assigned marciasavioli@tvcultura.com.br in group Autor (SMESP/LP)', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269011077),
(98, 'perms', 'Removed marciasavioli@tvcultura.com.br from group Autor (SMESP/LP)', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269011114),
(99, 'perms', 'Assigned jchervezan@gmail.com in group Autor (SMESP/LP)', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269011227),
(100, 'admingroups', 'created group Editor (SMESP)', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269011320),
(101, 'perms', 'Assigned janachervezan@yahoo.com.br in group Editor (SMESP)', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269011384),
(102, 'login', 'logged out', 'carlosseabra@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269011867),
(103, 'login', 'logged from change_password', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269011943),
(104, 'login', 'logged from change_password', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012171),
(105, 'admingroups', 'modified group Autor (SMESP/LP) to Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012379),
(106, 'login', 'logged out', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269012386),
(107, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269012410),
(108, 'admingroups', 'modified group Autor (SMESP/LP) to Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012457),
(109, 'login', 'logged out', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269012473),
(110, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269012482),
(111, 'login', 'logged out', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012715),
(112, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012727),
(113, 'login', 'logged out', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012837),
(114, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012843),
(115, 'admingroups', 'modified group Editor (SMESP) to Editor (SMESP)', 'admin', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269012858),
(116, 'login', 'logged out', 'jchervezan@gmail.com', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269012868),
(117, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'janachervezan@yahoo.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269012876),
(118, 'admingroups', 'created group Leitor (SMESP/LP)', 'admin', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269013378),
(119, 'perms', 'Assigned rodrigo@utopia.org.br in group Leitor (SMESP/LP)', 'admin', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; pt-BR; rv:1.9.1.4) Gecko/20091016 Firefox/3.5.4 (.NET CLR 3.5.30729)', 1269013518),
(120, 'login', 'logged out', 'janachervezan@yahoo.com.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269013524),
(121, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '200.136.27.135', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.0.249.89 Safari/532.5', 1269013553),
(122, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269021947),
(123, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269021964),
(124, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269021992),
(125, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269022009),
(126, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269022068),
(127, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269022068),
(128, 'system', 'erased all Tiki cache content', 'admin', '187.37.59.69', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269022198),
(129, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023443),
(130, 'perms', 'Assigned g.fantin@uol.com.br in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023547),
(131, 'perms', 'Assigned inesnocite@uol.com.br in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023591),
(132, 'perms', 'Assigned viscopac@hotmail.com in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023633),
(133, 'perms', 'Assigned titacaricati@yahoo.com.br in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023670),
(134, 'perms', 'Assigned americamarinho@terra.com.br in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023705),
(135, 'perms', 'Assigned celina_diaf@yahoo.com.br in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023747),
(136, 'perms', 'Assigned lena.costa@uol.com.br in group Autor (SMESP/LP)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269023780),
(137, 'admingroups', 'created group Autor (SMESP/MAT)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269024757),
(138, 'admingroups', 'modified group Autor (SMESP/MAT) to Autor (SMESP/MAT)', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269024778),
(139, 'login', 'logged out', 'janainacardoso@tvcultura.com.br', '200.136.27.135', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; GTB6.3; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', 1269025023),
(140, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '189.98.80.115', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269094642),
(141, 'admingroups', 'modified group Autor (SMESP/LP) to Autor (SMESP/LP)', 'admin', '189.98.80.115', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269094679),
(142, 'login', 'logged from change_password', 'rodrigosprimo@gmail.com', '189.98.80.115', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1269094714),
(143, 'perms', 'Assigned rodrigosprimo@gmail.com in group Autor (SMESP/LP)', 'admin', '189.98.80.115', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269094755),
(144, 'login', 'logged out', 'rodrigosprimo@gmail.com', '189.98.80.115', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1269094761),
(145, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigosprimo@gmail.com', '189.98.80.115', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1269094768),
(146, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigo@utopia.org.br', '189.98.70.226', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US) AppleWebKit/532.9 (KHTML, like Gecko) Chrome/5.0.307.11 Safari/532.9', 1269122583),
(147, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'rodrigosprimo@gmail.com', '189.98.70.226', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269122647),
(148, 'login', 'logged out', 'rodrigosprimo@gmail.com', '189.98.70.226', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269122653),
(149, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'admin', '189.98.70.226', 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.3pre) Gecko/20100316 Ubuntu/9.10 (karmic) Namoroka/3.6.3pre', 1269122675),
(150, 'login', 'logged from http://pubeduc.tvcultura.com.br/tiki-index.php?page=HomePage', 'carlosseabra@tvcultura.com.br', '201.83.72.150', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1036 Safari/532.5', 1269127794);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_mail_events`
-- 

CREATE TABLE `tiki_mail_events` (
  `event` varchar(200) default NULL,
  `object` varchar(200) default NULL,
  `email` varchar(200) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_mail_events`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_mailin_accounts`
-- 

CREATE TABLE `tiki_mailin_accounts` (
  `accountId` int(12) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL default '',
  `account` varchar(50) NOT NULL default '',
  `pop` varchar(255) default NULL,
  `port` int(4) default NULL,
  `username` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `active` char(1) default NULL,
  `type` varchar(40) default NULL,
  `smtp` varchar(255) default NULL,
  `useAuth` char(1) default NULL,
  `smtpPort` int(4) default NULL,
  `anonymous` char(1) NOT NULL default 'y',
  `attachments` char(1) NOT NULL default 'n',
  `article_topicId` int(4) default NULL,
  `article_type` varchar(50) default NULL,
  `discard_after` varchar(255) default NULL,
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_mailin_accounts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_menu_languages`
-- 

CREATE TABLE `tiki_menu_languages` (
  `menuId` int(8) NOT NULL auto_increment,
  `language` char(16) NOT NULL default '',
  PRIMARY KEY  (`menuId`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_menu_languages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_menu_options`
-- 

CREATE TABLE `tiki_menu_options` (
  `optionId` int(8) NOT NULL auto_increment,
  `menuId` int(8) default NULL,
  `type` char(1) default NULL,
  `name` varchar(200) default NULL,
  `url` varchar(255) default NULL,
  `position` int(4) default NULL,
  `section` text,
  `perm` text,
  `groupname` text,
  `userlevel` int(4) default '0',
  `icon` varchar(200) default NULL,
  PRIMARY KEY  (`optionId`),
  UNIQUE KEY `uniq_menu` (`menuId`,`name`(30),`url`(50),`position`,`section`(60),`perm`(50),`groupname`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=185 ;

-- 
-- Dumping data for table `tiki_menu_options`
-- 

INSERT INTO `tiki_menu_options` (`optionId`, `menuId`, `type`, `name`, `url`, `position`, `section`, `perm`, `groupname`, `userlevel`, `icon`) VALUES 
(1, 42, 'o', 'Home', './', 10, '', '', '', 0, NULL),
(2, 42, 'o', 'Search', 'tiki-searchresults.php', 13, 'feature_search_fulltext', 'tiki_p_search', '', 0, 'xfce4-appfinder48x48'),
(3, 42, 'o', 'Search', 'tiki-searchindex.php', 13, 'feature_search', 'tiki_p_search', '', 0, 'xfce4-appfinder48x48'),
(4, 42, 'o', 'Contact Us', 'tiki-contact.php', 20, 'feature_contact,feature_messages', '', '', 0, NULL),
(5, 42, 'o', 'Stats', 'tiki-stats.php', 23, 'feature_stats', 'tiki_p_view_stats', '', 0, NULL),
(6, 42, 'o', 'Categories', 'tiki-browse_categories.php', 25, 'feature_categories', 'tiki_p_view_category', '', 0, NULL),
(7, 42, 'o', 'Freetags', 'tiki-browse_freetags.php', 27, 'feature_freetags', 'tiki_p_view_freetags', '', 0, 'vcard48x48'),
(8, 42, 'o', 'Calendar', 'tiki-calendar.php', 35, 'feature_calendar', 'tiki_p_view_calendar', '', 0, 'date48x48'),
(9, 42, 'o', 'Users Map', 'tiki-gmap_usermap.php', 36, 'feature_gmap', '', '', 0, NULL),
(10, 42, 'o', 'Tiki Calendar', 'tiki-action_calendar.php', 37, 'feature_action_calendar', 'tiki_p_view_tiki_calendar', '', 0, NULL),
(11, 42, 'o', 'Mobile', 'tiki-mobile.php', 37, 'feature_mobile', '', '', 0, NULL),
(12, 42, 'o', '(debug)', 'javascript:toggle(''debugconsole'')', 40, 'feature_debug_console', 'tiki_p_admin', '', 0, NULL),
(13, 42, 's', 'MyTiki', 'tiki-my_tiki.php', 50, 'feature_mytiki', '', 'Registered', 0, 'userfiles48x48'),
(14, 42, 'o', 'MyTiki Home', 'tiki-my_tiki.php', 51, 'feature_mytiki', '', 'Registered', 0, NULL),
(15, 42, 'o', 'Preferences', 'tiki-user_preferences.php', 55, 'feature_mytiki,feature_userPreferences', '', 'Registered', 0, NULL),
(16, 42, 'o', 'Messages', 'messu-mailbox.php', 60, 'feature_mytiki,feature_messages', 'tiki_p_messages', 'Registered', 0, NULL),
(17, 42, 'o', 'Tasks', 'tiki-user_tasks.php', 65, 'feature_mytiki,feature_tasks', 'tiki_p_tasks', 'Registered', 0, NULL),
(18, 42, 'o', 'Bookmarks', 'tiki-user_bookmarks.php', 70, 'feature_mytiki,feature_user_bookmarks', 'tiki_p_create_bookmarks', 'Registered', 0, NULL),
(19, 42, 'o', 'Modules', 'tiki-user_assigned_modules.php', 75, 'feature_mytiki,user_assigned_modules', 'tiki_p_configure_modules', 'Registered', 0, NULL),
(20, 42, 'o', 'Webmail', 'tiki-webmail.php', 85, 'feature_mytiki,feature_webmail', 'tiki_p_use_webmail', 'Registered', 0, NULL),
(21, 42, 'o', 'Contacts', 'tiki-contacts.php', 87, 'feature_mytiki,feature_contacts', '', 'Registered', 0, NULL),
(22, 42, 'o', 'Notepad', 'tiki-notepad_list.php', 90, 'feature_mytiki,feature_notepad', 'tiki_p_notepad', 'Registered', 0, NULL),
(23, 42, 'o', 'My Files', 'tiki-userfiles.php', 95, 'feature_mytiki,feature_userfiles', 'tiki_p_userfiles', 'Registered', 0, NULL),
(24, 42, 'o', 'User Menu', 'tiki-usermenu.php', 100, 'feature_mytiki,feature_usermenu', 'tiki_p_usermenu', 'Registered', 0, NULL),
(25, 42, 'o', 'Mini Calendar', 'tiki-minical.php', 105, 'feature_mytiki,feature_minical', 'tiki_p_minical', 'Registered', 0, NULL),
(26, 42, 'o', 'My Watches', 'tiki-user_watches.php', 110, 'feature_mytiki,feature_user_watches', '', 'Registered', 0, NULL),
(27, 42, 's', 'Community', 'tiki-list_users.php', 187, 'feature_friends', 'tiki_p_list_users', '', 0, 'users48x48'),
(28, 42, 'o', 'User List', 'tiki-list_users.php', 188, 'feature_friends', 'tiki_p_list_users', '', 0, NULL),
(29, 42, 'o', 'Friendship Network', 'tiki-friends.php', 189, 'feature_friends', '', 'Registered', 0, NULL),
(30, 42, 's', 'Wiki', 'tiki-index.php', 200, 'feature_wiki', 'tiki_p_view', '', 0, 'wikipages48x48'),
(31, 42, 'o', 'Wiki Home', 'tiki-index.php', 202, 'feature_wiki', 'tiki_p_view', '', 0, NULL),
(32, 42, 'o', 'Last Changes', 'tiki-lastchanges.php', 205, 'feature_wiki,feature_lastChanges', 'tiki_p_view', '', 0, NULL),
(33, 42, 'o', 'Dump', 'dump/new.tar', 210, 'feature_wiki,feature_dump', 'tiki_p_view', '', 0, NULL),
(34, 42, 'o', 'Rankings', 'tiki-wiki_rankings.php', 215, 'feature_wiki,feature_wiki_rankings', 'tiki_p_view', '', 0, NULL),
(35, 42, 'o', 'List Pages', 'tiki-listpages.php', 220, 'feature_wiki,feature_listPages', 'tiki_p_view', '', 0, NULL),
(36, 42, 'o', 'Orphan Pages', 'tiki-orphan_pages.php', 225, 'feature_wiki,feature_listorphanPages', 'tiki_p_view', '', 0, NULL),
(37, 42, 'o', 'Sandbox', 'tiki-editpage.php?page=sandbox', 230, 'feature_wiki,feature_sandbox', 'tiki_p_view', '', 0, NULL),
(38, 42, 'o', 'Multiple Print', 'tiki-print_pages.php', 235, 'feature_wiki,feature_wiki_multiprint', 'tiki_p_view', '', 0, NULL),
(39, 42, 'o', 'Send Pages', 'tiki-send_objects.php', 240, 'feature_wiki,feature_comm', 'tiki_p_view,tiki_p_send_pages', '', 0, NULL),
(40, 42, 'o', 'Received Pages', 'tiki-received_pages.php', 245, 'feature_wiki,feature_comm', 'tiki_p_view,tiki_p_admin_received_pages', '', 0, NULL),
(41, 42, 'o', 'Structures', 'tiki-admin_structures.php', 250, 'feature_wiki,feature_wiki_structure', 'tiki_p_view', '', 0, NULL),
(42, 42, 'o', 'Mind Map', 'tiki-mindmap.php', 255, 'feature_wiki_mindmap', 'tiki_p_view', '', 0, NULL),
(43, 42, 's', 'Image Galleries', 'tiki-galleries.php', 300, 'feature_galleries', 'tiki_p_view_image_gallery', '', 0, 'stock_select-color48x48'),
(44, 42, 'o', 'Galleries', 'tiki-galleries.php', 305, 'feature_galleries', 'tiki_p_list_image_galleries', '', 0, NULL),
(45, 42, 'o', 'Rankings', 'tiki-galleries_rankings.php', 310, 'feature_galleries,feature_gal_rankings', 'tiki_p_list_image_galleries', '', 0, NULL),
(46, 42, 'o', 'Upload Image', 'tiki-upload_image.php', 315, 'feature_galleries', 'tiki_p_upload_images', '', 0, NULL),
(47, 42, 'o', 'Directory Batch', 'tiki-batch_upload.php', 318, 'feature_galleries,feature_gal_batch', 'tiki_p_batch_upload', '', 0, NULL),
(48, 42, 'o', 'System Gallery', 'tiki-list_gallery.php?galleryId=0', 320, 'feature_galleries', 'tiki_p_admin_galleries', '', 0, NULL),
(49, 42, 's', 'Articles', 'tiki-view_articles.php', 350, 'feature_articles', 'tiki_p_read_article', '', 0, 'stock_bold48x48'),
(50, 42, 's', 'Articles', 'tiki-view_articles.php', 350, 'feature_articles', 'tiki_p_articles_read_heading', '', 0, 'stock_bold48x48'),
(51, 42, 'o', 'Articles Home', 'tiki-view_articles.php', 355, 'feature_articles', 'tiki_p_read_article', '', 0, NULL),
(52, 42, 'o', 'Articles Home', 'tiki-view_articles.php', 355, 'feature_articles', 'tiki_p_articles_read_heading', '', 0, NULL),
(53, 42, 'o', 'List Articles', 'tiki-list_articles.php', 360, 'feature_articles', 'tiki_p_read_article', '', 0, NULL),
(54, 42, 'o', 'List Articles', 'tiki-list_articles.php', 360, 'feature_articles', 'tiki_p_articles_read_heading', '', 0, NULL),
(55, 42, 'o', 'Rankings', 'tiki-cms_rankings.php', 365, 'feature_articles,feature_cms_rankings', 'tiki_p_read_article', '', 0, NULL),
(56, 42, 'o', 'Submit Article', 'tiki-edit_submission.php', 370, 'feature_articles,feature_submissions', 'tiki_p_read_article,tiki_p_submit_article', '', 0, NULL),
(57, 42, 'o', 'View submissions', 'tiki-list_submissions.php', 375, 'feature_articles,feature_submissions', 'tiki_p_read_article,tiki_p_submit_article', '', 0, NULL),
(58, 42, 'o', 'View submissions', 'tiki-list_submissions.php', 375, 'feature_articles,feature_submissions', 'tiki_p_read_article,tiki_p_approve_submission', '', 0, NULL),
(59, 42, 'o', 'View Submissions', 'tiki-list_submissions.php', 375, 'feature_articles,feature_submissions', 'tiki_p_read_article,tiki_p_remove_submission', '', 0, NULL),
(60, 42, 'o', 'New Article', 'tiki-edit_article.php', 380, 'feature_articles', 'tiki_p_read_article,tiki_p_edit_article', '', 0, NULL),
(61, 42, 'o', 'Send Articles', 'tiki-send_objects.php', 385, 'feature_articles,feature_comm', 'tiki_p_read_article,tiki_p_send_articles', '', 0, NULL),
(62, 42, 'o', 'Received Articles', 'tiki-received_articles.php', 385, 'feature_articles,feature_comm', 'tiki_p_read_article,tiki_p_admin_received_articles', '', 0, NULL),
(63, 42, 'o', 'Admin Types', 'tiki-article_types.php', 395, 'feature_articles', 'tiki_p_articles_admin_types', '', 0, NULL),
(64, 42, 'o', 'Admin Topics', 'tiki-admin_topics.php', 390, 'feature_articles', 'tiki_p_articles_admin_topics', '', 0, NULL),
(65, 42, 's', 'Blogs', 'tiki-list_blogs.php', 450, 'feature_blogs', 'tiki_p_read_blog', '', 0, 'blogs48x48'),
(66, 42, 'o', 'List Blogs', 'tiki-list_blogs.php', 455, 'feature_blogs', 'tiki_p_read_blog', '', 0, NULL),
(67, 42, 'o', 'Rankings', 'tiki-blog_rankings.php', 460, 'feature_blogs,feature_blog_rankings', 'tiki_p_read_blog', '', 0, NULL),
(68, 42, 'o', 'Create/Edit Blog', 'tiki-edit_blog.php', 465, 'feature_blogs', 'tiki_p_read_blog,tiki_p_create_blogs', '', 0, NULL),
(69, 42, 'o', 'Post', 'tiki-blog_post.php', 470, 'feature_blogs', 'tiki_p_read_blog,tiki_p_blog_post', '', 0, NULL),
(70, 42, 'o', 'Admin Posts', 'tiki-list_posts.php', 475, 'feature_blogs', 'tiki_p_read_blog,tiki_p_blog_admin', '', 0, NULL),
(71, 42, 's', 'Forums', 'tiki-forums.php', 500, 'feature_forums', 'tiki_p_forum_read', '', 0, 'stock_index48x48'),
(72, 42, 'o', 'List Forums', 'tiki-forums.php', 505, 'feature_forums', 'tiki_p_forum_read', '', 0, NULL),
(73, 42, 'o', 'Rankings', 'tiki-forum_rankings.php', 510, 'feature_forums,feature_forum_rankings', 'tiki_p_forum_read', '', 0, NULL),
(74, 42, 'o', 'Admin Forums', 'tiki-admin_forums.php', 515, 'feature_forums', 'tiki_p_forum_read,tiki_p_admin_forum', '', 0, NULL),
(75, 42, 's', 'Directory', 'tiki-directory_browse.php', 550, 'feature_directory', 'tiki_p_view_directory', '', 0, NULL),
(76, 42, 'o', 'Submit a new link', 'tiki-directory_add_site.php', 555, 'feature_directory', 'tiki_p_submit_link', '', 0, NULL),
(77, 42, 'o', 'Browse Directory', 'tiki-directory_browse.php', 560, 'feature_directory', 'tiki_p_view_directory', '', 0, NULL),
(78, 42, 'o', 'Admin Directory', 'tiki-directory_admin.php', 565, 'feature_directory', 'tiki_p_view_directory,tiki_p_admin_directory_cats', '', 0, NULL),
(79, 42, 'o', 'Admin Directory', 'tiki-directory_admin.php', 565, 'feature_directory', 'tiki_p_view_directory,tiki_p_admin_directory_sites', '', 0, NULL),
(80, 42, 'o', 'Admin Directory', 'tiki-directory_admin.php', 565, 'feature_directory', 'tiki_p_view_directory,tiki_p_validate_links', '', 0, NULL),
(81, 42, 's', 'File Galleries', 'tiki-list_file_gallery.php', 600, 'feature_file_galleries', 'tiki-list_file_gallery.php|tiki_p_view_file_gallery|tiki_p_upload_files', '', 0, 'file-manager48x48'),
(82, 42, 'o', 'List Galleries', 'tiki-list_file_gallery.php', 605, 'feature_file_galleries', 'tiki_p_list_file_galleries', '', 0, NULL),
(83, 42, 'o', 'Rankings', 'tiki-file_galleries_rankings.php', 610, 'feature_file_galleries,feature_file_galleries_rankings', 'tiki_p_list_file_galleries', '', 0, NULL),
(84, 42, 'o', 'Upload File', 'tiki-upload_file.php', 615, 'feature_file_galleries', 'tiki_p_upload_files', '', 0, NULL),
(85, 42, 'o', 'Directory batch', 'tiki-batch_upload_files.php', 617, 'feature_file_galleries_batch', 'tiki_p_batch_upload_file_dir', '', 0, NULL),
(86, 42, 's', 'FAQs', 'tiki-list_faqs.php', 650, 'feature_faqs', 'tiki_p_view_faqs', '', 0, 'stock_dialog_question48x48'),
(87, 42, 'o', 'List FAQs', 'tiki-list_faqs.php', 665, 'feature_faqs', 'tiki_p_view_faqs', '', 0, NULL),
(88, 42, 'o', 'Admin FAQs', 'tiki-list_faqs.php', 660, 'feature_faqs', 'tiki_p_admin_faqs', '', 0, NULL),
(89, 42, 's', 'Maps', 'tiki-map.php', 700, 'feature_maps', 'tiki_p_map_view', '', 0, 'maps48x48'),
(90, 42, 'o', 'Mapfiles', 'tiki-map_edit.php', 705, 'feature_maps', 'tiki_p_map_view', '', 0, NULL),
(91, 42, 'o', 'Layer Management', 'tiki-map_upload.php', 710, 'feature_maps', 'tiki_p_map_edit', '', 0, NULL),
(92, 42, 's', 'Quizzes', 'tiki-list_quizzes.php', 750, 'feature_quizzes', 'tiki_p_take_quiz', '', 0, ''),
(93, 42, 'o', 'List Quizzes', 'tiki-list_quizzes.php', 755, 'feature_quizzes', 'tiki_p_take_quiz', '', 0, NULL),
(94, 42, 'o', 'Quiz Stats', 'tiki-quiz_stats.php', 760, 'feature_quizzes', 'tiki_p_view_quiz_stats', '', 0, NULL),
(95, 42, 'o', 'Admin Quizzes', 'tiki-edit_quiz.php', 765, 'feature_quizzes', 'tiki_p_admin_quizzes', '', 0, NULL),
(96, 42, 's', 'TikiSheet', 'tiki-sheets.php', 780, 'feature_sheet', 'tiki_p_view_sheet', '', 0, ''),
(97, 42, 'o', 'List Sheets', 'tiki-sheets.php', 782, 'feature_sheet', 'tiki_p_view_sheet', '', 0, NULL),
(98, 42, 's', 'Trackers', 'tiki-list_trackers.php', 800, 'feature_trackers', 'tiki_p_list_trackers', '', 0, 'gnome-settings-font48x48'),
(99, 42, 'o', 'List Trackers', 'tiki-list_trackers.php', 805, 'feature_trackers', 'tiki_p_list_trackers', '', 0, NULL),
(100, 42, 'o', 'Admin Trackers', 'tiki-admin_trackers.php', 810, 'feature_trackers', 'tiki_p_admin_trackers', '', 0, NULL),
(101, 42, 's', 'Surveys', 'tiki-list_surveys.php', 850, 'feature_surveys', 'tiki_p_take_survey', '', 0, ''),
(102, 42, 'o', 'List Surveys', 'tiki-list_surveys.php', 855, 'feature_surveys', 'tiki_p_take_survey', '', 0, NULL),
(103, 42, 'o', 'Stats', 'tiki-survey_stats.php', 860, 'feature_surveys', 'tiki_p_view_survey_stats', '', 0, NULL),
(104, 42, 'o', 'Admin Surveys', 'tiki-admin_surveys.php', 865, 'feature_surveys', 'tiki_p_admin_surveys', '', 0, NULL),
(105, 42, 's', 'Newsletters', 'tiki-newsletters.php', 900, 'feature_newsletters', 'tiki_p_subscribe_newsletters', '', 0, 'messages48x48'),
(106, 42, 's', 'Newsletters', 'tiki-newsletters.php', 900, 'feature_newsletters', 'tiki_p_send_newsletters', '', 0, 'messages48x48'),
(107, 42, 's', 'Newsletters', 'tiki-newsletters.php', 900, 'feature_newsletters', 'tiki_p_admin_newsletters', '', 0, 'messages48x48'),
(108, 42, 's', 'Newsletters', 'tiki-newsletters.php', 900, 'feature_newsletters', 'tiki_p_list_newsletters', '', 0, 'messages48x48'),
(109, 42, 'o', 'Send Newsletters', 'tiki-send_newsletters.php', 905, 'feature_newsletters', 'tiki_p_send_newsletters', '', 0, NULL),
(110, 42, 'o', 'Admin Newsletters', 'tiki-admin_newsletters.php', 910, 'feature_newsletters', 'tiki_p_admin_newsletters', '', 0, NULL),
(111, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin', '', 0, 'icon-configuration48x48'),
(112, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_categories', '', 0, 'icon-configuration48x48'),
(113, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_banners', '', 0, 'icon-configuration48x48'),
(114, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_edit_templates', '', 0, 'icon-configuration48x48'),
(115, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_edit_cookies', '', 0, 'icon-configuration48x48'),
(116, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_dynamic', '', 0, 'icon-configuration48x48'),
(117, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_mailin', '', 0, 'icon-configuration48x48'),
(118, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_edit_content_templates', '', 0, 'icon-configuration48x48'),
(119, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_edit_html_pages', '', 0, 'icon-configuration48x48'),
(120, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_view_referer_stats', '', 0, 'icon-configuration48x48'),
(121, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_shoutbox', '', 0, 'icon-configuration48x48'),
(122, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_live_support_admin', '', 0, 'icon-configuration48x48'),
(123, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'user_is_operator', '', 0, 'icon-configuration48x48'),
(124, 42, 'r', 'Admin', 'tiki-admin.php', 1050, 'feature_integrator', 'tiki_p_admin_integrator', '', 0, 'icon-configuration48x48'),
(125, 42, 'r', 'Admin', 'tiki-admin.php', 1050, 'feature_edit_templates', 'tiki_p_edit_templates', '', 0, 'icon-configuration48x48'),
(126, 42, 'r', 'Admin', 'tiki-admin.php', 1050, 'feature_view_tpl', 'tiki_p_edit_templates', '', 0, 'icon-configuration48x48'),
(127, 42, 'r', 'Admin', 'tiki-admin.php', 1050, 'feature_editcss', 'tiki_p_create_css', '', 0, 'icon-configuration48x48'),
(128, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_contribution', '', 0, 'icon-configuration48x48'),
(129, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_users', '', 0, 'icon-configuration48x48'),
(130, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_admin_toolbars', '', 0, 'icon-configuration48x48'),
(131, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_edit_menu', '', 0, 'icon-configuration48x48'),
(132, 42, 'r', 'Admin', 'tiki-admin.php', 1050, '', 'tiki_p_clean_cache', '', 0, 'icon-configuration48x48'),
(133, 42, 'o', 'Admin Home', 'tiki-admin.php', 1051, '', 'tiki_p_admin', '', 0, NULL),
(134, 42, 'o', 'Live Support', 'tiki-live_support_admin.php', 1055, 'feature_live_support', 'tiki_p_live_support_admin', '', 0, NULL),
(135, 42, 'o', 'Live Support', 'tiki-live_support_admin.php', 1055, 'feature_live_support', 'user_is_operator', '', 0, NULL),
(136, 42, 'o', 'Banning', 'tiki-admin_banning.php', 1060, 'feature_banning', 'tiki_p_admin_banning', '', 0, NULL),
(137, 42, 'o', 'Calendar', 'tiki-admin_calendars.php', 1065, 'feature_calendar', 'tiki_p_admin_calendar', '', 0, NULL),
(138, 42, 'o', 'Users', 'tiki-adminusers.php', 1070, '', 'tiki_p_admin_users', '', 0, NULL),
(139, 42, 'o', 'Groups', 'tiki-admingroups.php', 1075, '', 'tiki_p_admin', '', 0, NULL),
(140, 42, 'o', 'External Pages Cache', 'tiki-list_cache.php', 1080, 'cachepages', 'tiki_p_admin', '', 0, NULL),
(141, 42, 'o', 'Modules', 'tiki-admin_modules.php', 1085, '', 'tiki_p_admin', '', 0, NULL),
(142, 42, 'o', 'Hotwords', 'tiki-admin_hotwords.php', 1095, 'feature_hotwords', 'tiki_p_admin', '', 0, NULL),
(143, 42, 'o', 'External Feeds', 'tiki-admin_rssmodules.php', 1100, '', 'tiki_p_admin_rssmodules', '', 0, NULL),
(144, 42, 'o', 'Menus', 'tiki-admin_menus.php', 1105, '', 'tiki_p_edit_menu', '', 0, NULL),
(145, 42, 'o', 'Polls', 'tiki-admin_polls.php', 1110, 'feature_polls', 'tiki_p_admin_polls', '', 0, NULL),
(146, 42, 'o', 'Mail Notifications', 'tiki-admin_notifications.php', 1120, '', 'tiki_p_admin_notifications', '', 0, NULL),
(147, 42, 'o', 'Search Stats', 'tiki-search_stats.php', 1125, 'feature_search_stats', 'tiki_p_admin', '', 0, NULL),
(148, 42, 'o', 'Theme Control', 'tiki-theme_control.php', 1130, 'feature_theme_control', 'tiki_p_admin', '', 0, NULL),
(149, 42, 'o', 'Toolbars', 'tiki-admin_toolbars.php', 1135, '', 'tiki_p_admin_toolbars', '', 0, NULL),
(150, 42, 'o', 'Categories', 'tiki-admin_categories.php', 1145, 'feature_categories', 'tiki_p_admin_categories', '', 0, NULL),
(151, 42, 'o', 'Banners', 'tiki-list_banners.php', 1150, 'feature_banners', 'tiki_p_admin_banners', '', 0, NULL),
(152, 42, 'o', 'Edit Templates', 'tiki-edit_templates.php', 1155, 'feature_edit_templates', 'tiki_p_edit_templates', '', 0, NULL),
(153, 42, 'o', 'View Templates', 'tiki-edit_templates.php', 1155, 'feature_view_tpl', 'tiki_p_edit_templates', '', 2, NULL),
(154, 42, 'o', 'Edit CSS', 'tiki-edit_css.php', 1158, 'feature_editcss', 'tiki_p_create_css', '', 2, NULL),
(155, 42, 'o', 'Dynamic content', 'tiki-list_contents.php', 1165, 'feature_dynamic_content', 'tiki_p_admin_dynamic', '', 0, NULL),
(156, 42, 'o', 'Mail-in', 'tiki-admin_mailin.php', 1175, 'feature_mailin', 'tiki_p_admin_mailin', '', 0, NULL),
(157, 42, 'o', 'HTML Pages', 'tiki-admin_html_pages.php', 1185, 'feature_html_pages', 'tiki_p_edit_html_pages', '', 0, NULL),
(158, 42, 'o', 'Shoutbox', 'tiki-shoutbox.php', 1190, 'feature_shoutbox', 'tiki_p_admin_shoutbox', '', 0, NULL),
(159, 42, 'o', 'Shoutbox Words', 'tiki-admin_shoutbox_words.php', 1191, 'feature_shoutbox', 'tiki_p_admin_shoutbox', '', 0, NULL),
(160, 42, 'o', 'Referer Stats', 'tiki-referer_stats.php', 1195, 'feature_referer_stats', 'tiki_p_view_referer_stats', '', 0, NULL),
(161, 42, 'o', 'Integrator', 'tiki-admin_integrator.php', 1205, 'feature_integrator', 'tiki_p_admin_integrator', '', 0, NULL),
(162, 42, 'o', 'phpinfo', 'tiki-phpinfo.php', 1215, '', 'tiki_p_admin', '', 0, NULL),
(163, 42, 'o', 'Tiki Cache/Sys Admin', 'tiki-admin_system.php', 1230, '', 'tiki_p_clean_cache', '', 0, NULL),
(164, 42, 'o', 'Tiki Importer', 'tiki-importer.php', 1240, '', 'tiki_p_admin_importer', '', 0, NULL),
(165, 42, 'o', 'Tiki Logs', 'tiki-syslog.php', 1245, '', 'tiki_p_admin', '', 0, NULL),
(166, 42, 'o', 'Security Admin', 'tiki-admin_security.php', 1250, '', 'tiki_p_admin', '', 0, NULL),
(167, 42, 'o', 'Action Log', 'tiki-admin_actionlog.php', 1255, 'feature_actionlog', 'tiki_p_admin', '', 0, NULL),
(168, 42, 'o', 'Action Log', 'tiki-admin_actionlog.php', 1255, 'feature_actionlog', 'tiki_p_view_actionlog', '', 0, NULL),
(169, 42, 'o', 'Action Log', 'tiki-admin_actionlog.php', 1255, 'feature_actionlog', 'tiki_p_view_actionlog_owngroups', '', 0, NULL),
(170, 42, 'o', 'Content Templates', 'tiki-admin_content_templates.php', 1256, '', 'tiki_p_edit_content_templates', '', 0, NULL),
(171, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_wiki_comments', 'tiki_p_admin', '', 0, NULL),
(172, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_article_comments', 'tiki_p_admin', '', 0, NULL),
(173, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_blog_comments', 'tiki_p_admin', '', 0, NULL),
(174, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_file_galleries_comments', 'tiki_p_admin', '', 0, NULL),
(175, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_image_galleries_comments', 'tiki_p_admin', '', 0, NULL),
(176, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_poll_comments', 'tiki_p_admin', '', 0, NULL),
(177, 42, 'o', 'Comments', 'tiki-list_comments.php', 1260, 'feature_faq_comments', 'tiki_p_admin', '', 0, NULL),
(178, 42, 'o', 'Contribution', 'tiki-admin_contribution.php', 1265, 'feature_contribution', 'tiki_p_admin_contribution', '', 0, NULL),
(179, 42, 's', 'Kaltura Video', 'tiki-list_kaltura_entries.php', 950, 'feature_kaltura', 'tiki_p_admin | tiki_p_admin_kaltura | tiki_p_list_videos', '', 0, NULL),
(180, 42, 'o', 'List Entries', 'tiki-list_kaltura_entries.php', 952, 'feature_kaltura', 'tiki_p_admin | tiki_p_admin_kaltura | tiki_p_list_videos', '', 0, NULL),
(181, 42, 'o', 'Upload Media', 'tiki-kaltura_upload.php', 954, 'feature_kaltura', 'tiki_p_admin | tiki_p_admin_kaltura | tiki_p_upload_videos', '', 0, NULL),
(183, 43, 'o', 'Listar acervos', 'tiki-list_file_gallery.php', 3, '', '', 'Registered', 0, NULL),
(184, 43, 'o', 'Carregar arquivo', 'tiki-upload_file.php', 4, '', '', 'Registered', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_menus`
-- 

CREATE TABLE `tiki_menus` (
  `menuId` int(8) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `description` text,
  `type` char(1) default NULL,
  `icon` varchar(200) default NULL,
  `use_items_icons` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`menuId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `tiki_menus`
-- 

INSERT INTO `tiki_menus` (`menuId`, `name`, `description`, `type`, `icon`, `use_items_icons`) VALUES 
(42, 'Application menu', 'Main extensive navigation menu', 'd', NULL, 'y'),
(43, 'Menu registrados', '', 'd', '', 'n');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_minical_events`
-- 

CREATE TABLE `tiki_minical_events` (
  `user` varchar(200) default '',
  `eventId` int(12) NOT NULL auto_increment,
  `title` varchar(250) default NULL,
  `description` text,
  `start` int(14) default NULL,
  `end` int(14) default NULL,
  `security` char(1) default NULL,
  `duration` int(3) default NULL,
  `topicId` int(12) default NULL,
  `reminded` char(1) default NULL,
  PRIMARY KEY  (`eventId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_minical_events`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_minical_topics`
-- 

CREATE TABLE `tiki_minical_topics` (
  `user` varchar(200) default '',
  `topicId` int(12) NOT NULL auto_increment,
  `name` varchar(250) default NULL,
  `filename` varchar(200) default NULL,
  `filetype` varchar(200) default NULL,
  `filesize` varchar(200) default NULL,
  `data` longblob,
  `path` varchar(250) default NULL,
  `isIcon` char(1) default NULL,
  PRIMARY KEY  (`topicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_minical_topics`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_minichat`
-- 

CREATE TABLE `tiki_minichat` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `channel` varchar(31) default NULL,
  `ts` int(10) unsigned NOT NULL,
  `user` varchar(31) default NULL,
  `nick` varchar(31) default NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `channel` (`channel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_minichat`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_modules`
-- 

CREATE TABLE `tiki_modules` (
  `moduleId` int(8) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `position` char(1) NOT NULL default '',
  `ord` int(4) NOT NULL default '0',
  `type` char(1) default NULL,
  `title` varchar(255) default NULL,
  `cache_time` int(14) default NULL,
  `rows` int(4) default NULL,
  `params` varchar(255) NOT NULL default '',
  `groups` text,
  PRIMARY KEY  (`name`(100),`position`,`ord`,`params`(140)),
  KEY `positionType` (`position`,`type`),
  KEY `moduleId` (`moduleId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `tiki_modules`
-- 

INSERT INTO `tiki_modules` (`moduleId`, `name`, `position`, `ord`, `type`, `title`, `cache_time`, `rows`, `params`, `groups`) VALUES 
(1, 'Application Menu', 'l', 30, NULL, '', 0, 10, 'flip=y', 'a:1:{i:0;s:6:"Admins";}'),
(2, 'Menu', 'l', 1, NULL, '', 0, 10, '', 'a:1:{i:0;s:10:"Registered";}');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_newsletter_groups`
-- 

CREATE TABLE `tiki_newsletter_groups` (
  `nlId` int(12) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  `code` varchar(32) default NULL,
  PRIMARY KEY  (`nlId`,`groupName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_newsletter_groups`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_newsletter_included`
-- 

CREATE TABLE `tiki_newsletter_included` (
  `nlId` int(12) NOT NULL default '0',
  `includedId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`nlId`,`includedId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_newsletter_included`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_newsletter_subscriptions`
-- 

CREATE TABLE `tiki_newsletter_subscriptions` (
  `nlId` int(12) NOT NULL default '0',
  `email` varchar(255) NOT NULL default '',
  `code` varchar(32) default NULL,
  `valid` char(1) default NULL,
  `subscribed` int(14) default NULL,
  `isUser` char(1) NOT NULL default 'n',
  `included` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`nlId`,`email`,`isUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_newsletter_subscriptions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_newsletters`
-- 

CREATE TABLE `tiki_newsletters` (
  `nlId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `lastSent` int(14) default NULL,
  `editions` int(10) default NULL,
  `users` int(10) default NULL,
  `allowUserSub` char(1) default 'y',
  `allowAnySub` char(1) default NULL,
  `unsubMsg` char(1) default 'y',
  `validateAddr` char(1) default 'y',
  `frequency` int(14) default NULL,
  `allowTxt` char(1) default 'y',
  `author` varchar(200) default NULL,
  PRIMARY KEY  (`nlId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_newsletters`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_object_ratings`
-- 

CREATE TABLE `tiki_object_ratings` (
  `catObjectId` int(12) NOT NULL default '0',
  `pollId` int(12) NOT NULL default '0',
  PRIMARY KEY  (`catObjectId`,`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_object_ratings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_objects`
-- 

CREATE TABLE `tiki_objects` (
  `objectId` int(12) NOT NULL auto_increment,
  `type` varchar(50) default NULL,
  `itemId` varchar(255) default NULL,
  `description` text,
  `created` int(14) default NULL,
  `name` varchar(200) default NULL,
  `href` varchar(200) default NULL,
  `hits` int(8) default NULL,
  `comments_locked` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`objectId`),
  KEY `type` (`type`,`objectId`),
  KEY `itemId` (`itemId`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_page_drafts`
-- 

CREATE TABLE `tiki_page_drafts` (
  `user` varchar(200) NOT NULL default '',
  `pageName` varchar(255) NOT NULL,
  `data` mediumtext,
  `description` varchar(200) default NULL,
  `comment` varchar(200) default NULL,
  `lastModif` int(14) default NULL,
  PRIMARY KEY  (`pageName`(120),`user`(120))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_page_drafts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_page_footnotes`
-- 

CREATE TABLE `tiki_page_footnotes` (
  `user` varchar(200) NOT NULL default '',
  `pageName` varchar(250) NOT NULL default '',
  `data` text,
  PRIMARY KEY  (`user`(150),`pageName`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_page_footnotes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_page_list_types`
-- 

CREATE TABLE `tiki_page_list_types` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `title` varchar(160) default NULL,
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_page_list_types`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_page_lists`
-- 

CREATE TABLE `tiki_page_lists` (
  `list_type_id` int(8) unsigned NOT NULL,
  `priority` int(8) unsigned NOT NULL,
  `page_name` varchar(160) NOT NULL,
  `score` float default NULL,
  PRIMARY KEY  (`list_type_id`,`page_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_page_lists`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_pages`
-- 

CREATE TABLE `tiki_pages` (
  `page_id` int(14) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `hits` int(8) default NULL,
  `data` mediumtext,
  `description` varchar(200) default NULL,
  `lastModif` int(14) default NULL,
  `comment` varchar(200) default NULL,
  `version` int(8) NOT NULL default '0',
  `version_minor` int(8) NOT NULL default '0',
  `user` varchar(200) default '',
  `ip` varchar(15) default NULL,
  `flag` char(1) default NULL,
  `points` int(8) default NULL,
  `votes` int(8) default NULL,
  `cache` longtext,
  `wiki_cache` int(10) default NULL,
  `cache_timestamp` int(14) default NULL,
  `pageRank` decimal(4,3) default NULL,
  `creator` varchar(200) default NULL,
  `page_size` int(10) unsigned default '0',
  `lang` varchar(16) default NULL,
  `lockedby` varchar(200) default NULL,
  `is_html` tinyint(1) default '0',
  `created` int(14) default NULL,
  `wysiwyg` char(1) default NULL,
  `wiki_authors_style` varchar(20) default '',
  `comments_enabled` char(1) default NULL,
  PRIMARY KEY  (`page_id`),
  UNIQUE KEY `pageName` (`pageName`),
  KEY `data` (`data`(255)),
  KEY `pageRank` (`pageRank`),
  KEY `lastModif` (`lastModif`),
  FULLTEXT KEY `ft` (`pageName`,`description`,`data`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `tiki_pages`
-- 

INSERT INTO `tiki_pages` (`page_id`, `pageName`, `hits`, `data`, `description`, `lastModif`, `comment`, `version`, `version_minor`, `user`, `ip`, `flag`, `points`, `votes`, `cache`, `wiki_cache`, `cache_timestamp`, `pageRank`, `creator`, `page_size`, `lang`, `lockedby`, `is_html`, `created`, `wysiwyg`, `wiki_authors_style`, `comments_enabled`) VALUES 
(1, 'HomePage', 96, '!!!Este Ã© um ambiente restrito a autores e colaboradores dos projetos de \r\n!!!&quot;PublicaÃ§Ãµes EducaÃ§Ã£o&quot; da FundaÃ§Ã£o Padre Anchieta.\r\n\r\n*__SEE - Secretaria Estadual de EducaÃ§Ã£o de SP ~~#999:(Escola de FormaÃ§Ã£o de Professores)__:~~\r\n*__SMESP - Secretaria Municipal de EducaÃ§Ã£o de S. Paulo ~~#999:(Cadernos de Apoio e Aprendizagem: LÃ­ngua Portuguesa e MatemÃ¡tica)__:~~\r\n*__SERT - Secretaria do Emprego e RelaÃ§Ãµes do Trabalho ~~#999:(ConteÃºdos Gerais, Arcos Ocupacionais, Time do Emprego e Banco do Povo)__:~~\r\n*__CPS - Centro Paula Souza ~~#999:(InformÃ¡tica, MecÃ¢nica, EletrÃ´nica e NÃºcleo BÃ¡sico)__:~~\r\n\r\n---\r\n\r\n~~#666:Em caso de dÃºvidas ou necessidade de esclarecimento, contacte as pessoas abaixo:~~\r\n\r\n||   ''''Projeto''''|   ''''ResponsÃ¡vel''''|   ''''E-mail''''|   ''''Telefone''''\r\n   __SEE__|   Izabel Perez|   izabelperez@tvcultura.com.br|   2182-3186 \r\n   __SMESP__ &amp;nbsp;|   JanaÃ­na Chervezan|   janainacardoso@tvcultura.com.br &amp;nbsp;| 2182-3215   \r\n   __SERT__|   Solange Lemos|   solangelemos@tvcultura.com.br|   2182-3215\r\n   __CPS__|   Antonio Mello|   antoniomello@tvcultura.com.br|  2366-4911 ||\r\n\r\n\r\n', '', 1269132068, '', 6, 0, 'carlosseabra@tvcultura.com.br', '201.83.72.150', '', NULL, NULL, NULL, NULL, 0, NULL, 'admin', 1027, 'en', '', 0, 1268835166, 'n', '', NULL),
(2, 'http:tiki-list_file_gallery.php', 4, '_HOMEPAGE_CONTENT_', '', 1268947413, 'Tiki initialization', 1, 0, 'admin', '0.0.0.0', '', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', 18, 'en', '', 0, 1268947413, 'n', '', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_pages_changes`
-- 

CREATE TABLE `tiki_pages_changes` (
  `page_id` int(14) NOT NULL default '0',
  `version` int(10) NOT NULL default '0',
  `segments_added` int(10) default NULL,
  `segments_removed` int(10) default NULL,
  `segments_total` int(10) default NULL,
  PRIMARY KEY  (`page_id`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_pages_changes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_pages_translation_bits`
-- 

CREATE TABLE `tiki_pages_translation_bits` (
  `translation_bit_id` int(14) NOT NULL auto_increment,
  `page_id` int(14) NOT NULL,
  `version` int(8) NOT NULL,
  `source_translation_bit` int(10) default NULL,
  `original_translation_bit` int(10) default NULL,
  `flags` set('critical') default '',
  PRIMARY KEY  (`translation_bit_id`),
  KEY `page_id` (`page_id`),
  KEY `original_translation_bit` (`original_translation_bit`),
  KEY `source_translation_bit` (`source_translation_bit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_pages_translation_bits`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_pageviews`
-- 

CREATE TABLE `tiki_pageviews` (
  `day` int(14) NOT NULL default '0',
  `pageviews` int(14) default NULL,
  PRIMARY KEY  (`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_pageviews`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_perspective_preferences`
-- 

CREATE TABLE `tiki_perspective_preferences` (
  `perspectiveId` int(11) NOT NULL,
  `pref` varchar(40) NOT NULL,
  `value` text,
  PRIMARY KEY  (`perspectiveId`,`pref`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_perspective_preferences`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_perspectives`
-- 

CREATE TABLE `tiki_perspectives` (
  `perspectiveId` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY  (`perspectiveId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_perspectives`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_plugin_security`
-- 

CREATE TABLE `tiki_plugin_security` (
  `fingerprint` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `added_by` varchar(200) default NULL,
  `approval_by` varchar(200) default NULL,
  `last_update` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `last_objectType` varchar(20) NOT NULL,
  `last_objectId` varchar(200) NOT NULL,
  PRIMARY KEY  (`fingerprint`),
  KEY `last_object` (`last_objectType`,`last_objectId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_plugin_security`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_poll_objects`
-- 

CREATE TABLE `tiki_poll_objects` (
  `catObjectId` int(11) NOT NULL default '0',
  `pollId` int(11) NOT NULL default '0',
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`catObjectId`,`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_poll_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_poll_options`
-- 

CREATE TABLE `tiki_poll_options` (
  `pollId` int(8) NOT NULL default '0',
  `optionId` int(8) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `position` int(4) NOT NULL default '0',
  `votes` int(8) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_poll_options`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_polls`
-- 

CREATE TABLE `tiki_polls` (
  `pollId` int(8) NOT NULL auto_increment,
  `title` varchar(200) default NULL,
  `votes` int(8) default NULL,
  `active` char(1) default NULL,
  `publishDate` int(14) default NULL,
  `voteConsiderationSpan` int(4) default '0',
  PRIMARY KEY  (`pollId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_polls`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_preferences`
-- 

CREATE TABLE `tiki_preferences` (
  `name` varchar(40) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_preferences`
-- 

INSERT INTO `tiki_preferences` (`name`, `value`) VALUES 
('browsertitle', 'PublicaÃ§Ãµes EducaÃ§Ã£o'),
('sender_email', 'carlosseabra@tvcultura.com.br'),
('https_login', 'disabled'),
('https_port', ''),
('feature_switch_ssl_mode', 'n'),
('feature_show_stay_in_ssl_mode', 'n'),
('language', 'pt-br'),
('lastUpdatePrefs', '3431'),
('case_patched', 'y'),
('tiki_version_last_check', '1268835200'),
('tiki_release', '4.2'),
('tiki_needs_upgrade', 'n'),
('feature_wiki', 'y'),
('site_title_location', 'before'),
('urlIndex', ''),
('permission_denied_url', ''),
('zend_mail_handler', 'sendmail'),
('zend_mail_smtp_server', ''),
('zend_mail_smtp_auth', ''),
('zend_mail_smtp_user', ''),
('zend_mail_smtp_pass', ''),
('zend_mail_smtp_port', '25'),
('zend_mail_smtp_security', ''),
('urlOnUsername', ''),
('display_field_order', 'DMY'),
('server_timezone', 'Brazil/East'),
('long_date_format', '%A %d of %B, %Y'),
('long_time_format', '%H:%M:%S %Z'),
('short_date_format', '%a %d of %b, %Y'),
('short_time_format', '%H:%M %Z'),
('users_prefs_display_timezone', 'Local'),
('display_timezone', 'Brazil/East'),
('feature_help', 'n'),
('feature_menusfolderstyle', 'y'),
('tikiIndex', 'file1'),
('validator_emails', ''),
('registerPasscode', '5d61aa5516c460f279c55f6ad16a920a'),
('min_username_length', '1'),
('max_username_length', '50'),
('username_pattern', '/^[ ''\\-_a-zA-Z0-9@\\.]*$/'),
('min_pass_length', '5'),
('pass_due', '-1'),
('email_due', '-1'),
('unsuccessful_logins', '10'),
('login_is_email', 'y'),
('http_port', ''),
('rememberme', 'disabled'),
('remembertime', '7200'),
('cookie_name', 'tikiwiki'),
('cookie_domain', ''),
('cookie_path', '/tiki/'),
('auth_method', 'tiki'),
('url_after_validation', ''),
('auth_ldap_host', ''),
('auth_ldap_port', ''),
('auth_ldap_type', 'full'),
('auth_ldap_scope', 'sub'),
('auth_ldap_basedn', ''),
('auth_ldap_userdn', ''),
('auth_ldap_userattr', 'uid'),
('auth_ldap_useroc', 'inetOrgPerson'),
('auth_ldap_nameattr', 'displayName'),
('auth_ldap_emailattr', ''),
('auth_ldap_countryattr', ''),
('auth_ldap_syncuserattr', 'n'),
('auth_ldap_syncgroupattr', 'n'),
('auth_ldap_groupdn', ''),
('auth_ldap_groupattr', 'cn'),
('auth_ldap_groupdescattr', ''),
('auth_ldap_groupoc', 'groupOfUniqueNames'),
('auth_ldap_memberattr', 'uniqueMember'),
('auth_ldap_adminuser', ''),
('auth_ldap_adminpass', ''),
('auth_ldap_version', '3'),
('auth_ldap_usergroupattr', ''),
('auth_ldap_groupgroupattr', ''),
('pam_service', ''),
('shib_affiliation', ''),
('shib_group', 'Shibboleth'),
('site_style', 'strasa.css'),
('maxRecords', '50'),
('sitelogo_src', 'styles/pubeduc/padreanchieta.gif'),
('sitelogo_bgcolor', 'transparent'),
('sitelogo_bgstyle', ''),
('sitelogo_alt', 'Site Logo'),
('sitemycode', ''),
('feature_topbar_custom_code', ''),
('feature_top_bar', 'n'),
('feature_sitesearch', 'n'),
('sitetitle', 'PublicaÃ§Ãµes EducaÃ§Ã£o'),
('sitesubtitle', ''),
('style_option', 'cool.css'),
('site_style_option', 'cool.css'),
('site_favicon', ''),
('site_favicon_type', 'image/png'),
('feature_topbar_id_menu', '42'),
('direct_pagination_max_middle_links', '2'),
('direct_pagination_max_ending_links', '0'),
('feature_site_report_email', ''),
('feature_endbody_code', ''),
('jquery_effect', ''),
('jquery_effect_direction', 'vertical'),
('jquery_effect_speed', 'normal'),
('jquery_effect_tabs', 'slide'),
('jquery_effect_tabs_direction', 'vertical'),
('jquery_effect_tabs_speed', 'fast'),
('feature_jquery_ui_theme', 'smoothness'),
('iepngfix_selectors', '#sitelogo a img'),
('iepngfix_elements', ''),
('main_shadow_start', ''),
('main_shadow_end', ''),
('header_shadow_start', ''),
('header_shadow_end', ''),
('middle_shadow_start', ''),
('middle_shadow_end', ''),
('center_shadow_start', ''),
('center_shadow_end', ''),
('footer_shadow_start', ''),
('footer_shadow_end', ''),
('box_shadow_start', ''),
('box_shadow_end', ''),
('feature_custom_center_column_header', ''),
('feature_left_column', 'y'),
('feature_right_column', 'y'),
('slide_style', 'slidestyle.css'),
('feature_siteloc', 'y'),
('feature_sitetitle', 'y'),
('feature_sitedesc', 'n'),
('sitelogo_align', 'left'),
('style', 'strasa.css'),
('site_title_breadcrumb', 'fulltrail'),
('feature_sitemycode', 'n'),
('feature_jquery_ui', 'y'),
('feature_obzip', 'y'),
('memcache_flags', ''),
('max_rss_articles', '10'),
('title_rss_articles', ''),
('desc_rss_articles', ''),
('index_rss_articles', ''),
('rss_articles', 'n'),
('showAuthor_rss_articles', 'n'),
('max_rss_directories', '10'),
('title_rss_directories', ''),
('desc_rss_directories', ''),
('index_rss_directories', ''),
('rss_directories', 'n'),
('showAuthor_rss_directories', 'n'),
('max_rss_image_galleries', '10'),
('title_rss_image_galleries', ''),
('desc_rss_image_galleries', ''),
('index_rss_image_galleries', ''),
('rss_image_galleries', 'n'),
('showAuthor_rss_image_galleries', 'n'),
('max_rss_file_galleries', '10'),
('desc_rss_file_galleries', ''),
('index_rss_file_galleries', ''),
('rss_file_galleries', 'n'),
('showAuthor_rss_file_galleries', 'y'),
('max_rss_image_gallery', '10'),
('title_rss_image_gallery', ''),
('desc_rss_image_gallery', ''),
('index_rss_image_gallery', ''),
('rss_image_gallery', 'n'),
('showAuthor_rss_image_gallery', 'n'),
('max_rss_file_gallery', '10'),
('desc_rss_file_gallery', ''),
('index_rss_file_gallery', ''),
('rss_file_gallery', 'n'),
('showAuthor_rss_file_gallery', 'y'),
('max_rss_wiki', '10'),
('title_rss_wiki', ''),
('desc_rss_wiki', ''),
('index_rss_wiki', ''),
('rss_wiki', 'n'),
('showAuthor_rss_wiki', 'n'),
('max_rss_blogs', '10'),
('title_rss_blogs', ''),
('desc_rss_blogs', ''),
('index_rss_blogs', ''),
('rss_blogs', 'n'),
('showAuthor_rss_blogs', 'n'),
('max_rss_blog', '10'),
('title_rss_blog', ''),
('desc_rss_blog', ''),
('index_rss_blog', ''),
('rss_blog', 'n'),
('showAuthor_rss_blog', 'n'),
('max_rss_forum', '10'),
('title_rss_forum', ''),
('desc_rss_forum', ''),
('index_rss_forum', ''),
('rss_forum', 'n'),
('showAuthor_rss_forum', 'n'),
('max_rss_forums', '10'),
('title_rss_forums', ''),
('desc_rss_forums', ''),
('index_rss_forums', ''),
('rss_forums', 'n'),
('showAuthor_rss_forums', 'n'),
('max_rss_mapfiles', '10'),
('title_rss_mapfiles', ''),
('desc_rss_mapfiles', ''),
('index_rss_mapfiles', ''),
('rss_mapfiles', 'n'),
('showAuthor_rss_mapfiles', 'n'),
('max_rss_tracker', '10'),
('title_rss_tracker', ''),
('desc_rss_tracker', ''),
('index_rss_tracker', ''),
('rss_tracker', 'n'),
('showAuthor_rss_tracker', 'n'),
('max_rss_trackers', '10'),
('title_rss_trackers', ''),
('desc_rss_trackers', ''),
('index_rss_trackers', ''),
('rss_trackers', 'n'),
('showAuthor_rss_trackers', 'n'),
('max_rss_calendar', '10'),
('title_rss_calendar', ''),
('desc_rss_calendar', ''),
('index_rss_calendar', ''),
('rss_calendar', 'n'),
('showAuthor_rss_calendar', 'n'),
('rssfeed_default_version', '5'),
('rssfeed_language', 'pt-br'),
('rssfeed_editor', ''),
('rssfeed_webmaster', ''),
('rss_cache_time', '0'),
('rssfeed_img', 'img/tiki/tikilogo.png'),
('title_rss_file_galleries', 'PublicaÃ§Ãµes EducaÃ§Ã£o - Galerias de Arquivo'),
('title_rss_file_gallery', 'PublicaÃ§Ãµes EducaÃ§Ã£o - Galerias de Arquivo'),
('fgal_quota_show', 'n'),
('fgal_use_db', 'n'),
('fgal_podcast_dir', 'files/'),
('fgal_batch_dir', ''),
('fgal_quota_default', '0'),
('fgal_list_id', 'n'),
('fgal_list_type', 'n'),
('fgal_list_name', 'n'),
('fgal_list_description', 'n'),
('fgal_list_size', 'y'),
('fgal_list_created', 'y'),
('fgal_list_lastModif', 'n'),
('fgal_list_creator', 'n'),
('fgal_list_author', 'y'),
('fgal_list_last_user', 'n'),
('fgal_list_comment', 'n'),
('fgal_list_files', 'n'),
('fgal_list_hits', 'n'),
('fgal_list_lockedby', 'n'),
('fgal_sort_mode', 'name_asc'),
('fgal_default_view', 'list'),
('fgal_enable_auto_indexing', 'y'),
('fgal_allow_duplicates', 'y'),
('fgal_show_explorer', 'n'),
('useGroupHome', 'y'),
('wikiHomePage', 'HomePage'),
('feature_page_title', 'n'),
('w_use_db', 'y'),
('w_use_dir', ''),
('wiki_comments_per_page', '10'),
('wiki_comments_default_ordering', 'points_desc'),
('wiki_list_sortorder', 'pageName'),
('wiki_list_sortdirection', 'asc'),
('warn_on_edit_time', '2'),
('feature_wiki_userpage_prefix', 'User:'),
('feature_wiki_mandatory_category', '-1'),
('wiki_edit_section_level', '0'),
('maxVersions', '0'),
('keep_versions', '1'),
('default_wiki_diff_style', 'sidediff'),
('wikiapproval_staging_category', '0'),
('wikiapproval_approved_category', '0'),
('wikiapproval_outofsync_category', '0'),
('wikiapproval_prefix', '*'),
('wikiapproval_master_group', ''),
('gal_use_lib', 'gd'),
('sitelogo_title', 'PublicaÃ§Ãµes EducaÃ§Ã£o'),
('feature_sefurl', 'y'),
('feature_sefurl_filter', 'y'),
('feature_sefurl_paths', 'a:1:{i:0;s:0:"";}'),
('fgal_use_dir', 'pubeduc_files/'),
('modseparateanon', 'n'),
('user_flip_modules', 'module'),
('feature_bot_bar_power_by_tw', 'n'),
('feature_bot_logo', 'y'),
('feature_custom_html_head_content', '{literal}\r\n<style type="text/css">\r\nform.findtable { padding-top: 10px; }\r\n</style>\r\n{/literal}'),
('feature_bot_bar_rss', 'n'),
('bot_logo_code', '<div id="power" style="padding-top: 9px; padding-bottom: 0px;">\r\nFundaÃ§Ã£o Padre Anchieta â€“ PublicaÃ§Ãµes EducaÃ§Ã£o<br />\r\nRua Cenno Sbrighi 378, 05036-900, SÃ£o Paulo, SP â€“ Telefone para contato: 2182-3215 ou 2182-3292\r\n</div>'),
('validateUsers', 'n');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_private_messages`
-- 

CREATE TABLE `tiki_private_messages` (
  `messageId` int(8) NOT NULL auto_increment,
  `toNickname` varchar(200) NOT NULL default '',
  `poster` varchar(200) NOT NULL default 'anonymous',
  `timestamp` int(14) default NULL,
  `received` tinyint(1) NOT NULL default '0',
  `message` varchar(255) default NULL,
  PRIMARY KEY  (`messageId`),
  KEY `received` (`received`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_private_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_profile_symbols`
-- 

CREATE TABLE `tiki_profile_symbols` (
  `domain` varchar(50) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `object` varchar(150) NOT NULL,
  `type` varchar(20) NOT NULL,
  `value` varchar(50) NOT NULL,
  `named` enum('y','n') NOT NULL,
  `creation_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`domain`,`profile`,`object`),
  KEY `named` (`named`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_profile_symbols`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_programmed_content`
-- 

CREATE TABLE `tiki_programmed_content` (
  `pId` int(8) NOT NULL auto_increment,
  `contentId` int(8) NOT NULL default '0',
  `publishDate` int(14) NOT NULL default '0',
  `data` text,
  PRIMARY KEY  (`pId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_programmed_content`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_quiz_question_options`
-- 

CREATE TABLE `tiki_quiz_question_options` (
  `optionId` int(10) NOT NULL auto_increment,
  `questionId` int(10) default NULL,
  `optionText` text,
  `points` int(4) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_quiz_question_options`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_quiz_questions`
-- 

CREATE TABLE `tiki_quiz_questions` (
  `questionId` int(10) NOT NULL auto_increment,
  `quizId` int(10) default NULL,
  `question` text,
  `position` int(4) default NULL,
  `type` char(1) default NULL,
  `maxPoints` int(4) default NULL,
  PRIMARY KEY  (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_quiz_questions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_quiz_results`
-- 

CREATE TABLE `tiki_quiz_results` (
  `resultId` int(10) NOT NULL auto_increment,
  `quizId` int(10) default NULL,
  `fromPoints` int(4) default NULL,
  `toPoints` int(4) default NULL,
  `answer` text,
  PRIMARY KEY  (`resultId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_quiz_results`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_quiz_stats`
-- 

CREATE TABLE `tiki_quiz_stats` (
  `quizId` int(10) NOT NULL default '0',
  `questionId` int(10) NOT NULL default '0',
  `optionId` int(10) NOT NULL default '0',
  `votes` int(10) default NULL,
  PRIMARY KEY  (`quizId`,`questionId`,`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_quiz_stats`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_quiz_stats_sum`
-- 

CREATE TABLE `tiki_quiz_stats_sum` (
  `quizId` int(10) NOT NULL default '0',
  `quizName` varchar(255) default NULL,
  `timesTaken` int(10) default NULL,
  `avgpoints` decimal(5,2) default NULL,
  `avgavg` decimal(5,2) default NULL,
  `avgtime` decimal(5,2) default NULL,
  PRIMARY KEY  (`quizId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_quiz_stats_sum`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_quizzes`
-- 

CREATE TABLE `tiki_quizzes` (
  `quizId` int(10) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `canRepeat` char(1) default NULL,
  `storeResults` char(1) default NULL,
  `questionsPerPage` int(4) default NULL,
  `timeLimited` char(1) default NULL,
  `timeLimit` int(14) default NULL,
  `created` int(14) default NULL,
  `taken` int(10) default NULL,
  `immediateFeedback` char(1) default NULL,
  `showAnswers` char(1) default NULL,
  `shuffleQuestions` char(1) default NULL,
  `shuffleAnswers` char(1) default NULL,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `bDeleted` char(1) default NULL,
  `nAuthor` int(4) default NULL,
  `bOnline` char(1) default NULL,
  `bRandomQuestions` char(1) default NULL,
  `nRandomQuestions` tinyint(4) default NULL,
  `bLimitQuestionsPerPage` char(1) default NULL,
  `nLimitQuestionsPerPage` tinyint(4) default NULL,
  `bMultiSession` char(1) default NULL,
  `nCanRepeat` tinyint(4) default NULL,
  `sGradingMethod` varchar(80) default NULL,
  `sShowScore` varchar(80) default NULL,
  `sShowCorrectAnswers` varchar(80) default NULL,
  `sPublishStats` varchar(80) default NULL,
  `bAdditionalQuestions` char(1) default NULL,
  `bForum` char(1) default NULL,
  `sForum` varchar(80) default NULL,
  `sPrologue` text,
  `sData` text,
  `sEpilogue` text,
  `passingperct` int(4) default '0',
  PRIMARY KEY  (`quizId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_quizzes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_received_articles`
-- 

CREATE TABLE `tiki_received_articles` (
  `receivedArticleId` int(14) NOT NULL auto_increment,
  `receivedFromSite` varchar(200) default NULL,
  `receivedFromUser` varchar(200) default NULL,
  `receivedDate` int(14) default NULL,
  `title` varchar(80) default NULL,
  `authorName` varchar(60) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `heading` text,
  `body` longblob,
  `hash` varchar(32) default NULL,
  `author` varchar(200) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  PRIMARY KEY  (`receivedArticleId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_received_articles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_received_pages`
-- 

CREATE TABLE `tiki_received_pages` (
  `receivedPageId` int(14) NOT NULL auto_increment,
  `pageName` varchar(160) NOT NULL default '',
  `data` longblob,
  `description` varchar(200) default NULL,
  `comment` varchar(200) default NULL,
  `receivedFromSite` varchar(200) default NULL,
  `receivedFromUser` varchar(200) default NULL,
  `receivedDate` int(14) default NULL,
  `parent` varchar(255) default NULL,
  `position` tinyint(3) unsigned default NULL,
  `alias` varchar(255) default NULL,
  `structureName` varchar(250) default NULL,
  `parentName` varchar(250) default NULL,
  `page_alias` varchar(250) default '',
  `pos` int(4) default NULL,
  PRIMARY KEY  (`receivedPageId`),
  KEY `structureName` (`structureName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_received_pages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_referer_stats`
-- 

CREATE TABLE `tiki_referer_stats` (
  `referer` varchar(255) NOT NULL default '',
  `hits` int(10) default NULL,
  `last` int(14) default NULL,
  PRIMARY KEY  (`referer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_referer_stats`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_registration_fields`
-- 

CREATE TABLE `tiki_registration_fields` (
  `id` int(11) NOT NULL auto_increment,
  `field` varchar(255) NOT NULL default '',
  `name` varchar(255) default NULL,
  `type` varchar(255) NOT NULL default 'text',
  `show` tinyint(1) NOT NULL default '1',
  `size` varchar(10) default '10',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_registration_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_related_categories`
-- 

CREATE TABLE `tiki_related_categories` (
  `categId` int(10) NOT NULL default '0',
  `relatedTo` int(10) NOT NULL default '0',
  PRIMARY KEY  (`categId`,`relatedTo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_related_categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_rss_feeds`
-- 

CREATE TABLE `tiki_rss_feeds` (
  `name` varchar(30) NOT NULL default '',
  `rssVer` char(1) NOT NULL default '1',
  `refresh` int(8) default '300',
  `lastUpdated` int(14) default NULL,
  `cache` longblob,
  PRIMARY KEY  (`name`,`rssVer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_rss_feeds`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_rss_modules`
-- 

CREATE TABLE `tiki_rss_modules` (
  `rssId` int(8) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL default '',
  `description` text,
  `url` varchar(255) NOT NULL default '',
  `refresh` int(8) default NULL,
  `lastUpdated` int(14) default NULL,
  `showTitle` char(1) default 'n',
  `showPubDate` char(1) default 'n',
  `content` longblob,
  PRIMARY KEY  (`rssId`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_rss_modules`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_schema`
-- 

CREATE TABLE `tiki_schema` (
  `patch_name` varchar(100) NOT NULL,
  `install_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`patch_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_schema`
-- 

INSERT INTO `tiki_schema` (`patch_name`, `install_date`) VALUES 
('00000000_schema_change_tiki', '2010-03-17 11:06:25'),
('20080227_invite_tiki', '2010-03-17 11:06:25'),
('20080809_semlinks_tiki', '2010-03-17 11:06:25'),
('20080827_bigfeaturetype_tiki', '2010-03-17 11:06:25'),
('20080829_pagealiasdata_tiki', '2010-03-17 11:06:25'),
('20080829_pluginvalidation_tiki', '2010-03-17 11:06:25'),
('20080901_pluginvalidation_tiki', '2010-03-17 11:06:25'),
('20080902_trackerparsedesc_tiki', '2010-03-17 11:06:25'),
('20080905_feature_tip_tiki', '2010-03-17 11:06:25'),
('20080916_webservice_registry_tiki', '2010-03-17 11:06:25'),
('20080922_calendar_customstatus_tiki', '2010-03-17 11:06:25'),
('20080924_webmail_tiki', '2010-03-17 11:06:25'),
('20080926_bannerindex_tiki', '2010-03-17 11:06:25'),
('20081004_mindmap_menu_tiki', '2010-03-17 11:06:25'),
('20081006_comments_moderation_tiki', '2010-03-17 11:06:25'),
('20081008_bit_flags_nullable_tiki', '2010-03-17 11:06:25'),
('20081010_filter_perms_tiki', '2010-03-17 11:06:25'),
('20081014_trust_input_perm_tiki', '2010-03-17 11:06:25'),
('20081018_filter_perms_tiki', '2010-03-17 11:06:25'),
('20081019_score_tiki', '2010-03-17 11:06:25'),
('20081022_application_menu_tiki', '2010-03-17 11:06:25'),
('20081024_fulltext_file_tiki', '2010-03-17 11:06:25'),
('20081027_calendar_tiki', '2010-03-17 11:06:25'),
('20081027_file_galleries_tiki', '2010-03-17 11:06:25'),
('20081027_groupalert_tiki', '2010-03-17 11:06:25'),
('20081027_surveys_tiki', '2010-03-17 11:06:25'),
('20081027_trackers_tiki', '2010-03-17 11:06:25'),
('20081027_wysiwyg_history_tiki', '2010-03-17 11:06:25'),
('20081029_tracker_index_tiki', '2010-03-17 11:06:25'),
('20081102_application_menu_structures_tiki', '2010-03-17 11:06:25'),
('20081105_calendar_items_allday_tiki', '2010-03-17 11:06:25'),
('20081107_menu42_tiki', '2010-03-17 11:06:25'),
('20081112_tiki_p_tracker_view_comments_tiki', '2010-03-17 11:06:25'),
('20081114_tiki_banner_tiki', '2010-03-17 11:06:25'),
('20081119_tiki_p_export_tracker_tiki', '2010-03-17 11:06:25'),
('20081120_showCategories_tiki', '2010-03-17 11:06:25'),
('20081120_tiki_poll_structures_update_tiki', '2010-03-17 11:06:25'),
('20081125_tiki_tracker_types_tiki', '2010-03-17 11:06:25'),
('20081127_calendar_recurrence_tiki', '2010-03-17 11:06:25'),
('20081130_tiki_users_permission_tiki', '2010-03-17 11:06:25'),
('20081211_newsletter_files_tiki', '2010-03-17 11:06:25'),
('20081211_score_tiki', '2010-03-17 11:06:25'),
('20081212_tiki_p_view_backlinks_tiki', '2010-03-17 11:06:25'),
('20081214_webservice_post_tiki', '2010-03-17 11:06:25'),
('20090106_group_watch_tiki', '2010-03-17 11:06:25'),
('20090120_sefurl_rules_tiki', '2010-03-17 11:06:25'),
('20090129_callendar_search_tiki', '2010-03-17 11:06:25'),
('200902026_admin_menu_tiki', '2010-03-17 11:06:25'),
('20090203_null_tiki', '2010-03-17 11:06:25'),
('20090205_forum_and_comments_locking_tiki', '2010-03-17 11:06:25'),
('20090205_menucase_tiki', '2010-03-17 11:06:25'),
('20090205_menus_items_icons_tiki', '2010-03-17 11:06:25'),
('20090206_content_tpl_menu_tiki', '2010-03-17 11:06:25'),
('20090206_poll_tiki', '2010-03-17 11:06:25'),
('20090211_mailnotification_tiki', '2010-03-17 11:06:25'),
('20090212_forum_tiki', '2010-03-17 11:06:25'),
('20090220_admin_section_tiki', '2010-03-17 11:06:25'),
('20090301_browsertitle_tiki', '2010-03-17 11:06:25'),
('20090304_tiki_p_view_backlink_without_s_tiki', '2010-03-17 11:06:25'),
('20090306_menu_perms_tiki', '2010-03-17 11:06:25'),
('20090306_text_for_menu_options_tiki', '2010-03-17 11:06:25'),
('20090310_application_menu_tiki', '2010-03-17 11:06:25'),
('20090310_feature_search_show_object_filter_tiki', '2010-03-17 11:06:25'),
('20090311_remove_mod_menu_application_menu_tiki', '2010-03-17 11:06:25'),
('20090316_index_tiki', '2010-03-17 11:06:25'),
('20090323_maxUserImpressions_banners_tiki', '2010-03-17 11:06:25'),
('20090330_quicktags_renames_tiki', '2010-03-17 11:06:25'),
('20090401_newsletters_included_tiki', '2010-03-17 11:06:25'),
('20090401_replace_shoutjax_with_shoutbox_tiki', '2010-03-17 11:06:25'),
('20090401_replace_switch_lang2_with_switch_lang_tiki', '2010-03-17 11:06:25'),
('20090416_plugin_security_tiki', '2010-03-17 11:06:25'),
('20090416_quicktags_kil_email_tiki', '2010-03-17 11:06:25'),
('20090416_quicktags_plugin_helpers_tiki', '2010-03-17 11:06:25'),
('20090427_filegal_optionalize_tiki', '2010-03-17 11:06:25'),
('20090429_groupId_tiki', '2010-03-17 11:06:25'),
('20090513_calendar_priority_tiki', '2010-03-17 11:06:25'),
('20090513_swffix_tiki', '2010-03-17 11:06:25'),
('20090513_wiki_similar_permission_tiki', '2010-03-17 11:06:25'),
('20090515_score_tiki', '2010-03-17 11:06:25'),
('20090602_webmail_protocols_tiki', '2010-03-17 11:06:25'),
('20090605_tiki_p_modify_tracker_items_pending_closed_tiki', '2010-03-17 11:06:25'),
('20090617_add_new_table_for_reports_tiki', '2010-03-17 11:06:25'),
('20090623_actionlog_view_article_tiki', '2010-03-17 11:06:25'),
('20090626_change_pear_auth_preferences_to_ldap_tiki', '2010-03-17 11:06:25'),
('20090707_tiki_p_delete_account_tiki', '2010-03-17 11:06:25'),
('20090713_tiki_importer_permission_and_menu_entry_tiki', '2010-03-17 11:06:25'),
('20090715_sefurl_for_filegalleries_tiki', '2010-03-17 11:06:25'),
('20090720_perspectives_tiki', '2010-03-17 11:06:25'),
('20090721_webmail_ext_public_tiki', '2010-03-17 11:06:25'),
('20090727_category_permissions_tiki', '2010-03-17 11:06:25'),
('20090727_user_votings_index_tiki', '2010-03-17 11:06:25'),
('20090730_p_list_newsletters_tiki', '2010-03-17 11:06:25'),
('20090803_perspective_permission_tiki', '2010-03-17 11:06:25'),
('20090804_kaltura_permissions_tiki', '2010-03-17 11:06:25'),
('20090804_menu_search_tiki', '2010-03-17 11:06:25'),
('20090805_kill_newsreader_tiki', '2010-03-17 11:06:25'),
('20090805_remove_drawings_prefs_etc_tiki', '2010-03-17 11:06:25'),
('20090805_remove_games_tiki', '2010-03-17 11:06:25'),
('20090806_group_permissions_tiki', '2010-03-17 11:06:25'),
('20090806_menu_list_trackers_tiki', '2010-03-17 11:06:25'),
('20090806_perms_featurechecks_tiki', '2010-03-17 11:06:25'),
('20090806_remove_charts_tiki', '2010-03-17 11:06:25'),
('20090806_remove_latin_collations_tiki', '2010-03-17 11:06:25'),
('20090806_strasa_option_rename_tiki', '2010-03-17 11:06:25'),
('20090807_transitions_tiki', '2010-03-17 11:06:25'),
('20090808_add_wiki_minor_edits_tiki', '2010-03-17 11:06:25'),
('20090809_marc_needs_more_space_tiki', '2010-03-17 11:06:25'),
('20090811_filegals_container_tiki', '2010-03-17 11:06:25'),
('20090811_kaltura_editor_pref_tiki', '2010-03-17 11:06:25'),
('20090811_quizzes_tiki', '2010-03-17 11:06:25'),
('20090811_rename_quicktags_to_toolbars_tiki', '2010-03-17 11:06:25'),
('20090823_kaltura_menu_options_tiki', '2010-03-17 11:06:25'),
('20090826_group_expiration_tiki', '2010-03-17 11:06:25'),
('20090904_wysiwyg_newsletters_tiki', '2010-03-17 11:06:25'),
('20090911_tracker_item_change_user_tiki', '2010-03-17 11:06:25'),
('20090912_change_feature_name_for_lesser_magic_tiki', '2010-03-17 11:06:25'),
('20090913_plugin_security_addedby_tiki', '2010-03-17 11:06:25'),
('20090915_change_perms_for_browse_cats_tiki', '2010-03-17 11:06:25'),
('20090921_logo_tiki', '2010-03-17 11:06:25'),
('20090921_workspaces_tiki', '2010-03-17 11:06:25'),
('20090923_mod_change_category_defaults_tiki', '2010-03-17 11:06:25'),
('20090925_online_logged_users_modules_merge_tiki', '2010-03-17 11:06:25'),
('20090927_top_images_modules_merge_tiki', '2010-03-17 11:06:25'),
('20090928_galaxia_leftovers_tiki', '2010-03-17 11:06:25'),
('20090928_last_images_modules_merge_tiki', '2010-03-17 11:06:25'),
('20090928_transition_guards_text_tiki', '2010-03-17 11:06:25'),
('20091004_last_tracker_items_modules_merge_tiki', '2010-03-17 11:06:25'),
('20091007_update_database_structure_tiki', '2010-03-17 11:06:25'),
('20091008_reg_group_includes_anon_tiki', '2010-03-17 11:06:25'),
('20091011_serurl_dl_order_tiki', '2010-03-17 11:06:25'),
('20091013_fix_perms_tiki', '2010-03-17 11:06:25'),
('20091015_application_menu_admin_renames_tiki', '2010-03-17 11:06:25'),
('20091016_categorization_tracker_item_tiki', '2010-03-17 11:06:25'),
('20091019_article_by_rating_modules_merge_tiki', '2010-03-17 11:06:25'),
('20091019_last_articles_modules_merge_tiki', '2010-03-17 11:06:25'),
('20091019_users_perms_types_tidying_tiki', '2010-03-17 11:06:25'),
('20091020_bigger_user_prefs_tiki', '2010-03-17 11:06:25'),
('20091020_faq_created_tiki', '2010-03-17 11:06:25'),
('20091020_kaltura_tiki', '2010-03-17 11:06:25'),
('20091020_moz_screencast_tiki', '2010-03-17 11:06:25'),
('20091020_remove_charts_tiki', '2010-03-17 11:06:25'),
('20091020_sefurl_trackeritem_tiki', '2010-03-17 11:06:25'),
('20091021_moz_pagelist_tiki', '2010-03-17 11:06:25'),
('20091023_bookmarks_name_lengthen_tiki', '2010-03-17 11:06:25'),
('20091023_nul_categ_tiki', '2010-03-17 11:06:25'),
('20091023_report_tiki', '2010-03-17 11:06:25'),
('20091027_multiple_session_handler_tiki', '2010-03-17 11:06:25'),
('20091028_quota_tiki', '2010-03-17 11:06:25'),
('20091030_wiki_watch_tiki', '2010-03-17 11:06:25'),
('20091103_upgrade_categperm_tiki', '2010-03-17 11:06:25'),
('20091111_fgal_size_tiki', '2010-03-17 11:06:25'),
('20091112_rename_mnu_application_menu_tiki', '2010-03-17 11:06:25'),
('20091113_old_categ_perm_tiki', '2010-03-17 11:06:25'),
('20091120_username_pattern_tiki', '2010-03-17 11:06:25'),
('20091123_upgrade_categperm_2_tiki', '2010-03-17 11:06:25'),
('20091125_wiki_comments_per_page_tiki', '2010-03-17 11:06:25'),
('20091204_filegal_wiki_syntax_tiki', '2010-03-17 11:06:25'),
('20100207_repair_file_galleries_tiki', '2010-03-17 11:06:25');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_score`
-- 

CREATE TABLE `tiki_score` (
  `event` varchar(40) NOT NULL default '',
  `score` int(11) NOT NULL default '0',
  `expiration` int(11) NOT NULL default '0',
  PRIMARY KEY  (`event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_score`
-- 

INSERT INTO `tiki_score` (`event`, `score`, `expiration`) VALUES 
('login', 1, 0),
('login_remain', 2, 60),
('profile_fill', 10, 0),
('profile_see', 2, 0),
('profile_is_seen', 1, 0),
('friend_new', 10, 0),
('message_receive', 1, 0),
('message_send', 2, 0),
('article_read', 2, 0),
('article_comment', 5, 0),
('article_new', 20, 0),
('article_is_read', 1, 0),
('article_is_commented', 2, 0),
('fgallery_new', 10, 0),
('fgallery_new_file', 10, 0),
('fgallery_download', 5, 0),
('fgallery_is_downloaded', 5, 0),
('igallery_new', 10, 0),
('igallery_new_img', 6, 0),
('igallery_see_img', 3, 0),
('igallery_img_seen', 1, 0),
('blog_new', 20, 0),
('blog_post', 5, 0),
('blog_read', 2, 0),
('blog_comment', 2, 0),
('blog_is_read', 3, 0),
('blog_is_commented', 3, 0),
('wiki_new', 10, 0),
('wiki_edit', 5, 0),
('wiki_attach_file', 3, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_search_stats`
-- 

CREATE TABLE `tiki_search_stats` (
  `term` varchar(50) NOT NULL default '',
  `hits` int(10) default NULL,
  PRIMARY KEY  (`term`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_search_stats`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_searchindex`
-- 

CREATE TABLE `tiki_searchindex` (
  `searchword` varchar(80) NOT NULL default '',
  `location` varchar(80) NOT NULL default '',
  `page` varchar(255) NOT NULL default '',
  `count` int(11) NOT NULL default '1',
  `last_update` int(11) NOT NULL default '0',
  PRIMARY KEY  (`searchword`,`location`,`page`(80)),
  KEY `last_update` (`last_update`),
  KEY `location` (`location`(50),`page`(200))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_searchindex`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_searchsyllable`
-- 

CREATE TABLE `tiki_searchsyllable` (
  `syllable` varchar(80) NOT NULL default '',
  `lastUsed` int(11) NOT NULL default '0',
  `lastUpdated` int(11) NOT NULL default '0',
  PRIMARY KEY  (`syllable`),
  KEY `lastUsed` (`lastUsed`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_searchsyllable`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_searchwords`
-- 

CREATE TABLE `tiki_searchwords` (
  `syllable` varchar(80) NOT NULL default '',
  `searchword` varchar(80) NOT NULL default '',
  PRIMARY KEY  (`syllable`,`searchword`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_searchwords`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_secdb`
-- 

CREATE TABLE `tiki_secdb` (
  `md5_value` varchar(32) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `tiki_version` varchar(60) NOT NULL,
  `severity` int(4) NOT NULL default '0',
  PRIMARY KEY  (`md5_value`,`filename`(100),`tiki_version`),
  KEY `sdb_fn` (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_secdb`
-- 

INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('7255f5408cc0fc18fb66c84751d5214f', './about.php', '4.2', 0),
('69670e22fc48953a8148293843c2fdf8', './article_image.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './backups/index.php', '4.2', 0),
('a9c8b7a3f4061630d777b0d08f58e1be', './banner_click.php', '4.2', 0),
('cfa59e946decec354a4e0e4fe7cf267e', './banner_image.php', '4.2', 0),
('8db1c340df7f0f5ea05121ad62f0963d', './categorize.php', '4.2', 0),
('543ad8b39fb1f471119082864f8275e7', './categorize_list.php', '4.2', 0),
('3270f29f02eabc66779bf20cad603324', './comments.php', '4.2', 0),
('077317e4fabb19eb68537cf7f5fb62e0', './commxmlrpc.php', '4.2', 0),
('ce1a211ca583b2d9e261423aa5e3591b', './contribution.php', '4.2', 0),
('4767da527df2749fa0a8b7cbbb2175c3', './copyrights.php', '4.2', 0),
('8bdcb939f48efa4e1ed8931874065187', './css/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './db/convertscripts/index.php', '4.2', 0),
('66b35f4f3a060c4d1b462e9d83d45ad0', './db/convertscripts/mysql_to_pgsql.php', '4.2', 0),
('dd4b27e32686d4f85a3705a1f94f3bf3', './db/convertscripts/tikiversion.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './db/index.php', '4.2', 0),
('c648999bd1bb8290136e15d0a73f77bf', './db/tiki-db-adodb.php', '4.2', 0),
('5f809f02a58b15a41eb9722ef638dc4f', './db/tiki-db-pdo.php', '4.2', 0),
('fd6a1bf5fffb009707c0e4a9cf8bfb10', './db/tiki-db.php', '4.2', 0),
('8fac4585e8ad8bffe4b09837304307d4', './display_banner.php', '4.2', 0),
('0eeba9fcd2e6d087383c97dafa39314d', './doc/devtools/buildincrement.php', '4.2', 0),
('20dd1e98f028289cf98b423f99ab038d', './doc/devtools/cleanCatTrackers.php', '4.2', 0),
('2c0731a7c5b2568743a11c838f6d2a59', './doc/devtools/convert_templates_prefs-2.0.php', '4.2', 0),
('567b02eab3da669eebcc7386954981ba', './doc/devtools/extract-img-db-to-fs.php', '4.2', 0),
('bd71f0323d0072f49255c5ca402cc519', './doc/devtools/fckpackager.php', '4.2', 0),
('87888d35dd8e45ede1d401c421f66839', './doc/devtools/ggg-trace.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './doc/devtools/index.php', '4.2', 0),
('112a6d18e92b63c6463a3db8ed5d8c2e', './doc/devtools/parse_tiki.php', '4.2', 0),
('1a236a51d9d316fc0b7fa4f0ffffd885', './doc/devtools/restorehelp.php', '4.2', 0),
('5586a36a81c983da4f7eff6464e69dfb', './doc/devtools/search_smarty_prefs-2.0.php', '4.2', 0),
('13adf8cde172547c95265d42c25ba660', './doc/devtools/securitycheck.php', '4.2', 0),
('c54a919280848c724bf76a98ecfa6aa7', './doc/devtools/svnbranch.php', '4.2', 0),
('d1fa643ca939706a7a6d28c07e7d6faf', './doc/devtools/svnbranchreview.php', '4.2', 0),
('7dee02ec1d5a72f101f0c73ac2a15fce', './doc/devtools/svnbranchupdate.php', '4.2', 0),
('5f60d6917de8a11cf40c4cc07b677ff8', './doc/devtools/svnmerge.php', '4.2', 0),
('31870d69d2e083f5e8a57248a33fc65e', './doc/devtools/svnswitch.php', '4.2', 0),
('3c183b98fd85ca6ee6a34d4dd5df8563', './doc/devtools/svntools.php', '4.2', 0),
('e175a87aa190d6dd7952e7cbda72a136', './doc/devtools/sync.php', '4.2', 0),
('fd7297cc942b21bdd79f5afe18e9ec4a', './doc/devtools/tiki-create_md5.php', '4.2', 0),
('688cd59692966e2b677490f6d3a2fcb0', './doc/devtools/tiki-show_raw_links.php', '4.2', 0),
('1bbae0aa4ecd1bb29d5019025fb89d52', './doc/devtools/usergeo.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './doc/index.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './dump/index.php', '4.2', 0),
('6f7cc71fd8cc8dcadafee77e1fda4f78', './fgal_listing_conf.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './files/index.php', '4.2', 0),
('8bdcb939f48efa4e1ed8931874065187', './files/templates/index.php', '4.2', 0),
('8bdcb939f48efa4e1ed8931874065187', './files/templates/listpages/index.php', '4.2', 0),
('d73a3faa9a85c8dbae9cf221e20203f7', './freetag_apply.php', '4.2', 0),
('1e94b0821ce0854158f89649d644677c', './freetag_list.php', '4.2', 0),
('5b242c14adbf3efb15e6e8d4a0136d48', './get_strings.php', '4.2', 0),
('5961175c9e1830a9e000026295db1c3c', './help.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './images/index.php', '4.2', 0),
('79bde83147f0b955b11b6b2ba9a3f942', './img/avatars/index.php', '4.2', 0),
('af91292eb2380aca7f857636728e30bd', './img/flags/flagnames.php', '4.2', 0),
('c9c4fd4d46fd838ae9b0ecc8777d70a7', './img/flags/index.php', '4.2', 0),
('eb36726ee6950a488d813387b37b0fe0', './img/icn/index.php', '4.2', 0),
('c5368d53a6f254c3fa26940d32f13c82', './img/icons/index.php', '4.2', 0),
('8cb88609939260a5f433d7629b9c0620', './img/icons2/index.php', '4.2', 0),
('2c4a9b9a72ffac99a3b489185b19afa4', './img/index.php', '4.2', 0),
('6099a76dfdeb3616e05b178b993e3088', './img/mytiki/index.php', '4.2', 0),
('c1b4fa1aefeaf49ccbd77b4c121261ba', './img/smiles/index.php', '4.2', 0),
('6a9970bea33086f5c68b9b40b2f1f36f', './img/tiki/index.php', '4.2', 0),
('09e602d442c8281d5b20c382805a93ae', './img/trackers/index.php', '4.2', 0),
('79ad691d020d7b6aa332c7cf6943a149', './img/webmail/index.php', '4.2', 0),
('a96baf24cad513fac9499666c5c01aa4', './img/wiki/index.php', '4.2', 0),
('423f8436b5ac0966bfa737302b28dabd', './img/wiki_up/index.php', '4.2', 0),
('4a6b2ad2d6f4e947bb6b6a95532e94f1', './index.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './installer/index.php', '4.2', 0),
('4f0c91798a406f79dcc85fd5b47bd820', './installer/installlib.php', '4.2', 0),
('e5c903cda02042cd2d7fba45eb4f1937', './installer/schema/20090416_plugin_security_tiki.php', '4.2', 0),
('6a65032d685d16a1fbc143f169a7e1b5', './installer/schema/20090923_mod_change_category_defaults_tiki.php', '4.2', 0),
('6a4bb5915cd67e07c262ce313647648d', './installer/schema/20091004_last_tracker_items_modules_merge_tiki.php', '4.2', 0),
('a52e4046464b160df6d599d3811a8dc3', './installer/schema/20091019_article_by_rating_modules_merge_tiki.php', '4.2', 0),
('336b6070230d479942a646c80821e1c9', './installer/schema/20091019_last_articles_modules_merge_tiki.php', '4.2', 0),
('068977517c0e21dd4ca6be1ed2bc7605', './installer/schema/20091103_upgrade_categperm_tiki.php', '4.2', 0),
('5f3aa3ded23682cc889dcdf09e713274', './installer/schema/20091123_upgrade_categperm_2_tiki.php', '4.2', 0),
('7381dbef094d917bbc970b3e37585aab', './installer/schema/20100207_repair_file_galleries_tiki.php', '4.2', 0),
('7159e8ab37aa2b1fe768c0de0664d1c4', './installer/schema/index.php', '4.2', 0),
('1ba1f3d2f9cb7e5fe7e27e6c1a2f2d99', './installer/shell.php', '4.2', 0),
('ee8fc76480811522eaae559a06e0635e', './installer/tiki-installer.php', '4.2', 0),
('3967a27be466a1287f986c4e6b7f5e54', './lang/ar/index.php', '4.2', 0),
('2ac023cf9d706d71b8c93e6471974cd9', './lang/ar/language.php', '4.2', 0),
('9cedbd8bc16746d0a0f25483c488a716', './lang/ca/index.php', '4.2', 0),
('c23263f1dfe435e36c425c3abe0a3dce', './lang/ca/language.php', '4.2', 0),
('9e130eb58b8d76464e4bd81978f20a29', './lang/cn/index.php', '4.2', 0),
('3c5b72956f25f03250aeaaa47b842d88', './lang/cn/language.php', '4.2', 0),
('c2befddbf5eea033a64212bd74b6ba39', './lang/cs/index.php', '4.2', 0),
('674b9dc3d6dc2651b22887ef5fc0291e', './lang/cs/language.php', '4.2', 0),
('18054fb918a9bbbf05e221926ba575f0', './lang/da/index.php', '4.2', 0),
('b300cfa8c647db893ac2ecc60cdf982c', './lang/da/language.php', '4.2', 0),
('ddea3012cb630c44ae04c518e6041f34', './lang/de/index.php', '4.2', 0),
('b1117d8baeb215513e5764c8db636ce3', './lang/de/language.php', '4.2', 0),
('a8915b40a6e93c84c394fdeb9a89ceba', './lang/de/untranslated.php', '4.2', 0),
('83df5d130e56352b5273da9a7c8fafc8', './lang/dk/index.php', '4.2', 0),
('4cae7e7362ea85cd3f2c1e68f8396961', './lang/el/index.php', '4.2', 0),
('3e24aebc333d4a4e6c506f4077dbc719', './lang/el/language.php', '4.2', 0),
('6d60af0d40b6d2f203f804a300a7b44c', './lang/en-uk/index.php', '4.2', 0),
('5cec7b215982d38df0d17d0bc814d6f6', './lang/en-uk/language.php', '4.2', 0),
('8653d25dc81edc86468f3e9b48d3bb56', './lang/en/index.php', '4.2', 0),
('923d3a30d505c17873c898abcc20571a', './lang/en/language.php', '4.2', 0),
('14c556f02c8e09563b79afa455881399', './lang/es/index.php', '4.2', 0),
('fc53fc1b93a1b5924047e12daac7ddc0', './lang/es/language.php', '4.2', 0),
('41cf3868217958638cce6c299273e18a', './lang/fa/index.php', '4.2', 0),
('4c056193709b88bb951fdddc34f9ee17', './lang/fa/language.php', '4.2', 0),
('e04b0651f49b3d8dad34abeef283b65b', './lang/fi/index.php', '4.2', 0),
('27c53eec8efd327081ea0c3769ccfe95', './lang/fi/language.php', '4.2', 0),
('64f8e2889a4af42e5cea347422278662', './lang/fj/index.php', '4.2', 0),
('53061f96eba2cd8fba2f29168f57fe70', './lang/fj/language.php', '4.2', 0),
('842a6e32c488424c8d4a4d400425d587', './lang/flagmapping.php', '4.2', 0),
('faa0a2e4e43b597346d176e0aed1d944', './lang/fr/index.php', '4.2', 0),
('8a70a7a0866164fc8f9922e4537410ac', './lang/fr/language.php', '4.2', 0),
('19b8355a969f8e8f2fa951d56a9d3619', './lang/gl/index.php', '4.2', 0),
('3792bc8b33dad558db1ff53258b3c62a', './lang/gl/language.php', '4.2', 0),
('bd78b0db3b372477eb53bc5f5d8f63af', './lang/he/index.php', '4.2', 0),
('c3881fd04b2621414d0660116627a01f', './lang/he/language.php', '4.2', 0),
('831983d32aeab1868ad12c06cca12ce5', './lang/hr/index.php', '4.2', 0),
('fd6a72bf697701a5f34f88f2de7f9080', './lang/hr/language.php', '4.2', 0),
('c65cef6db5f8b44fcf944fa44ec561f0', './lang/hu/index.php', '4.2', 0),
('874a480e8ae2e9840629e52c5ba56199', './lang/hu/language.php', '4.2', 0),
('30ec473be704ef358c3a926cff50a4d7', './lang/index.php', '4.2', 0),
('48a44c853189da39ffc71f5f0ea4ded8', './lang/it/index.php', '4.2', 0),
('fad8daa463cea9683f9288ede511f1f0', './lang/it/language.php', '4.2', 0),
('60b6a88c50bf27480db9ff2c1de25c0d', './lang/ja/index.php', '4.2', 0),
('c31963f1dbd9a993ad05790c2e957612', './lang/ja/language.php', '4.2', 0),
('234dee7fd744636b15afd9d87e757e76', './lang/ko/index.php', '4.2', 0),
('7e9841ce38bcb90985c08f1172cf340a', './lang/ko/language.php', '4.2', 0),
('f8c02cc0e9b3e909bbb42467e7ac9f07', './lang/langmapping.php', '4.2', 0),
('49777700a44b2d1e773538aca98a8543', './lang/nl/index.php', '4.2', 0),
('bb6f2b1abcf833193c4ae0c289021b31', './lang/nl/language.php', '4.2', 0),
('97ead7930fa83d4d9f0154306017d81a', './lang/no/index.php', '4.2', 0),
('304a2c2f5dd8c3751331a11d0ab4f7f8', './lang/no/language.php', '4.2', 0),
('a2dc084611d0755cb37066330a3d9a45', './lang/pl/index.php', '4.2', 0),
('b0878f490b61d2e10e19321b60e5e9bf', './lang/pl/language.php', '4.2', 0),
('c4efbdad69a160c8a5541709e74b5ce0', './lang/po/index.php', '4.2', 0),
('7fd5ca8f113e8fc1af1a3688d09b1c90', './lang/pt-br/index.php', '4.2', 0),
('153b2a142a7a464fb17a34c3c482b117', './lang/pt-br/language.php', '4.2', 0),
('97c739abb4a12ef44c6f0aa5da00b932', './lang/pt/index.php', '4.2', 0),
('e2906aef359f163c370855602e6a4c25', './lang/pt/language.php', '4.2', 0),
('f41fc8419a33d7e5be94c1cd6068d651', './lang/ru/index.php', '4.2', 0),
('6cf12b694e8abc89f0221a363e63ca7f', './lang/ru/language.php', '4.2', 0),
('ec95e0431b541ef5df8c4fa00904e0a2', './lang/sb/language.php', '4.2', 0),
('54ac5773132c4f1e89baedcef930034e', './lang/sk/index.php', '4.2', 0),
('2d92ad014947232e65e98901192f99ae', './lang/sk/language.php', '4.2', 0),
('c65cef6db5f8b44fcf944fa44ec561f0', './lang/sl/index.php', '4.2', 0),
('d160b46d4e7f23e5f95eb71c26d446d2', './lang/sl/language.php', '4.2', 0),
('5f5fc49129ba05fc0b0175d0c1a43912', './lang/sp/index.php', '4.2', 0),
('976c2ee6feef78cdc9577e264e79ee5f', './lang/sr-latn/index.php', '4.2', 0),
('d0f245f4ce19aa82c4c313e6b90ecbd7', './lang/sr-latn/language.php', '4.2', 0),
('fad45429c2385ac154c132ae3674c5f1', './lang/sr/index.php', '4.2', 0),
('1155f244e2df281bc33498477ad69a7f', './lang/sr/language.php', '4.2', 0),
('0db0fb86aa52f898951cb5709ab80b59', './lang/sv/index.php', '4.2', 0),
('ec2d843c24ffb41ae0bd46cea5adb813', './lang/sv/language.php', '4.2', 0),
('a5ad67f1cba0263cc37c1e4a8db5589c', './lang/sw/index.php', '4.2', 0),
('2a3b8323986cc51dee0b04e2226210f8', './lang/tv/index.php', '4.2', 0),
('16e256b9c896e3137d06acd899c5c5bd', './lang/tv/language.php', '4.2', 0),
('3e773511c6fa3f164c5e49f5a0ee2fe0', './lang/tw/index.php', '4.2', 0),
('f4c20962df91db80e478080afc3b5c45', './lang/tw/language.php', '4.2', 0),
('be8ebb6722299bfc1b11e07d67a537ca', './lang/uk/index.php', '4.2', 0),
('30187c7d7f7abc492bf2bddbc076a228', './lang/uk/language.php', '4.2', 0),
('9dc5be905813897d4b08bb1084766bc7', './lib/Babelfish.php', '4.2', 0),
('b41562f670181de8ecc0e4b460d35271', './lib/Date/Calc.php', '4.2', 0),
('1cce2f36ff8310ee9fda35169b435941', './lib/Date/Human.php', '4.2', 0),
('e673d067982b081a04e974c1646f3fba', './lib/Date/TimeZone.php', '4.2', 0),
('2867016d0ba3bdd8ea05c1db6c53355b', './lib/Date/TimeZoneWindows.php', '4.2', 0),
('5f158c5df134093b470f37c55897d06d', './lib/Date/index.php', '4.2', 0),
('809658c6425f35b50bd4bacb6d0b1673', './lib/Horde/Yaml.php', '4.2', 0),
('92e19794b66466dccf9e271ae81496ea', './lib/Horde/Yaml/Dumper.php', '4.2', 0),
('5708a9a233c09cf03fe9f37cecd6619f', './lib/Horde/Yaml/Exception.php', '4.2', 0),
('f6cd764c871e1004d5ef9553e828ded5', './lib/Horde/Yaml/Loader.php', '4.2', 0),
('1515261fc34e2a763337f936b49f00c6', './lib/Horde/Yaml/Node.php', '4.2', 0),
('a6dc7fa72cd29b0cfe103c4a70b7625e', './lib/admin/adminlib.php', '4.2', 0),
('f63b4a832d29787f29be81d646d90d89', './lib/admin/index.php', '4.2', 0),
('6a59620319a00cc106f6954e846e2640', './lib/adodb/adodb-active-record.inc.php', '4.2', 0),
('f4728fe9646996747a171f7f72ffe9da', './lib/adodb/adodb-active-recordx.inc.php', '4.2', 0),
('ce7e16106ebbf859e58eb7c5e60087e7', './lib/adodb/adodb-csvlib.inc.php', '4.2', 0),
('764f5cde3a6ee9285493c1a6dab83670', './lib/adodb/adodb-datadict.inc.php', '4.2', 0),
('2106e9b2230bb27e001b75ca2665e3b9', './lib/adodb/adodb-error.inc.php', '4.2', 0),
('17554ee5e63f573dab305c8f795be417', './lib/adodb/adodb-errorhandler.inc.php', '4.2', 0),
('e6d9db04ae52e47215fd96721abb2384', './lib/adodb/adodb-errorpear.inc.php', '4.2', 0),
('ea57292cadcfbe25a2bc36d5be850a99', './lib/adodb/adodb-exceptions.inc.php', '4.2', 0),
('813bc19179bc50ff20ac6cd3f3554fd7', './lib/adodb/adodb-iterator.inc.php', '4.2', 0),
('2c526d6194791eb9f3b96b37218a8deb', './lib/adodb/adodb-lib.inc.php', '4.2', 0),
('a3dc814a8f223bbfec7317196a465ccb', './lib/adodb/adodb-memcache.lib.inc.php', '4.2', 0),
('ed462c8da81301b2bf4bcd54aea9a1b2', './lib/adodb/adodb-pager.inc.php', '4.2', 0),
('f8a9f4c3bedcf0ec03ee9f337fd2f505', './lib/adodb/adodb-pear.inc.php', '4.2', 0),
('ac5b79053c2c8a6bb01598e5b995883f', './lib/adodb/adodb-perf.inc.php', '4.2', 0),
('773ec0e62a48941d8c5dae4a37c4fee7', './lib/adodb/adodb-php4.inc.php', '4.2', 0),
('547668ddd20f9fa80a692de4e27bb639', './lib/adodb/adodb-time.inc.php', '4.2', 0),
('9b4a329d356512abfab2a80848e24a85', './lib/adodb/adodb-xmlschema.inc.php', '4.2', 0),
('5d84bf1ffaa617b4dc2b3587c5793fea', './lib/adodb/adodb-xmlschema03.inc.php', '4.2', 0),
('7cc3fa0631134ecc47f3bc5c5e205c65', './lib/adodb/adodb.inc.php', '4.2', 0),
('8a022e02714ce3186f310cc65d936ad5', './lib/adodb/contrib/toxmlrpc.inc.php', '4.2', 0),
('3ce00596122af2c29f4e6b5c0e6720c2', './lib/adodb/datadict/datadict-access.inc.php', '4.2', 0),
('da9897d005d07e2c4a50ae5616bb6ab0', './lib/adodb/datadict/datadict-db2.inc.php', '4.2', 0),
('0d09f7950a9492e8e3873e239948bf73', './lib/adodb/datadict/datadict-firebird.inc.php', '4.2', 0),
('598e976b4b41801fbaa31307330c90ce', './lib/adodb/datadict/datadict-generic.inc.php', '4.2', 0),
('e9bf71e27779fac22ab9ece282a25a84', './lib/adodb/datadict/datadict-ibase.inc.php', '4.2', 0),
('8ca9e75839f6b87cc9961ffeda83fe14', './lib/adodb/datadict/datadict-informix.inc.php', '4.2', 0),
('a75ed9f10b5fd5498953d3bcdf91dc02', './lib/adodb/datadict/datadict-mssql.inc.php', '4.2', 0),
('8ae8a4409f865427457bb226825d9ebe', './lib/adodb/datadict/datadict-mssqlnative.inc.php', '4.2', 0),
('b443fccee206f7c4049ebabdffdbf2a1', './lib/adodb/datadict/datadict-mysql.inc.php', '4.2', 0),
('e9cb2ee56e929457394d3a00425de156', './lib/adodb/datadict/datadict-oci8.inc.php', '4.2', 0),
('1f2fc7027c44cdde4385fa6bc6de2c5e', './lib/adodb/datadict/datadict-postgres.inc.php', '4.2', 0),
('e624d82dd7d92e7b397b4063e2a8556c', './lib/adodb/datadict/datadict-sapdb.inc.php', '4.2', 0),
('fa387d20a661eed4507467c3fb4817fe', './lib/adodb/datadict/datadict-sybase.inc.php', '4.2', 0),
('e4b4aa154f48ee04388e6934ff8f6e59', './lib/adodb/drivers/adodb-access.inc.php', '4.2', 0),
('2cbdb7353f8d8215b1bdf0f4d922d7bc', './lib/adodb/drivers/adodb-ado.inc.php', '4.2', 0),
('8b01c82423c0a6902aedaf7363d5d42f', './lib/adodb/drivers/adodb-ado5.inc.php', '4.2', 0),
('51d328d82b51a7399588f698749ea9df', './lib/adodb/drivers/adodb-ado_access.inc.php', '4.2', 0),
('220da1ecb908efc711f41d93372332a7', './lib/adodb/drivers/adodb-ado_mssql.inc.php', '4.2', 0),
('c7c7bdbe70ba9a4e541a032080c0a118', './lib/adodb/drivers/adodb-ads.inc.php', '4.2', 0),
('4800232e09aaf27a711b1ec3ffbd7685', './lib/adodb/drivers/adodb-borland_ibase.inc.php', '4.2', 0),
('68b0074cd3b339b7e4e1c6281fee4318', './lib/adodb/drivers/adodb-csv.inc.php', '4.2', 0),
('c7be04c3ea2dc0337f26da43bf83dc6d', './lib/adodb/drivers/adodb-db2.inc.php', '4.2', 0),
('f215da414801b93fd090dce62b7ea2de', './lib/adodb/drivers/adodb-db2oci.inc.php', '4.2', 0),
('d2e73293316c43e555fb0a8b3688f172', './lib/adodb/drivers/adodb-fbsql.inc.php', '4.2', 0),
('9c6654d3b052cafac061ea41dde9fd5b', './lib/adodb/drivers/adodb-firebird.inc.php', '4.2', 0),
('d667fe70f57539ff87878c240385d642', './lib/adodb/drivers/adodb-ibase.inc.php', '4.2', 0),
('e4cfdbe865e91d7d9558380dd095af7a', './lib/adodb/drivers/adodb-informix.inc.php', '4.2', 0),
('1917a8d7d31d921f580653af418f0582', './lib/adodb/drivers/adodb-informix72.inc.php', '4.2', 0),
('241981a3b71e3aea4989174adcc9d7c4', './lib/adodb/drivers/adodb-ldap.inc.php', '4.2', 0),
('102b125ca537787c962bd54df22e5377', './lib/adodb/drivers/adodb-mssql.inc.php', '4.2', 0),
('4a68db8136431955789d5f4eaea76e01', './lib/adodb/drivers/adodb-mssql_n.inc.php', '4.2', 0),
('4c20215c18d413b02036787e148220cb', './lib/adodb/drivers/adodb-mssqlnative.inc.php', '4.2', 0),
('da12e6fb11a809533c2cd44288d07fc5', './lib/adodb/drivers/adodb-mssqlpo.inc.php', '4.2', 0),
('36ed8def72a06465abc491310eb62d94', './lib/adodb/drivers/adodb-mysql.inc.php', '4.2', 0),
('1f45a12cdbeef0ddd78eca9513a8831f', './lib/adodb/drivers/adodb-mysqli.inc.php', '4.2', 0),
('ed80b1fe7bdda0a5295d9087f317770e', './lib/adodb/drivers/adodb-mysqlpo.inc.php', '4.2', 0),
('ba757eccef7209d8a3a59efda7321104', './lib/adodb/drivers/adodb-mysqlt.inc.php', '4.2', 0),
('e2dc2fe63fae0a6bbc649100def92848', './lib/adodb/drivers/adodb-netezza.inc.php', '4.2', 0),
('535236e8f9e72ea70e640fbf30e0f4a5', './lib/adodb/drivers/adodb-oci8.inc.php', '4.2', 0),
('6f30b70a8832b60c8d06a892e043379e', './lib/adodb/drivers/adodb-oci8.old.inc.php', '4.2', 0),
('2d0a6ec38389244364522a52205b3fd7', './lib/adodb/drivers/adodb-oci805.inc.php', '4.2', 0),
('95847e7134b03319bd96518e2fafffa2', './lib/adodb/drivers/adodb-oci8po.inc.php', '4.2', 0),
('26298986b8dfc3006c8b9f091fb3b552', './lib/adodb/drivers/adodb-odbc.inc.php', '4.2', 0),
('87e35451f6c09151bf54cd60aa1ac7b8', './lib/adodb/drivers/adodb-odbc_db2.inc.php', '4.2', 0),
('d9f0dce3063e7f1df499349cc57dde2a', './lib/adodb/drivers/adodb-odbc_mssql.inc.php', '4.2', 0),
('6c9e552eb61da66bfb8d80aeed52d1ca', './lib/adodb/drivers/adodb-odbc_oracle.inc.php', '4.2', 0),
('918fe9b46f2350c2035f59f4d65c506d', './lib/adodb/drivers/adodb-odbtp.inc.php', '4.2', 0),
('6295391ce9be069999bcd0b402e53e55', './lib/adodb/drivers/adodb-odbtp_unicode.inc.php', '4.2', 0),
('07d216be454be0c79d54710c05ccca2a', './lib/adodb/drivers/adodb-oracle.inc.php', '4.2', 0),
('f5ad4f4da2bf6e12f316141b1bd40675', './lib/adodb/drivers/adodb-pdo.inc.php', '4.2', 0),
('32681e8aee1b921776567dc3c92765f2', './lib/adodb/drivers/adodb-pdo_mssql.inc.php', '4.2', 0),
('c715fb0f8b12146bc8ac08c2d4c456ec', './lib/adodb/drivers/adodb-pdo_mysql.inc.php', '4.2', 0),
('ef3197aceca2ac060ffed02b99800d2c', './lib/adodb/drivers/adodb-pdo_oci.inc.php', '4.2', 0),
('7e1e2415a0005c6934812c269261f5ed', './lib/adodb/drivers/adodb-pdo_pgsql.inc.php', '4.2', 0),
('27826860aa462729fd856b807ffcd83b', './lib/adodb/drivers/adodb-pdo_sqlite.inc.php', '4.2', 0),
('90f9fb71ec26356f2829811f8fa44551', './lib/adodb/drivers/adodb-postgres.inc.php', '4.2', 0),
('e6ff778c10de5d45c0672b4879d767f6', './lib/adodb/drivers/adodb-postgres64.inc.php', '4.2', 0),
('12e3fff145b4f8483f80a0c76fdce41b', './lib/adodb/drivers/adodb-postgres7.inc.php', '4.2', 0),
('b51685a9a57d5fcf48ebccd02a97f525', './lib/adodb/drivers/adodb-postgres8.inc.php', '4.2', 0),
('4e250b3b89b506a15581ea6cc6407436', './lib/adodb/drivers/adodb-proxy.inc.php', '4.2', 0),
('04f1240819bf55ee3a2481b6abcf1762', './lib/adodb/drivers/adodb-sapdb.inc.php', '4.2', 0),
('cb31d7db11bc7f9499bd31e3cf9b4bee', './lib/adodb/drivers/adodb-sqlanywhere.inc.php', '4.2', 0),
('abbaecf6deb09a2c106af22510760739', './lib/adodb/drivers/adodb-sqlite.inc.php', '4.2', 0),
('d5ee8e4ea367b8b0d5d1a7a083ac9ef4', './lib/adodb/drivers/adodb-sqlitepo.inc.php', '4.2', 0),
('1dc679a5dab489d1284782867cca49b9', './lib/adodb/drivers/adodb-sybase.inc.php', '4.2', 0),
('5dae71655845e4cf58b2f65e60f7cabb', './lib/adodb/drivers/adodb-sybase_ase.inc.php', '4.2', 0),
('3c4de1b2cf5dd7ff6743f6624894040e', './lib/adodb/drivers/adodb-vfp.inc.php', '4.2', 0),
('56602de7a184aa22984f46954b22934b', './lib/adodb/lang/adodb-ar.inc.php', '4.2', 0),
('37b0880076545e8d8e3809002c8b1960', './lib/adodb/lang/adodb-bg.inc.php', '4.2', 0),
('ed08fdc9f392628cf2bf5eb9c814eb6a', './lib/adodb/lang/adodb-bgutf8.inc.php', '4.2', 0),
('b9030fa70d9d0f2ba408ac61c31958c3', './lib/adodb/lang/adodb-ca.inc.php', '4.2', 0),
('155efb4dceeced3de044f660a9528265', './lib/adodb/lang/adodb-cn.inc.php', '4.2', 0),
('6964322c13c74d4435a42c3d14ab7d6a', './lib/adodb/lang/adodb-cz.inc.php', '4.2', 0),
('2ea23878b1027f3d07c8a9b8bbe4e3a3', './lib/adodb/lang/adodb-da.inc.php', '4.2', 0),
('26c57777b17e3ff924b83d3ac36a6e1c', './lib/adodb/lang/adodb-de.inc.php', '4.2', 0),
('c5420bb506f4eae64a6f84e33bb31523', './lib/adodb/lang/adodb-en.inc.php', '4.2', 0),
('de0722a45173d1e076216f41090232d1', './lib/adodb/lang/adodb-es.inc.php', '4.2', 0),
('32b94a998cb1a8b1ee14089af407d585', './lib/adodb/lang/adodb-esperanto.inc.php', '4.2', 0),
('32dd4402ea6055f588cc4c999f1dd21f', './lib/adodb/lang/adodb-fa.inc.php', '4.2', 0),
('dd47dbd2afc066b15e4944297da957b2', './lib/adodb/lang/adodb-fr.inc.php', '4.2', 0),
('f308d107e1335ec36f71f101bc5324cf', './lib/adodb/lang/adodb-hu.inc.php', '4.2', 0),
('15e2c634116779844db3c9e8f1c4ceb0', './lib/adodb/lang/adodb-it.inc.php', '4.2', 0),
('ed3d417b04f361e178f1a258d193b929', './lib/adodb/lang/adodb-nl.inc.php', '4.2', 0),
('8a53c82baf19cf137ef125d7e410c647', './lib/adodb/lang/adodb-pl.inc.php', '4.2', 0),
('14cc56d6565900543e3b26130aace1b7', './lib/adodb/lang/adodb-pt-br.inc.php', '4.2', 0),
('71052ad0e1622d8514b5a41622d2ce33', './lib/adodb/lang/adodb-ro.inc.php', '4.2', 0),
('e828ddb6371ea135bfff0d6b59229eb3', './lib/adodb/lang/adodb-ru1251.inc.php', '4.2', 0),
('81fac3276333ca136f83c1f3c35f5f3f', './lib/adodb/lang/adodb-sv.inc.php', '4.2', 0),
('822a0c4c44527e99acdb3bc2f50ff6f1', './lib/adodb/lang/adodb-uk1251.inc.php', '4.2', 0),
('201d8ae7eda2a23f6b71c9d88ac77ded', './lib/adodb/lang/adodb_th.inc.php', '4.2', 0),
('b3705c728f4093b4749a13f4e5739077', './lib/adodb/pear/Auth/Container/ADOdb.php', '4.2', 0),
('ed148fe9e2eca058557af899d1f55317', './lib/adodb/perf/perf-db2.inc.php', '4.2', 0),
('5a9aea6e071736ac3ffe72319dc014d8', './lib/adodb/perf/perf-informix.inc.php', '4.2', 0),
('98946286696a47c7f2eda688e7cf8783', './lib/adodb/perf/perf-mssql.inc.php', '4.2', 0),
('bacfe7486304f78ce62b4a468f06e70f', './lib/adodb/perf/perf-mssqlnative.inc.php', '4.2', 0),
('730649a9bb02a91f41862671afe9420a', './lib/adodb/perf/perf-mysql.inc.php', '4.2', 0),
('95d6228e6386ec076bd8e90363457b4b', './lib/adodb/perf/perf-oci8.inc.php', '4.2', 0),
('3a5dfa374653c3556884cb2d0400fd3a', './lib/adodb/perf/perf-postgres.inc.php', '4.2', 0),
('af4816d1df14db3fc2f225ac22abb4ec', './lib/adodb/pivottable.inc.php', '4.2', 0),
('8ba94e2b903024b495c0993a6740bf02', './lib/adodb/rsfilter.inc.php', '4.2', 0),
('71e694bb076498e07540ad3218ac1011', './lib/adodb/server.php', '4.2', 0),
('b49f2556005d7b8ad5dbf873edecc724', './lib/adodb/session/adodb-compress-bzip2.php', '4.2', 0),
('d13219c56b6f6a1c01265c49a1930ff4', './lib/adodb/session/adodb-compress-gzip.php', '4.2', 0),
('cfe2391988a4904760e6f4b5e993b4c9', './lib/adodb/session/adodb-cryptsession.php', '4.2', 0),
('f571e96e4974e83c4c305a5bbc459407', './lib/adodb/session/adodb-cryptsession2.php', '4.2', 0),
('ab270a866387e247bbeaba77ff4f5c10', './lib/adodb/session/adodb-encrypt-mcrypt.php', '4.2', 0),
('f4f7a14e14662b1fe8cf755ae115d694', './lib/adodb/session/adodb-encrypt-md5.php', '4.2', 0),
('ea09d574f8cadaef5dbc6f93fe0501d8', './lib/adodb/session/adodb-encrypt-secret.php', '4.2', 0),
('33ec3cadbdee21ddf3199458d6b94db6', './lib/adodb/session/adodb-encrypt-sha1.php', '4.2', 0),
('4ac1a567a6545c7a2f2b400c42170c34', './lib/adodb/session/adodb-session-clob.php', '4.2', 0),
('520bb582c005692965de4c53a4eb9b15', './lib/adodb/session/adodb-session-clob2.php', '4.2', 0),
('c3760376438885d2a59e5821c644f9cd', './lib/adodb/session/adodb-session.php', '4.2', 0),
('4512c892768804efdcf2fbe43ae4d418', './lib/adodb/session/adodb-session2.php', '4.2', 0),
('4dad264ca0f5f669be480305f6be8835', './lib/adodb/session/crypt.inc.php', '4.2', 0),
('cc87e1d9098d8cf6e2a106e228f23fbe', './lib/adodb/session/old/adodb-cryptsession.php', '4.2', 0),
('603551b798e7ab8bca05ec50718ae0fd', './lib/adodb/session/old/adodb-session-clob.php', '4.2', 0),
('489aa3272599052a3b1d522062cd60ca', './lib/adodb/session/old/adodb-session.php', '4.2', 0),
('5a4e4fde0da690423376a99610929101', './lib/adodb/session/old/crypt.inc.php', '4.2', 0),
('2c0d43cfccedbc234d52a0161c55802b', './lib/adodb/toexport.inc.php', '4.2', 0),
('d156b5852e9497d028319a96f6181c6a', './lib/adodb/tohtml.inc.php', '4.2', 0),
('93225f5e8cd4ec13b540727154e7f590', './lib/ajax/ajaxlib.php', '4.2', 0),
('6ccc6ece2bde6dd95132235e1a992b3f', './lib/ajax/autosave.php', '4.2', 0),
('e447abb5f84279389e3cbec85ee4618b', './lib/ajax/xajax/copyright.inc.php', '4.2', 0),
('39211b13e13ca8e3b810aa783b909a77', './lib/ajax/xajax/xajax_core/xajaxAIO.inc.php', '4.2', 0),
('436b90c8f62345fca4d786d417ee0055', './lib/articles/artlib.php', '4.2', 0),
('16d4729b362f93a1d1daa4512cc95bdb', './lib/articles/index.php', '4.2', 0),
('8bdcb939f48efa4e1ed8931874065187', './lib/auth/index.php', '4.2', 0),
('36d17229fc870a32dc3fba1944112cf2', './lib/auth/ldap.php', '4.2', 0),
('39908cd96d0064bc24120bc01962a46a', './lib/bablotron.php', '4.2', 0),
('15bdec527da5c5ae25709c8155c00f21', './lib/ban/banlib.php', '4.2', 0),
('edda8485f05433a219afb0cbabf0c01c', './lib/ban/index.php', '4.2', 0),
('30ced1b9021cc09434b57558f68067e2', './lib/banners/bannerlib.php', '4.2', 0),
('6b620a96ccd79ab139a2ad68c873828a', './lib/banners/index.php', '4.2', 0),
('677d6f0363302b3f92a6b31e797a4251', './lib/blogs/bloglib.php', '4.2', 0),
('453b35450e842861cd80fcc8772f94f2', './lib/blogs/index.php', '4.2', 0),
('1ea78b40fe503dd4152986aacb50ab92', './lib/bookmarks/bookmarklib.php', '4.2', 0),
('466ca09d39eb87c9c9f2b8a872fd395b', './lib/bookmarks/index.php', '4.2', 0),
('6a49e6b498520364cbae818f50817ec1', './lib/breadcrumblib.php', '4.2', 0),
('cb797519dc5d177ba5d5093d5dfc85a8', './lib/cache/cachelib.php', '4.2', 0),
('430b87e562235fdb5a27df8fea0e206a', './lib/cache/index.php', '4.2', 0),
('4ac317ee7651ed5ffd8142a7c8ce6eef', './lib/cache/memcachelib.php', '4.2', 0),
('4921e3418ee0a99cb3e2a4e368acac22', './lib/cache/pagecache.php', '4.2', 0),
('1e6e442b5b9b95e204984dd28c210a2d', './lib/calendar/calendarlib.php', '4.2', 0),
('0ea6ef5b42bfb8f582d7389896c5d1b0', './lib/calendar/calrecurrence.php', '4.2', 0),
('694c6e506c53de5e689a9803694a4cde', './lib/calendar/index.php', '4.2', 0),
('ab6e75e3a06853ce35724d1a968b9518', './lib/calendar/tikicalendarlib.php', '4.2', 0),
('c4c82e48d13319575726014606f07639', './lib/categories/categlib.php', '4.2', 0),
('f9f104bfe59a123b78e9391449f77a6c', './lib/categories/index.php', '4.2', 0),
('e0d0e1ff056d4ce685600513487ed014', './lib/class_calendar.php', '4.2', 0),
('630f0d6ffd9a8f715ca47c66bcd5c631', './lib/class_rdf_parser.php', '4.2', 0),
('a82c61517e23b3e32b40eeb7e8341ff7', './lib/class_rss_parser.php', '4.2', 0),
('77dc2526a18640269d038e425ab57cd7', './lib/commcenter/commlib.php', '4.2', 0),
('ad71b115a0f210e145acfebdbcbe379b', './lib/commcenter/index.php', '4.2', 0),
('8ccafe68b10f3f62362363f2d02fa886', './lib/commentslib.php', '4.2', 0),
('5fd0c77fcae7ba91c10c3a413c634751', './lib/contribution/contributionlib.php', '4.2', 0),
('67e89bcdc4773b02a7b42f92b9fc0368', './lib/contribution/index.php', '4.2', 0),
('4e38057a5a0149ba5af74355d0b04402', './lib/copyrights/copyrightslib.php', '4.2', 0),
('00063550c17f2ec5b0a6d15e45b34739', './lib/copyrights/index.php', '4.2', 0),
('318c63a2927305e32e6aeb031e0713d2', './lib/core/lib/Category/Manipulator.php', '4.2', 0),
('7a3cb4f1a385f0f3c7f569311276f9dd', './lib/core/lib/DeclFilter.php', '4.2', 0),
('5db470c0062114ce770d17f075b7e574', './lib/core/lib/DeclFilter/CatchAllFilterRule.php', '4.2', 0),
('4ac54f105ed14b4d074e4aff1b57ba1c', './lib/core/lib/DeclFilter/CatchAllUnsetRule.php', '4.2', 0),
('3cc24ceb1f1338c8d2b9109ffd4ce0ac', './lib/core/lib/DeclFilter/FilterRule.php', '4.2', 0),
('851e91a94de816b5515a0e560daa5486', './lib/core/lib/DeclFilter/KeyPatternFilterRule.php', '4.2', 0),
('5c78d1dc495c0273624529a551fc2799', './lib/core/lib/DeclFilter/KeyPatternUnsetRule.php', '4.2', 0),
('11e25a94b00865988336278d871d4d27', './lib/core/lib/DeclFilter/Rule.php', '4.2', 0),
('dcb30bc10a5706aaa67699881265aefe', './lib/core/lib/DeclFilter/StaticKeyFilterRule.php', '4.2', 0),
('b29f19448e4d078c843e4fc2c157f7b5', './lib/core/lib/DeclFilter/StaticKeyUnsetRule.php', '4.2', 0),
('77bcb42d8b7c33b10729d9db5db2b5ab', './lib/core/lib/DeclFilter/UnsetRule.php', '4.2', 0),
('c1ca19fa15ddbe12693e3a8689d4638a', './lib/core/lib/JitFilter.php', '4.2', 0),
('6e549378be98530df87a21677310a977', './lib/core/lib/JitFilter/Element.php', '4.2', 0),
('aabc43f285f192877697129d07cdae53', './lib/core/lib/Multilingual/Aligner/BilingualAligner.php', '4.2', 0),
('ad0ad0aef60c31244585961601ea12bd', './lib/core/lib/Multilingual/Aligner/SentenceAlignments.php', '4.2', 0),
('f61dd8a59942dce4285be8f08dd6d5ce', './lib/core/lib/Multilingual/Aligner/SentenceSegmentor.php', '4.2', 0),
('cf46dc3a0c0f089336e736ba8b26dd1f', './lib/core/lib/Multilingual/Aligner/ShortestPathFinder.php', '4.2', 0),
('f70bd5ae282f5d9dbc1cca3364c4a607', './lib/core/lib/Multilingual/MachineTranslation/GoogleTranslateWrapper.php', '4.2', 0),
('d8fd633aac4669406411236a82153486', './lib/core/lib/Perms.php', '4.2', 0),
('56556bacdcb36bc5d91135ba9a75a722', './lib/core/lib/Perms/Accessor.php', '4.2', 0),
('8d20a261275b91b8795c9caa4e399e99', './lib/core/lib/Perms/Applier.php', '4.2', 0),
('df1a9e2d8db400fe6d743589d6af25a1', './lib/core/lib/Perms/Check.php', '4.2', 0),
('68cef0529ffeea22d03c43c2cc540be2', './lib/core/lib/Perms/Check/Alternate.php', '4.2', 0),
('9668d3a27bed3d0d8ebbddb816b6d38c', './lib/core/lib/Perms/Check/Creator.php', '4.2', 0),
('e84bdbfa056689a9ba19537ddf550757', './lib/core/lib/Perms/Check/Direct.php', '4.2', 0),
('b820dc829eb92ba876f243f3bd053739', './lib/core/lib/Perms/Check/Indirect.php', '4.2', 0),
('d15f06f02def8c97e6a98ac8e3fb2e28', './lib/core/lib/Perms/Reflection/Category.php', '4.2', 0),
('33cb2dc654481b2ff8ec141e0baf47de', './lib/core/lib/Perms/Reflection/Container.php', '4.2', 0),
('2bb7b17e3cd3e0dfe7bb1f89a45f3e5f', './lib/core/lib/Perms/Reflection/Factory.php', '4.2', 0),
('e721d2e619ffa3cbd6c4756196e6befe', './lib/core/lib/Perms/Reflection/Global.php', '4.2', 0),
('e87cdd1578e8ded693248a97da17124c', './lib/core/lib/Perms/Reflection/Object.php', '4.2', 0),
('c5caca58b4d1024ebefeaf70a9d5c8b1', './lib/core/lib/Perms/Reflection/PermissionComparator.php', '4.2', 0),
('c5b330b89da67634384f13fb17aae10c', './lib/core/lib/Perms/Reflection/PermissionSet.php', '4.2', 0),
('ed7f125116e24ed6e3e714e715836698', './lib/core/lib/Perms/Reflection/Quick.php', '4.2', 0),
('ae65b2685d94824247d421b38ce0d0ae', './lib/core/lib/Perms/Resolver.php', '4.2', 0),
('29ee8c1b7f2fbb480370df65eb5c5f0f', './lib/core/lib/Perms/Resolver/Default.php', '4.2', 0),
('05faabaaede5a647a909bd3c098c841a', './lib/core/lib/Perms/Resolver/Static.php', '4.2', 0),
('a5df29db843fb129d2e14a8488a8ea61', './lib/core/lib/Perms/ResolverFactory.php', '4.2', 0),
('6918b7303844e46829d41bdc3d127977', './lib/core/lib/Perms/ResolverFactory/CategoryFactory.php', '4.2', 0),
('38bedd22cdaa379abf86b4bb2dd15fd4', './lib/core/lib/Perms/ResolverFactory/GlobalFactory.php', '4.2', 0),
('657661b5c7f47de39b0ede734478f425', './lib/core/lib/Perms/ResolverFactory/ObjectFactory.php', '4.2', 0),
('0858280f1f951223d94772bd926872d0', './lib/core/lib/Perms/ResolverFactory/StaticFactory.php', '4.2', 0),
('8d2eee75274cd05a53939023bc477333', './lib/core/lib/Perms/ResolverFactory/TestFactory.php', '4.2', 0),
('f1070823bd2be92dbe1d2366df63ccf5', './lib/core/lib/StandardAnalyzer/Analyzer/Standard.php', '4.2', 0),
('6852b177c646934dc8f82f6b7eaa6ee4', './lib/core/lib/StandardAnalyzer/Analyzer/Standard/English.php', '4.2', 0),
('f801926728ae279fabbb9307aa04db34', './lib/core/lib/StandardAnalyzer/TokenFilter/EnglishStemmer.php', '4.2', 0),
('a454f27d8e26367512ac961d8b10edc7', './lib/core/lib/StandardAnalyzer/TokenFilter/EnglishStemmer/PorterStemmer.php', '4.2', 0),
('d6775365916d0dd500926d487e0a25ec', './lib/core/lib/TikiDb.php', '4.2', 0),
('cda5fc1dc6e8851c898e73a6b6c1b184', './lib/core/lib/TikiDb/Adodb.php', '4.2', 0),
('7e937174ff5191276d8c87251815da00', './lib/core/lib/TikiDb/Bridge.php', '4.2', 0),
('2be13c2b93344c3e3e75f555856657ff', './lib/core/lib/TikiDb/ErrorHandler.php', '4.2', 0),
('fe44bda3ecbe2c41e22f3d4ca2485627', './lib/core/lib/TikiDb/Exception.php', '4.2', 0),
('a82e3fadeb09927ae99582facb47d979', './lib/core/lib/TikiDb/MasterSlaveDispatch.php', '4.2', 0),
('5218bf6eaf7d1a03215cb0a74e20a44d', './lib/core/lib/TikiDb/Pdo.php', '4.2', 0),
('f4a4997a96d324607ce2d395162b1255', './lib/core/lib/TikiFilter.php', '4.2', 0),
('13fc36e7af275998efd5b6ccea6a62bc', './lib/core/lib/TikiFilter/Callback.php', '4.2', 0),
('da3edbc63571ff72ede9b0a0e2aa7e3d', './lib/core/lib/TikiFilter/PreventXss.php', '4.2', 0),
('5f17c148eb241470b8730cb07d615b8c', './lib/core/lib/TikiFilter/RawUnsafe.php', '4.2', 0),
('4a6351d23f8b3d8848eb2b84ac17cf7b', './lib/core/lib/TikiFilter/Word.php', '4.2', 0),
('8b7c3a824c366c06c750772332380f91', './lib/core/lib/Transition.php', '4.2', 0),
('20143d7d43d43a6202b00e52fba68804', './lib/core/lib/WikiParser/PluginArgumentParser.php', '4.2', 0),
('e122f54821688cc084f84eb2d3e05e9d', './lib/core/lib/WikiParser/PluginDefinition.php', '4.2', 0),
('b30f67e96e376b1a02501a87c48e79d5', './lib/core/lib/WikiParser/PluginMatcher.php', '4.2', 0),
('f7221295ea283ead3a9f993468d87a8d', './lib/core/lib/WikiParser/PluginParser.php', '4.2', 0),
('5c94d9101b13de872de7b09bbffa8016', './lib/core/lib/WikiParser/PluginRepository.php', '4.2', 0),
('8b86e4ab25c99706eebeae2f0e45627d', './lib/core/lib/WikiParser/PluginRunner.php', '4.2', 0),
('c5dd2f6196a426e5c9df9683b1da9431', './lib/core/lib/Zend/Acl.php', '4.2', 0),
('da111e5c998983a8af58bb86a37dad50', './lib/core/lib/Zend/Acl/Assert/Interface.php', '4.2', 0),
('bf4387498ba6aa809e164fee3c97bcf2', './lib/core/lib/Zend/Acl/Exception.php', '4.2', 0),
('0358404b366f5c528d2dc2dd5e7476af', './lib/core/lib/Zend/Acl/Resource.php', '4.2', 0),
('753aa716bdb78d42047e56fcf88e236c', './lib/core/lib/Zend/Acl/Resource/Interface.php', '4.2', 0),
('ada729ff6b19a7df87768c5cb1d88083', './lib/core/lib/Zend/Acl/Role.php', '4.2', 0),
('e34c52cd3636faf6240dc985c3a914f7', './lib/core/lib/Zend/Acl/Role/Interface.php', '4.2', 0),
('05e934727a55a2ff75d7d67b7ed2710b', './lib/core/lib/Zend/Acl/Role/Registry.php', '4.2', 0),
('3a2d8a213278bbb07f0a98e42c7dcc73', './lib/core/lib/Zend/Acl/Role/Registry/Exception.php', '4.2', 0),
('addf5b23827c725d9265438ae0b67146', './lib/core/lib/Zend/Amf/Adobe/Auth.php', '4.2', 0),
('2dccf6e991c89168d1608197d58c7342', './lib/core/lib/Zend/Amf/Adobe/DbInspector.php', '4.2', 0),
('53558881228261f2028bdd49fc1ff3a4', './lib/core/lib/Zend/Amf/Adobe/Introspector.php', '4.2', 0),
('23dd65a29300dfa9f8fe7d56ba1679c4', './lib/core/lib/Zend/Amf/Auth/Abstract.php', '4.2', 0),
('d98ad104227a25f6907ff56da9021c92', './lib/core/lib/Zend/Amf/Constants.php', '4.2', 0),
('195ea01d13e433aee501d544aba91f4f', './lib/core/lib/Zend/Amf/Exception.php', '4.2', 0),
('59b1cf1b4182d833b9570ca4809ce09c', './lib/core/lib/Zend/Amf/Parse/Amf0/Deserializer.php', '4.2', 0),
('a68fdc4b6f3b95a4b76d323be95d80b9', './lib/core/lib/Zend/Amf/Parse/Amf0/Serializer.php', '4.2', 0),
('e10a2d3c587636758bbb0a925c9c35fb', './lib/core/lib/Zend/Amf/Parse/Amf3/Deserializer.php', '4.2', 0),
('c10f7068e19ad0ef9dff624b806186e7', './lib/core/lib/Zend/Amf/Parse/Amf3/Serializer.php', '4.2', 0),
('b037c042b05bf85e7c2e17e4f2c8d1cd', './lib/core/lib/Zend/Amf/Parse/Deserializer.php', '4.2', 0),
('cd671de1c8266a3f49ecac43fc79e60b', './lib/core/lib/Zend/Amf/Parse/InputStream.php', '4.2', 0),
('313ea61e2a2be4cb6c8c54580eb7cb4c', './lib/core/lib/Zend/Amf/Parse/OutputStream.php', '4.2', 0),
('9a4b786f23ca2be498941cef00a441d5', './lib/core/lib/Zend/Amf/Parse/Resource/MysqlResult.php', '4.2', 0),
('91109e5d307321078747226c18637223', './lib/core/lib/Zend/Amf/Parse/Resource/MysqliResult.php', '4.2', 0),
('37822f3a134d2d5e87fe5f50daa0d0e7', './lib/core/lib/Zend/Amf/Parse/Resource/Stream.php', '4.2', 0),
('0eafd4daa44adcf51c878aabedae044a', './lib/core/lib/Zend/Amf/Parse/Serializer.php', '4.2', 0),
('e472835289a8c79adadf31dabf5fd7b8', './lib/core/lib/Zend/Amf/Parse/TypeLoader.php', '4.2', 0),
('6ee628edfcce17772a20424c203cd9b2', './lib/core/lib/Zend/Amf/Request.php', '4.2', 0),
('2f0e9da0502eb03e9b71ce81669d3dca', './lib/core/lib/Zend/Amf/Request/Http.php', '4.2', 0),
('f8955ec3631b9b53482716736e5747de', './lib/core/lib/Zend/Amf/Response.php', '4.2', 0),
('858c96d1bee5a9579fcbc7adb597da02', './lib/core/lib/Zend/Amf/Response/Http.php', '4.2', 0),
('bc7bc5ee922180351dea9ec0b94d7b3c', './lib/core/lib/Zend/Amf/Server.php', '4.2', 0),
('d2f75e73d7b4aae21e7b3a1703edcea8', './lib/core/lib/Zend/Amf/Server/Exception.php', '4.2', 0),
('1baa64a22f5e9ea961f09d8425ebe6b8', './lib/core/lib/Zend/Amf/Util/BinaryStream.php', '4.2', 0),
('1728b2f1da6ba6816eae99423a1c556a', './lib/core/lib/Zend/Amf/Value/ByteArray.php', '4.2', 0),
('14749868a4080259c38529526946f3ea', './lib/core/lib/Zend/Amf/Value/MessageBody.php', '4.2', 0),
('bbbea04d40c5554b0b226e7470149ff1', './lib/core/lib/Zend/Amf/Value/MessageHeader.php', '4.2', 0),
('6cd829d2c00d73d9f22f66be17b0209a', './lib/core/lib/Zend/Amf/Value/Messaging/AbstractMessage.php', '4.2', 0),
('30c518bb7a1e37e4492f0a57d50c998c', './lib/core/lib/Zend/Amf/Value/Messaging/AcknowledgeMessage.php', '4.2', 0),
('af39c9910aa02ca0c2054b45ae1a000e', './lib/core/lib/Zend/Amf/Value/Messaging/ArrayCollection.php', '4.2', 0),
('61ea29cc85acaee6121cc498af3bc002', './lib/core/lib/Zend/Amf/Value/Messaging/AsyncMessage.php', '4.2', 0),
('3fb8a08b012ccda4412e9f8072285aba', './lib/core/lib/Zend/Amf/Value/Messaging/CommandMessage.php', '4.2', 0),
('27154a5f5a6a59ec0aeea4e2b05b6b93', './lib/core/lib/Zend/Amf/Value/Messaging/ErrorMessage.php', '4.2', 0),
('788031f315aeedde9622219432d67485', './lib/core/lib/Zend/Amf/Value/Messaging/RemotingMessage.php', '4.2', 0),
('776750b03a3102302651e1765ca57dbc', './lib/core/lib/Zend/Amf/Value/TraitsInfo.php', '4.2', 0),
('ff9ab799591eb8eaab20153576bb3c5a', './lib/core/lib/Zend/Application.php', '4.2', 0),
('03849068fd3c376b07c63e587d5366fe', './lib/core/lib/Zend/Application/Bootstrap/Bootstrap.php', '4.2', 0),
('ab2f69e950670fded15ab752066751ab', './lib/core/lib/Zend/Application/Bootstrap/BootstrapAbstract.php', '4.2', 0),
('4e5c8c5675d3d02b31f40df9dbbd368c', './lib/core/lib/Zend/Application/Bootstrap/Bootstrapper.php', '4.2', 0),
('a4f3316184a49e0dc9a0ee73d1dbc8bd', './lib/core/lib/Zend/Application/Bootstrap/Exception.php', '4.2', 0),
('79bf8faca9deb5cf0122c0f8ce9dccb8', './lib/core/lib/Zend/Application/Bootstrap/ResourceBootstrapper.php', '4.2', 0),
('2e542892624222171be2b21952f3e199', './lib/core/lib/Zend/Application/Exception.php', '4.2', 0),
('58b658fed47c3a55b7f117b433d9277b', './lib/core/lib/Zend/Application/Module/Autoloader.php', '4.2', 0),
('015160e8fd86baaedc8a0ca6d28c29aa', './lib/core/lib/Zend/Application/Module/Bootstrap.php', '4.2', 0),
('9f24ddbfdef6fd6ff71ff423a08dc6b5', './lib/core/lib/Zend/Application/Resource/Db.php', '4.2', 0),
('fee5153d6f97fb3edc16e27f21a51631', './lib/core/lib/Zend/Application/Resource/Exception.php', '4.2', 0),
('7931746d63cc1b303ea0d21d627e7821', './lib/core/lib/Zend/Application/Resource/Frontcontroller.php', '4.2', 0),
('46a212a952396dee4a8246a9aeda1b57', './lib/core/lib/Zend/Application/Resource/Layout.php', '4.2', 0),
('5c08921b73bb91a80188919fb12ad36c', './lib/core/lib/Zend/Application/Resource/Locale.php', '4.2', 0),
('da8e7e0ba66d79358d401df0992fe2de', './lib/core/lib/Zend/Application/Resource/Modules.php', '4.2', 0),
('266752c761877a3d769a69d8309e2c26', './lib/core/lib/Zend/Application/Resource/Navigation.php', '4.2', 0),
('354b09f90767c1844f2718b6001045a0', './lib/core/lib/Zend/Application/Resource/Resource.php', '4.2', 0),
('15748639ac2cbd88ba28d27414dc5ec5', './lib/core/lib/Zend/Application/Resource/ResourceAbstract.php', '4.2', 0),
('46fcae74334ac4a4f6740fc2e1ab7df3', './lib/core/lib/Zend/Application/Resource/Router.php', '4.2', 0),
('b0ce110aa2a87f0f3d179c972a7543af', './lib/core/lib/Zend/Application/Resource/Session.php', '4.2', 0),
('0885272fa8cf33d604b653ab9dadbf94', './lib/core/lib/Zend/Application/Resource/Translate.php', '4.2', 0),
('0e3d97a34d1d2a9121f393e685309ddf', './lib/core/lib/Zend/Application/Resource/View.php', '4.2', 0),
('6d53f7eb7afe9ef322f19bc096cfc9b6', './lib/core/lib/Zend/Auth.php', '4.2', 0),
('3cd69b98d1b7be48b298bf80622d3c5d', './lib/core/lib/Zend/Auth/Adapter/DbTable.php', '4.2', 0),
('d4261bb6b402e45a6ac5bcba422ce841', './lib/core/lib/Zend/Auth/Adapter/Digest.php', '4.2', 0),
('5727710db6eff01ec44a410c36fbef65', './lib/core/lib/Zend/Auth/Adapter/Exception.php', '4.2', 0),
('54dd4e2c7d0fbdc82cd7dbbc2762a4b1', './lib/core/lib/Zend/Auth/Adapter/Http.php', '4.2', 0),
('ef3ff12481eb886ab6900b88d76d5532', './lib/core/lib/Zend/Auth/Adapter/Http/Resolver/Exception.php', '4.2', 0),
('ab89d3253a3f9169df13771076b3246b', './lib/core/lib/Zend/Auth/Adapter/Http/Resolver/File.php', '4.2', 0),
('3975d3236b20397d32f3f46679c37cc9', './lib/core/lib/Zend/Auth/Adapter/Http/Resolver/Interface.php', '4.2', 0),
('5dd89bbd157090b7986a7b552fa798e1', './lib/core/lib/Zend/Auth/Adapter/InfoCard.php', '4.2', 0),
('c5e16e46ebca031d0d6198e9e49e5982', './lib/core/lib/Zend/Auth/Adapter/Interface.php', '4.2', 0),
('9a6f7bdfec01f6aaf6d4a776403c7015', './lib/core/lib/Zend/Auth/Adapter/Ldap.php', '4.2', 0),
('c9a5d8c43c233d066724c819a137e685', './lib/core/lib/Zend/Auth/Adapter/OpenId.php', '4.2', 0),
('7ff283dcdb4f5aa337410493f144dbe2', './lib/core/lib/Zend/Auth/Exception.php', '4.2', 0),
('bcca44ed3c476ab30e71594c1497de32', './lib/core/lib/Zend/Auth/Result.php', '4.2', 0),
('edd663455eaab00c83629cfeb71ff7d5', './lib/core/lib/Zend/Auth/Storage/Exception.php', '4.2', 0),
('80cc6bafff6c8cbe99ae8c781c15ea3e', './lib/core/lib/Zend/Auth/Storage/Interface.php', '4.2', 0),
('a9793faf6185996db7206e2ee314ca6f', './lib/core/lib/Zend/Auth/Storage/NonPersistent.php', '4.2', 0),
('109d64317d3443dd98ec56751156381b', './lib/core/lib/Zend/Auth/Storage/Session.php', '4.2', 0),
('bcd98b3d62517853f0cf70e61f0f55b4', './lib/core/lib/Zend/Cache.php', '4.2', 0),
('78bd4a26c9e7404e5ac3e1ee83720b24', './lib/core/lib/Zend/Cache/Backend.php', '4.2', 0),
('d887bdc0034f5d57b601fdbf9fb72525', './lib/core/lib/Zend/Cache/Backend/Apc.php', '4.2', 0),
('6347724cd67248808a0bc085b21ac1b2', './lib/core/lib/Zend/Cache/Backend/ExtendedInterface.php', '4.2', 0),
('bdfd025a457829c95bc7c60c11e6b1ec', './lib/core/lib/Zend/Cache/Backend/File.php', '4.2', 0),
('cb7eaacdaeebdf33c81ffa960fa6db90', './lib/core/lib/Zend/Cache/Backend/Interface.php', '4.2', 0),
('dd4949c5051657e5c22aec25d437d70a', './lib/core/lib/Zend/Cache/Backend/Memcached.php', '4.2', 0),
('807a5a0dace05ca6ab6b8068d5f850d2', './lib/core/lib/Zend/Cache/Backend/Sqlite.php', '4.2', 0),
('151508a243c9ba2ef765de15e4c73cb4', './lib/core/lib/Zend/Cache/Backend/Test.php', '4.2', 0),
('7c19c6f95563916214e010f0e3cd0e1d', './lib/core/lib/Zend/Cache/Backend/TwoLevels.php', '4.2', 0),
('ea9948180e8094023a1695e1f5c78862', './lib/core/lib/Zend/Cache/Backend/Xcache.php', '4.2', 0),
('a6b3cb317247a38ca667f61a2d642b49', './lib/core/lib/Zend/Cache/Backend/ZendPlatform.php', '4.2', 0),
('418828c1307a700af8dad230991515e5', './lib/core/lib/Zend/Cache/Backend/ZendServer.php', '4.2', 0),
('d3335e278a4101e6faa8f9da42535f28', './lib/core/lib/Zend/Cache/Backend/ZendServer/Disk.php', '4.2', 0),
('f2d9070fa385e346402b5c20d3c571d9', './lib/core/lib/Zend/Cache/Backend/ZendServer/ShMem.php', '4.2', 0),
('5a821f73d9e8ec206ad3c710b9205dfa', './lib/core/lib/Zend/Cache/Core.php', '4.2', 0),
('0cd3eec97a6633f19261c6c854250449', './lib/core/lib/Zend/Cache/Exception.php', '4.2', 0),
('5d37ab037d0477515bc8d163c9e8b6bf', './lib/core/lib/Zend/Cache/Frontend/Class.php', '4.2', 0),
('9df6ffbce760f6fa890ebc2c3591550a', './lib/core/lib/Zend/Cache/Frontend/File.php', '4.2', 0),
('1f4ea6e6ebcf6c187d4636a613951588', './lib/core/lib/Zend/Cache/Frontend/Function.php', '4.2', 0),
('076c0307fe712dd1df523e862ac6aee6', './lib/core/lib/Zend/Cache/Frontend/Output.php', '4.2', 0),
('9f584fbdad9530741275bffe385665f2', './lib/core/lib/Zend/Cache/Frontend/Page.php', '4.2', 0),
('f52ba9d19215fc4eef065fc259738a24', './lib/core/lib/Zend/Captcha/Adapter.php', '4.2', 0),
('03eff0c1742bc23baaa84be66297e5d5', './lib/core/lib/Zend/Captcha/Base.php', '4.2', 0),
('667600f2f54486d85aba8efbea77bdec', './lib/core/lib/Zend/Captcha/Dumb.php', '4.2', 0),
('be7e44d2964064e1e66171e79139b85c', './lib/core/lib/Zend/Captcha/Exception.php', '4.2', 0),
('2cc63e044dac8f1f4f85937206b6c6ee', './lib/core/lib/Zend/Captcha/Figlet.php', '4.2', 0),
('0186548f2aa967dd6c639211b7ee0d85', './lib/core/lib/Zend/Captcha/Image.php', '4.2', 0),
('af8eb78ddc1c8959022f90b3e4505a4f', './lib/core/lib/Zend/Captcha/ReCaptcha.php', '4.2', 0),
('6cdc7b7254b21bf62cb292bb79f00a9a', './lib/core/lib/Zend/Captcha/Word.php', '4.2', 0),
('b13a5d94043d9bf4370aba65a9f14807', './lib/core/lib/Zend/CodeGenerator/Abstract.php', '4.2', 0),
('35e946ee9800dc301838c0396ec54ebc', './lib/core/lib/Zend/CodeGenerator/Exception.php', '4.2', 0),
('6de620dad431b645b61dbe0693b84617', './lib/core/lib/Zend/CodeGenerator/Php/Abstract.php', '4.2', 0),
('6fc5d9dd320242b3226e915d7c853b54', './lib/core/lib/Zend/CodeGenerator/Php/Body.php', '4.2', 0),
('dd5977cb093516f8caa00525d912253b', './lib/core/lib/Zend/CodeGenerator/Php/Class.php', '4.2', 0),
('ea33de8fc6af8feb42c1d6c4dd9bba41', './lib/core/lib/Zend/CodeGenerator/Php/Docblock.php', '4.2', 0),
('cc26a776820405919c1c1766cb469dcd', './lib/core/lib/Zend/CodeGenerator/Php/Docblock/Tag.php', '4.2', 0),
('e9df67463b1590cf4edf405e4d205faf', './lib/core/lib/Zend/CodeGenerator/Php/Docblock/Tag/License.php', '4.2', 0),
('bdfa438bb4b35b7d245f29a9cc7b70d1', './lib/core/lib/Zend/CodeGenerator/Php/Docblock/Tag/Param.php', '4.2', 0),
('df67c0998f5c02623515fd5fc24a9751', './lib/core/lib/Zend/CodeGenerator/Php/Docblock/Tag/Return.php', '4.2', 0),
('8b57385a39ce57f04ea3635ae4bfb264', './lib/core/lib/Zend/CodeGenerator/Php/Exception.php', '4.2', 0),
('cba7fb11b22113ecd1d57c98c071bb82', './lib/core/lib/Zend/CodeGenerator/Php/File.php', '4.2', 0),
('c81288814b22ed43df79dd756a0933d9', './lib/core/lib/Zend/CodeGenerator/Php/Member/Abstract.php', '4.2', 0),
('87847baa05fcc20ab9a3d585e2daa5d7', './lib/core/lib/Zend/CodeGenerator/Php/Member/Container.php', '4.2', 0),
('12971a13185e58c3aa9eaf821df5ef5c', './lib/core/lib/Zend/CodeGenerator/Php/Method.php', '4.2', 0),
('be144ef006ac48cfd8a4e64594a32ae9', './lib/core/lib/Zend/CodeGenerator/Php/Parameter.php', '4.2', 0),
('31a1ed6a6709c0a2f4aa4cc8ad956d26', './lib/core/lib/Zend/CodeGenerator/Php/Parameter/DefaultValue.php', '4.2', 0),
('d4fecfcd1f6d2c392184c208b68bb437', './lib/core/lib/Zend/CodeGenerator/Php/Property.php', '4.2', 0),
('8d327230d3cb2a1f2e3cc1c1c9e3b1e9', './lib/core/lib/Zend/CodeGenerator/Php/Property/DefaultValue.php', '4.2', 0),
('5fa075bc156f4b1feee6db3611afbd5b', './lib/core/lib/Zend/Config.php', '4.2', 0),
('5b033f4d99d7f32889021dcce5b89b5f', './lib/core/lib/Zend/Config/Exception.php', '4.2', 0),
('852078036bde8732322021f5b67de9ff', './lib/core/lib/Zend/Config/Ini.php', '4.2', 0),
('8a544654250823273dd95263960c2d86', './lib/core/lib/Zend/Config/Writer.php', '4.2', 0),
('303133060076eab68104e4e55d5b861b', './lib/core/lib/Zend/Config/Writer/Array.php', '4.2', 0),
('1e263a713d3cac3af2f3688f0b878b4b', './lib/core/lib/Zend/Config/Writer/Ini.php', '4.2', 0),
('55abbfea738077a838d9b5887d5db062', './lib/core/lib/Zend/Config/Writer/Xml.php', '4.2', 0),
('b8663844ebdd2587f3ac77d12befec03', './lib/core/lib/Zend/Config/Xml.php', '4.2', 0),
('9a855fc5e8bdf5cad7537199d591d2cb', './lib/core/lib/Zend/Console/Getopt.php', '4.2', 0),
('9dcc1fa4239ea25235c82e50c3f15b28', './lib/core/lib/Zend/Console/Getopt/Exception.php', '4.2', 0),
('a5cd857a1510762534728f74aaf28ee5', './lib/core/lib/Zend/Controller/Action.php', '4.2', 0),
('6a44bcd320783b123a33d5cd8f3ef0d1', './lib/core/lib/Zend/Controller/Action/Exception.php', '4.2', 0),
('3a555359759dc99ff2864ee7e244cfe2', './lib/core/lib/Zend/Controller/Action/Helper/Abstract.php', '4.2', 0),
('58cb66b3decde08d5e1af50312925484', './lib/core/lib/Zend/Controller/Action/Helper/ActionStack.php', '4.2', 0),
('f3762079f554e10f9daafa8796a5729d', './lib/core/lib/Zend/Controller/Action/Helper/AjaxContext.php', '4.2', 0),
('95e1e33f8eee42751d7e8ef93302349f', './lib/core/lib/Zend/Controller/Action/Helper/AutoComplete/Abstract.php', '4.2', 0),
('8abbf3d4b713f9ad7838a8421a644921', './lib/core/lib/Zend/Controller/Action/Helper/AutoCompleteDojo.php', '4.2', 0),
('2ec0516a959af227b11959c6174abb24', './lib/core/lib/Zend/Controller/Action/Helper/AutoCompleteScriptaculous.php', '4.2', 0),
('1cca891038ae69bf5240f62d0a854937', './lib/core/lib/Zend/Controller/Action/Helper/ContextSwitch.php', '4.2', 0),
('e1388b8d92e5123d9f829b023471ba99', './lib/core/lib/Zend/Controller/Action/Helper/FlashMessenger.php', '4.2', 0),
('db27ea5bd9adb38be9f15dce243ed5cf', './lib/core/lib/Zend/Controller/Action/Helper/Json.php', '4.2', 0),
('93f0c7bef77150236c04b4be9e781046', './lib/core/lib/Zend/Controller/Action/Helper/Redirector.php', '4.2', 0),
('edc49039903a6d3652aec4d73c4b86dc', './lib/core/lib/Zend/Controller/Action/Helper/Url.php', '4.2', 0),
('2cf30ec4ad8d61761ede347f4e387a2b', './lib/core/lib/Zend/Controller/Action/Helper/ViewRenderer.php', '4.2', 0),
('68502a4b0f11316f1f993a2650d9792c', './lib/core/lib/Zend/Controller/Action/HelperBroker.php', '4.2', 0),
('0c002e90fcf67b73ff8fc446f8104e82', './lib/core/lib/Zend/Controller/Action/HelperBroker/PriorityStack.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('c05c39493e038ae4e8d63f2106bb5a36', './lib/core/lib/Zend/Controller/Action/Interface.php', '4.2', 0),
('7109b3fbbd013a4f6251238ec3aaba49', './lib/core/lib/Zend/Controller/Dispatcher/Abstract.php', '4.2', 0),
('7128b3fcf8222fde2e270e275be05687', './lib/core/lib/Zend/Controller/Dispatcher/Exception.php', '4.2', 0),
('07a174317575bab25cf32deef41a28a0', './lib/core/lib/Zend/Controller/Dispatcher/Interface.php', '4.2', 0),
('bb315aacd56443e1ccaf9795b66f8903', './lib/core/lib/Zend/Controller/Dispatcher/Standard.php', '4.2', 0),
('d49e301213cee02287a37a5def0e64a0', './lib/core/lib/Zend/Controller/Exception.php', '4.2', 0),
('866addfd23d20c521700da6ce52df2a2', './lib/core/lib/Zend/Controller/Front.php', '4.2', 0),
('11cc26c4106d3562cdf06982642f0693', './lib/core/lib/Zend/Controller/Plugin/Abstract.php', '4.2', 0),
('eef207fea3eb1bd6dcbbb607cb2e41e2', './lib/core/lib/Zend/Controller/Plugin/ActionStack.php', '4.2', 0),
('dd39ab3b999fffe254c1ce8156790941', './lib/core/lib/Zend/Controller/Plugin/Broker.php', '4.2', 0),
('3dc8d44f08d3d60974222c1d95ecaef3', './lib/core/lib/Zend/Controller/Plugin/ErrorHandler.php', '4.2', 0),
('386d05faa9014b7d9dfc3ad8b5f1089a', './lib/core/lib/Zend/Controller/Plugin/PutHandler.php', '4.2', 0),
('39ef46db5678f5afb550c637883deb32', './lib/core/lib/Zend/Controller/Request/Abstract.php', '4.2', 0),
('39a6a667641acd330ae846a98a92f535', './lib/core/lib/Zend/Controller/Request/Apache404.php', '4.2', 0),
('ef458d8a75cc650d9cbf90ff89df9012', './lib/core/lib/Zend/Controller/Request/Exception.php', '4.2', 0),
('14e629773d5289763d67e0cb7a53801a', './lib/core/lib/Zend/Controller/Request/Http.php', '4.2', 0),
('9a89b051f8cb34dc783e209722016720', './lib/core/lib/Zend/Controller/Request/HttpTestCase.php', '4.2', 0),
('8281bc2a9f4abfb8421aa3b0f739ff90', './lib/core/lib/Zend/Controller/Request/Simple.php', '4.2', 0),
('073fc83da489bc72459070e95aee38cb', './lib/core/lib/Zend/Controller/Response/Abstract.php', '4.2', 0),
('5b1a948755299dbc6e1cbc4a4a20d1a8', './lib/core/lib/Zend/Controller/Response/Cli.php', '4.2', 0),
('b9d9bd586c5b5c2cb9bd326ce3565e95', './lib/core/lib/Zend/Controller/Response/Exception.php', '4.2', 0),
('418d5d667d5f8850dde824e8104f2a32', './lib/core/lib/Zend/Controller/Response/Http.php', '4.2', 0),
('ce7cc5828402163c84d38f57bbc694de', './lib/core/lib/Zend/Controller/Response/HttpTestCase.php', '4.2', 0),
('64271e4d4a067691cd8c0c8039fc0dab', './lib/core/lib/Zend/Controller/Router/Abstract.php', '4.2', 0),
('0d449e0e9a5980e43de701433597f7b1', './lib/core/lib/Zend/Controller/Router/Exception.php', '4.2', 0),
('a30f5da5d97c4edf537c8d797b6be351', './lib/core/lib/Zend/Controller/Router/Interface.php', '4.2', 0),
('5ed84c68b395a438eb11b7dcc548e872', './lib/core/lib/Zend/Controller/Router/Rewrite.php', '4.2', 0),
('a30983a2beb67bdcb1bb758cfbac9997', './lib/core/lib/Zend/Controller/Router/Route.php', '4.2', 0),
('07384a1a845b6c3a6df4d584c821576f', './lib/core/lib/Zend/Controller/Router/Route/Abstract.php', '4.2', 0),
('ace3e3e9b19450d57d38184c3795321f', './lib/core/lib/Zend/Controller/Router/Route/Chain.php', '4.2', 0),
('f215ef458e95bdc788b6894f2588bd57', './lib/core/lib/Zend/Controller/Router/Route/Hostname.php', '4.2', 0),
('87291424167bcd71c13d4d0d76ab0be4', './lib/core/lib/Zend/Controller/Router/Route/Interface.php', '4.2', 0),
('326f71d91cc3a7de83ad8ca001ed7c0d', './lib/core/lib/Zend/Controller/Router/Route/Module.php', '4.2', 0),
('21e608a50958480b36aebea869423201', './lib/core/lib/Zend/Controller/Router/Route/Regex.php', '4.2', 0),
('09f7423aeefb06f5590e606092e4fcd9', './lib/core/lib/Zend/Controller/Router/Route/Static.php', '4.2', 0),
('a3e3becf5527a5fd73d74335be194623', './lib/core/lib/Zend/Crypt.php', '4.2', 0),
('c21586759217e270bfda6afc3d1ca92d', './lib/core/lib/Zend/Crypt/DiffieHellman.php', '4.2', 0),
('260b1fc5436bfc68b0d589113f321b13', './lib/core/lib/Zend/Crypt/DiffieHellman/Exception.php', '4.2', 0),
('f4ca8b787ec8f15b9ff5db23c0fc1746', './lib/core/lib/Zend/Crypt/Exception.php', '4.2', 0),
('f601d91b6bed2cc6d27b938f0699be1a', './lib/core/lib/Zend/Crypt/Hmac.php', '4.2', 0),
('1128e1ae4a2171ef5f84da49426632d6', './lib/core/lib/Zend/Crypt/Hmac/Exception.php', '4.2', 0),
('d43f2faf463738770d9000cf1e3915a5', './lib/core/lib/Zend/Crypt/Math.php', '4.2', 0),
('d754735f289eda549447e20591d0e15c', './lib/core/lib/Zend/Crypt/Math/BigInteger.php', '4.2', 0),
('1176a4f079c0b2c45a3dc5df20898616', './lib/core/lib/Zend/Crypt/Math/BigInteger/Bcmath.php', '4.2', 0),
('5ff7e35a9d15250b3bec9e4b41eb3a00', './lib/core/lib/Zend/Crypt/Math/BigInteger/Exception.php', '4.2', 0),
('dfdd1904e0032b5b2241e91e4e0486a3', './lib/core/lib/Zend/Crypt/Math/BigInteger/Gmp.php', '4.2', 0),
('e454fb68da5bcafaf3e7e5822c3ecd45', './lib/core/lib/Zend/Crypt/Math/BigInteger/Interface.php', '4.2', 0),
('154669574281d0ae2f4fa27e86b8153a', './lib/core/lib/Zend/Crypt/Math/Exception.php', '4.2', 0),
('3cdca78ee8d6f7784acd53eaafeeec70', './lib/core/lib/Zend/Crypt/Rsa.php', '4.2', 0),
('daa97909a3978143339bc6b5f846c61b', './lib/core/lib/Zend/Crypt/Rsa/Key.php', '4.2', 0),
('faf9d1b6adc6c18a392599527a6e8cdd', './lib/core/lib/Zend/Crypt/Rsa/Key/Private.php', '4.2', 0),
('9ee38c1c6a3ec8ceaee6e39fc3a15104', './lib/core/lib/Zend/Crypt/Rsa/Key/Public.php', '4.2', 0),
('1eaed472da5123cfee930c2a28f21e58', './lib/core/lib/Zend/Currency.php', '4.2', 0),
('a68f6382ba589f0324a14df1c95af250', './lib/core/lib/Zend/Currency/Exception.php', '4.2', 0),
('21e9191f3f9794d1fcda07c0f7e185f2', './lib/core/lib/Zend/Date.php', '4.2', 0),
('fa480200b15b1dbb9f06901afae3d967', './lib/core/lib/Zend/Date/Cities.php', '4.2', 0),
('d06f7939602572a7bf52b57a694ea115', './lib/core/lib/Zend/Date/DateObject.php', '4.2', 0),
('5e757e0e1cd81a102fa17273badc4ab6', './lib/core/lib/Zend/Date/Exception.php', '4.2', 0),
('0b37451f810c31986c2edc582ff65968', './lib/core/lib/Zend/Db.php', '4.2', 0),
('f210ec94d3d5591ab4fd8e96ba6876ee', './lib/core/lib/Zend/Db/Adapter/Abstract.php', '4.2', 0),
('826e58a0d854057e529f1b4c3d8272d2', './lib/core/lib/Zend/Db/Adapter/Db2.php', '4.2', 0),
('4027587afabc0170ed6bda133b7043e8', './lib/core/lib/Zend/Db/Adapter/Db2/Exception.php', '4.2', 0),
('35d91a0c225969579377a399d9242ebb', './lib/core/lib/Zend/Db/Adapter/Exception.php', '4.2', 0),
('4a13077479da277995433aabf5ce9771', './lib/core/lib/Zend/Db/Adapter/Mysqli.php', '4.2', 0),
('0b887b31fde467f35d2c9ce6d606a4f8', './lib/core/lib/Zend/Db/Adapter/Mysqli/Exception.php', '4.2', 0),
('705e94828d4d7be4828e53db709d0239', './lib/core/lib/Zend/Db/Adapter/Oracle.php', '4.2', 0),
('d6050b89c340b6dec220ad33330388ab', './lib/core/lib/Zend/Db/Adapter/Oracle/Exception.php', '4.2', 0),
('a8b4de11d4acdd719b781b703c38b86c', './lib/core/lib/Zend/Db/Adapter/Pdo/Abstract.php', '4.2', 0),
('78b3f9cfbaa8e94216c267e48bef6bf3', './lib/core/lib/Zend/Db/Adapter/Pdo/Ibm.php', '4.2', 0),
('8515a2e477cb5c5c5f4f60780a9bd1b3', './lib/core/lib/Zend/Db/Adapter/Pdo/Ibm/Db2.php', '4.2', 0),
('91e686028a45775cc70ecf73454eaa13', './lib/core/lib/Zend/Db/Adapter/Pdo/Ibm/Ids.php', '4.2', 0),
('bb8660003b51b3e4016aaaf3fe19b129', './lib/core/lib/Zend/Db/Adapter/Pdo/Mssql.php', '4.2', 0),
('06ad6c7742bcbbfd2200fe57daa5a96b', './lib/core/lib/Zend/Db/Adapter/Pdo/Mysql.php', '4.2', 0),
('587dae04aa70c24fe5ab33fdab298a74', './lib/core/lib/Zend/Db/Adapter/Pdo/Oci.php', '4.2', 0),
('e3405651eb4da8a8ac05218209159e65', './lib/core/lib/Zend/Db/Adapter/Pdo/Pgsql.php', '4.2', 0),
('2c097a7e9ffa932ddbe3a15f0b8aa090', './lib/core/lib/Zend/Db/Adapter/Pdo/Sqlite.php', '4.2', 0),
('706a642799ab05b9dd0d8c128debb75c', './lib/core/lib/Zend/Db/Adapter/Sqlsrv.php', '4.2', 0),
('4aa8ecca9fb9d4e0fb4c0645d24d984d', './lib/core/lib/Zend/Db/Adapter/Sqlsrv/Exception.php', '4.2', 0),
('281953140830bb99f75129cae5aecd10', './lib/core/lib/Zend/Db/Exception.php', '4.2', 0),
('6b1485f3f4e884a36bb12f941033ee51', './lib/core/lib/Zend/Db/Expr.php', '4.2', 0),
('9dd340050ade74acbf25a7c183c56585', './lib/core/lib/Zend/Db/Profiler.php', '4.2', 0),
('0bd2fd154ab395f711e9adc9470c46e9', './lib/core/lib/Zend/Db/Profiler/Exception.php', '4.2', 0),
('9cad1c4f8f82e67b408017c10b91e0cb', './lib/core/lib/Zend/Db/Profiler/Firebug.php', '4.2', 0),
('007c919ac09e197f79e4a3b9f5b7a32d', './lib/core/lib/Zend/Db/Profiler/Query.php', '4.2', 0),
('5723ba4403e8f14ec7b3acf0e07615ed', './lib/core/lib/Zend/Db/Select.php', '4.2', 0),
('035dbc1bd821c56e2369c45b2fecb69d', './lib/core/lib/Zend/Db/Select/Exception.php', '4.2', 0),
('32b643e2edac4484e99824402304908a', './lib/core/lib/Zend/Db/Statement.php', '4.2', 0),
('3f4cee2c98f7d800efe9ef973e685d49', './lib/core/lib/Zend/Db/Statement/Db2.php', '4.2', 0),
('6176a1f102510b7cf775a2d6c3171ca3', './lib/core/lib/Zend/Db/Statement/Db2/Exception.php', '4.2', 0),
('e774196b57495db9c536ce20e4578e51', './lib/core/lib/Zend/Db/Statement/Exception.php', '4.2', 0),
('043e6362ee86d29ec4c7a94506db3cb9', './lib/core/lib/Zend/Db/Statement/Interface.php', '4.2', 0),
('2a888f6c2a1b4993b62bd122e100a149', './lib/core/lib/Zend/Db/Statement/Mysqli.php', '4.2', 0),
('d58f3cc555e4dca4bb029aec30743c73', './lib/core/lib/Zend/Db/Statement/Mysqli/Exception.php', '4.2', 0),
('9e686135b048ffdcc0901d6b625379f2', './lib/core/lib/Zend/Db/Statement/Oracle.php', '4.2', 0),
('10a2804751a79f89d0110e02e43ce98e', './lib/core/lib/Zend/Db/Statement/Oracle/Exception.php', '4.2', 0),
('c0fd9ee10d411a99ffbb71ac8e7baa75', './lib/core/lib/Zend/Db/Statement/Pdo.php', '4.2', 0),
('c85a436058124cc70262d134f10e8b48', './lib/core/lib/Zend/Db/Statement/Pdo/Ibm.php', '4.2', 0),
('231b06c361a17c8c2241dd29db5e8d3a', './lib/core/lib/Zend/Db/Statement/Pdo/Oci.php', '4.2', 0),
('9a28b3bea4eb810c17cb0b0bed00abb2', './lib/core/lib/Zend/Db/Statement/Sqlsrv.php', '4.2', 0),
('c1ee4b6ca3a796d8c5a9be537d332df0', './lib/core/lib/Zend/Db/Statement/Sqlsrv/Exception.php', '4.2', 0),
('16d4f0dfbd6a252a2480e1998cf34836', './lib/core/lib/Zend/Db/Table.php', '4.2', 0),
('daadd6673e254efadac511f5e589733e', './lib/core/lib/Zend/Db/Table/Abstract.php', '4.2', 0),
('5613348904b8c4cddefe2dc23b81eb3e', './lib/core/lib/Zend/Db/Table/Definition.php', '4.2', 0),
('04d6cd8170f973197fa3a142fe977d28', './lib/core/lib/Zend/Db/Table/Exception.php', '4.2', 0),
('b284e7605427e6498db08e6e01cc3b01', './lib/core/lib/Zend/Db/Table/Row.php', '4.2', 0),
('5f430ffe22ebf9e07e785b4b27020bb7', './lib/core/lib/Zend/Db/Table/Row/Abstract.php', '4.2', 0),
('cdd56c70ceb09a7e5b277605919e3ab6', './lib/core/lib/Zend/Db/Table/Row/Exception.php', '4.2', 0),
('36030ba901eb733f276776bdffdfc52a', './lib/core/lib/Zend/Db/Table/Rowset.php', '4.2', 0),
('e9a42b7a167d194350a512a6fd50b641', './lib/core/lib/Zend/Db/Table/Rowset/Abstract.php', '4.2', 0),
('c62d3138941c7e554c78312c08cf3919', './lib/core/lib/Zend/Db/Table/Rowset/Exception.php', '4.2', 0),
('248fd274942b28e9c26a74ec57b8c802', './lib/core/lib/Zend/Db/Table/Select.php', '4.2', 0),
('7bb37691c48202f5f1ceb2a85fbd01f5', './lib/core/lib/Zend/Db/Table/Select/Exception.php', '4.2', 0),
('625909d665d7472470b29047e3a17a97', './lib/core/lib/Zend/Debug.php', '4.2', 0),
('6bfeaaae409c551502b485f3b1944d1a', './lib/core/lib/Zend/Dojo.php', '4.2', 0),
('aeb2e0681c134e19f37c91340678fd3e', './lib/core/lib/Zend/Dojo/BuildLayer.php', '4.2', 0),
('19320dfec3f15b315bb0349e3c26b434', './lib/core/lib/Zend/Dojo/Data.php', '4.2', 0),
('a4447caf14f04d9ec06d6ae4da7ca9a9', './lib/core/lib/Zend/Dojo/Exception.php', '4.2', 0),
('11a6be3d57d2e4dd59a1ab557545b335', './lib/core/lib/Zend/Dojo/Form.php', '4.2', 0),
('8ba2fea0858bd033506b2a69469ab2e1', './lib/core/lib/Zend/Dojo/Form/Decorator/AccordionContainer.php', '4.2', 0),
('95bedf0866b9be264e4ae03e12bb69ad', './lib/core/lib/Zend/Dojo/Form/Decorator/AccordionPane.php', '4.2', 0),
('758714fd9e927b226fae41e505d19fde', './lib/core/lib/Zend/Dojo/Form/Decorator/BorderContainer.php', '4.2', 0),
('cb2ccf4dc82b8ab21d9acc52bb2213a0', './lib/core/lib/Zend/Dojo/Form/Decorator/ContentPane.php', '4.2', 0),
('807e9048c3d3d3129e6a13caa95f5c75', './lib/core/lib/Zend/Dojo/Form/Decorator/DijitContainer.php', '4.2', 0),
('ad62ef57ddfe2a299ee7ba9a52118905', './lib/core/lib/Zend/Dojo/Form/Decorator/DijitElement.php', '4.2', 0),
('d7b38840689b182afa454010f93d4fdb', './lib/core/lib/Zend/Dojo/Form/Decorator/DijitForm.php', '4.2', 0),
('ee57d574e26e546f1dcbbd7a3cab04ff', './lib/core/lib/Zend/Dojo/Form/Decorator/SplitContainer.php', '4.2', 0),
('f4bd4116cac20d605544332118ed6aed', './lib/core/lib/Zend/Dojo/Form/Decorator/StackContainer.php', '4.2', 0),
('ee14e28d1162a58f3afcd6a81f7b8a9d', './lib/core/lib/Zend/Dojo/Form/Decorator/TabContainer.php', '4.2', 0),
('525a385db734cff200c6e1ce76dcb4fd', './lib/core/lib/Zend/Dojo/Form/DisplayGroup.php', '4.2', 0),
('4f93a1675bf799446d7473bbbc005253', './lib/core/lib/Zend/Dojo/Form/Element/Button.php', '4.2', 0),
('ffaca567c00a8a8a0d0dafc55a3f0038', './lib/core/lib/Zend/Dojo/Form/Element/CheckBox.php', '4.2', 0),
('90de6d4f0ad5dbb616b9ef855bef50ad', './lib/core/lib/Zend/Dojo/Form/Element/ComboBox.php', '4.2', 0),
('0433121b46cb58df9de861410b1594a7', './lib/core/lib/Zend/Dojo/Form/Element/CurrencyTextBox.php', '4.2', 0),
('99cd45c7805a362fb8d2fe8f3d6d094f', './lib/core/lib/Zend/Dojo/Form/Element/DateTextBox.php', '4.2', 0),
('c4ee5213eab1efc01741e864c58df36e', './lib/core/lib/Zend/Dojo/Form/Element/Dijit.php', '4.2', 0),
('6f25cb05153f25948dad4644fb5fac6a', './lib/core/lib/Zend/Dojo/Form/Element/DijitMulti.php', '4.2', 0),
('154f79f99753d31049a583072a55db90', './lib/core/lib/Zend/Dojo/Form/Element/Editor.php', '4.2', 0),
('232ecd2af31aff76e2f4cc18d0511fab', './lib/core/lib/Zend/Dojo/Form/Element/FilteringSelect.php', '4.2', 0),
('6b71e8f1d4e0c61ea6bf3b7366c47340', './lib/core/lib/Zend/Dojo/Form/Element/HorizontalSlider.php', '4.2', 0),
('bd42b9630330dae91a7beb2f69f8885d', './lib/core/lib/Zend/Dojo/Form/Element/NumberSpinner.php', '4.2', 0),
('df478b8bd71a28fcc8e66ed2bc5ca8e2', './lib/core/lib/Zend/Dojo/Form/Element/NumberTextBox.php', '4.2', 0),
('360f43b36647793ad6510968fe4448ee', './lib/core/lib/Zend/Dojo/Form/Element/PasswordTextBox.php', '4.2', 0),
('d3401d42cd58b42ee4d73883a3d672cc', './lib/core/lib/Zend/Dojo/Form/Element/RadioButton.php', '4.2', 0),
('65c32e688a4fc5acae7e3c767dd65a66', './lib/core/lib/Zend/Dojo/Form/Element/SimpleTextarea.php', '4.2', 0),
('e95920661eb96a1158827f28a6f44218', './lib/core/lib/Zend/Dojo/Form/Element/Slider.php', '4.2', 0),
('efdc9443f7cacb55e331a88a70f49410', './lib/core/lib/Zend/Dojo/Form/Element/SubmitButton.php', '4.2', 0),
('f767197a7ff229d106d8c272a1146b7a', './lib/core/lib/Zend/Dojo/Form/Element/TextBox.php', '4.2', 0),
('fefe9d1453941e7ebbdfac1a6ccf85d6', './lib/core/lib/Zend/Dojo/Form/Element/Textarea.php', '4.2', 0),
('4a1e5e62d82ccdf8a9c5d96fa928ac04', './lib/core/lib/Zend/Dojo/Form/Element/TimeTextBox.php', '4.2', 0),
('8a5b53a9ad07a7234d7c7c5ceac835f8', './lib/core/lib/Zend/Dojo/Form/Element/ValidationTextBox.php', '4.2', 0),
('8bb92778e4eb9b62d7622e9b6d6d5aa6', './lib/core/lib/Zend/Dojo/Form/Element/VerticalSlider.php', '4.2', 0),
('98eb3847beaa02f7d5a7c29b24dac8a6', './lib/core/lib/Zend/Dojo/Form/SubForm.php', '4.2', 0),
('866ca8d846934df36fd99069498f364f', './lib/core/lib/Zend/Dojo/View/Exception.php', '4.2', 0),
('83589e7bf70e953d87db0249bf26218c', './lib/core/lib/Zend/Dojo/View/Helper/AccordionContainer.php', '4.2', 0),
('bcf4e4641560f7fde7530f256d72cb7c', './lib/core/lib/Zend/Dojo/View/Helper/AccordionPane.php', '4.2', 0),
('cb9b2eb7858b396d94f58ec05bd4ba35', './lib/core/lib/Zend/Dojo/View/Helper/BorderContainer.php', '4.2', 0),
('3b062f7f5985eb11787398e2b5dd09f1', './lib/core/lib/Zend/Dojo/View/Helper/Button.php', '4.2', 0),
('9e1c82df067eb7adc5b4a1d471f58bdf', './lib/core/lib/Zend/Dojo/View/Helper/CheckBox.php', '4.2', 0),
('f4dbbaec6398d2fdc9cf081fc7e02a9b', './lib/core/lib/Zend/Dojo/View/Helper/ComboBox.php', '4.2', 0),
('d7d629d02e7b1cf3e4d9199f1fc73e52', './lib/core/lib/Zend/Dojo/View/Helper/ContentPane.php', '4.2', 0),
('a288037f139350c89457ceaf5ac28d74', './lib/core/lib/Zend/Dojo/View/Helper/CurrencyTextBox.php', '4.2', 0),
('a7711663336322b1cb37acdf10d717ec', './lib/core/lib/Zend/Dojo/View/Helper/CustomDijit.php', '4.2', 0),
('c57c12c40bbd22a1290624ed2627a06b', './lib/core/lib/Zend/Dojo/View/Helper/DateTextBox.php', '4.2', 0),
('befe599321baca9915456d822da69a2e', './lib/core/lib/Zend/Dojo/View/Helper/Dijit.php', '4.2', 0),
('44b76a2cf4b54689ac391578f3fa2a23', './lib/core/lib/Zend/Dojo/View/Helper/DijitContainer.php', '4.2', 0),
('6ccd9963f0a5526713d174efee0ff6fb', './lib/core/lib/Zend/Dojo/View/Helper/Dojo.php', '4.2', 0),
('af89d761f2176c010cb586b5ae5ddfea', './lib/core/lib/Zend/Dojo/View/Helper/Dojo/Container.php', '4.2', 0),
('d841d78b92ec09db464b6ae6626418ad', './lib/core/lib/Zend/Dojo/View/Helper/Editor.php', '4.2', 0),
('35affb20d1e6679e8f4ee0f5c4c1910b', './lib/core/lib/Zend/Dojo/View/Helper/FilteringSelect.php', '4.2', 0),
('7370a5854e6517f6f6e195a278adc7b2', './lib/core/lib/Zend/Dojo/View/Helper/Form.php', '4.2', 0),
('1d6333a5655e4f096bec4fe284993e80', './lib/core/lib/Zend/Dojo/View/Helper/HorizontalSlider.php', '4.2', 0),
('abf40ff70ddace483f059298e91da977', './lib/core/lib/Zend/Dojo/View/Helper/NumberSpinner.php', '4.2', 0),
('b2b6fe9e56a2e4518b958d4bc3e07268', './lib/core/lib/Zend/Dojo/View/Helper/NumberTextBox.php', '4.2', 0),
('f9014f15457141d09a60bf2d54cdd92d', './lib/core/lib/Zend/Dojo/View/Helper/PasswordTextBox.php', '4.2', 0),
('19ffbd54499d73b7b99559322f475ead', './lib/core/lib/Zend/Dojo/View/Helper/RadioButton.php', '4.2', 0),
('4f54aa567c6d59ce1ca37f07409678a2', './lib/core/lib/Zend/Dojo/View/Helper/SimpleTextarea.php', '4.2', 0),
('0556a6d377012a26a7a51247e3f45222', './lib/core/lib/Zend/Dojo/View/Helper/Slider.php', '4.2', 0),
('618e439faa9eca1b4ee11629c4d48fde', './lib/core/lib/Zend/Dojo/View/Helper/SplitContainer.php', '4.2', 0),
('322143892a633fc174ce76f0db596635', './lib/core/lib/Zend/Dojo/View/Helper/StackContainer.php', '4.2', 0),
('5cdc2d484e4c93540c96a7157bdc8b1d', './lib/core/lib/Zend/Dojo/View/Helper/SubmitButton.php', '4.2', 0),
('3ebb80e98aae5aa1ec857f255320e63a', './lib/core/lib/Zend/Dojo/View/Helper/TabContainer.php', '4.2', 0),
('e8e83b4f5da857d77a3ce1225a1d75e8', './lib/core/lib/Zend/Dojo/View/Helper/TextBox.php', '4.2', 0),
('54df3b07227e4a87de8ab98d8ee178e4', './lib/core/lib/Zend/Dojo/View/Helper/Textarea.php', '4.2', 0),
('3888cefb827aab8d97558b9894f6ee7e', './lib/core/lib/Zend/Dojo/View/Helper/TimeTextBox.php', '4.2', 0),
('f14fa0cbf990add01fba571e3117c913', './lib/core/lib/Zend/Dojo/View/Helper/ValidationTextBox.php', '4.2', 0),
('0ceace7767c8a154fb37ea4178187995', './lib/core/lib/Zend/Dojo/View/Helper/VerticalSlider.php', '4.2', 0),
('7bafcc8da27562e6939ee50bbb8a8089', './lib/core/lib/Zend/Dom/Exception.php', '4.2', 0),
('24d527a9eb481d2c31b35964a83ad1b1', './lib/core/lib/Zend/Dom/Query.php', '4.2', 0),
('618c38ff7c6c89742ef8e75182cf9d68', './lib/core/lib/Zend/Dom/Query/Css2Xpath.php', '4.2', 0),
('7762ea59b3939bef40bcb559ab2d289d', './lib/core/lib/Zend/Dom/Query/Result.php', '4.2', 0),
('864a47d1ac1e43de23bf645563d53575', './lib/core/lib/Zend/Exception.php', '4.2', 0),
('6125ac9a6410c59921efcb9f68921c94', './lib/core/lib/Zend/Feed.php', '4.2', 0),
('72d85024da26c9fbe937563ef2e7db49', './lib/core/lib/Zend/Feed/Abstract.php', '4.2', 0),
('2bc6b676455c98af3b125de72fe1a0a5', './lib/core/lib/Zend/Feed/Atom.php', '4.2', 0),
('5ac1bfd1e8d8ef5dded6a6805d0012c4', './lib/core/lib/Zend/Feed/Builder.php', '4.2', 0),
('bd548f959318c45882f23477e9fdf5cb', './lib/core/lib/Zend/Feed/Builder/Entry.php', '4.2', 0),
('35673c8d0025cc55f5ea773fbae0af47', './lib/core/lib/Zend/Feed/Builder/Exception.php', '4.2', 0),
('e57ac8cbb36ec563ec66a7e77d23f8c2', './lib/core/lib/Zend/Feed/Builder/Header.php', '4.2', 0),
('7c7b4d548f301d21713f4fa1caf9a41e', './lib/core/lib/Zend/Feed/Builder/Header/Itunes.php', '4.2', 0),
('3a3284879482a73f6be5406db656766f', './lib/core/lib/Zend/Feed/Builder/Interface.php', '4.2', 0),
('d8b22c3ff04ca0fb0eaca345c5a863f3', './lib/core/lib/Zend/Feed/Element.php', '4.2', 0),
('4f9bb27ec622ae13f28f1078dc28ec54', './lib/core/lib/Zend/Feed/Entry/Abstract.php', '4.2', 0),
('8c85cb33a1eb7dfd596694affdc4e555', './lib/core/lib/Zend/Feed/Entry/Atom.php', '4.2', 0),
('db03b99816a702fc5f458a794b18dc65', './lib/core/lib/Zend/Feed/Entry/Rss.php', '4.2', 0),
('790fa831e5ea16db7dbaf4835ed2f62c', './lib/core/lib/Zend/Feed/Exception.php', '4.2', 0),
('294547d748c43368c3b69a4428734ca9', './lib/core/lib/Zend/Feed/Reader.php', '4.2', 0),
('c35874f883bc62167a3b5adc63adb75b', './lib/core/lib/Zend/Feed/Reader/Entry/Atom.php', '4.2', 0),
('4f1c59f48106ebc0d51fbfbbaafd556f', './lib/core/lib/Zend/Feed/Reader/Entry/Rss.php', '4.2', 0),
('dd73af95417c85f643fd57b41c6d215c', './lib/core/lib/Zend/Feed/Reader/EntryAbstract.php', '4.2', 0),
('c3129c46ff328c2e0be8139590da58c3', './lib/core/lib/Zend/Feed/Reader/EntryInterface.php', '4.2', 0),
('544f2236e970fd41d86b119a02f20a7b', './lib/core/lib/Zend/Feed/Reader/Extension/Atom/Entry.php', '4.2', 0),
('fb430c59021676d60c2175468ece8541', './lib/core/lib/Zend/Feed/Reader/Extension/Atom/Feed.php', '4.2', 0),
('0fe65a4a20e75cec2882d42608bd7c08', './lib/core/lib/Zend/Feed/Reader/Extension/Content/Entry.php', '4.2', 0),
('03fa8acac53402e7d2cdcbfee9837c4c', './lib/core/lib/Zend/Feed/Reader/Extension/CreativeCommons/Entry.php', '4.2', 0),
('8cee1bf8618c6bff25504921b1188e28', './lib/core/lib/Zend/Feed/Reader/Extension/CreativeCommons/Feed.php', '4.2', 0),
('e4044df4838b13819647b3d8c11f9013', './lib/core/lib/Zend/Feed/Reader/Extension/DublinCore/Entry.php', '4.2', 0),
('f1c056f8a0e4fff3bf1e0d7efc77a13a', './lib/core/lib/Zend/Feed/Reader/Extension/DublinCore/Feed.php', '4.2', 0),
('a20971da095b0c50673bd3aeb2fb3cf0', './lib/core/lib/Zend/Feed/Reader/Extension/EntryAbstract.php', '4.2', 0),
('3536f9ea7eeb28c4bdda2e10f4463ae7', './lib/core/lib/Zend/Feed/Reader/Extension/FeedAbstract.php', '4.2', 0),
('83a70a7fe505cfc905e8e3047d358366', './lib/core/lib/Zend/Feed/Reader/Extension/Podcast/Entry.php', '4.2', 0),
('85054c877084e61923c29eca044c6744', './lib/core/lib/Zend/Feed/Reader/Extension/Podcast/Feed.php', '4.2', 0),
('6f092252c85779f5759f3b53ea78b801', './lib/core/lib/Zend/Feed/Reader/Extension/Slash/Entry.php', '4.2', 0),
('2004b9fe44370abb5e174f73c3016afa', './lib/core/lib/Zend/Feed/Reader/Extension/Syndication/Feed.php', '4.2', 0),
('c4054f16fa46e96964806044f5e422cf', './lib/core/lib/Zend/Feed/Reader/Extension/Thread/Entry.php', '4.2', 0),
('044bcde1dbf19de52b078b73a0c4a274', './lib/core/lib/Zend/Feed/Reader/Extension/WellFormedWeb/Entry.php', '4.2', 0),
('6aba3a31b49c138b7547810691a801ca', './lib/core/lib/Zend/Feed/Reader/Feed/Atom.php', '4.2', 0),
('c01a32bbf686db899ef9cce36a89f879', './lib/core/lib/Zend/Feed/Reader/Feed/Rss.php', '4.2', 0),
('f629d685c2e772001cf75932b015c920', './lib/core/lib/Zend/Feed/Reader/FeedAbstract.php', '4.2', 0),
('c8eb15523e846dc6825800f722d097be', './lib/core/lib/Zend/Feed/Reader/FeedInterface.php', '4.2', 0),
('f9163cd1b7bf7cd27e48ec74f3bd6c4a', './lib/core/lib/Zend/Feed/Reader/FeedSet.php', '4.2', 0),
('0cda9e041416d90f18ebe1ecabeecbd6', './lib/core/lib/Zend/Feed/Rss.php', '4.2', 0),
('2cab09fe6107740a3e9646135be07229', './lib/core/lib/Zend/File/Transfer.php', '4.2', 0),
('b8bbeee33d2343450b9e845339cdda61', './lib/core/lib/Zend/File/Transfer/Adapter/Abstract.php', '4.2', 0),
('5bd5962ac8f1f60a6d3d74ced5a80f72', './lib/core/lib/Zend/File/Transfer/Adapter/Http.php', '4.2', 0),
('50b53f2624663e4baec5f3c34807828e', './lib/core/lib/Zend/File/Transfer/Exception.php', '4.2', 0),
('5361afd21c5a1915d95598e4be38fa8e', './lib/core/lib/Zend/Filter.php', '4.2', 0),
('a2796bbeccec274cbb4ca82843790bf8', './lib/core/lib/Zend/Filter/Alnum.php', '4.2', 0),
('726980962ff78268de4de9679cce62d3', './lib/core/lib/Zend/Filter/Alpha.php', '4.2', 0),
('a240ac0b2072cec19e98826fd9bb9186', './lib/core/lib/Zend/Filter/BaseName.php', '4.2', 0),
('dfcce7ce6442f74ddaa7a49498707f4c', './lib/core/lib/Zend/Filter/Callback.php', '4.2', 0),
('5a9b161c6eb000a7999d221d589a9213', './lib/core/lib/Zend/Filter/Decrypt.php', '4.2', 0),
('3edf95af4a81f5b9e4197a5b3e4ea984', './lib/core/lib/Zend/Filter/Digits.php', '4.2', 0),
('22852a0465dfe3462613c3df28bd7454', './lib/core/lib/Zend/Filter/Dir.php', '4.2', 0),
('b413ca4be45365a0fa62571231071444', './lib/core/lib/Zend/Filter/Encrypt.php', '4.2', 0),
('480bd1ecf9875c2420114208206e4646', './lib/core/lib/Zend/Filter/Encrypt/Interface.php', '4.2', 0),
('119d810cb910d30aff9200206a1c0efb', './lib/core/lib/Zend/Filter/Encrypt/Mcrypt.php', '4.2', 0),
('18f7abb7a76fd5d48eb3b088992ac9aa', './lib/core/lib/Zend/Filter/Encrypt/Openssl.php', '4.2', 0),
('f7019b784877e59e9766d8becd2f0abe', './lib/core/lib/Zend/Filter/Exception.php', '4.2', 0),
('f085776a1e845862363683f98aef8cfa', './lib/core/lib/Zend/Filter/File/Decrypt.php', '4.2', 0),
('1e5b24c7f6af4b4f0cbf5b66d602f4d5', './lib/core/lib/Zend/Filter/File/Encrypt.php', '4.2', 0),
('7f65e2030489292d2c6e9bcf250ec8e1', './lib/core/lib/Zend/Filter/File/LowerCase.php', '4.2', 0),
('27de1bd19745c3db51be0fde3b2328c6', './lib/core/lib/Zend/Filter/File/Rename.php', '4.2', 0),
('a58450ec781025ef487d3ce9729f0a64', './lib/core/lib/Zend/Filter/File/UpperCase.php', '4.2', 0),
('d90da82093ec4598f2e3a9162540451e', './lib/core/lib/Zend/Filter/HtmlEntities.php', '4.2', 0),
('9a6f58bc0e2e4e00b4a3a6a14873b31a', './lib/core/lib/Zend/Filter/Inflector.php', '4.2', 0),
('a24ee5fd25e66ed005bc39050e5e4519', './lib/core/lib/Zend/Filter/Input.php', '4.2', 0),
('e0f29769cbf5b88f6be049374d2ada44', './lib/core/lib/Zend/Filter/Int.php', '4.2', 0),
('c9473553b5c600397840370272b9c0b0', './lib/core/lib/Zend/Filter/Interface.php', '4.2', 0),
('cef6063b89c18f1a5fcffc19c2b62d55', './lib/core/lib/Zend/Filter/LocalizedToNormalized.php', '4.2', 0),
('fbd8e39172f8eb653d8295c2e076e958', './lib/core/lib/Zend/Filter/NormalizedToLocalized.php', '4.2', 0),
('b48103a4b68224969fc86f4fce45d84b', './lib/core/lib/Zend/Filter/PregReplace.php', '4.2', 0),
('05582abb315e749902c907bf0e32daf2', './lib/core/lib/Zend/Filter/RealPath.php', '4.2', 0),
('50814aad1b561a85108d800b03feb6c3', './lib/core/lib/Zend/Filter/StringToLower.php', '4.2', 0),
('488f8ce7f0025a1f167e666a82a44acd', './lib/core/lib/Zend/Filter/StringToUpper.php', '4.2', 0),
('8545af2398759514193f9f8dfc6c3f25', './lib/core/lib/Zend/Filter/StringTrim.php', '4.2', 0),
('d2c97ce0dede609be17fa530b4342ad1', './lib/core/lib/Zend/Filter/StripNewlines.php', '4.2', 0),
('654721a3266842bbbb73ef6990a524fa', './lib/core/lib/Zend/Filter/StripTags.php', '4.2', 0),
('66e0487239d4b31506b7b287d487477f', './lib/core/lib/Zend/Filter/Word/CamelCaseToDash.php', '4.2', 0),
('2b677289d87bc35a52a9e54438f733ed', './lib/core/lib/Zend/Filter/Word/CamelCaseToSeparator.php', '4.2', 0),
('a0600a47c4157d7f8370cdbe81f03355', './lib/core/lib/Zend/Filter/Word/CamelCaseToUnderscore.php', '4.2', 0),
('c5c64ec4a8d9a75ab7b8afb3c204fbb3', './lib/core/lib/Zend/Filter/Word/DashToCamelCase.php', '4.2', 0),
('3aaaa26306c58c365d4eadb8663133f4', './lib/core/lib/Zend/Filter/Word/DashToSeparator.php', '4.2', 0),
('f1622870a9c51d8dd977eaf87aa79449', './lib/core/lib/Zend/Filter/Word/DashToUnderscore.php', '4.2', 0),
('aadc6788ab93d579c21208f6c7ff9b27', './lib/core/lib/Zend/Filter/Word/Separator/Abstract.php', '4.2', 0),
('3aa9c69a0108cc8a558d583abd50ba34', './lib/core/lib/Zend/Filter/Word/SeparatorToCamelCase.php', '4.2', 0),
('55525f2ebfec43675c16288c47281501', './lib/core/lib/Zend/Filter/Word/SeparatorToDash.php', '4.2', 0),
('fa3a3987656d2b1bb236a3a6341a3b0e', './lib/core/lib/Zend/Filter/Word/SeparatorToSeparator.php', '4.2', 0),
('6990071269a0308672eb608ce44260d2', './lib/core/lib/Zend/Filter/Word/UnderscoreToCamelCase.php', '4.2', 0),
('be7cb2c63442fdff55a2f928c0b584ca', './lib/core/lib/Zend/Filter/Word/UnderscoreToDash.php', '4.2', 0),
('82f63c8eb06e442b5a75d0e1b71148b7', './lib/core/lib/Zend/Filter/Word/UnderscoreToSeparator.php', '4.2', 0),
('61f8354d187c9d74fe21fca82d1a76e2', './lib/core/lib/Zend/Form.php', '4.2', 0),
('3d097ae54a550b18498d586f612a9720', './lib/core/lib/Zend/Form/Decorator/Abstract.php', '4.2', 0),
('f987049242ad2c135171c12caea95461', './lib/core/lib/Zend/Form/Decorator/Callback.php', '4.2', 0),
('2173aa85e0d87a76cb037a83fdd5640a', './lib/core/lib/Zend/Form/Decorator/Captcha.php', '4.2', 0),
('91f5ac076cd422d22b62c02fd91aa858', './lib/core/lib/Zend/Form/Decorator/Captcha/Word.php', '4.2', 0),
('44ab6c7b56bc25f0da30bb7d8cb70373', './lib/core/lib/Zend/Form/Decorator/Description.php', '4.2', 0),
('beb89b73624e28769d5fad457a4e6203', './lib/core/lib/Zend/Form/Decorator/DtDdWrapper.php', '4.2', 0),
('269d5fb60c38c115d440554c5e9d74f7', './lib/core/lib/Zend/Form/Decorator/Errors.php', '4.2', 0),
('62a5b44845b599b3a68157ed57849a71', './lib/core/lib/Zend/Form/Decorator/Exception.php', '4.2', 0),
('ef4a772f46315c9a462a94c0cbb3d64c', './lib/core/lib/Zend/Form/Decorator/Fieldset.php', '4.2', 0),
('c962b5c00d9a7525da2bcda3223601ec', './lib/core/lib/Zend/Form/Decorator/File.php', '4.2', 0),
('fa8d0fcf37683b4d68601a0543d8f710', './lib/core/lib/Zend/Form/Decorator/Form.php', '4.2', 0),
('c82d9f196ed531712312bae237638b74', './lib/core/lib/Zend/Form/Decorator/FormElements.php', '4.2', 0),
('660177a099a90e5e7dab188133b2ad60', './lib/core/lib/Zend/Form/Decorator/FormErrors.php', '4.2', 0),
('2a8ebb19f13b5529eff639053d2efe02', './lib/core/lib/Zend/Form/Decorator/HtmlTag.php', '4.2', 0),
('4b60525c92381b50d46d1ef9c858e92f', './lib/core/lib/Zend/Form/Decorator/Image.php', '4.2', 0),
('6d37c1b4deb5acec5dcd01b92a8c4b42', './lib/core/lib/Zend/Form/Decorator/Interface.php', '4.2', 0),
('0b20c4a11ac23e0a7f7e0a87f97caecc', './lib/core/lib/Zend/Form/Decorator/Label.php', '4.2', 0),
('e222e8533786d4d0b9dd42d552149c88', './lib/core/lib/Zend/Form/Decorator/Marker/File/Interface.php', '4.2', 0),
('3161d514caa3abd92b03496ddda2380d', './lib/core/lib/Zend/Form/Decorator/PrepareElements.php', '4.2', 0),
('93ee2a4d8982b1a08ac5b53d4769384e', './lib/core/lib/Zend/Form/Decorator/Tooltip.php', '4.2', 0),
('b511e69fa015f4fc13bf7d5457251622', './lib/core/lib/Zend/Form/Decorator/ViewHelper.php', '4.2', 0),
('8a162d4818b41c483910061b6f84cd42', './lib/core/lib/Zend/Form/Decorator/ViewScript.php', '4.2', 0),
('60eea0192cd1acc8df9047fe46798701', './lib/core/lib/Zend/Form/DisplayGroup.php', '4.2', 0),
('e697927ecfbcf7743410a0df6651096a', './lib/core/lib/Zend/Form/Element.php', '4.2', 0),
('f3b5a8294dc6d6c7e5947f27cfdf0cb9', './lib/core/lib/Zend/Form/Element/Button.php', '4.2', 0),
('8290ed9523402e5df07cdc3a2d5d88bf', './lib/core/lib/Zend/Form/Element/Captcha.php', '4.2', 0),
('0adf2e63078a5014ba713140069d61d0', './lib/core/lib/Zend/Form/Element/Checkbox.php', '4.2', 0),
('71799599fa85a058041b7d73c0a95010', './lib/core/lib/Zend/Form/Element/Exception.php', '4.2', 0),
('b0276672951aa9c90e92b7deaf0c2d48', './lib/core/lib/Zend/Form/Element/File.php', '4.2', 0),
('3ad995735a1feb9dc4953b3542174ebf', './lib/core/lib/Zend/Form/Element/Hash.php', '4.2', 0),
('863eb10a6c8ec90311fef9737e72e64d', './lib/core/lib/Zend/Form/Element/Hidden.php', '4.2', 0),
('79b92c041f8d454fe964c3c9208ab2e3', './lib/core/lib/Zend/Form/Element/Image.php', '4.2', 0),
('9c451af56161064942362e1b0b03e0f3', './lib/core/lib/Zend/Form/Element/Multi.php', '4.2', 0),
('0294832d50c6880aacba259ca1aa5a48', './lib/core/lib/Zend/Form/Element/MultiCheckbox.php', '4.2', 0),
('4f9fa96a10dfaec380187110a624c505', './lib/core/lib/Zend/Form/Element/Multiselect.php', '4.2', 0),
('f58c9784e9254c311cf095030be61af0', './lib/core/lib/Zend/Form/Element/Password.php', '4.2', 0),
('bdfe7ba8cccd64ee13c69840c1c29107', './lib/core/lib/Zend/Form/Element/Radio.php', '4.2', 0),
('207a76bbe0ad1eaae184ca5afe0013c2', './lib/core/lib/Zend/Form/Element/Reset.php', '4.2', 0),
('caead59bb2da7053563d5d3b5ed5b170', './lib/core/lib/Zend/Form/Element/Select.php', '4.2', 0),
('5d1f9ca0c0084cd0a698473ecbe97791', './lib/core/lib/Zend/Form/Element/Submit.php', '4.2', 0),
('8c9a47fccb3bcf131d94a0c7684d1aa2', './lib/core/lib/Zend/Form/Element/Text.php', '4.2', 0),
('e846e9302e2e0b352eda1063fd122aa8', './lib/core/lib/Zend/Form/Element/Textarea.php', '4.2', 0),
('8957c90fd06f20e4b0c07bdcdf8804a5', './lib/core/lib/Zend/Form/Element/Xhtml.php', '4.2', 0),
('b30f83aef5c0a6ff731a5ea80cfe6012', './lib/core/lib/Zend/Form/Exception.php', '4.2', 0),
('abd928fc02c38b35bf21a5708e5176dd', './lib/core/lib/Zend/Form/SubForm.php', '4.2', 0),
('8b0afe8e6b7e4167390576d3f4a6c630', './lib/core/lib/Zend/Gdata.php', '4.2', 0),
('ba4f78f08b47e1f567df0b1c6763128b', './lib/core/lib/Zend/Gdata/App.php', '4.2', 0),
('6bce6036703f64bb1f7ed743dd997e77', './lib/core/lib/Zend/Gdata/App/AuthException.php', '4.2', 0),
('f155f3fdcf53877a8b3b4a1a2d479e25', './lib/core/lib/Zend/Gdata/App/BadMethodCallException.php', '4.2', 0),
('e2d509ecced6f5774626ab08b851c276', './lib/core/lib/Zend/Gdata/App/Base.php', '4.2', 0),
('a8a46548309148ac60db619e9bba1688', './lib/core/lib/Zend/Gdata/App/BaseMediaSource.php', '4.2', 0),
('0ff9eacaa1a3b9099541c50f5d69a58f', './lib/core/lib/Zend/Gdata/App/CaptchaRequiredException.php', '4.2', 0),
('73a9101382ad5fe5fa05d117465a8451', './lib/core/lib/Zend/Gdata/App/Entry.php', '4.2', 0),
('1c01d51a0aae2f95ba80b937940b0d4b', './lib/core/lib/Zend/Gdata/App/Exception.php', '4.2', 0),
('6ac03e5d10397134b7fa35397af5faeb', './lib/core/lib/Zend/Gdata/App/Extension.php', '4.2', 0),
('cdd5ddd3e50228d97ae94977c26e5579', './lib/core/lib/Zend/Gdata/App/Extension/Author.php', '4.2', 0),
('adb2b4540653bfe03e71c568b00895c5', './lib/core/lib/Zend/Gdata/App/Extension/Category.php', '4.2', 0),
('20ca57784b9c96d5a9abe5a4930cac04', './lib/core/lib/Zend/Gdata/App/Extension/Content.php', '4.2', 0),
('0ad7c2f4b50168b977d31ab294837884', './lib/core/lib/Zend/Gdata/App/Extension/Contributor.php', '4.2', 0),
('af7016d58625265c82b46ab824a14505', './lib/core/lib/Zend/Gdata/App/Extension/Control.php', '4.2', 0),
('3de754e37277ecdebc49fcc82254e046', './lib/core/lib/Zend/Gdata/App/Extension/Draft.php', '4.2', 0),
('0577ec8c6905b29ac88687027e6491c0', './lib/core/lib/Zend/Gdata/App/Extension/Edited.php', '4.2', 0),
('422d0794153ef528fe2c279ff1069d30', './lib/core/lib/Zend/Gdata/App/Extension/Element.php', '4.2', 0),
('07516be4986ff3cb81d36f2bdfadfa05', './lib/core/lib/Zend/Gdata/App/Extension/Email.php', '4.2', 0),
('bb921f3cc032c3ded03f0c519a3eebe3', './lib/core/lib/Zend/Gdata/App/Extension/Generator.php', '4.2', 0),
('8ad3cdfebaa97e09660e6840f834ee83', './lib/core/lib/Zend/Gdata/App/Extension/Icon.php', '4.2', 0),
('0db406da6768910f3bcb8c4ab7a36d2f', './lib/core/lib/Zend/Gdata/App/Extension/Id.php', '4.2', 0),
('11de5457e59334c9cbb15b1013fbb22d', './lib/core/lib/Zend/Gdata/App/Extension/Link.php', '4.2', 0),
('ddf3a9f9a0003dbc83070b9562d77fd3', './lib/core/lib/Zend/Gdata/App/Extension/Logo.php', '4.2', 0),
('c319441960c0b81424c656389ecffddd', './lib/core/lib/Zend/Gdata/App/Extension/Name.php', '4.2', 0),
('930bd3d617accb3fc6624fcba371da5c', './lib/core/lib/Zend/Gdata/App/Extension/Person.php', '4.2', 0),
('3a95390317092fddd4779d76675d2def', './lib/core/lib/Zend/Gdata/App/Extension/Published.php', '4.2', 0),
('63d34987565830ce062056a9eb405ddb', './lib/core/lib/Zend/Gdata/App/Extension/Rights.php', '4.2', 0),
('fcb0a73a62890cd331aa06d6dd536ee4', './lib/core/lib/Zend/Gdata/App/Extension/Source.php', '4.2', 0),
('4cec47c6f9bc545de9a194e19d765dc7', './lib/core/lib/Zend/Gdata/App/Extension/Subtitle.php', '4.2', 0),
('0d4e0aa9a8b2b7066ce3b2291685b665', './lib/core/lib/Zend/Gdata/App/Extension/Summary.php', '4.2', 0),
('fda48b202849544820c636d1bbc07719', './lib/core/lib/Zend/Gdata/App/Extension/Text.php', '4.2', 0),
('a318d3a08c1a35e29ed7205d3bf72cff', './lib/core/lib/Zend/Gdata/App/Extension/Title.php', '4.2', 0),
('d8e8019aac56c9dbbee9e57cd9b38982', './lib/core/lib/Zend/Gdata/App/Extension/Updated.php', '4.2', 0),
('8dac8f57cb9c92ae86308402f0e67601', './lib/core/lib/Zend/Gdata/App/Extension/Uri.php', '4.2', 0),
('3882da748aaad9da19fcbb62350fe477', './lib/core/lib/Zend/Gdata/App/Feed.php', '4.2', 0),
('6dc62b26b9b3bbf722c2dfac4a9bedd4', './lib/core/lib/Zend/Gdata/App/FeedEntryParent.php', '4.2', 0),
('43495fd46344f00d7d8f954813bf25b6', './lib/core/lib/Zend/Gdata/App/FeedSourceParent.php', '4.2', 0),
('15e956fdab209a1757e9d5e675a65963', './lib/core/lib/Zend/Gdata/App/HttpException.php', '4.2', 0),
('957c8ddbfb41c7c0a05af42d6a259877', './lib/core/lib/Zend/Gdata/App/IOException.php', '4.2', 0),
('c9b07928cf7dbfd510e7088f650e9183', './lib/core/lib/Zend/Gdata/App/InvalidArgumentException.php', '4.2', 0),
('64d396858566ec9c636b3870165c35ba', './lib/core/lib/Zend/Gdata/App/LoggingHttpClientAdapterSocket.php', '4.2', 0),
('3607a503da8220ee9c5ba4ace73c6654', './lib/core/lib/Zend/Gdata/App/MediaEntry.php', '4.2', 0),
('e24e14c0746fba924ba260d372443353', './lib/core/lib/Zend/Gdata/App/MediaFileSource.php', '4.2', 0),
('408ae49504f123fc16e2691b2212f3d7', './lib/core/lib/Zend/Gdata/App/MediaSource.php', '4.2', 0),
('e9fc87a1960790eac15e24e93e82d2cf', './lib/core/lib/Zend/Gdata/App/Util.php', '4.2', 0),
('6ba39bf955ccbaf83f156544ab29dd67', './lib/core/lib/Zend/Gdata/App/VersionException.php', '4.2', 0),
('09142c57cdf968491ec5f923ed8676f4', './lib/core/lib/Zend/Gdata/AuthSub.php', '4.2', 0),
('548e412646417326bddcdf9dd350b43d', './lib/core/lib/Zend/Gdata/Books.php', '4.2', 0),
('f178a98f56d92488bc44a4b440e1ad50', './lib/core/lib/Zend/Gdata/Books/CollectionEntry.php', '4.2', 0),
('97cf6b6f9ec89e524cafef6ea8ef0f16', './lib/core/lib/Zend/Gdata/Books/CollectionFeed.php', '4.2', 0),
('643ff0d258afa3f8e33b1944a12ffbfb', './lib/core/lib/Zend/Gdata/Books/Extension/AnnotationLink.php', '4.2', 0),
('da4e796809225a1c0c2004ed6a735d5b', './lib/core/lib/Zend/Gdata/Books/Extension/BooksCategory.php', '4.2', 0),
('cb4620ed9791e0f91831f22077c78a74', './lib/core/lib/Zend/Gdata/Books/Extension/BooksLink.php', '4.2', 0),
('4d4db1c8a1f4be1907ec6e5421c6b15b', './lib/core/lib/Zend/Gdata/Books/Extension/Embeddability.php', '4.2', 0),
('447cf9183ddd07616b8c3acd1257242b', './lib/core/lib/Zend/Gdata/Books/Extension/InfoLink.php', '4.2', 0),
('c33ca42fa1d85c73377e72e18874a871', './lib/core/lib/Zend/Gdata/Books/Extension/PreviewLink.php', '4.2', 0),
('4c4b0f88b11390e2897732097c96b502', './lib/core/lib/Zend/Gdata/Books/Extension/Review.php', '4.2', 0),
('c24e8c913247c2f5462a5681e3609a41', './lib/core/lib/Zend/Gdata/Books/Extension/ThumbnailLink.php', '4.2', 0),
('83b0ffed7a9a74ed6e9ee02f97df822a', './lib/core/lib/Zend/Gdata/Books/Extension/Viewability.php', '4.2', 0),
('975eac16b5681298cf19c781bebf151e', './lib/core/lib/Zend/Gdata/Books/VolumeEntry.php', '4.2', 0),
('73885bec7e246170e709ef50f4c97bc6', './lib/core/lib/Zend/Gdata/Books/VolumeFeed.php', '4.2', 0),
('078eef16c866364d1930ae03cbe57fda', './lib/core/lib/Zend/Gdata/Books/VolumeQuery.php', '4.2', 0),
('488d0eea510872adbd80a8534999bedd', './lib/core/lib/Zend/Gdata/Calendar.php', '4.2', 0),
('a385233211c002a122116666a88c0271', './lib/core/lib/Zend/Gdata/Calendar/EventEntry.php', '4.2', 0),
('5778c656b65427f97c48c56458105bdc', './lib/core/lib/Zend/Gdata/Calendar/EventFeed.php', '4.2', 0),
('b34eb5be3aba7d940bc3441e3fc0e5ac', './lib/core/lib/Zend/Gdata/Calendar/EventQuery.php', '4.2', 0),
('abd2d6127ca07995bd4b4a22b3135308', './lib/core/lib/Zend/Gdata/Calendar/Extension/AccessLevel.php', '4.2', 0),
('3bbb6729b5f969198c4354655e08b30d', './lib/core/lib/Zend/Gdata/Calendar/Extension/Color.php', '4.2', 0),
('4d53e22c635b15d10169552bb6769f91', './lib/core/lib/Zend/Gdata/Calendar/Extension/Hidden.php', '4.2', 0),
('084edf7bc41449c72f1cf5fe3ae94a0f', './lib/core/lib/Zend/Gdata/Calendar/Extension/Link.php', '4.2', 0),
('0e8f0fad589f1aa106bd08cc7e088c9e', './lib/core/lib/Zend/Gdata/Calendar/Extension/QuickAdd.php', '4.2', 0),
('894138f8720f3a7924e37b0e567566c4', './lib/core/lib/Zend/Gdata/Calendar/Extension/Selected.php', '4.2', 0),
('eef9c2c7bf0415d9607b559573c5356c', './lib/core/lib/Zend/Gdata/Calendar/Extension/SendEventNotifications.php', '4.2', 0),
('411eb5376685febcfd9ce1ea51a15870', './lib/core/lib/Zend/Gdata/Calendar/Extension/Timezone.php', '4.2', 0),
('3bb72676829e532804991aaacaf3dfff', './lib/core/lib/Zend/Gdata/Calendar/Extension/WebContent.php', '4.2', 0),
('930893ece170c25b5c57428eb4033626', './lib/core/lib/Zend/Gdata/Calendar/ListEntry.php', '4.2', 0),
('80cae0cb4cecb3387b51c81fb646ffd4', './lib/core/lib/Zend/Gdata/Calendar/ListFeed.php', '4.2', 0),
('4adb5ed4b19a114c2f2cf9a6390d678e', './lib/core/lib/Zend/Gdata/ClientLogin.php', '4.2', 0),
('5fc4003917eb4f15ce3b5628130ea7fd', './lib/core/lib/Zend/Gdata/Docs.php', '4.2', 0),
('34c31616084fed916b46d3dcf3db6196', './lib/core/lib/Zend/Gdata/Docs/DocumentListEntry.php', '4.2', 0),
('4f9de31b35bbb36d60384acdcfafd32b', './lib/core/lib/Zend/Gdata/Docs/DocumentListFeed.php', '4.2', 0),
('040228bfba186c21f4ae60c74f7f63c0', './lib/core/lib/Zend/Gdata/Docs/Query.php', '4.2', 0),
('73b36c5219be6ec60c257642e1a5ecf4', './lib/core/lib/Zend/Gdata/DublinCore.php', '4.2', 0),
('be72e8b15fd7b8e6af39554aa34f958f', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Creator.php', '4.2', 0),
('31ad2c9c1c1d35dd2cff1df035c5b16a', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Date.php', '4.2', 0),
('b7ea513e4b1bafcec1faf071bdc0d5ef', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Description.php', '4.2', 0),
('317bc6a78ef2cca6ac41777d686a0b1b', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Format.php', '4.2', 0),
('f634cb3a6f8b2f7626cf2d70e1148ed8', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Identifier.php', '4.2', 0),
('d997714e37db01b4fab08f031743bb66', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Language.php', '4.2', 0),
('8a09ddf40ff32e9a725b80fa609ac22f', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Publisher.php', '4.2', 0),
('4c8905f0c23dfca98c5fc164dcc845f2', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Rights.php', '4.2', 0),
('f7b6127af6fb825a325af392df9f0637', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Subject.php', '4.2', 0),
('93d06b03ce939f2b496e7a077ac6bce6', './lib/core/lib/Zend/Gdata/DublinCore/Extension/Title.php', '4.2', 0),
('957d5d6d79e90252a83d4bed9958abe4', './lib/core/lib/Zend/Gdata/Entry.php', '4.2', 0),
('20c4b27dbc39f6e0e030fbd1a842f690', './lib/core/lib/Zend/Gdata/Exif.php', '4.2', 0),
('2854599a5df7259c97941485a7fd3dc8', './lib/core/lib/Zend/Gdata/Exif/Entry.php', '4.2', 0),
('123f471fd9eccdf1c9b236bbd437e7e1', './lib/core/lib/Zend/Gdata/Exif/Extension/Distance.php', '4.2', 0),
('316df773c41c5f843e5a7181172157ec', './lib/core/lib/Zend/Gdata/Exif/Extension/Exposure.php', '4.2', 0),
('da004f8bea6769195f159afe22d515dd', './lib/core/lib/Zend/Gdata/Exif/Extension/FStop.php', '4.2', 0),
('73f6df9b20b01e5b548248db25d5ba3d', './lib/core/lib/Zend/Gdata/Exif/Extension/Flash.php', '4.2', 0),
('91410a6d1b272a2db844f609733aa1e0', './lib/core/lib/Zend/Gdata/Exif/Extension/FocalLength.php', '4.2', 0),
('c41d2e2a644bb367b244eb1fc1cff6a0', './lib/core/lib/Zend/Gdata/Exif/Extension/ImageUniqueId.php', '4.2', 0),
('a0a494685b7be80a9523cb3f4f273ecc', './lib/core/lib/Zend/Gdata/Exif/Extension/Iso.php', '4.2', 0),
('0ac9935149ef4da893347dcf78418b07', './lib/core/lib/Zend/Gdata/Exif/Extension/Make.php', '4.2', 0),
('b659e7a9f0d81424fbc644904119cf7a', './lib/core/lib/Zend/Gdata/Exif/Extension/Model.php', '4.2', 0),
('32025f4fd7045d5b1d001357dae5163e', './lib/core/lib/Zend/Gdata/Exif/Extension/Tags.php', '4.2', 0),
('a725fbaa2208f88fc333fcff276d49e5', './lib/core/lib/Zend/Gdata/Exif/Extension/Time.php', '4.2', 0),
('0c987ca65d0653b9082dd314bce61160', './lib/core/lib/Zend/Gdata/Exif/Feed.php', '4.2', 0),
('3e24b75cd3b3ab34888a17bd902f503b', './lib/core/lib/Zend/Gdata/Extension.php', '4.2', 0),
('50d177a9efeb87c29f431331728acadb', './lib/core/lib/Zend/Gdata/Extension/AttendeeStatus.php', '4.2', 0),
('d35371488b3779c3d40c5709042474cb', './lib/core/lib/Zend/Gdata/Extension/AttendeeType.php', '4.2', 0),
('9e324ef4922fb667fd1ae69aafa8b2d4', './lib/core/lib/Zend/Gdata/Extension/Comments.php', '4.2', 0),
('39af2e8915b4ebc14d4a84d2ce3e87cf', './lib/core/lib/Zend/Gdata/Extension/EntryLink.php', '4.2', 0),
('510f7de5e2beeda018a647410b78c558', './lib/core/lib/Zend/Gdata/Extension/EventStatus.php', '4.2', 0),
('dda4c6c7cdf099dda5d16e32dc1ab643', './lib/core/lib/Zend/Gdata/Extension/ExtendedProperty.php', '4.2', 0),
('243363121de44e6c7da14127691e2000', './lib/core/lib/Zend/Gdata/Extension/FeedLink.php', '4.2', 0),
('7cc3a68a395d4938d2bb7e47f227465b', './lib/core/lib/Zend/Gdata/Extension/OpenSearchItemsPerPage.php', '4.2', 0),
('a148a6a06de66adec1ff3c34cc2a08f4', './lib/core/lib/Zend/Gdata/Extension/OpenSearchStartIndex.php', '4.2', 0),
('ea0ce591e6a3c6b0430e00f7ac0d2c61', './lib/core/lib/Zend/Gdata/Extension/OpenSearchTotalResults.php', '4.2', 0),
('1e2caa39c7b6ceedf56191abdcd3d4aa', './lib/core/lib/Zend/Gdata/Extension/OriginalEvent.php', '4.2', 0),
('f095aa5aa4dcc9ad88f5d6410178ed51', './lib/core/lib/Zend/Gdata/Extension/Rating.php', '4.2', 0),
('50a011daec5180aa6a3c816bfd15751e', './lib/core/lib/Zend/Gdata/Extension/Recurrence.php', '4.2', 0),
('68b96bfecb5f0c3f16826bb02582cecd', './lib/core/lib/Zend/Gdata/Extension/RecurrenceException.php', '4.2', 0),
('19bf55327ae707d6863336f33b63100a', './lib/core/lib/Zend/Gdata/Extension/Reminder.php', '4.2', 0),
('19320f8bfadc5043f298eeb15e14824a', './lib/core/lib/Zend/Gdata/Extension/Transparency.php', '4.2', 0),
('62d5787e34b48aaa1e170ccf2aeb93da', './lib/core/lib/Zend/Gdata/Extension/Visibility.php', '4.2', 0),
('e840e851b18463c5bb6375aa871b84b4', './lib/core/lib/Zend/Gdata/Extension/When.php', '4.2', 0),
('80cd38011d5c119fbde7b59f9a7fd4ba', './lib/core/lib/Zend/Gdata/Extension/Where.php', '4.2', 0),
('6877d931807f7309d75991a1025ab0af', './lib/core/lib/Zend/Gdata/Extension/Who.php', '4.2', 0),
('94ee1d49099da90bc20b70aa120b2128', './lib/core/lib/Zend/Gdata/Feed.php', '4.2', 0),
('a83adc1c08497f21c1e28dda891db5c3', './lib/core/lib/Zend/Gdata/Gapps.php', '4.2', 0),
('f4176cd8e0953c6745b296534f31e5a2', './lib/core/lib/Zend/Gdata/Gapps/EmailListEntry.php', '4.2', 0),
('1c59309af59bb495750ad87c4d376156', './lib/core/lib/Zend/Gdata/Gapps/EmailListFeed.php', '4.2', 0),
('a176fc4ad9c6f605a0eb404dc7a53f23', './lib/core/lib/Zend/Gdata/Gapps/EmailListQuery.php', '4.2', 0),
('c099d407e68dfdd23126f7497297112d', './lib/core/lib/Zend/Gdata/Gapps/EmailListRecipientEntry.php', '4.2', 0),
('29e4426f4b29f6bbe53a4094ad8ca9f2', './lib/core/lib/Zend/Gdata/Gapps/EmailListRecipientFeed.php', '4.2', 0),
('494025250b0a85e0cbdf9b6237f3d748', './lib/core/lib/Zend/Gdata/Gapps/EmailListRecipientQuery.php', '4.2', 0),
('f3518df0618c89ff64347ecc17887774', './lib/core/lib/Zend/Gdata/Gapps/Error.php', '4.2', 0),
('923b7d98c03f9f7dc538af69e202d92b', './lib/core/lib/Zend/Gdata/Gapps/Extension/EmailList.php', '4.2', 0),
('e5492437873ca7a0d7bee4c2caa5237e', './lib/core/lib/Zend/Gdata/Gapps/Extension/Login.php', '4.2', 0),
('d8ccef7c3f2820e941deed910fe650ac', './lib/core/lib/Zend/Gdata/Gapps/Extension/Name.php', '4.2', 0),
('6755b175618608fc32933e35f7354b4d', './lib/core/lib/Zend/Gdata/Gapps/Extension/Nickname.php', '4.2', 0),
('e58e1499ff9179a142f9c90b000c0156', './lib/core/lib/Zend/Gdata/Gapps/Extension/Quota.php', '4.2', 0),
('aa5bab89de1e982215b97a4d47c64d1f', './lib/core/lib/Zend/Gdata/Gapps/NicknameEntry.php', '4.2', 0),
('2ec3f7e65f407d51ad02a6e458774d1a', './lib/core/lib/Zend/Gdata/Gapps/NicknameFeed.php', '4.2', 0),
('6f8bd54d78614d4bf7c2ac0b3d416543', './lib/core/lib/Zend/Gdata/Gapps/NicknameQuery.php', '4.2', 0),
('6d39f5e232f081b32bc1dc37db5f9e56', './lib/core/lib/Zend/Gdata/Gapps/Query.php', '4.2', 0),
('eb63359f94ae0b30e60e1f0c5e73217d', './lib/core/lib/Zend/Gdata/Gapps/ServiceException.php', '4.2', 0),
('34b31f22571646b2eba35d10e692158b', './lib/core/lib/Zend/Gdata/Gapps/UserEntry.php', '4.2', 0),
('999b2402b32e5d4fcf81416e300310f5', './lib/core/lib/Zend/Gdata/Gapps/UserFeed.php', '4.2', 0),
('907c9e5af9b59471f679e09640f102e9', './lib/core/lib/Zend/Gdata/Gapps/UserQuery.php', '4.2', 0),
('cb9c3b375a9ea6a0aa84af5ce176eacc', './lib/core/lib/Zend/Gdata/Gbase.php', '4.2', 0),
('db7725e3d0fa44b7296f6e0cd06a165d', './lib/core/lib/Zend/Gdata/Gbase/Entry.php', '4.2', 0),
('22fb7b1c009ed4372e2fa651f45c2d6a', './lib/core/lib/Zend/Gdata/Gbase/Extension/BaseAttribute.php', '4.2', 0),
('7e95a16f06d265cc6315bbd47d13bac3', './lib/core/lib/Zend/Gdata/Gbase/Feed.php', '4.2', 0),
('1fd59092f14376bd3f5633d6baa58009', './lib/core/lib/Zend/Gdata/Gbase/ItemEntry.php', '4.2', 0),
('5d2d3b3cea9bbbcc41eec57b44d9d608', './lib/core/lib/Zend/Gdata/Gbase/ItemFeed.php', '4.2', 0),
('0632d31b2a9c2b609c2481224fef65e1', './lib/core/lib/Zend/Gdata/Gbase/ItemQuery.php', '4.2', 0),
('86218b6698c24f7721fdc43c0a1fb9b4', './lib/core/lib/Zend/Gdata/Gbase/Query.php', '4.2', 0),
('b765b4b7581749e0bbc3498eb8441fe3', './lib/core/lib/Zend/Gdata/Gbase/SnippetEntry.php', '4.2', 0),
('0367a88ec42441023f45ecada4f3fc6f', './lib/core/lib/Zend/Gdata/Gbase/SnippetFeed.php', '4.2', 0),
('514ec414efc0198b70c5342c1fe62165', './lib/core/lib/Zend/Gdata/Gbase/SnippetQuery.php', '4.2', 0),
('fe5442d6c7133006235f4f166b176a0c', './lib/core/lib/Zend/Gdata/Geo.php', '4.2', 0),
('1ab1332c25a77acee9a71046da821852', './lib/core/lib/Zend/Gdata/Geo/Entry.php', '4.2', 0),
('0b54d82d86359ecca3e74ba4c3d94f0d', './lib/core/lib/Zend/Gdata/Geo/Extension/GeoRssWhere.php', '4.2', 0),
('416ccd5d3edea25856d6108b6baf6e22', './lib/core/lib/Zend/Gdata/Geo/Extension/GmlPoint.php', '4.2', 0),
('94ce3f182c75a122c50ba40dcb8c39f2', './lib/core/lib/Zend/Gdata/Geo/Extension/GmlPos.php', '4.2', 0),
('1990a49db300690e2943d12acf0fba20', './lib/core/lib/Zend/Gdata/Geo/Feed.php', '4.2', 0),
('c3aa316636f8cbba876c90b3f93567ff', './lib/core/lib/Zend/Gdata/Health.php', '4.2', 0),
('a64f9469322cafaf92f2645382ea02f4', './lib/core/lib/Zend/Gdata/Health/Extension/Ccr.php', '4.2', 0),
('3e30d8404b2dbb487085d0d31d915d49', './lib/core/lib/Zend/Gdata/Health/ProfileEntry.php', '4.2', 0),
('f26eb4d3142925d1a1aac27e72459aaa', './lib/core/lib/Zend/Gdata/Health/ProfileFeed.php', '4.2', 0),
('ec63e3afb43fc9bcabc541597df42c3a', './lib/core/lib/Zend/Gdata/Health/ProfileListEntry.php', '4.2', 0),
('c138a41819d6df263d8816658cc4a154', './lib/core/lib/Zend/Gdata/Health/ProfileListFeed.php', '4.2', 0),
('2af90f6221ecd4866591527d805b6b94', './lib/core/lib/Zend/Gdata/Health/Query.php', '4.2', 0),
('56c312333ff455a3d07d2cf71fe30c58', './lib/core/lib/Zend/Gdata/HttpAdapterStreamingProxy.php', '4.2', 0),
('069baf063d837e57439248b451bb1dbd', './lib/core/lib/Zend/Gdata/HttpAdapterStreamingSocket.php', '4.2', 0),
('bea1e7d427b81bf00b1500d2b0c37630', './lib/core/lib/Zend/Gdata/HttpClient.php', '4.2', 0),
('9408451469d2aa3f97776f91b8e18509', './lib/core/lib/Zend/Gdata/Kind/EventEntry.php', '4.2', 0),
('c954a69d2207125b3847440c80a15e98', './lib/core/lib/Zend/Gdata/Media.php', '4.2', 0),
('48a7e2d444ecd40eaacf2fdd1b743c39', './lib/core/lib/Zend/Gdata/Media/Entry.php', '4.2', 0),
('6ff0b7fccce1aacdff30522897105960', './lib/core/lib/Zend/Gdata/Media/Extension/MediaCategory.php', '4.2', 0),
('fb305fd1bb34b7ba17ea522a8066b77c', './lib/core/lib/Zend/Gdata/Media/Extension/MediaContent.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('c440c13c8d711a8c0c585ae44ce32f31', './lib/core/lib/Zend/Gdata/Media/Extension/MediaCopyright.php', '4.2', 0),
('a8f65f7ba0249b5b88e7051b0599c5b0', './lib/core/lib/Zend/Gdata/Media/Extension/MediaCredit.php', '4.2', 0),
('0cf2cb2a55b57023bd44de3e87fbe2cd', './lib/core/lib/Zend/Gdata/Media/Extension/MediaDescription.php', '4.2', 0),
('9329b4bda86e134c9d22b1c5a3af0388', './lib/core/lib/Zend/Gdata/Media/Extension/MediaGroup.php', '4.2', 0),
('2d2df5486cbb5658e7c5b2b7c43af27c', './lib/core/lib/Zend/Gdata/Media/Extension/MediaHash.php', '4.2', 0),
('fbbf7cf09ed5e502c5da861f1bf7145e', './lib/core/lib/Zend/Gdata/Media/Extension/MediaKeywords.php', '4.2', 0),
('d4287ffdf9584b60854cf607487d12cc', './lib/core/lib/Zend/Gdata/Media/Extension/MediaPlayer.php', '4.2', 0),
('1175f891fc4e9bc172c5ceef92385ac8', './lib/core/lib/Zend/Gdata/Media/Extension/MediaRating.php', '4.2', 0),
('0cc216f3af51baca30dff924e2fb650b', './lib/core/lib/Zend/Gdata/Media/Extension/MediaRestriction.php', '4.2', 0),
('75c953000ebda68c2bf5e64afd051510', './lib/core/lib/Zend/Gdata/Media/Extension/MediaText.php', '4.2', 0),
('365959584cd4232d8b53acbde3ce90fc', './lib/core/lib/Zend/Gdata/Media/Extension/MediaThumbnail.php', '4.2', 0),
('a88dd8e3b03e862ac6730ac5be9387f1', './lib/core/lib/Zend/Gdata/Media/Extension/MediaTitle.php', '4.2', 0),
('9fdf022d9ab060eb1e052ce22b333ccd', './lib/core/lib/Zend/Gdata/Media/Feed.php', '4.2', 0),
('239e89ac72edd53e695e4092b9236455', './lib/core/lib/Zend/Gdata/MediaMimeStream.php', '4.2', 0),
('2e1d0bfe108723b7dbe304190c823f65', './lib/core/lib/Zend/Gdata/MimeBodyString.php', '4.2', 0),
('e308a9e16676d11fe1964912ed7ae12b', './lib/core/lib/Zend/Gdata/MimeFile.php', '4.2', 0),
('8becfd75a2998865762026df4aa22760', './lib/core/lib/Zend/Gdata/Photos.php', '4.2', 0),
('48f711d60843baaf05fdc6b21fa9e7de', './lib/core/lib/Zend/Gdata/Photos/AlbumEntry.php', '4.2', 0),
('c372f824dd1229d32ab1d06dc9c9d3c0', './lib/core/lib/Zend/Gdata/Photos/AlbumFeed.php', '4.2', 0),
('63c7fb055257b693588a3f5eedc7ad68', './lib/core/lib/Zend/Gdata/Photos/AlbumQuery.php', '4.2', 0),
('2c48082ced99dac7ff9114b162fd5416', './lib/core/lib/Zend/Gdata/Photos/CommentEntry.php', '4.2', 0),
('3040001ccdd3a96ff349188f1e10dc00', './lib/core/lib/Zend/Gdata/Photos/Extension/Access.php', '4.2', 0),
('22153937bb2038d5d7b89da1346fe969', './lib/core/lib/Zend/Gdata/Photos/Extension/AlbumId.php', '4.2', 0),
('a38f8bf9d3f1261e415d978c63643ecb', './lib/core/lib/Zend/Gdata/Photos/Extension/BytesUsed.php', '4.2', 0),
('51c2c8f5d00bef64c3dd94cc66989cc7', './lib/core/lib/Zend/Gdata/Photos/Extension/Checksum.php', '4.2', 0),
('e8b1bed17d6c7d1ae5d4265ea0408d66', './lib/core/lib/Zend/Gdata/Photos/Extension/Client.php', '4.2', 0),
('35ebfb7a335c31488bda5b333adefba5', './lib/core/lib/Zend/Gdata/Photos/Extension/CommentCount.php', '4.2', 0),
('7936cf7cd6f15e38837aefb12fcec7b3', './lib/core/lib/Zend/Gdata/Photos/Extension/CommentingEnabled.php', '4.2', 0),
('72c1bea7c46a21be7c230d6b94bab6dd', './lib/core/lib/Zend/Gdata/Photos/Extension/Height.php', '4.2', 0),
('5b0440fc55794662bbb3314304129975', './lib/core/lib/Zend/Gdata/Photos/Extension/Id.php', '4.2', 0),
('1e8111b4c90ab07ed1881f3eaf191d22', './lib/core/lib/Zend/Gdata/Photos/Extension/Location.php', '4.2', 0),
('504888149d31f2dc41e1f6193bb2d746', './lib/core/lib/Zend/Gdata/Photos/Extension/MaxPhotosPerAlbum.php', '4.2', 0),
('3fa79e4a3cecb2a777b81e1f0a348954', './lib/core/lib/Zend/Gdata/Photos/Extension/Name.php', '4.2', 0),
('ab6dad9fd4288ee2c5faf8801a3953c1', './lib/core/lib/Zend/Gdata/Photos/Extension/Nickname.php', '4.2', 0),
('f1f23e9be8b438d07ffa0b7feed93a2d', './lib/core/lib/Zend/Gdata/Photos/Extension/NumPhotos.php', '4.2', 0),
('ba0196a51571b1b8033439f40b68efbe', './lib/core/lib/Zend/Gdata/Photos/Extension/NumPhotosRemaining.php', '4.2', 0),
('f2ba2fcbbdfe844cb785f432ffed9915', './lib/core/lib/Zend/Gdata/Photos/Extension/PhotoId.php', '4.2', 0),
('9756583b67f2859127e63c0ab12ae753', './lib/core/lib/Zend/Gdata/Photos/Extension/Position.php', '4.2', 0),
('5003ed7ce16455ecdc48d5528e08c702', './lib/core/lib/Zend/Gdata/Photos/Extension/QuotaCurrent.php', '4.2', 0),
('360cbc21759dd05febe24fd064186f2e', './lib/core/lib/Zend/Gdata/Photos/Extension/QuotaLimit.php', '4.2', 0),
('fc51cfab6604ccbc057bcbed15bb0dc7', './lib/core/lib/Zend/Gdata/Photos/Extension/Rotation.php', '4.2', 0),
('2d59bb629b1ee73eeea1600b6573dd02', './lib/core/lib/Zend/Gdata/Photos/Extension/Size.php', '4.2', 0),
('9a91d8cef8664441c124726102c4e77c', './lib/core/lib/Zend/Gdata/Photos/Extension/Thumbnail.php', '4.2', 0),
('84fc922197633830941a7373440d11d1', './lib/core/lib/Zend/Gdata/Photos/Extension/Timestamp.php', '4.2', 0),
('5bf48b64d65c275bcebb235e1d312b77', './lib/core/lib/Zend/Gdata/Photos/Extension/User.php', '4.2', 0),
('ae6282d112a3be1b48c49d05a5338d84', './lib/core/lib/Zend/Gdata/Photos/Extension/Version.php', '4.2', 0),
('423840e0d3287bac8638a51520843111', './lib/core/lib/Zend/Gdata/Photos/Extension/Weight.php', '4.2', 0),
('5b0d21e6e5da40c6dd8953ba6d1f1cdc', './lib/core/lib/Zend/Gdata/Photos/Extension/Width.php', '4.2', 0),
('d33c2842944e5ea2bdf19392a011f501', './lib/core/lib/Zend/Gdata/Photos/PhotoEntry.php', '4.2', 0),
('9582e14ac7e6e9eb4409394e41108500', './lib/core/lib/Zend/Gdata/Photos/PhotoFeed.php', '4.2', 0),
('49d353528d3f1b3938072ab79bf137b4', './lib/core/lib/Zend/Gdata/Photos/PhotoQuery.php', '4.2', 0),
('333705d9b7ebef69ec854f427a02510c', './lib/core/lib/Zend/Gdata/Photos/TagEntry.php', '4.2', 0),
('78f089ba53dde82e898870a1adceda2f', './lib/core/lib/Zend/Gdata/Photos/UserEntry.php', '4.2', 0),
('e1c8ef7714404488be46c971e15c104b', './lib/core/lib/Zend/Gdata/Photos/UserFeed.php', '4.2', 0),
('c3504806aef7de5632b95243cfe8fa2f', './lib/core/lib/Zend/Gdata/Photos/UserQuery.php', '4.2', 0),
('538f1e931cf3dc0c36316e67c8997202', './lib/core/lib/Zend/Gdata/Query.php', '4.2', 0),
('eaf87b6112df6d3bd223099200ee89f0', './lib/core/lib/Zend/Gdata/Spreadsheets.php', '4.2', 0),
('ece29641a36764226adee319ab84a275', './lib/core/lib/Zend/Gdata/Spreadsheets/CellEntry.php', '4.2', 0),
('45a3f4379c8f55ab09a46b83aa9a5c02', './lib/core/lib/Zend/Gdata/Spreadsheets/CellFeed.php', '4.2', 0),
('45432d3aeaee3d35093e4c7dd6a4b4d1', './lib/core/lib/Zend/Gdata/Spreadsheets/CellQuery.php', '4.2', 0),
('5c81578f0710afcb675269722692dbff', './lib/core/lib/Zend/Gdata/Spreadsheets/DocumentQuery.php', '4.2', 0),
('068d08aaae20624798848aa28fa92d9d', './lib/core/lib/Zend/Gdata/Spreadsheets/Extension/Cell.php', '4.2', 0),
('bfb5490bb386d09a6f84493606058758', './lib/core/lib/Zend/Gdata/Spreadsheets/Extension/ColCount.php', '4.2', 0),
('9f193af6c564d9c2bc0f9b5ba4ac9994', './lib/core/lib/Zend/Gdata/Spreadsheets/Extension/Custom.php', '4.2', 0),
('641ebd0babe2cfeaed18d8f531122f6d', './lib/core/lib/Zend/Gdata/Spreadsheets/Extension/RowCount.php', '4.2', 0),
('41df8e47c117fa0bd5837cef4726104a', './lib/core/lib/Zend/Gdata/Spreadsheets/ListEntry.php', '4.2', 0),
('79fc0db16c4bb258fc542fd0e471a770', './lib/core/lib/Zend/Gdata/Spreadsheets/ListFeed.php', '4.2', 0),
('3deb6c6eeb10aa63455c50d0544a69ce', './lib/core/lib/Zend/Gdata/Spreadsheets/ListQuery.php', '4.2', 0),
('65484e038d6bc41a84e8b110f36cd8c3', './lib/core/lib/Zend/Gdata/Spreadsheets/SpreadsheetEntry.php', '4.2', 0),
('6fad30e9c4301b68bd58a4aacf34b3eb', './lib/core/lib/Zend/Gdata/Spreadsheets/SpreadsheetFeed.php', '4.2', 0),
('a811ddd9b093dda646d55c6477ba0b65', './lib/core/lib/Zend/Gdata/Spreadsheets/WorksheetEntry.php', '4.2', 0),
('0ed92917d45c0ff1e7f3b6a7a77c7762', './lib/core/lib/Zend/Gdata/Spreadsheets/WorksheetFeed.php', '4.2', 0),
('49586f4ca95c95ad6bfa0e876c3b460f', './lib/core/lib/Zend/Gdata/YouTube.php', '4.2', 0),
('95242b9c51c255b05bac3ca398de313f', './lib/core/lib/Zend/Gdata/YouTube/ActivityEntry.php', '4.2', 0),
('9962fc8ea94386096947fb50721c458b', './lib/core/lib/Zend/Gdata/YouTube/ActivityFeed.php', '4.2', 0),
('476939b22caa79a09935f39cf7408c73', './lib/core/lib/Zend/Gdata/YouTube/CommentEntry.php', '4.2', 0),
('6d17ce563b67e839877f88d0996eb538', './lib/core/lib/Zend/Gdata/YouTube/CommentFeed.php', '4.2', 0),
('c3a1acac365b509b7f4e4529e5fd5092', './lib/core/lib/Zend/Gdata/YouTube/ContactEntry.php', '4.2', 0),
('2a64b5ed6609bcb7d7515bd757c9f907', './lib/core/lib/Zend/Gdata/YouTube/ContactFeed.php', '4.2', 0),
('bbcfea87d04f7ed176344c58a7eeaa10', './lib/core/lib/Zend/Gdata/YouTube/Extension/AboutMe.php', '4.2', 0),
('8024f935a23da0ddca5bc382d2e6e165', './lib/core/lib/Zend/Gdata/YouTube/Extension/Age.php', '4.2', 0),
('6ac0eaba8e4c6edc25629ddf048f8822', './lib/core/lib/Zend/Gdata/YouTube/Extension/Books.php', '4.2', 0),
('a9bd2a9c225f6de351fcb6cdcec6cef8', './lib/core/lib/Zend/Gdata/YouTube/Extension/Company.php', '4.2', 0),
('89ee914fcc2bbed5cbaede5a9d4e28b0', './lib/core/lib/Zend/Gdata/YouTube/Extension/Control.php', '4.2', 0),
('41e9caec19e4b6488569edec23a03f73', './lib/core/lib/Zend/Gdata/YouTube/Extension/CountHint.php', '4.2', 0),
('a6dd30371ba066e7b82e54744dd01b2a', './lib/core/lib/Zend/Gdata/YouTube/Extension/Description.php', '4.2', 0),
('174d8e9b181c7e61b581461438ea1a87', './lib/core/lib/Zend/Gdata/YouTube/Extension/Duration.php', '4.2', 0),
('c8692cad883b1914bc6a57236eb728f4', './lib/core/lib/Zend/Gdata/YouTube/Extension/FirstName.php', '4.2', 0),
('6f6eaabe8cff582be8fa52e52fce6157', './lib/core/lib/Zend/Gdata/YouTube/Extension/Gender.php', '4.2', 0),
('2ce79c87101223e08ffbd1b1831cde46', './lib/core/lib/Zend/Gdata/YouTube/Extension/Hobbies.php', '4.2', 0),
('e961220df8321a9bf731f20a07434196', './lib/core/lib/Zend/Gdata/YouTube/Extension/Hometown.php', '4.2', 0),
('a4a85908529dfc434cc767a5ade61aad', './lib/core/lib/Zend/Gdata/YouTube/Extension/LastName.php', '4.2', 0),
('0d19133db3b5fa19f008badb666f197b', './lib/core/lib/Zend/Gdata/YouTube/Extension/Link.php', '4.2', 0),
('fe31b2f81d3b48b3d0f254b81655f2f4', './lib/core/lib/Zend/Gdata/YouTube/Extension/Location.php', '4.2', 0),
('7dc7d25ed94db9263f609ccd1cd75619', './lib/core/lib/Zend/Gdata/YouTube/Extension/MediaContent.php', '4.2', 0),
('b1a7419227e4e6f94c66e34c23be4bd4', './lib/core/lib/Zend/Gdata/YouTube/Extension/MediaCredit.php', '4.2', 0),
('c5a488bba8ebedf19f19ba3b298a3494', './lib/core/lib/Zend/Gdata/YouTube/Extension/MediaGroup.php', '4.2', 0),
('1c849d45b99287472f41a7bfd683f19b', './lib/core/lib/Zend/Gdata/YouTube/Extension/MediaRating.php', '4.2', 0),
('52ce422e8366ef58a97fce0698bcd9fc', './lib/core/lib/Zend/Gdata/YouTube/Extension/Movies.php', '4.2', 0),
('6026740166a057212652f3d2415f40ea', './lib/core/lib/Zend/Gdata/YouTube/Extension/Music.php', '4.2', 0),
('e71e5d10f0693d958559d0d0c66d23b7', './lib/core/lib/Zend/Gdata/YouTube/Extension/NoEmbed.php', '4.2', 0),
('dbb5ad6b34fa5f8d6eea296fe6a5c8bb', './lib/core/lib/Zend/Gdata/YouTube/Extension/Occupation.php', '4.2', 0),
('5ead6c39ae006f1c06c6e1b26c3b51d1', './lib/core/lib/Zend/Gdata/YouTube/Extension/PlaylistId.php', '4.2', 0),
('d71cce3a3687e82194718b99e12bd7a0', './lib/core/lib/Zend/Gdata/YouTube/Extension/PlaylistTitle.php', '4.2', 0),
('ad6b26fb532266cb84c16ff7f9526acf', './lib/core/lib/Zend/Gdata/YouTube/Extension/Position.php', '4.2', 0),
('fa2d67a19879aebfb30d903255aa13f9', './lib/core/lib/Zend/Gdata/YouTube/Extension/Private.php', '4.2', 0),
('17b1dcf10d2c772a66e489c5fe1db323', './lib/core/lib/Zend/Gdata/YouTube/Extension/QueryString.php', '4.2', 0),
('7eb57daa661f137bc1e278e433ae7b6f', './lib/core/lib/Zend/Gdata/YouTube/Extension/Racy.php', '4.2', 0),
('1d262da5cb0e05f25e72a8fa4c7f7e4c', './lib/core/lib/Zend/Gdata/YouTube/Extension/Recorded.php', '4.2', 0),
('ff4d65578ca15a408b466c87dfe7abe6', './lib/core/lib/Zend/Gdata/YouTube/Extension/Relationship.php', '4.2', 0),
('873b01e8b6c521a6b0875331dcae213d', './lib/core/lib/Zend/Gdata/YouTube/Extension/ReleaseDate.php', '4.2', 0),
('a8610c6e7b22d23e2f48655186596d7f', './lib/core/lib/Zend/Gdata/YouTube/Extension/School.php', '4.2', 0),
('3178d7de723d2bf485ca660d359bfbb5', './lib/core/lib/Zend/Gdata/YouTube/Extension/State.php', '4.2', 0),
('8f54db99ae31efd79ed084e5c4105bd5', './lib/core/lib/Zend/Gdata/YouTube/Extension/Statistics.php', '4.2', 0),
('d6248ec3e908d0c1689ff3ce6e36cd30', './lib/core/lib/Zend/Gdata/YouTube/Extension/Status.php', '4.2', 0),
('975a53f4352c2222272c867a3a6ab37b', './lib/core/lib/Zend/Gdata/YouTube/Extension/Token.php', '4.2', 0),
('90e4722bce52ab070d41d4416c35e962', './lib/core/lib/Zend/Gdata/YouTube/Extension/Uploaded.php', '4.2', 0),
('87058d3fc95f4b78d2319f3c568f170a', './lib/core/lib/Zend/Gdata/YouTube/Extension/Username.php', '4.2', 0),
('1b362b6100bc2c205d7a7fd59be1dc83', './lib/core/lib/Zend/Gdata/YouTube/Extension/VideoId.php', '4.2', 0),
('11f5863e06b05e9de27aea3c9cd7020a', './lib/core/lib/Zend/Gdata/YouTube/InboxEntry.php', '4.2', 0),
('8799de4f5668b3919d17ceb0bd19f126', './lib/core/lib/Zend/Gdata/YouTube/InboxFeed.php', '4.2', 0),
('7868503afb2da1e7e06205f8f20e8eca', './lib/core/lib/Zend/Gdata/YouTube/MediaEntry.php', '4.2', 0),
('bacc8631f5f80a92aeb78967db5cf161', './lib/core/lib/Zend/Gdata/YouTube/PlaylistListEntry.php', '4.2', 0),
('6198829cac7996b7586388ed80685b9e', './lib/core/lib/Zend/Gdata/YouTube/PlaylistListFeed.php', '4.2', 0),
('24fbc701c87b3ff704250e36536e85d0', './lib/core/lib/Zend/Gdata/YouTube/PlaylistVideoEntry.php', '4.2', 0),
('5470f7b91b2bd42963338a735972cd21', './lib/core/lib/Zend/Gdata/YouTube/PlaylistVideoFeed.php', '4.2', 0),
('fefb718019f26516a4cf393b09c64cb5', './lib/core/lib/Zend/Gdata/YouTube/SubscriptionEntry.php', '4.2', 0),
('f8f7f7d6ff2c319a8a343b3e84542c9c', './lib/core/lib/Zend/Gdata/YouTube/SubscriptionFeed.php', '4.2', 0),
('77136d1aca3dc85490a74ddc9352006b', './lib/core/lib/Zend/Gdata/YouTube/UserProfileEntry.php', '4.2', 0),
('5a1876ff8b6720e8de5c4c46c115b01d', './lib/core/lib/Zend/Gdata/YouTube/VideoEntry.php', '4.2', 0),
('4bb2eacc924cb60541be70d596503295', './lib/core/lib/Zend/Gdata/YouTube/VideoFeed.php', '4.2', 0),
('5b207a2548ce8cffd793ae9b171e512d', './lib/core/lib/Zend/Gdata/YouTube/VideoQuery.php', '4.2', 0),
('e6ce18b4d6cf90117a239380af0ce3da', './lib/core/lib/Zend/Http/Client.php', '4.2', 0),
('4f14e9d53956dd11b55b79842f939196', './lib/core/lib/Zend/Http/Client/Adapter/Curl.php', '4.2', 0),
('a424837336adeb8b55dda301936280ac', './lib/core/lib/Zend/Http/Client/Adapter/Exception.php', '4.2', 0),
('51055d3c71c41c778ec062da9aa86af5', './lib/core/lib/Zend/Http/Client/Adapter/Interface.php', '4.2', 0),
('17f0e7647f21fe614378fee86f9bfb5b', './lib/core/lib/Zend/Http/Client/Adapter/Proxy.php', '4.2', 0),
('e0750424d4a20ce361930d70c9ae0184', './lib/core/lib/Zend/Http/Client/Adapter/Socket.php', '4.2', 0),
('c21ec960f79ca651802f61df4268a5ac', './lib/core/lib/Zend/Http/Client/Adapter/Stream.php', '4.2', 0),
('a37077c9423fb1f5a31384431aaf4206', './lib/core/lib/Zend/Http/Client/Adapter/Test.php', '4.2', 0),
('96c316ea3ddf2f05e0a4cd1480ef1783', './lib/core/lib/Zend/Http/Client/Exception.php', '4.2', 0),
('7508e5d28580427f9aee044e855b5ad8', './lib/core/lib/Zend/Http/Cookie.php', '4.2', 0),
('be4df95ac3d568b911cd9d1ddd562811', './lib/core/lib/Zend/Http/CookieJar.php', '4.2', 0),
('1bed07107749398fcbdb9ef4ef714588', './lib/core/lib/Zend/Http/Exception.php', '4.2', 0),
('e6dce26d851936c0cfb5f13a2b04e657', './lib/core/lib/Zend/Http/Response.php', '4.2', 0),
('655179b6272aa1380bf7ef909ceadd0e', './lib/core/lib/Zend/Http/Response/Stream.php', '4.2', 0),
('7f0c32c3baf808a95ff443b8163ef29a', './lib/core/lib/Zend/InfoCard.php', '4.2', 0),
('4f4408115f78957291079efda1f73cb2', './lib/core/lib/Zend/InfoCard/Adapter/Default.php', '4.2', 0),
('ff16ad5577005ba14fa832936e845d39', './lib/core/lib/Zend/InfoCard/Adapter/Exception.php', '4.2', 0),
('b536c1258a456b6589e87a2358a502fa', './lib/core/lib/Zend/InfoCard/Adapter/Interface.php', '4.2', 0),
('97add486acb4758df724e7ec31084120', './lib/core/lib/Zend/InfoCard/Cipher.php', '4.2', 0),
('c85aa08c81aac2a2df18d98590ddd3b4', './lib/core/lib/Zend/InfoCard/Cipher/Exception.php', '4.2', 0),
('1a9be11862ff582e199dce730d34c135', './lib/core/lib/Zend/InfoCard/Cipher/Pki/Adapter/Abstract.php', '4.2', 0),
('51c25a334b4ee29695d25142a77a99a2', './lib/core/lib/Zend/InfoCard/Cipher/Pki/Adapter/Rsa.php', '4.2', 0),
('e26cb356b7b6140e24c26bce56b5a85b', './lib/core/lib/Zend/InfoCard/Cipher/Pki/Interface.php', '4.2', 0),
('1f22e42a7b65b5b7016ebffc52ba89cf', './lib/core/lib/Zend/InfoCard/Cipher/Pki/Rsa/Interface.php', '4.2', 0),
('7e36c5f473a63de16861c5290ffb9f11', './lib/core/lib/Zend/InfoCard/Cipher/Symmetric/Adapter/Abstract.php', '4.2', 0),
('b631788e0210518b4a3081f14c313e70', './lib/core/lib/Zend/InfoCard/Cipher/Symmetric/Adapter/Aes128cbc.php', '4.2', 0),
('cdb7dd9539dc9790c42eede385806085', './lib/core/lib/Zend/InfoCard/Cipher/Symmetric/Adapter/Aes256cbc.php', '4.2', 0),
('c1c822e3d9af491cb7803b4f2af1852f', './lib/core/lib/Zend/InfoCard/Cipher/Symmetric/Aes128cbc/Interface.php', '4.2', 0),
('4417c3f0304363a0193e3a6019270009', './lib/core/lib/Zend/InfoCard/Cipher/Symmetric/Aes256cbc/Interface.php', '4.2', 0),
('4a139072c3a82e6c4d9c94d881a3b384', './lib/core/lib/Zend/InfoCard/Cipher/Symmetric/Interface.php', '4.2', 0),
('2ecf706de0ef93bc676434853ada57a4', './lib/core/lib/Zend/InfoCard/Claims.php', '4.2', 0),
('dab43cd5da31ceebccbad7644667ae55', './lib/core/lib/Zend/InfoCard/Exception.php', '4.2', 0),
('c90f121a601817b67c5acb881f5688e6', './lib/core/lib/Zend/InfoCard/Xml/Assertion.php', '4.2', 0),
('60e72f3c22978bec21cdbed38e6be7cd', './lib/core/lib/Zend/InfoCard/Xml/Assertion/Interface.php', '4.2', 0),
('d4874c80d0d06c497065a557befe879d', './lib/core/lib/Zend/InfoCard/Xml/Assertion/Saml.php', '4.2', 0),
('7859dc62e7a30bbaa7dba71d525e9e63', './lib/core/lib/Zend/InfoCard/Xml/Element.php', '4.2', 0),
('a4f76e2cf53327806a1c1bfc39b01cfe', './lib/core/lib/Zend/InfoCard/Xml/Element/Interface.php', '4.2', 0),
('c8326af0cb378ab37d43ee38ac2edf69', './lib/core/lib/Zend/InfoCard/Xml/EncryptedData.php', '4.2', 0),
('f9b7aec4512097ccc1436ef24d475990', './lib/core/lib/Zend/InfoCard/Xml/EncryptedData/Abstract.php', '4.2', 0),
('22370496723fe8b280f91b3b5ec36f5e', './lib/core/lib/Zend/InfoCard/Xml/EncryptedData/XmlEnc.php', '4.2', 0),
('80afe0943b96c3f71bb90a2b19752f7f', './lib/core/lib/Zend/InfoCard/Xml/EncryptedKey.php', '4.2', 0),
('f56317cb082e269efddd13b262563922', './lib/core/lib/Zend/InfoCard/Xml/Exception.php', '4.2', 0),
('7b550f9e7a9c7fa779a69b6a6245dbe0', './lib/core/lib/Zend/InfoCard/Xml/KeyInfo.php', '4.2', 0),
('6259c9ed673cddae1e690723714e2810', './lib/core/lib/Zend/InfoCard/Xml/KeyInfo/Abstract.php', '4.2', 0),
('a267d6ef3cd96c27fa1542c75c87a1c2', './lib/core/lib/Zend/InfoCard/Xml/KeyInfo/Default.php', '4.2', 0),
('7119412ba9dbf146e847ec7ff7f7387f', './lib/core/lib/Zend/InfoCard/Xml/KeyInfo/Interface.php', '4.2', 0),
('5d3aa158bdc8183f7918ef8d99a89c79', './lib/core/lib/Zend/InfoCard/Xml/KeyInfo/XmlDSig.php', '4.2', 0),
('d5bb6e5ee562351d904b5392edf6925a', './lib/core/lib/Zend/InfoCard/Xml/Security.php', '4.2', 0),
('7cc0cbe04bfd802ba57a2fc49a9b2a9a', './lib/core/lib/Zend/InfoCard/Xml/Security/Exception.php', '4.2', 0),
('60cdbfa7e2a077be4bb27c422835bf4d', './lib/core/lib/Zend/InfoCard/Xml/Security/Transform.php', '4.2', 0),
('4bb1ccfc48b712ef80d81bfc4465c117', './lib/core/lib/Zend/InfoCard/Xml/Security/Transform/EnvelopedSignature.php', '4.2', 0),
('973f0bd06f0a238c1028ae83c4931e94', './lib/core/lib/Zend/InfoCard/Xml/Security/Transform/Exception.php', '4.2', 0),
('f1b40927aefd1856854bdfd2e2b3dd9e', './lib/core/lib/Zend/InfoCard/Xml/Security/Transform/Interface.php', '4.2', 0),
('8870bb46bc0fd15e05e381ee7bdbb2f0', './lib/core/lib/Zend/InfoCard/Xml/Security/Transform/XmlExcC14N.php', '4.2', 0),
('42c9f2081e5a527ef759ecd81fa184fc', './lib/core/lib/Zend/InfoCard/Xml/SecurityTokenReference.php', '4.2', 0),
('fba8b2402c01926877dc070656574d32', './lib/core/lib/Zend/Json.php', '4.2', 0),
('8ff9d77c31adbafb6bb22cced2a55401', './lib/core/lib/Zend/Json/Decoder.php', '4.2', 0),
('da74b32f010bd9094787c3ac9a08a69a', './lib/core/lib/Zend/Json/Encoder.php', '4.2', 0),
('11fcbb49ea3b5728ddb7b4abc7507643', './lib/core/lib/Zend/Json/Exception.php', '4.2', 0),
('895ab1d3715f1e47378437b17064d65f', './lib/core/lib/Zend/Json/Expr.php', '4.2', 0),
('ce090103683942068b3122fc6cabf9ac', './lib/core/lib/Zend/Json/Server.php', '4.2', 0),
('f4bfb6dd94c16bd5e76b681b6e4fe565', './lib/core/lib/Zend/Json/Server/Cache.php', '4.2', 0),
('20985a8ef717edcce0cc769defc21595', './lib/core/lib/Zend/Json/Server/Error.php', '4.2', 0),
('ce012f85cf3e8b6e5effbe46dce492cd', './lib/core/lib/Zend/Json/Server/Exception.php', '4.2', 0),
('ec155137f11356357dbe0e655fadff21', './lib/core/lib/Zend/Json/Server/Request.php', '4.2', 0),
('92d7a62a478852ece2682e3b74dc7393', './lib/core/lib/Zend/Json/Server/Request/Http.php', '4.2', 0),
('4e2e00f93753878d68e25cb3b64af1dc', './lib/core/lib/Zend/Json/Server/Response.php', '4.2', 0),
('9afed18ffc482cd016b4014dfceb8131', './lib/core/lib/Zend/Json/Server/Response/Http.php', '4.2', 0),
('a8c82e46523c218525e2c640d89c73e7', './lib/core/lib/Zend/Json/Server/Smd.php', '4.2', 0),
('ca15d261e2520ecebde249c6761b9946', './lib/core/lib/Zend/Json/Server/Smd/Service.php', '4.2', 0),
('da56089e1dcd1bad6213492a1466027a', './lib/core/lib/Zend/Layout.php', '4.2', 0),
('5d48597000547892855a92af86c00425', './lib/core/lib/Zend/Layout/Controller/Action/Helper/Layout.php', '4.2', 0),
('a05c64b6c5ceee55f278c167b34ad8bc', './lib/core/lib/Zend/Layout/Controller/Plugin/Layout.php', '4.2', 0),
('12010687e6b27c90b1a8c51395b16e31', './lib/core/lib/Zend/Layout/Exception.php', '4.2', 0),
('27e73791ff0d0a12d38c70151508472f', './lib/core/lib/Zend/Ldap.php', '4.2', 0),
('363a21ffb9020fadb7b3bf70c97f2f8d', './lib/core/lib/Zend/Ldap/Attribute.php', '4.2', 0),
('e426be2d8987b9a04ae910ed3d6ca017', './lib/core/lib/Zend/Ldap/Collection.php', '4.2', 0),
('3a0af47dbb00473e5bc2c726f41f9083', './lib/core/lib/Zend/Ldap/Collection/Iterator/Default.php', '4.2', 0),
('9da073f4e4c5f7b1c221a311960d6169', './lib/core/lib/Zend/Ldap/Collection/Iterator/Interface.php', '4.2', 0),
('ec279278b72c5fafcf0e3e0dcb19f545', './lib/core/lib/Zend/Ldap/Converter.php', '4.2', 0),
('3b93178c67cba100bc492a3fbff59e3b', './lib/core/lib/Zend/Ldap/Dn.php', '4.2', 0),
('1e1c42c2d7471e03e8bbb4885b37f482', './lib/core/lib/Zend/Ldap/Exception.php', '4.2', 0),
('d871dd9286da95fcb301214619f651a1', './lib/core/lib/Zend/Ldap/Filter.php', '4.2', 0),
('8555ef4f5b23cd2c3c7e69ba8c8de073', './lib/core/lib/Zend/Ldap/Filter/Abstract.php', '4.2', 0),
('b77edb810a381ed1a0caa5953f331b1a', './lib/core/lib/Zend/Ldap/Filter/And.php', '4.2', 0),
('d635f2518cdedd143a6f372ed8fcb6eb', './lib/core/lib/Zend/Ldap/Filter/Exception.php', '4.2', 0),
('210d3c3b13a0ddef891fb138eb53a72a', './lib/core/lib/Zend/Ldap/Filter/Logical.php', '4.2', 0),
('ab7e273866f0337c84aab65e9fd6faed', './lib/core/lib/Zend/Ldap/Filter/Mask.php', '4.2', 0),
('a9f21a6ec43e5d4c7c89a42b0c590363', './lib/core/lib/Zend/Ldap/Filter/Not.php', '4.2', 0),
('4a45abbebe44cf9bbb20c365ce9b5f28', './lib/core/lib/Zend/Ldap/Filter/Or.php', '4.2', 0),
('fdbc2dcb2fe27cdcd50f6a0b2bcf483d', './lib/core/lib/Zend/Ldap/Filter/String.php', '4.2', 0),
('78255130b9902680e71f4a2084677158', './lib/core/lib/Zend/Ldap/Ldif/Encoder.php', '4.2', 0),
('9d3e733080f0ef5a5ab1f91e97471b77', './lib/core/lib/Zend/Ldap/Node.php', '4.2', 0),
('8369bbdd9eb13cf5fb2f469140800dbb', './lib/core/lib/Zend/Ldap/Node/Abstract.php', '4.2', 0),
('3222fc7e3d71aea1d82e536590f0409c', './lib/core/lib/Zend/Ldap/Node/ChildrenIterator.php', '4.2', 0),
('9944955855f3cecdc02fcd999bc7a342', './lib/core/lib/Zend/Ldap/Node/Collection.php', '4.2', 0),
('9de6133f65e061472228ee738f7a5168', './lib/core/lib/Zend/Ldap/Node/RootDse.php', '4.2', 0),
('3a37cb35d9f18adb14750a51c6eef813', './lib/core/lib/Zend/Ldap/Node/RootDse/ActiveDirectory.php', '4.2', 0),
('3b2bc687f352333c46e86127b25b5689', './lib/core/lib/Zend/Ldap/Node/RootDse/OpenLdap.php', '4.2', 0),
('f64465bbf393470706e2fb436affbdcd', './lib/core/lib/Zend/Ldap/Node/RootDse/eDirectory.php', '4.2', 0),
('f5cb7e8fbd189e168bd45b2d33d93da7', './lib/core/lib/Zend/Ldap/Node/Schema.php', '4.2', 0),
('a4baa8872d42239120802a5f66e46930', './lib/core/lib/Zend/Ldap/Node/Schema/ActiveDirectory.php', '4.2', 0),
('420030d1523884173e2e1ea4a6067bb9', './lib/core/lib/Zend/Ldap/Node/Schema/AttributeType/ActiveDirectory.php', '4.2', 0),
('e51c68df241a7faf4091d62fe5e24be5', './lib/core/lib/Zend/Ldap/Node/Schema/AttributeType/Interface.php', '4.2', 0),
('5fe77851e7ff9a8b2e7f452a57af9958', './lib/core/lib/Zend/Ldap/Node/Schema/AttributeType/OpenLdap.php', '4.2', 0),
('a7b542fce7ec90ae9dbf049368f8109e', './lib/core/lib/Zend/Ldap/Node/Schema/Item.php', '4.2', 0),
('6d27deea23704c80d03d4633211955c6', './lib/core/lib/Zend/Ldap/Node/Schema/ObjectClass/ActiveDirectory.php', '4.2', 0),
('925bfef3269ddf25d298002da46e2030', './lib/core/lib/Zend/Ldap/Node/Schema/ObjectClass/Interface.php', '4.2', 0),
('5e05e46ec99302e6ae240e1dc5643d89', './lib/core/lib/Zend/Ldap/Node/Schema/ObjectClass/OpenLdap.php', '4.2', 0),
('fa4d54e8cb070e87c7410f01eb7ea2f6', './lib/core/lib/Zend/Ldap/Node/Schema/OpenLdap.php', '4.2', 0),
('3076b4e397b99ee7a282a08034175c15', './lib/core/lib/Zend/Loader.php', '4.2', 0),
('a34ec53d3ded0ff3d193782aaa6b621e', './lib/core/lib/Zend/Loader/Autoloader.php', '4.2', 0),
('f00151b7afd1ed05b346daa84986515a', './lib/core/lib/Zend/Loader/Autoloader/Interface.php', '4.2', 0),
('31e48042105681dedf2edb58b6637b5b', './lib/core/lib/Zend/Loader/Autoloader/Resource.php', '4.2', 0),
('f708b1eb56f7b4f6be3b2ff94f660297', './lib/core/lib/Zend/Loader/Exception.php', '4.2', 0),
('359f146b1f11db364d46aa337b75a9ac', './lib/core/lib/Zend/Loader/PluginLoader.php', '4.2', 0),
('f9d451a84dbfbdae151bda551a955066', './lib/core/lib/Zend/Loader/PluginLoader/Exception.php', '4.2', 0),
('ec68c1501d1a8a2ffc283a8ed0c1418e', './lib/core/lib/Zend/Loader/PluginLoader/Interface.php', '4.2', 0),
('a5f43a16327a818f22c2bb6d898f423c', './lib/core/lib/Zend/Locale.php', '4.2', 0),
('4dc8123fff7cffa2a6aa09d6b16f69d6', './lib/core/lib/Zend/Locale/Data.php', '4.2', 0),
('ee81b1a7de489091fe818cf5833cc4fe', './lib/core/lib/Zend/Locale/Data/Translation.php', '4.2', 0),
('807ceb9845c89ae537c5bf1ee5b3e617', './lib/core/lib/Zend/Locale/Exception.php', '4.2', 0),
('729d5322fdf075536e8b4469729b01c9', './lib/core/lib/Zend/Locale/Format.php', '4.2', 0),
('16d737d1097cf0d3ebfcd444824c14cf', './lib/core/lib/Zend/Locale/Math.php', '4.2', 0),
('41dfabde8ef45ba7c762d936134d0c81', './lib/core/lib/Zend/Locale/Math/Exception.php', '4.2', 0),
('d0aa3a55bac89a57099228dfc26fb9ba', './lib/core/lib/Zend/Locale/Math/PhpMath.php', '4.2', 0),
('535fe441099a57b969b756db12ab733e', './lib/core/lib/Zend/Log.php', '4.2', 0),
('c6ef130c28130c03e6143a24c9ed3c6d', './lib/core/lib/Zend/Log/Exception.php', '4.2', 0),
('d672aa7172ba378a94f5f17304d5981d', './lib/core/lib/Zend/Log/Filter/Interface.php', '4.2', 0),
('9e2d87050e65a5d940375f332edb48e9', './lib/core/lib/Zend/Log/Filter/Message.php', '4.2', 0),
('70a176c5b4d9b60418dbe8fb13825e0e', './lib/core/lib/Zend/Log/Filter/Priority.php', '4.2', 0),
('030fc16dc19dcaff3232a6c62b9dfdc8', './lib/core/lib/Zend/Log/Filter/Suppress.php', '4.2', 0),
('e2fc61928507596e51a04b9b9806ba98', './lib/core/lib/Zend/Log/Formatter/Firebug.php', '4.2', 0),
('58eb0a2d207431a555bdeee88fabcdbd', './lib/core/lib/Zend/Log/Formatter/Interface.php', '4.2', 0),
('a07d655cd6184db23d49db210e225fd5', './lib/core/lib/Zend/Log/Formatter/Simple.php', '4.2', 0),
('92ef73887ff1c7ad48fd60236f4c464d', './lib/core/lib/Zend/Log/Formatter/Xml.php', '4.2', 0),
('999a8a9e79cc2e80c0ae430af00ae5af', './lib/core/lib/Zend/Log/Writer/Abstract.php', '4.2', 0),
('6665d3cd8616425f1162f3d7d8a65361', './lib/core/lib/Zend/Log/Writer/Db.php', '4.2', 0),
('7410d5c7e628f41370cf0596aa75f6c2', './lib/core/lib/Zend/Log/Writer/Firebug.php', '4.2', 0),
('b475ea722f095d6d154d1b9fb9b38a0f', './lib/core/lib/Zend/Log/Writer/Mail.php', '4.2', 0),
('d86391c8ab1341cbf14c1e8a8a7a6521', './lib/core/lib/Zend/Log/Writer/Mock.php', '4.2', 0),
('e62c18345774eb9bb99b78e208e5d0ed', './lib/core/lib/Zend/Log/Writer/Null.php', '4.2', 0),
('6758959fef8071e30f94fa7a459265d4', './lib/core/lib/Zend/Log/Writer/Stream.php', '4.2', 0),
('d8030b8ecbaffc4b12e67f97f817663a', './lib/core/lib/Zend/Log/Writer/Syslog.php', '4.2', 0),
('dfd2fb3f079e13201c9059772a1cd99e', './lib/core/lib/Zend/Mail.php', '4.2', 0),
('6261a9027d3c9af75739c7f8dacf001b', './lib/core/lib/Zend/Mail/Exception.php', '4.2', 0),
('e1809e84ca6dacf458007d3d1b0116a9', './lib/core/lib/Zend/Mail/Message.php', '4.2', 0),
('7d153f3258a2ad03b318bb6f7d4ee252', './lib/core/lib/Zend/Mail/Message/File.php', '4.2', 0),
('66f3b185ab1806e40e3dbcdc26b49924', './lib/core/lib/Zend/Mail/Message/Interface.php', '4.2', 0),
('1516930a1546b2ef4eb3fc70eb63dce5', './lib/core/lib/Zend/Mail/Part.php', '4.2', 0),
('a388e64f3fd29942a4f2f9fe40451179', './lib/core/lib/Zend/Mail/Part/File.php', '4.2', 0),
('352c339e6dafc073c4c350620e263c7e', './lib/core/lib/Zend/Mail/Part/Interface.php', '4.2', 0),
('1f834da6a06d76a7ba55d77c4c24e330', './lib/core/lib/Zend/Mail/Protocol/Abstract.php', '4.2', 0),
('9b7a8384da5f2df11ce59df835787107', './lib/core/lib/Zend/Mail/Protocol/Exception.php', '4.2', 0),
('9b33163252135a0afff2d52728e81cea', './lib/core/lib/Zend/Mail/Protocol/Imap.php', '4.2', 0),
('117bb64e2428daf16c14ced9d5f4742e', './lib/core/lib/Zend/Mail/Protocol/Pop3.php', '4.2', 0),
('ff9ba95a1489c5e7aad7e999fd0fa95d', './lib/core/lib/Zend/Mail/Protocol/Smtp.php', '4.2', 0),
('bf2eeb11352420ba4e6f68c399eb2c05', './lib/core/lib/Zend/Mail/Protocol/Smtp/Auth/Crammd5.php', '4.2', 0),
('76dd0081f1ba0eb8bdaf3ed64a9e92ad', './lib/core/lib/Zend/Mail/Protocol/Smtp/Auth/Login.php', '4.2', 0),
('27c74b80751f2c6bc0aaf50ef38c19e3', './lib/core/lib/Zend/Mail/Protocol/Smtp/Auth/Plain.php', '4.2', 0),
('81972ee055899f5b112c04e7fc55a0ea', './lib/core/lib/Zend/Mail/Storage.php', '4.2', 0),
('2c3766a48bfe5225f7d937fbdbc56219', './lib/core/lib/Zend/Mail/Storage/Abstract.php', '4.2', 0),
('a4197658a732fc50aa83670e248e6e37', './lib/core/lib/Zend/Mail/Storage/Exception.php', '4.2', 0),
('bd96c0d012306b7743ab4336d321e59d', './lib/core/lib/Zend/Mail/Storage/Folder.php', '4.2', 0),
('5512ebe8fecf3402bb2a519e761a4efd', './lib/core/lib/Zend/Mail/Storage/Folder/Interface.php', '4.2', 0),
('eee71a2eab67f856a775a5ea44ca0de3', './lib/core/lib/Zend/Mail/Storage/Folder/Maildir.php', '4.2', 0),
('3117802a8cc74935b81e8e976bf4fc80', './lib/core/lib/Zend/Mail/Storage/Folder/Mbox.php', '4.2', 0),
('a29e729cc1e37d13722d2d7712cca09a', './lib/core/lib/Zend/Mail/Storage/Imap.php', '4.2', 0),
('68aeaccae4b5a63a6ef0d170bdcb473a', './lib/core/lib/Zend/Mail/Storage/Maildir.php', '4.2', 0),
('e0ba3912b2aa4442b9aa392b5e08b007', './lib/core/lib/Zend/Mail/Storage/Mbox.php', '4.2', 0),
('3dc07691b05fdf2880a8051cee685d14', './lib/core/lib/Zend/Mail/Storage/Pop3.php', '4.2', 0),
('dcfb423d0840c20d2a4ed0e3efc71c6d', './lib/core/lib/Zend/Mail/Storage/Writable/Interface.php', '4.2', 0),
('b0f8cd46fe2677eddf457c063fd8c01c', './lib/core/lib/Zend/Mail/Storage/Writable/Maildir.php', '4.2', 0),
('69e7eabe44a3f27fd4b56dd9cf2aad76', './lib/core/lib/Zend/Mail/Transport/Abstract.php', '4.2', 0),
('3ba1d5a069760bff63682f6d7778a000', './lib/core/lib/Zend/Mail/Transport/Exception.php', '4.2', 0),
('8457ad01b3875a78be266d4e852ceba4', './lib/core/lib/Zend/Mail/Transport/Sendmail.php', '4.2', 0),
('84592e74b5e95545f16026f2643d6295', './lib/core/lib/Zend/Mail/Transport/Smtp.php', '4.2', 0),
('fd97ca0177d4d4ccbb2e0cad2ee8556a', './lib/core/lib/Zend/Measure/Abstract.php', '4.2', 0),
('8f16c6a337f6f7b8b1be084eae9c0b9d', './lib/core/lib/Zend/Measure/Acceleration.php', '4.2', 0),
('303ec0964e194c8d4a98b899e96c7664', './lib/core/lib/Zend/Measure/Angle.php', '4.2', 0),
('e6617f3915c0b7542f6b7990244b9a25', './lib/core/lib/Zend/Measure/Area.php', '4.2', 0),
('e56fffbf0214a6ce1e8b66dd3584916a', './lib/core/lib/Zend/Measure/Binary.php', '4.2', 0),
('18e82ed6d008ffcc781f04f5c186de41', './lib/core/lib/Zend/Measure/Capacitance.php', '4.2', 0),
('acaa3f37e94390b979a109b3db282b0e', './lib/core/lib/Zend/Measure/Cooking/Volume.php', '4.2', 0),
('67a2493f3efccf1514e05f76f813f131', './lib/core/lib/Zend/Measure/Cooking/Weight.php', '4.2', 0),
('91a7b2b80fc21ca7c63cd73c214d9bc1', './lib/core/lib/Zend/Measure/Current.php', '4.2', 0),
('ba17ef3cace5fcf5499b2aead8c51aba', './lib/core/lib/Zend/Measure/Density.php', '4.2', 0),
('627ec5cf5964500cd139116a2024b7ee', './lib/core/lib/Zend/Measure/Energy.php', '4.2', 0),
('3fadd698a8fff360b1855352bb410bfc', './lib/core/lib/Zend/Measure/Exception.php', '4.2', 0),
('409c142a1d622d517718328d82f28b56', './lib/core/lib/Zend/Measure/Flow/Mass.php', '4.2', 0),
('8eb9cd73737cbf99fe27c25dbdfd6d21', './lib/core/lib/Zend/Measure/Flow/Mole.php', '4.2', 0),
('0d352c2b30327bbfdbdb1b069e18c410', './lib/core/lib/Zend/Measure/Flow/Volume.php', '4.2', 0),
('84817519ee0da07510d2cd1f677f20d4', './lib/core/lib/Zend/Measure/Force.php', '4.2', 0),
('96502ceb2b80816f47ef264bbdc41b01', './lib/core/lib/Zend/Measure/Frequency.php', '4.2', 0),
('fd1cce91e873a92d42651a545a1c80a5', './lib/core/lib/Zend/Measure/Illumination.php', '4.2', 0),
('21e4c5de5fe18bf14fe956713bd7b49b', './lib/core/lib/Zend/Measure/Length.php', '4.2', 0),
('594afc4671b53a9ac64665113824b2dc', './lib/core/lib/Zend/Measure/Lightness.php', '4.2', 0),
('2c1c9aba212c6657dddaabd8c0da53b9', './lib/core/lib/Zend/Measure/Number.php', '4.2', 0),
('2f4318b23c3a8aa4353b295cd466dc2a', './lib/core/lib/Zend/Measure/Power.php', '4.2', 0),
('cd68b3522cab5585058f10b1e5c1cb84', './lib/core/lib/Zend/Measure/Pressure.php', '4.2', 0),
('fca139836fbd8b42b113088eb98ba457', './lib/core/lib/Zend/Measure/Speed.php', '4.2', 0),
('90f53e890757738d874d32407e759d7d', './lib/core/lib/Zend/Measure/Temperature.php', '4.2', 0),
('290b6c6cc9797a6cbb0811cde9bc8f7c', './lib/core/lib/Zend/Measure/Time.php', '4.2', 0),
('63f216d1ef35eda53827a0d96d7176b2', './lib/core/lib/Zend/Measure/Torque.php', '4.2', 0),
('91254cde62966cfb448702201ab117c6', './lib/core/lib/Zend/Measure/Viscosity/Dynamic.php', '4.2', 0),
('0837162bcea37f35722b36abda98b932', './lib/core/lib/Zend/Measure/Viscosity/Kinematic.php', '4.2', 0),
('306076a280267607fde3dd7306ecf1dc', './lib/core/lib/Zend/Measure/Volume.php', '4.2', 0),
('17e0e3720415bbff4a49462cbd48da73', './lib/core/lib/Zend/Measure/Weight.php', '4.2', 0),
('cd3106bd981fdcbf8617e674a0f8dfa6', './lib/core/lib/Zend/Memory.php', '4.2', 0),
('dd7c502623e90e40f57ca402d727f5de', './lib/core/lib/Zend/Memory/AccessController.php', '4.2', 0),
('913430b9faa78aa324f575794b37db36', './lib/core/lib/Zend/Memory/Container.php', '4.2', 0),
('9ded6b692804854a4df02edba6faa07a', './lib/core/lib/Zend/Memory/Container/Interface.php', '4.2', 0),
('fbb568e34307ab4391e813268519a3d5', './lib/core/lib/Zend/Memory/Container/Locked.php', '4.2', 0),
('339a93dda1bfcb415a58ac8f2e4f3d28', './lib/core/lib/Zend/Memory/Container/Movable.php', '4.2', 0),
('2a0d0a780a01264ec580866f5c2de97f', './lib/core/lib/Zend/Memory/Exception.php', '4.2', 0),
('baefc0cd86a72d534b619af0011b365e', './lib/core/lib/Zend/Memory/Manager.php', '4.2', 0),
('a494bb2280cfe37d1ca873766957285f', './lib/core/lib/Zend/Memory/Value.php', '4.2', 0),
('e3d6bf2af1bdba7dd4a60f6183af86b3', './lib/core/lib/Zend/Mime.php', '4.2', 0),
('fc6a9df1e969ecfb50dd96be5ac6edc5', './lib/core/lib/Zend/Mime/Decode.php', '4.2', 0),
('c20748129f4b486faae96557a8f7db47', './lib/core/lib/Zend/Mime/Exception.php', '4.2', 0),
('2e52ffd365d14640533d91d2fe7f3f20', './lib/core/lib/Zend/Mime/Message.php', '4.2', 0),
('76f518b854f683eb9c1f1f187798a509', './lib/core/lib/Zend/Mime/Part.php', '4.2', 0),
('37e4969b85658a4c37db03cd5e42a6ba', './lib/core/lib/Zend/Navigation.php', '4.2', 0),
('8a1a680712fa2e7ba40a453cfefce098', './lib/core/lib/Zend/Navigation/Container.php', '4.2', 0),
('e38c74216554419736de8e5a93cdb352', './lib/core/lib/Zend/Navigation/Exception.php', '4.2', 0),
('ca8a953469ff832f246d47785464e9a4', './lib/core/lib/Zend/Navigation/Page.php', '4.2', 0),
('76182ddb1d62360f4c4f8116de188542', './lib/core/lib/Zend/Navigation/Page/Mvc.php', '4.2', 0),
('3696684f198a95703429d95029e4d7f5', './lib/core/lib/Zend/Navigation/Page/Uri.php', '4.2', 0),
('2583f978586ed3694251cbd038dc30e9', './lib/core/lib/Zend/OpenId.php', '4.2', 0),
('48b52d92df02e975bef509eb60269caf', './lib/core/lib/Zend/OpenId/Consumer.php', '4.2', 0),
('0e714df215ad9b1eb9330df5d3028e9d', './lib/core/lib/Zend/OpenId/Consumer/Storage.php', '4.2', 0),
('5f20be945f13e201528c0012ecccb83a', './lib/core/lib/Zend/OpenId/Consumer/Storage/File.php', '4.2', 0),
('290c6ecfeab43b0717681c0426cc0edf', './lib/core/lib/Zend/OpenId/Exception.php', '4.2', 0),
('4c146a7adda0b44b49aa116e57c9b548', './lib/core/lib/Zend/OpenId/Extension.php', '4.2', 0),
('9a2f7494f0435b7fc3f964c869ccb120', './lib/core/lib/Zend/OpenId/Extension/Sreg.php', '4.2', 0),
('15c2282ff1d17cb17e2a8b276521239b', './lib/core/lib/Zend/OpenId/Provider.php', '4.2', 0),
('f644151cf7f5b5034e0964a6e8d86ed9', './lib/core/lib/Zend/OpenId/Provider/Storage.php', '4.2', 0),
('68a70c6a63c420dc9fd34b8d0c3df8ee', './lib/core/lib/Zend/OpenId/Provider/Storage/File.php', '4.2', 0),
('3420b13efc0a440e336a4bfb6a75a644', './lib/core/lib/Zend/OpenId/Provider/User.php', '4.2', 0),
('169131210af06a6c9f8ee664c2fe385b', './lib/core/lib/Zend/OpenId/Provider/User/Session.php', '4.2', 0),
('77287504de82941ed9f0de5634653f0c', './lib/core/lib/Zend/Paginator.php', '4.2', 0),
('4b2c25509ed20d476aa4a9355095e85a', './lib/core/lib/Zend/Paginator/Adapter/Array.php', '4.2', 0),
('e4f592bd2e24d926dfa85568f15e1910', './lib/core/lib/Zend/Paginator/Adapter/DbSelect.php', '4.2', 0),
('959dbd05945a38e2d6fa3b087fa9d0c5', './lib/core/lib/Zend/Paginator/Adapter/DbTableSelect.php', '4.2', 0),
('a0da7577e44c73f3c022ada020a0942e', './lib/core/lib/Zend/Paginator/Adapter/Interface.php', '4.2', 0),
('4e999b6ef303c1735366753e65486c77', './lib/core/lib/Zend/Paginator/Adapter/Iterator.php', '4.2', 0),
('746bf1b33ac29dc5d6325128b6776d01', './lib/core/lib/Zend/Paginator/Adapter/Null.php', '4.2', 0),
('89f49f278f21933d056a4083349671e1', './lib/core/lib/Zend/Paginator/AdapterAggregate.php', '4.2', 0),
('c572d72d0ab094304775a38b17c93d04', './lib/core/lib/Zend/Paginator/Exception.php', '4.2', 0),
('71607f3534eac4ba526ad9898e3e3a72', './lib/core/lib/Zend/Paginator/ScrollingStyle/All.php', '4.2', 0),
('370dc3b1f8448297baaabef8a6f09630', './lib/core/lib/Zend/Paginator/ScrollingStyle/Elastic.php', '4.2', 0),
('ffd4873e9a4a5869f1419629b0c1cc04', './lib/core/lib/Zend/Paginator/ScrollingStyle/Interface.php', '4.2', 0),
('15e248c7a8623ff820fa87406fa45218', './lib/core/lib/Zend/Paginator/ScrollingStyle/Jumping.php', '4.2', 0),
('71953d87c99d171f8767ed838fe8e9f0', './lib/core/lib/Zend/Paginator/ScrollingStyle/Sliding.php', '4.2', 0),
('34db5180c360e61b65895182b5e2b2c6', './lib/core/lib/Zend/Paginator/SerializableLimitIterator.php', '4.2', 0),
('6f416192636e8a3dd48f0e11ee390760', './lib/core/lib/Zend/Pdf.php', '4.2', 0),
('c2d3a191745159ec0a2308710b47f029', './lib/core/lib/Zend/Pdf/Action.php', '4.2', 0),
('93203db024ba31f7aff0febd852af593', './lib/core/lib/Zend/Pdf/Action/GoTo.php', '4.2', 0),
('a5bab77feba25b89e8cd91369c807b26', './lib/core/lib/Zend/Pdf/Action/GoTo3DView.php', '4.2', 0),
('79fe4031d280eb03ae4202312948b232', './lib/core/lib/Zend/Pdf/Action/GoToE.php', '4.2', 0),
('244eddf589b4d26e5219f151dd7e998a', './lib/core/lib/Zend/Pdf/Action/GoToR.php', '4.2', 0),
('39773319d9c230814590712ba79771e1', './lib/core/lib/Zend/Pdf/Action/Hide.php', '4.2', 0),
('9a23eb76b9b5ea1800e37d05e514f5b8', './lib/core/lib/Zend/Pdf/Action/ImportData.php', '4.2', 0),
('d02397229d01f7d185702c445aa79519', './lib/core/lib/Zend/Pdf/Action/JavaScript.php', '4.2', 0),
('682ff071a8ae48749949dcd03aa16ea8', './lib/core/lib/Zend/Pdf/Action/Launch.php', '4.2', 0),
('ed342848fcede3ebeea25a690bc74e44', './lib/core/lib/Zend/Pdf/Action/Movie.php', '4.2', 0),
('da14b17fc2d2d9cffc0d821f381f4693', './lib/core/lib/Zend/Pdf/Action/Named.php', '4.2', 0),
('6ea8536c72b0433f3444f4580a45c9e9', './lib/core/lib/Zend/Pdf/Action/Rendition.php', '4.2', 0),
('0b327b6f660bb1bce4305a0aa244a140', './lib/core/lib/Zend/Pdf/Action/ResetForm.php', '4.2', 0),
('c46eb2a0910e8ca3380b5e4d686cb07f', './lib/core/lib/Zend/Pdf/Action/SetOCGState.php', '4.2', 0),
('d4c2d504f0df9385fd24fa0577a7e539', './lib/core/lib/Zend/Pdf/Action/Sound.php', '4.2', 0),
('4be9ddd18bce135aeef292178cfb7677', './lib/core/lib/Zend/Pdf/Action/SubmitForm.php', '4.2', 0),
('68d785767deedb5a2ecf2448eab126f1', './lib/core/lib/Zend/Pdf/Action/Thread.php', '4.2', 0),
('fb6b56a14afa40c5d3bd4e35918e44fb', './lib/core/lib/Zend/Pdf/Action/Trans.php', '4.2', 0),
('ac5237596ed2f2ec6d832791ab3c2cc4', './lib/core/lib/Zend/Pdf/Action/URI.php', '4.2', 0),
('c81da208b32b8586a4a8829e694b30d6', './lib/core/lib/Zend/Pdf/Action/Unknown.php', '4.2', 0),
('102f64230f5a83c516f995f16cff1cf1', './lib/core/lib/Zend/Pdf/Annotation.php', '4.2', 0),
('a19a10084ea4e2a69e58f08d4a565a58', './lib/core/lib/Zend/Pdf/Annotation/FileAttachment.php', '4.2', 0),
('0f6ff567910aea3b809f970446e37cc6', './lib/core/lib/Zend/Pdf/Annotation/Link.php', '4.2', 0),
('6bbac805144de1b4ed1ff13b37fe06a5', './lib/core/lib/Zend/Pdf/Annotation/Markup.php', '4.2', 0),
('94a6723d9ccd1eab331b88db54a71958', './lib/core/lib/Zend/Pdf/Annotation/Text.php', '4.2', 0),
('3bc79e75187fef031fdad90ff2669852', './lib/core/lib/Zend/Pdf/Cmap.php', '4.2', 0),
('e8802343505b9b9039c02bf0dc6b11ca', './lib/core/lib/Zend/Pdf/Cmap/ByteEncoding.php', '4.2', 0),
('3d41b573a46c052e68928db75d774788', './lib/core/lib/Zend/Pdf/Cmap/ByteEncoding/Static.php', '4.2', 0),
('56aa3441868ea8d53247d30ca1c4a384', './lib/core/lib/Zend/Pdf/Cmap/SegmentToDelta.php', '4.2', 0),
('b012566376183412b5e267517cbf186c', './lib/core/lib/Zend/Pdf/Cmap/TrimmedTable.php', '4.2', 0),
('b9a028f56ddb890ddf00dc4e6904dab6', './lib/core/lib/Zend/Pdf/Color.php', '4.2', 0),
('d127ee8b4df7af361de44ef0b91f4398', './lib/core/lib/Zend/Pdf/Color/Cmyk.php', '4.2', 0),
('421d04c151abe75f65632e9aec6720f9', './lib/core/lib/Zend/Pdf/Color/GrayScale.php', '4.2', 0),
('258a8045e3284f0d9a28efb7091855be', './lib/core/lib/Zend/Pdf/Color/Html.php', '4.2', 0),
('d2fe0be69881636391656bccdcd1dd6f', './lib/core/lib/Zend/Pdf/Color/Rgb.php', '4.2', 0),
('9d9d4ca4147dca88a4d42a7132136eb7', './lib/core/lib/Zend/Pdf/Destination.php', '4.2', 0),
('a9e450a398ddbac96a44622e54a5cfbc', './lib/core/lib/Zend/Pdf/Destination/Explicit.php', '4.2', 0),
('da9e779df9b490f112a8ac1cfe403832', './lib/core/lib/Zend/Pdf/Destination/Fit.php', '4.2', 0),
('66a961ee9106955f51cae5912b7b0c4d', './lib/core/lib/Zend/Pdf/Destination/FitBoundingBox.php', '4.2', 0),
('70829ddef4c92786b0c3ebb52e40ed3d', './lib/core/lib/Zend/Pdf/Destination/FitBoundingBoxHorizontally.php', '4.2', 0),
('9c43c4e2af035b7db1ba1458b98fd011', './lib/core/lib/Zend/Pdf/Destination/FitBoundingBoxVertically.php', '4.2', 0),
('98eac989059c79f73d3629a4c5e935e5', './lib/core/lib/Zend/Pdf/Destination/FitHorizontally.php', '4.2', 0),
('2f44730c058a4d3dbfaf2bf6b1e9f94b', './lib/core/lib/Zend/Pdf/Destination/FitRectangle.php', '4.2', 0),
('386d545957a866e7574f7539bd3a16e7', './lib/core/lib/Zend/Pdf/Destination/FitVertically.php', '4.2', 0),
('46dc2c724320aa10fe685cb2cc3c2ee7', './lib/core/lib/Zend/Pdf/Destination/Named.php', '4.2', 0),
('36d8d840063f4fec178b91f741fa5c90', './lib/core/lib/Zend/Pdf/Destination/Unknown.php', '4.2', 0),
('d1380544ede7cc7d8f986bb5f2e243f4', './lib/core/lib/Zend/Pdf/Destination/Zoom.php', '4.2', 0),
('30a87bb9898aea903e5c41f5367c5695', './lib/core/lib/Zend/Pdf/Element.php', '4.2', 0),
('b5e49ffce44ebb2aa33bdddf782cf6d1', './lib/core/lib/Zend/Pdf/Element/Array.php', '4.2', 0),
('1011e47551a9ed1384f4ed1f80571ad7', './lib/core/lib/Zend/Pdf/Element/Boolean.php', '4.2', 0),
('38600cf70e444a2590c8c438d66541bd', './lib/core/lib/Zend/Pdf/Element/Dictionary.php', '4.2', 0),
('49f75d6c8c9a201436043aca1d633bdd', './lib/core/lib/Zend/Pdf/Element/Name.php', '4.2', 0),
('55945be94923f61d48aba1b4234510ac', './lib/core/lib/Zend/Pdf/Element/Null.php', '4.2', 0),
('39f2ecf80fdf4fc7aa12348370724da6', './lib/core/lib/Zend/Pdf/Element/Numeric.php', '4.2', 0),
('4ad344a8a443a360a0c65d6df1291156', './lib/core/lib/Zend/Pdf/Element/Object.php', '4.2', 0),
('21bf3f1611baae4fb19b3b149096afc7', './lib/core/lib/Zend/Pdf/Element/Object/Stream.php', '4.2', 0),
('6bb295b214c3142ebba9e71e3ad42fd9', './lib/core/lib/Zend/Pdf/Element/Reference.php', '4.2', 0),
('8fe229ebbbd86ea1e1f4aca1a7bab1c5', './lib/core/lib/Zend/Pdf/Element/Reference/Context.php', '4.2', 0),
('fecf578773cf7cc775473bba20e849be', './lib/core/lib/Zend/Pdf/Element/Reference/Table.php', '4.2', 0),
('6d0b2fee285e40d9b0ae176b9c12de10', './lib/core/lib/Zend/Pdf/Element/Stream.php', '4.2', 0),
('8fcc07d1a93f61450d5547bfaf9b1723', './lib/core/lib/Zend/Pdf/Element/String.php', '4.2', 0),
('806c75e9204e4c90c86a3230d0487be9', './lib/core/lib/Zend/Pdf/Element/String/Binary.php', '4.2', 0),
('df34b8b074f70b014d261df2a5eaf4c6', './lib/core/lib/Zend/Pdf/ElementFactory.php', '4.2', 0),
('e802ea66a8200ed917890db08626ea60', './lib/core/lib/Zend/Pdf/ElementFactory/Interface.php', '4.2', 0),
('6d1018c8dac59958491b38a1e547a212', './lib/core/lib/Zend/Pdf/ElementFactory/Proxy.php', '4.2', 0),
('0dbab384574b0dad8b0ac53652b95479', './lib/core/lib/Zend/Pdf/Exception.php', '4.2', 0),
('c5b4ae8209b29949bfe34812b1656c21', './lib/core/lib/Zend/Pdf/FileParser.php', '4.2', 0),
('0b8796a264fa453c17ecebac613cdd14', './lib/core/lib/Zend/Pdf/FileParser/Font.php', '4.2', 0),
('4dd6fc4e74f0659ae0f61e1eead8ecb9', './lib/core/lib/Zend/Pdf/FileParser/Font/OpenType.php', '4.2', 0),
('fc68ccb8795e1fa2cbbe50babdc65853', './lib/core/lib/Zend/Pdf/FileParser/Font/OpenType/TrueType.php', '4.2', 0),
('4bb8634568d30150bf170b808ea2f59e', './lib/core/lib/Zend/Pdf/FileParser/Image.php', '4.2', 0),
('86dcbe5ead5cd4b685647e377198cda3', './lib/core/lib/Zend/Pdf/FileParser/Image/Png.php', '4.2', 0),
('dd9a8f8f02f44f446bd3e57c26bfdd46', './lib/core/lib/Zend/Pdf/FileParserDataSource.php', '4.2', 0),
('6c3ef70a77d8487cebc7aad8328554c7', './lib/core/lib/Zend/Pdf/FileParserDataSource/File.php', '4.2', 0),
('fcfc111dca25b4080b631f57a0bdf8b7', './lib/core/lib/Zend/Pdf/FileParserDataSource/String.php', '4.2', 0),
('0312bb2b08be28e503836ebe120514ea', './lib/core/lib/Zend/Pdf/Filter/Ascii85.php', '4.2', 0),
('7798c4406bee440995efc1842ae6412b', './lib/core/lib/Zend/Pdf/Filter/AsciiHex.php', '4.2', 0),
('e466b23ffa2cece001d4ee29bc9d021c', './lib/core/lib/Zend/Pdf/Filter/Compression.php', '4.2', 0),
('a1ca1c372809a6f9a9f5ef1ef440834c', './lib/core/lib/Zend/Pdf/Filter/Compression/Flate.php', '4.2', 0),
('00e315a2250854bc071139b9a7e02cbd', './lib/core/lib/Zend/Pdf/Filter/Compression/Lzw.php', '4.2', 0),
('eed95c5caf4d221f320e24c349e5c215', './lib/core/lib/Zend/Pdf/Filter/Interface.php', '4.2', 0),
('5efa63892419fd3954eaa4c0c26ba4e6', './lib/core/lib/Zend/Pdf/Filter/RunLength.php', '4.2', 0),
('fa90b21b1fefc1d58a77a313d58c5e5f', './lib/core/lib/Zend/Pdf/Font.php', '4.2', 0),
('d53f36548360d7ec98ba134ae151d29a', './lib/core/lib/Zend/Pdf/Image.php', '4.2', 0),
('b3d2232a12eaf1bd039a73a6bad0d3af', './lib/core/lib/Zend/Pdf/NameTree.php', '4.2', 0),
('205019486f7a08311fce84962f377214', './lib/core/lib/Zend/Pdf/Outline.php', '4.2', 0),
('e94debf303aec3de0c13165704b0b966', './lib/core/lib/Zend/Pdf/Outline/Created.php', '4.2', 0),
('1a88453a6834951a00a36711fc2ab6f1', './lib/core/lib/Zend/Pdf/Outline/Loaded.php', '4.2', 0),
('5a5feb9877ca611564f3e727403c1e7e', './lib/core/lib/Zend/Pdf/Page.php', '4.2', 0),
('773c62b32921450cedbd87723970de75', './lib/core/lib/Zend/Pdf/Parser.php', '4.2', 0),
('025b2e54f65ec75e5d26d8c085fdc515', './lib/core/lib/Zend/Pdf/RecursivelyIteratableObjectsContainer.php', '4.2', 0),
('161ee952f8a33c1216aaaa3c9581316c', './lib/core/lib/Zend/Pdf/Resource.php', '4.2', 0),
('b93cdbff1e6d0daea4a69150c37aa268', './lib/core/lib/Zend/Pdf/Resource/Font.php', '4.2', 0),
('1e5ab7da56c931f66c53e9b16d0db806', './lib/core/lib/Zend/Pdf/Resource/Font/CidFont.php', '4.2', 0),
('0344032375d809c432b87c2338f5ec18', './lib/core/lib/Zend/Pdf/Resource/Font/CidFont/TrueType.php', '4.2', 0),
('cfc358e7afcaa0b0fe5f3bdc07723f1b', './lib/core/lib/Zend/Pdf/Resource/Font/Extracted.php', '4.2', 0),
('8393f5801f1dc1821b2d87e830a8ebc3', './lib/core/lib/Zend/Pdf/Resource/Font/FontDescriptor.php', '4.2', 0),
('ebc5de6e89c33961d25c7bb9890e1ca9', './lib/core/lib/Zend/Pdf/Resource/Font/Simple.php', '4.2', 0),
('0d0762eb8a6e350a1817e5341407c52b', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Parsed.php', '4.2', 0),
('0aa799c15b44dc940cb3f81bf2f1bd02', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Parsed/TrueType.php', '4.2', 0),
('c48758dd5e3cba4cdfbde4fa90c0c347', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard.php', '4.2', 0),
('c8d6d3d044c0e9581f5e56918f3cf4f7', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/Courier.php', '4.2', 0),
('0e961c4b42de12134b5c29013d3d678f', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/CourierBold.php', '4.2', 0),
('e688807a372112a7e31f3220479a69d6', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/CourierBoldOblique.php', '4.2', 0),
('a5c803652edcb87ae9df81bd0f88df42', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/CourierOblique.php', '4.2', 0),
('6a8b29fbd0ee0296d66c440753e4d5f0', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/Helvetica.php', '4.2', 0),
('31d0a98dbb7302f4c97a086d1bf3c2d5', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/HelveticaBold.php', '4.2', 0),
('fc33065c26b4d7617bc2afdc07689f6a', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/HelveticaBoldOblique.php', '4.2', 0),
('86ae0626c1bd97e27522dd06e9f5af30', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/HelveticaOblique.php', '4.2', 0),
('4ba7cd0d7e2fbdebf24efd86aabaa592', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/Symbol.php', '4.2', 0),
('cb1404035f5a490ebbc723829f0bb65e', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/TimesBold.php', '4.2', 0),
('c45cb42fbbb61a8ba47f748552ab3035', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/TimesBoldItalic.php', '4.2', 0),
('139c67a1527b6dd3da2167b45f88a4e6', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/TimesItalic.php', '4.2', 0),
('596afb6ca668102ff5e96d6f4f1e348d', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/TimesRoman.php', '4.2', 0),
('18035c1336adb863a2e96b55098f6d1e', './lib/core/lib/Zend/Pdf/Resource/Font/Simple/Standard/ZapfDingbats.php', '4.2', 0),
('b012b54b5a4ea943b60ba2f3f8f03f32', './lib/core/lib/Zend/Pdf/Resource/Font/Type0.php', '4.2', 0),
('961291eaa7bc15a98cfff4513fc33637', './lib/core/lib/Zend/Pdf/Resource/Image.php', '4.2', 0),
('2e4efd916e9c04f5ce4d1f441a8786a2', './lib/core/lib/Zend/Pdf/Resource/Image/Jpeg.php', '4.2', 0),
('12de27112c29b0c660ef43fd647b05e6', './lib/core/lib/Zend/Pdf/Resource/Image/Png.php', '4.2', 0),
('d9d3d7c622a1a8f23b2648faad91ebfc', './lib/core/lib/Zend/Pdf/Resource/Image/Tiff.php', '4.2', 0),
('914bb1c51a531953ac7a87aa3685608a', './lib/core/lib/Zend/Pdf/Resource/ImageFactory.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('e2adba14968fdf1e73ebebe84dd81b64', './lib/core/lib/Zend/Pdf/StringParser.php', '4.2', 0),
('e370d75511f40a1db200a8873cec67c7', './lib/core/lib/Zend/Pdf/Style.php', '4.2', 0),
('642a92dccd3cc6aa22f49e78ffc90d3f', './lib/core/lib/Zend/Pdf/Target.php', '4.2', 0),
('858bb9b38fb64d3da4bd04eddc44953d', './lib/core/lib/Zend/Pdf/Trailer.php', '4.2', 0),
('272db9c180121783b85a3fe1ab7e3d14', './lib/core/lib/Zend/Pdf/Trailer/Generator.php', '4.2', 0),
('a16a67d620fae3b947a08162d072e0a7', './lib/core/lib/Zend/Pdf/Trailer/Keeper.php', '4.2', 0),
('50d87d5913297fb44dee3d673b449691', './lib/core/lib/Zend/Pdf/UpdateInfoContainer.php', '4.2', 0),
('0964539619fc9ac01b0d71123f362275', './lib/core/lib/Zend/ProgressBar.php', '4.2', 0),
('47ebea160260060a89f749520c630918', './lib/core/lib/Zend/ProgressBar/Adapter.php', '4.2', 0),
('ff1e4a3dd1c6710d4a5e7c0a7526a188', './lib/core/lib/Zend/ProgressBar/Adapter/Console.php', '4.2', 0),
('ac8aa1b1460064d9dacca930fed517a0', './lib/core/lib/Zend/ProgressBar/Adapter/Exception.php', '4.2', 0),
('e322d0f1b340dc214e2fbe9b57787c24', './lib/core/lib/Zend/ProgressBar/Adapter/JsPull.php', '4.2', 0),
('c0b93d66046c6e3849547efbd14c3fd9', './lib/core/lib/Zend/ProgressBar/Adapter/JsPush.php', '4.2', 0),
('3bd557c37b95b7318734450257c8b220', './lib/core/lib/Zend/ProgressBar/Exception.php', '4.2', 0),
('bd794585282973c3bdc4a140310d755e', './lib/core/lib/Zend/Queue.php', '4.2', 0),
('8d51d22fc85eb75a72eea89fd17d1f84', './lib/core/lib/Zend/Queue/Adapter/Activemq.php', '4.2', 0),
('35e8a9421001bb57c31582c486b8150a', './lib/core/lib/Zend/Queue/Adapter/AdapterAbstract.php', '4.2', 0),
('09bb6927002a5487c3119b82f1fdd9ce', './lib/core/lib/Zend/Queue/Adapter/AdapterInterface.php', '4.2', 0),
('db2f62bbb4748e9ba31c8e38eb0029fe', './lib/core/lib/Zend/Queue/Adapter/Array.php', '4.2', 0),
('e301919c20c82cf6ab0796b0037a32d0', './lib/core/lib/Zend/Queue/Adapter/Db.php', '4.2', 0),
('d1af75056b9fb75281031028da046692', './lib/core/lib/Zend/Queue/Adapter/Db/Message.php', '4.2', 0),
('8689343c68d87df68106427a05d0b9ba', './lib/core/lib/Zend/Queue/Adapter/Db/Queue.php', '4.2', 0),
('e5aa850347b576994b5b995b5746628c', './lib/core/lib/Zend/Queue/Adapter/Db/queue_sqlite.php', '4.2', 0),
('72d80592675fcf50975887ebfdaab705', './lib/core/lib/Zend/Queue/Adapter/Memcacheq.php', '4.2', 0),
('48bcdcdb193de2025b39fa3889c95cc9', './lib/core/lib/Zend/Queue/Adapter/Null.php', '4.2', 0),
('5a6c7e5b37bb58b84fa0f04419574045', './lib/core/lib/Zend/Queue/Adapter/PlatformJobQueue.php', '4.2', 0),
('d36c4347fa656d442dd0e8f037ebd44a', './lib/core/lib/Zend/Queue/Exception.php', '4.2', 0),
('1791771844aecad4ebfcdbc944e81034', './lib/core/lib/Zend/Queue/Message.php', '4.2', 0),
('2c2e640043589326a51e87c26ccd0577', './lib/core/lib/Zend/Queue/Message/Iterator.php', '4.2', 0),
('d8691027963325f472785728b141ecca', './lib/core/lib/Zend/Queue/Message/PlatformJob.php', '4.2', 0),
('11c211b1f4e198deb9ec773ead4d79b2', './lib/core/lib/Zend/Queue/Stomp/Client.php', '4.2', 0),
('ae5fc5ea2c12a8204358f507e9a80b04', './lib/core/lib/Zend/Queue/Stomp/Client/Connection.php', '4.2', 0),
('7373c7d55d8ead85d61aaf7f3f94cc0c', './lib/core/lib/Zend/Queue/Stomp/Client/ConnectionInterface.php', '4.2', 0),
('b43290ee1baff44a31d1396eb220bc61', './lib/core/lib/Zend/Queue/Stomp/Frame.php', '4.2', 0),
('de88ffe6219ea8b4fd51c3add485b861', './lib/core/lib/Zend/Queue/Stomp/FrameInterface.php', '4.2', 0),
('e9373394acecabed44afa3623d3a05b6', './lib/core/lib/Zend/Reflection/Class.php', '4.2', 0),
('09788b4a763a26db0c04dbe86e57312d', './lib/core/lib/Zend/Reflection/Docblock.php', '4.2', 0),
('967867a183f27c26fb00d70ae2d59050', './lib/core/lib/Zend/Reflection/Docblock/Tag.php', '4.2', 0),
('b21dcf7ead784985e95f8c78c8aff706', './lib/core/lib/Zend/Reflection/Docblock/Tag/Param.php', '4.2', 0),
('0a66949f68c599709618ae8ce5e64af2', './lib/core/lib/Zend/Reflection/Docblock/Tag/Return.php', '4.2', 0),
('a652e13bc389344c004a1bcb8ff8c6c7', './lib/core/lib/Zend/Reflection/Exception.php', '4.2', 0),
('17402efa62a4eb2686f48fe548d1c4f7', './lib/core/lib/Zend/Reflection/Extension.php', '4.2', 0),
('da7c49c45fd1e190fdbce91861ae4f93', './lib/core/lib/Zend/Reflection/File.php', '4.2', 0),
('0dafa1078d1128eeb58f5923b301e9ad', './lib/core/lib/Zend/Reflection/Function.php', '4.2', 0),
('b90756a16b60972aba3b6390282ea544', './lib/core/lib/Zend/Reflection/Method.php', '4.2', 0),
('ae482cec7758587bc3b515f3b479696f', './lib/core/lib/Zend/Reflection/Parameter.php', '4.2', 0),
('bb3f3f2eccb7a5bd31ac1ff93ef58086', './lib/core/lib/Zend/Reflection/Property.php', '4.2', 0),
('0c71763ed78ba326c2211e9985a90fc2', './lib/core/lib/Zend/Registry.php', '4.2', 0),
('67a0746844d92db298ba9a9aed42cd48', './lib/core/lib/Zend/Rest/Client.php', '4.2', 0),
('88622aa2ede47dd324c3a589fb9363c2', './lib/core/lib/Zend/Rest/Client/Exception.php', '4.2', 0),
('38d235d3f9a7893aab8ae711b2e9179f', './lib/core/lib/Zend/Rest/Client/Result.php', '4.2', 0),
('9cd91e47503f1ac88abe4fd87a407f83', './lib/core/lib/Zend/Rest/Client/Result/Exception.php', '4.2', 0),
('9f08f1197cd456599d5983e8b49197d3', './lib/core/lib/Zend/Rest/Controller.php', '4.2', 0),
('6d0a755db577a84781d0699f4a2f1d83', './lib/core/lib/Zend/Rest/Exception.php', '4.2', 0),
('c913b52c7c58626b07148d363ebaa769', './lib/core/lib/Zend/Rest/Route.php', '4.2', 0),
('87e37972dcf117de9515ffac55fc286f', './lib/core/lib/Zend/Rest/Server.php', '4.2', 0),
('c72fe1d20baf1b806bec816c5264779c', './lib/core/lib/Zend/Rest/Server/Exception.php', '4.2', 0),
('93ad7a9c3a226bd737718483d5eb40a5', './lib/core/lib/Zend/Search/Exception.php', '4.2', 0),
('405e8d152c321c9b41400c3d9f7a1ca2', './lib/core/lib/Zend/Search/Lucene.php', '4.2', 0),
('bdc6ba4dde851a8c42bc5fa91d5a7162', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer.php', '4.2', 0),
('e602f88e9418e3fa82f64ea0fc89d6ac', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common.php', '4.2', 0),
('1045ac1df360c8c164db1df1422ea753', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/Text.php', '4.2', 0),
('7c587c612c74dcdf7cafa8c427098002', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/Text/CaseInsensitive.php', '4.2', 0),
('e199a6512b51b3719edf86afe5409b72', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/TextNum.php', '4.2', 0),
('5b93c47358609f92a8e4fd39719c4cff', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/TextNum/CaseInsensitive.php', '4.2', 0),
('14890cb218acda0b28c5b78a83bf4efb', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/Utf8.php', '4.2', 0),
('aa7adc55e3921f01ceba8b02cef3ffd4', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/Utf8/CaseInsensitive.php', '4.2', 0),
('a88803bc09acb61247cd4d6e6081b4d4', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/Utf8Num.php', '4.2', 0),
('c7b7a685cd23a43441a6b0a321a7aefa', './lib/core/lib/Zend/Search/Lucene/Analysis/Analyzer/Common/Utf8Num/CaseInsensitive.php', '4.2', 0),
('bb0f8d8e6768ae786c373b6bfefa9f57', './lib/core/lib/Zend/Search/Lucene/Analysis/Token.php', '4.2', 0),
('50ab1818d8efb056de7637bd992cb16b', './lib/core/lib/Zend/Search/Lucene/Analysis/TokenFilter.php', '4.2', 0),
('f739cb301bbd88aab0e459a477e78abb', './lib/core/lib/Zend/Search/Lucene/Analysis/TokenFilter/LowerCase.php', '4.2', 0),
('77abb8a83b21906bbcd27d92ca07cd9b', './lib/core/lib/Zend/Search/Lucene/Analysis/TokenFilter/LowerCaseUtf8.php', '4.2', 0),
('373c318d58185f158c1e18fca9644ef6', './lib/core/lib/Zend/Search/Lucene/Analysis/TokenFilter/ShortWords.php', '4.2', 0),
('d406f5da84e4325930d4ac619082eeaf', './lib/core/lib/Zend/Search/Lucene/Analysis/TokenFilter/StopWords.php', '4.2', 0),
('64994f1d0df3db53398a53015ffc1c6a', './lib/core/lib/Zend/Search/Lucene/Document.php', '4.2', 0),
('64df19978fccbe11fd93f6be34cf89a7', './lib/core/lib/Zend/Search/Lucene/Document/Docx.php', '4.2', 0),
('1ab037141c4c9c047f2161d26a8533bc', './lib/core/lib/Zend/Search/Lucene/Document/Exception.php', '4.2', 0),
('52e19054ce6f92d9d906497b5b8248c7', './lib/core/lib/Zend/Search/Lucene/Document/Html.php', '4.2', 0),
('d3238a845d38f80f70b80c6adf79d1c7', './lib/core/lib/Zend/Search/Lucene/Document/OpenXml.php', '4.2', 0),
('508a8a9bbe4a617dbc4e6e1acc2d946f', './lib/core/lib/Zend/Search/Lucene/Document/Pptx.php', '4.2', 0),
('ce44e44e4d45f3515f05fb6a9853d17e', './lib/core/lib/Zend/Search/Lucene/Document/Xlsx.php', '4.2', 0),
('f7897da2aba5430c3ef98c082a2ecd57', './lib/core/lib/Zend/Search/Lucene/Exception.php', '4.2', 0),
('264441b8893c2949305dfbd82ac021e8', './lib/core/lib/Zend/Search/Lucene/FSM.php', '4.2', 0),
('95313965b8553d362e7c0a48ed66e859', './lib/core/lib/Zend/Search/Lucene/FSMAction.php', '4.2', 0),
('077ed03352adb7de972f1edc2c0f3e5e', './lib/core/lib/Zend/Search/Lucene/Field.php', '4.2', 0),
('38e003915f921a607932336db937fe80', './lib/core/lib/Zend/Search/Lucene/Index/DictionaryLoader.php', '4.2', 0),
('68dcfa5e7ce1f5b5b8905a6e700f0c46', './lib/core/lib/Zend/Search/Lucene/Index/DocsFilter.php', '4.2', 0),
('8a3c950a5a1a5606bc40a20bf0a5e867', './lib/core/lib/Zend/Search/Lucene/Index/FieldInfo.php', '4.2', 0),
('67e643ab7690c2b7013e8477e75ee699', './lib/core/lib/Zend/Search/Lucene/Index/SegmentInfo.php', '4.2', 0),
('8031cb6f9274b42df989529bcb5aeb0d', './lib/core/lib/Zend/Search/Lucene/Index/SegmentMerger.php', '4.2', 0),
('760ba21813a56b357b599731fcaae3c8', './lib/core/lib/Zend/Search/Lucene/Index/SegmentWriter.php', '4.2', 0),
('aa75daae8cd42131380ca7a725cb7202', './lib/core/lib/Zend/Search/Lucene/Index/SegmentWriter/DocumentWriter.php', '4.2', 0),
('d9fa6834e6c1013d8b5aa32d177f3a1e', './lib/core/lib/Zend/Search/Lucene/Index/SegmentWriter/StreamWriter.php', '4.2', 0),
('14533eac27ddb4589f8bd6bbd681bffb', './lib/core/lib/Zend/Search/Lucene/Index/Term.php', '4.2', 0),
('a4776d37d0f9073ab3ef7ab96464228d', './lib/core/lib/Zend/Search/Lucene/Index/TermInfo.php', '4.2', 0),
('a22c4d424536fad6fff708c0ec0dc2a8', './lib/core/lib/Zend/Search/Lucene/Index/TermsPriorityQueue.php', '4.2', 0),
('09cb513b3be6ce680dc020fabd444f85', './lib/core/lib/Zend/Search/Lucene/Index/TermsStream/Interface.php', '4.2', 0),
('2949727cddb4e2d59a348e5bd0b7fd43', './lib/core/lib/Zend/Search/Lucene/Index/Writer.php', '4.2', 0),
('0daf71c0c08eb79dcd346b5c13029174', './lib/core/lib/Zend/Search/Lucene/Interface.php', '4.2', 0),
('e535b9eab7d812822a0d368a7944eb11', './lib/core/lib/Zend/Search/Lucene/LockManager.php', '4.2', 0),
('7a32c2333ef92fc02b6d936911183e62', './lib/core/lib/Zend/Search/Lucene/MultiSearcher.php', '4.2', 0),
('c3fda79e2f41a13cba76dfaa14acf104', './lib/core/lib/Zend/Search/Lucene/PriorityQueue.php', '4.2', 0),
('0538c6b69bd3c8cc6b5c1f5d9cb628ab', './lib/core/lib/Zend/Search/Lucene/Proxy.php', '4.2', 0),
('9f5d5815b9a4ca55b16386ca170cfcb8', './lib/core/lib/Zend/Search/Lucene/Search/BooleanExpressionRecognizer.php', '4.2', 0),
('90336e78c6b5a706fe1e25500b70a4cc', './lib/core/lib/Zend/Search/Lucene/Search/Highlighter/Default.php', '4.2', 0),
('bf8eb25dc3047110573286f5eadf51e6', './lib/core/lib/Zend/Search/Lucene/Search/Highlighter/Interface.php', '4.2', 0),
('59829928f80d34d5ce1415e4462414bd', './lib/core/lib/Zend/Search/Lucene/Search/Query.php', '4.2', 0),
('8feced8053d381717a66787297363e27', './lib/core/lib/Zend/Search/Lucene/Search/Query/Boolean.php', '4.2', 0),
('7be79c1bec92ee57936fe2a7d27330fc', './lib/core/lib/Zend/Search/Lucene/Search/Query/Empty.php', '4.2', 0),
('10eece7b23bfb3b198429bab12020761', './lib/core/lib/Zend/Search/Lucene/Search/Query/Fuzzy.php', '4.2', 0),
('7c5459a653be42b9d0356eccb1c1a60b', './lib/core/lib/Zend/Search/Lucene/Search/Query/Insignificant.php', '4.2', 0),
('e1133a99412cfa22c154890e2a1e14e5', './lib/core/lib/Zend/Search/Lucene/Search/Query/MultiTerm.php', '4.2', 0),
('d92d4889a5365c6c59d150f488568528', './lib/core/lib/Zend/Search/Lucene/Search/Query/Phrase.php', '4.2', 0),
('24fa00f6e61cf3914d0ce3e6e0a2f27f', './lib/core/lib/Zend/Search/Lucene/Search/Query/Preprocessing.php', '4.2', 0),
('d7ab10544cc7cb0878b5030c0d08015d', './lib/core/lib/Zend/Search/Lucene/Search/Query/Preprocessing/Fuzzy.php', '4.2', 0),
('c53b7ad0ee27b0aa7f780dc55ef8c6ae', './lib/core/lib/Zend/Search/Lucene/Search/Query/Preprocessing/Phrase.php', '4.2', 0),
('a50d0c473ec08aed867a1d6fa6fe9404', './lib/core/lib/Zend/Search/Lucene/Search/Query/Preprocessing/Term.php', '4.2', 0),
('d8d1adde79b257bd3f8ff20520110d3e', './lib/core/lib/Zend/Search/Lucene/Search/Query/Range.php', '4.2', 0),
('48d8871013f09565d207255f72de9e88', './lib/core/lib/Zend/Search/Lucene/Search/Query/Term.php', '4.2', 0),
('ea23633e53ec0eba338802d8e2da8cf7', './lib/core/lib/Zend/Search/Lucene/Search/Query/Wildcard.php', '4.2', 0),
('74dca53ed9520761ba38860e156dcd8d', './lib/core/lib/Zend/Search/Lucene/Search/QueryEntry.php', '4.2', 0),
('a05f07fb4efc94c4a1982d7f229b0050', './lib/core/lib/Zend/Search/Lucene/Search/QueryEntry/Phrase.php', '4.2', 0),
('c88377abc48755f845da20e10686a9de', './lib/core/lib/Zend/Search/Lucene/Search/QueryEntry/Subquery.php', '4.2', 0),
('9e5e75ec35bd2fb91a612d6edeee149e', './lib/core/lib/Zend/Search/Lucene/Search/QueryEntry/Term.php', '4.2', 0),
('6ea7684782858f7585486a28720d06ed', './lib/core/lib/Zend/Search/Lucene/Search/QueryHit.php', '4.2', 0),
('0f0774ffdc3b28169abde432b86c0093', './lib/core/lib/Zend/Search/Lucene/Search/QueryLexer.php', '4.2', 0),
('b968266323629046ab936907d1bba3c4', './lib/core/lib/Zend/Search/Lucene/Search/QueryParser.php', '4.2', 0),
('29575438bb887823cecaafa03ee2cbe9', './lib/core/lib/Zend/Search/Lucene/Search/QueryParserContext.php', '4.2', 0),
('5718279182a270fb0ea44da463b1b734', './lib/core/lib/Zend/Search/Lucene/Search/QueryParserException.php', '4.2', 0),
('7d0bdb1f9978cb61dc55e677fa2cedd9', './lib/core/lib/Zend/Search/Lucene/Search/QueryToken.php', '4.2', 0),
('a6e6d778c6853efa619e2374b2230ca1', './lib/core/lib/Zend/Search/Lucene/Search/Similarity.php', '4.2', 0),
('97fdb9d576f466825b3a19328542fb43', './lib/core/lib/Zend/Search/Lucene/Search/Similarity/Default.php', '4.2', 0),
('0b66c2379e7ca7bf05c8412be1d3f0c2', './lib/core/lib/Zend/Search/Lucene/Search/Weight.php', '4.2', 0),
('9f15942f338fe2fbb225f1abfb8a10c3', './lib/core/lib/Zend/Search/Lucene/Search/Weight/Boolean.php', '4.2', 0),
('a22797f6f958fc5e303ff16ba684a31f', './lib/core/lib/Zend/Search/Lucene/Search/Weight/Empty.php', '4.2', 0),
('f962bcebeb01ceaaeb3343b24e46d5a9', './lib/core/lib/Zend/Search/Lucene/Search/Weight/MultiTerm.php', '4.2', 0),
('2d8fd0b95fc7a72a3ac30d87c2d4177e', './lib/core/lib/Zend/Search/Lucene/Search/Weight/Phrase.php', '4.2', 0),
('3b052b0981e1b81d0bfa64c172acbb9c', './lib/core/lib/Zend/Search/Lucene/Search/Weight/Term.php', '4.2', 0),
('5b8bab6a47ac7181bb743bdb1d291b90', './lib/core/lib/Zend/Search/Lucene/Storage/Directory.php', '4.2', 0),
('7a8fd0ead678c3a2dcd67c136c33799f', './lib/core/lib/Zend/Search/Lucene/Storage/Directory/Filesystem.php', '4.2', 0),
('eb7615c48a41f1876c541c9a1e7234cb', './lib/core/lib/Zend/Search/Lucene/Storage/File.php', '4.2', 0),
('1eb67ee2cc8274aef61f34907228ac94', './lib/core/lib/Zend/Search/Lucene/Storage/File/Filesystem.php', '4.2', 0),
('5e4e5edc47c3c004bc77c9983d98d5a2', './lib/core/lib/Zend/Search/Lucene/Storage/File/Memory.php', '4.2', 0),
('5f34adf2d47986774b9a08b557dfda14', './lib/core/lib/Zend/Search/Lucene/TermStreamsPriorityQueue.php', '4.2', 0),
('7ea85ae4c2694d1885b308e49dd4d467', './lib/core/lib/Zend/Server/Abstract.php', '4.2', 0),
('0a451b21acd1d4347bac2fe931668e1d', './lib/core/lib/Zend/Server/Cache.php', '4.2', 0),
('1ccc3fa2e147e91c9c2465414946b3c5', './lib/core/lib/Zend/Server/Definition.php', '4.2', 0),
('f7b7333d232c617337ba8e2ff41019e0', './lib/core/lib/Zend/Server/Exception.php', '4.2', 0),
('46c8b4538a1c11efc8da7b67c6eec6eb', './lib/core/lib/Zend/Server/Interface.php', '4.2', 0),
('3655b7c707e80bfef6975ef3c14783fb', './lib/core/lib/Zend/Server/Method/Callback.php', '4.2', 0),
('a9fb660a741ca7f32a4f2ee831f24deb', './lib/core/lib/Zend/Server/Method/Definition.php', '4.2', 0),
('a9d20b9b8752b3c9a7be17f3e79678af', './lib/core/lib/Zend/Server/Method/Parameter.php', '4.2', 0),
('b70e65266c0379cf58bba40ce253606a', './lib/core/lib/Zend/Server/Method/Prototype.php', '4.2', 0),
('eb7d7775c6335bd3584a515d635505c7', './lib/core/lib/Zend/Server/Reflection.php', '4.2', 0),
('c09936ba764b078ea8c67991cf2c95dd', './lib/core/lib/Zend/Server/Reflection/Class.php', '4.2', 0),
('483d52d6fad740d927f1054a8a3a8f78', './lib/core/lib/Zend/Server/Reflection/Exception.php', '4.2', 0),
('033b22ce713c6a2d9606a6235a362453', './lib/core/lib/Zend/Server/Reflection/Function.php', '4.2', 0),
('32277e8c8775227204c9c20b16950c1a', './lib/core/lib/Zend/Server/Reflection/Function/Abstract.php', '4.2', 0),
('7d55c73cc47ee4abf061428c55fb995c', './lib/core/lib/Zend/Server/Reflection/Method.php', '4.2', 0),
('6d13425b2b5d78acc578a0a40b2047f2', './lib/core/lib/Zend/Server/Reflection/Node.php', '4.2', 0),
('d8286569557560cac5459abb10154fad', './lib/core/lib/Zend/Server/Reflection/Parameter.php', '4.2', 0),
('2c29af3b8a063c4a72e951c7923a0747', './lib/core/lib/Zend/Server/Reflection/Prototype.php', '4.2', 0),
('6ffa2da389b12088db21c6b853bb3d9a', './lib/core/lib/Zend/Server/Reflection/ReturnValue.php', '4.2', 0),
('c29d1125eea3f5f0052cdabf7e3d8e5e', './lib/core/lib/Zend/Service/Abstract.php', '4.2', 0),
('9dcf36dee7ca0058753d3fdcae252073', './lib/core/lib/Zend/Service/Akismet.php', '4.2', 0),
('1a799f4923872583e14abdc42c4a826a', './lib/core/lib/Zend/Service/Amazon.php', '4.2', 0),
('64e0491d20599d56b151286ab4110a89', './lib/core/lib/Zend/Service/Amazon/Abstract.php', '4.2', 0),
('23de32e6a220c6624ddde2e1e757f044', './lib/core/lib/Zend/Service/Amazon/Accessories.php', '4.2', 0),
('16b5bf7ff03e54854b3c71c6e5b2c42c', './lib/core/lib/Zend/Service/Amazon/CustomerReview.php', '4.2', 0),
('3c33c13d4684d2298ef5a59ac7835e84', './lib/core/lib/Zend/Service/Amazon/Ec2.php', '4.2', 0),
('3fdb3dcd125175a2d66c19eca3b2466d', './lib/core/lib/Zend/Service/Amazon/Ec2/Abstract.php', '4.2', 0),
('0fd5701d6246935bde99932d29fdf5e0', './lib/core/lib/Zend/Service/Amazon/Ec2/Availabilityzones.php', '4.2', 0),
('fcb898f4272734e0be16da9cec790c0d', './lib/core/lib/Zend/Service/Amazon/Ec2/CloudWatch.php', '4.2', 0),
('38a0eacb3901844ae0433dec9ff64c91', './lib/core/lib/Zend/Service/Amazon/Ec2/Ebs.php', '4.2', 0),
('3a4189e2d1b1e9d36f2c7aee99dce65f', './lib/core/lib/Zend/Service/Amazon/Ec2/Elasticip.php', '4.2', 0),
('8792c72e9fb852b83cad498f8878aa2b', './lib/core/lib/Zend/Service/Amazon/Ec2/Exception.php', '4.2', 0),
('6dfae9beb43300b696b6030f1b1201d9', './lib/core/lib/Zend/Service/Amazon/Ec2/Image.php', '4.2', 0),
('6753a112b87f9c979c55b782b4c8ace3', './lib/core/lib/Zend/Service/Amazon/Ec2/Instance.php', '4.2', 0),
('619cb76879373d61b4cc33320522a3df', './lib/core/lib/Zend/Service/Amazon/Ec2/Instance/Reserved.php', '4.2', 0),
('ad2e8186efc5975fba025779cd8f959d', './lib/core/lib/Zend/Service/Amazon/Ec2/Instance/Windows.php', '4.2', 0),
('25b76de6b4863cdeb2743839946d0343', './lib/core/lib/Zend/Service/Amazon/Ec2/Keypair.php', '4.2', 0),
('d4914c4a97e1a44497ff58633ddf1698', './lib/core/lib/Zend/Service/Amazon/Ec2/Region.php', '4.2', 0),
('44e5ebac75683aba39c1ca6f3dcc4303', './lib/core/lib/Zend/Service/Amazon/Ec2/Response.php', '4.2', 0),
('c3de2461f5a369848354a1163b3cb03f', './lib/core/lib/Zend/Service/Amazon/Ec2/Securitygroups.php', '4.2', 0),
('28ff2c05d7898b34b8b32b57661d4313', './lib/core/lib/Zend/Service/Amazon/EditorialReview.php', '4.2', 0),
('325f78e8c64aabd9022155b2e6b20fb8', './lib/core/lib/Zend/Service/Amazon/Exception.php', '4.2', 0),
('f9d3c8be7da572c2d5c87df9f7918768', './lib/core/lib/Zend/Service/Amazon/Image.php', '4.2', 0),
('2e61af03fae7644c9ca5e89af4d57627', './lib/core/lib/Zend/Service/Amazon/Item.php', '4.2', 0),
('f4bc0f7f2b4ab3eb5a10c813fb55b4be', './lib/core/lib/Zend/Service/Amazon/ListmaniaList.php', '4.2', 0),
('360108875a72c263c3b0087883e6932f', './lib/core/lib/Zend/Service/Amazon/Offer.php', '4.2', 0),
('f4cab5f1f4ce2b20e72d5c4e30d47ad3', './lib/core/lib/Zend/Service/Amazon/OfferSet.php', '4.2', 0),
('60b551e0a79a21df38fd4836adad3b93', './lib/core/lib/Zend/Service/Amazon/Query.php', '4.2', 0),
('12cb4ab8e198be57510a45d205587fc2', './lib/core/lib/Zend/Service/Amazon/ResultSet.php', '4.2', 0),
('d109c40a5a0caf8e1c9b318ec5de7127', './lib/core/lib/Zend/Service/Amazon/S3.php', '4.2', 0),
('292f472c7e148166a7383c931946028b', './lib/core/lib/Zend/Service/Amazon/S3/Exception.php', '4.2', 0),
('7aefc0801a5f6f6d665d60cc7d74584d', './lib/core/lib/Zend/Service/Amazon/S3/Stream.php', '4.2', 0),
('4ad4ebee2e95534d3b9ca2d37959939e', './lib/core/lib/Zend/Service/Amazon/SimilarProduct.php', '4.2', 0),
('ed68e1bdf2010887c9761e00a0f62221', './lib/core/lib/Zend/Service/Amazon/Sqs.php', '4.2', 0),
('08b44086cdc4f7ac1b757ab766c4f118', './lib/core/lib/Zend/Service/Amazon/Sqs/Exception.php', '4.2', 0),
('632c5aea3cac39867c1ee9face094281', './lib/core/lib/Zend/Service/Audioscrobbler.php', '4.2', 0),
('48a8053b878ba855c1e94e3e3c807b05', './lib/core/lib/Zend/Service/Delicious.php', '4.2', 0),
('318194529311b0cf376709567cc9202b', './lib/core/lib/Zend/Service/Delicious/Exception.php', '4.2', 0),
('8c9ccde7d7eb11da32fec7d4979e137c', './lib/core/lib/Zend/Service/Delicious/Post.php', '4.2', 0),
('0419a5b78039dff58e6303b97ecbd4c0', './lib/core/lib/Zend/Service/Delicious/PostList.php', '4.2', 0),
('a5caa1238620a3bb2069ff4a247c1e98', './lib/core/lib/Zend/Service/Delicious/SimplePost.php', '4.2', 0),
('6e2ef6f8ba69573b8f9e274f1504283f', './lib/core/lib/Zend/Service/Exception.php', '4.2', 0),
('e03d3df823b95a6e4dae787217e3e2f8', './lib/core/lib/Zend/Service/Flickr.php', '4.2', 0),
('e85447296b831158224337f2b0a3f6e0', './lib/core/lib/Zend/Service/Flickr/Image.php', '4.2', 0),
('970a20ab16a0657a8829157d55d753bf', './lib/core/lib/Zend/Service/Flickr/Result.php', '4.2', 0),
('527ad0a615984585403af30a8a6669ea', './lib/core/lib/Zend/Service/Flickr/ResultSet.php', '4.2', 0),
('ae761f49ae5da9bdb415c0aaa5747b6a', './lib/core/lib/Zend/Service/Nirvanix.php', '4.2', 0),
('eda737ac07743d5b82498cefb14296df', './lib/core/lib/Zend/Service/Nirvanix/Exception.php', '4.2', 0),
('67e46ed7090b7892f3018e973a554b46', './lib/core/lib/Zend/Service/Nirvanix/Namespace/Base.php', '4.2', 0),
('8784332c46c3cdcaf9d21b5ab484cf7d', './lib/core/lib/Zend/Service/Nirvanix/Namespace/Imfs.php', '4.2', 0),
('f30f9ac170a6f5eaa2ec6904edb72240', './lib/core/lib/Zend/Service/Nirvanix/Response.php', '4.2', 0),
('f22ecb74d9d5ba70181b176c845eac4f', './lib/core/lib/Zend/Service/ReCaptcha.php', '4.2', 0),
('c0edc013fdde72ad2cb18c5f199d67c6', './lib/core/lib/Zend/Service/ReCaptcha/Exception.php', '4.2', 0),
('514f608968af286c3426fcc2613419fd', './lib/core/lib/Zend/Service/ReCaptcha/MailHide.php', '4.2', 0),
('c289178421fad25e1a98689858d98e9e', './lib/core/lib/Zend/Service/ReCaptcha/MailHide/Exception.php', '4.2', 0),
('73590910d755c8bb3bdce485855ad3af', './lib/core/lib/Zend/Service/ReCaptcha/Response.php', '4.2', 0),
('e586b0da74eaf3027a9aa5517e38caab', './lib/core/lib/Zend/Service/Simpy.php', '4.2', 0),
('97ee96ea985858ffaa7e141387a4f061', './lib/core/lib/Zend/Service/Simpy/Link.php', '4.2', 0),
('c105e86770ebb0bbd815594387222b77', './lib/core/lib/Zend/Service/Simpy/LinkQuery.php', '4.2', 0),
('acef24a0cdb21eae990bc06f43ce410e', './lib/core/lib/Zend/Service/Simpy/LinkSet.php', '4.2', 0),
('06cb861eed68c97a1514c48c04302c99', './lib/core/lib/Zend/Service/Simpy/Note.php', '4.2', 0),
('ad0f51afd8ad5dcb424ea009e5be31ce', './lib/core/lib/Zend/Service/Simpy/NoteSet.php', '4.2', 0),
('05a8110378758c0fde936b7937e88006', './lib/core/lib/Zend/Service/Simpy/Tag.php', '4.2', 0),
('77fc06f699831f7107693050248b5816', './lib/core/lib/Zend/Service/Simpy/TagSet.php', '4.2', 0),
('b311378bbf8c75b3a3d55ebe5448d52b', './lib/core/lib/Zend/Service/Simpy/Watchlist.php', '4.2', 0),
('9607a630933405019017d9de534fec94', './lib/core/lib/Zend/Service/Simpy/WatchlistFilter.php', '4.2', 0),
('96ef8352dd3f1e868817396f7c86826e', './lib/core/lib/Zend/Service/Simpy/WatchlistFilterSet.php', '4.2', 0),
('ea1664b226b37fc540986e2b75443b58', './lib/core/lib/Zend/Service/Simpy/WatchlistSet.php', '4.2', 0),
('5894f4e8103fa06b1ea2366dbef53eda', './lib/core/lib/Zend/Service/SlideShare.php', '4.2', 0),
('fa7bd50fe0e47c61b7917079077bbad1', './lib/core/lib/Zend/Service/SlideShare/Exception.php', '4.2', 0),
('02a62440da6d1e3812dcea511b0e5f67', './lib/core/lib/Zend/Service/SlideShare/SlideShow.php', '4.2', 0),
('825e1dc36649ffb15deb590307e52f40', './lib/core/lib/Zend/Service/StrikeIron.php', '4.2', 0),
('7dce7d2a09429f3e9ac098f4c4d3a58d', './lib/core/lib/Zend/Service/StrikeIron/Base.php', '4.2', 0),
('6588ac531a4bd1e8c57ef5c2e268cf5a', './lib/core/lib/Zend/Service/StrikeIron/Decorator.php', '4.2', 0),
('4976800de3558c5ae902ff5c094097ee', './lib/core/lib/Zend/Service/StrikeIron/Exception.php', '4.2', 0),
('11a4c3adaba5091e4f0cddff6342f632', './lib/core/lib/Zend/Service/StrikeIron/SalesUseTaxBasic.php', '4.2', 0),
('0b3f1f058f6ce4e648b8e661be70510b', './lib/core/lib/Zend/Service/StrikeIron/USAddressVerification.php', '4.2', 0),
('789b09fa65bdc0c0b757814228fb03d9', './lib/core/lib/Zend/Service/StrikeIron/ZipCodeInfo.php', '4.2', 0),
('afd65370560964dbc3a64c407e7ed841', './lib/core/lib/Zend/Service/Technorati.php', '4.2', 0),
('56a6b0ff7c65cb3155d0503d6893f5a9', './lib/core/lib/Zend/Service/Technorati/Author.php', '4.2', 0),
('240002aaee14342c1e80f59755ae723f', './lib/core/lib/Zend/Service/Technorati/BlogInfoResult.php', '4.2', 0),
('5bbc3ccdcc0bfb4ecc5c84d974eeb198', './lib/core/lib/Zend/Service/Technorati/CosmosResult.php', '4.2', 0),
('e7c5d9e760024b223f95d0bb97b0f087', './lib/core/lib/Zend/Service/Technorati/CosmosResultSet.php', '4.2', 0),
('6bd28da683016ea75057bd8fa573b10c', './lib/core/lib/Zend/Service/Technorati/DailyCountsResult.php', '4.2', 0),
('5cc391bcb194c6d230fafc521116e787', './lib/core/lib/Zend/Service/Technorati/DailyCountsResultSet.php', '4.2', 0),
('cb8b329fce84108d21ca277ec67521b0', './lib/core/lib/Zend/Service/Technorati/Exception.php', '4.2', 0),
('e0f35846f26a09808a3c4348c0f58e18', './lib/core/lib/Zend/Service/Technorati/GetInfoResult.php', '4.2', 0),
('58c8d7c1954c864738d90a6027bdc935', './lib/core/lib/Zend/Service/Technorati/KeyInfoResult.php', '4.2', 0),
('f32b4cb7513c9612c50d692f801dd7f0', './lib/core/lib/Zend/Service/Technorati/Result.php', '4.2', 0),
('886bf89f6595f9d7b78a161cf85847bd', './lib/core/lib/Zend/Service/Technorati/ResultSet.php', '4.2', 0),
('7fcba21b97e9a847247ee449da55cee9', './lib/core/lib/Zend/Service/Technorati/SearchResult.php', '4.2', 0),
('4cae8e75ab8c073578ea112ed0475be5', './lib/core/lib/Zend/Service/Technorati/SearchResultSet.php', '4.2', 0),
('1beeaf7adcda354551754d571023dea2', './lib/core/lib/Zend/Service/Technorati/TagResult.php', '4.2', 0),
('12e48b20b7abab4cc875d3d1c3e6d82d', './lib/core/lib/Zend/Service/Technorati/TagResultSet.php', '4.2', 0),
('a10c4afdcdc2c0b3c1e8ce0f1aa0ace8', './lib/core/lib/Zend/Service/Technorati/TagsResult.php', '4.2', 0),
('ace75b3ec84215a8d411ebcaf698df6f', './lib/core/lib/Zend/Service/Technorati/TagsResultSet.php', '4.2', 0),
('e03d8ee58eefe1fd539a19c3a417cff9', './lib/core/lib/Zend/Service/Technorati/Utils.php', '4.2', 0),
('6ebc59d49442e2a4d7b36a47e98d726c', './lib/core/lib/Zend/Service/Technorati/Weblog.php', '4.2', 0),
('55aaec1a832b975b3d1371654d324c18', './lib/core/lib/Zend/Service/Twitter.php', '4.2', 0),
('eb7725c8fa7620b76657c480e60dc678', './lib/core/lib/Zend/Service/Twitter/Exception.php', '4.2', 0),
('2a77922a7966182ff260c849da2a57f2', './lib/core/lib/Zend/Service/Twitter/Search.php', '4.2', 0),
('bc991588eb95787450922615fc185c46', './lib/core/lib/Zend/Service/Yahoo.php', '4.2', 0),
('b6729f19491afcacc486ed83f3d89cc4', './lib/core/lib/Zend/Service/Yahoo/Image.php', '4.2', 0),
('86959162021720b35206092789b6ee45', './lib/core/lib/Zend/Service/Yahoo/ImageResult.php', '4.2', 0),
('c93f42a606ba90ea4d13e54b91f1ffeb', './lib/core/lib/Zend/Service/Yahoo/ImageResultSet.php', '4.2', 0),
('3dcaf1f02439ee6392ff9cf1d48dfc31', './lib/core/lib/Zend/Service/Yahoo/InlinkDataResult.php', '4.2', 0),
('70834520cb73f9ef4eb6c5f19e9ee58b', './lib/core/lib/Zend/Service/Yahoo/InlinkDataResultSet.php', '4.2', 0),
('9acb9b667af6512b844886a837bbeacb', './lib/core/lib/Zend/Service/Yahoo/LocalResult.php', '4.2', 0),
('3fd4c7c0b3de9e97fa7c43bc110e5f52', './lib/core/lib/Zend/Service/Yahoo/LocalResultSet.php', '4.2', 0),
('4fe0b13c894d14959abfc6781648ac5c', './lib/core/lib/Zend/Service/Yahoo/NewsResult.php', '4.2', 0),
('9e500d4fa84517707e08e5ac8bc931c1', './lib/core/lib/Zend/Service/Yahoo/NewsResultSet.php', '4.2', 0),
('22ccc5261cbb665d61f5ec5e9051a636', './lib/core/lib/Zend/Service/Yahoo/PageDataResult.php', '4.2', 0),
('e76e5525060e05f946c3dc7e0fb0dfc6', './lib/core/lib/Zend/Service/Yahoo/PageDataResultSet.php', '4.2', 0),
('78defb9633114691769cff301d0bdf89', './lib/core/lib/Zend/Service/Yahoo/Result.php', '4.2', 0),
('b3043e09aed531dd6e9adb2fd6d14348', './lib/core/lib/Zend/Service/Yahoo/ResultSet.php', '4.2', 0),
('910e59ac6eebeea8f4bdfd0b448c5e27', './lib/core/lib/Zend/Service/Yahoo/VideoResult.php', '4.2', 0),
('e84f861ce8721cc66685873fff4b1ab9', './lib/core/lib/Zend/Service/Yahoo/VideoResultSet.php', '4.2', 0),
('1375d6d8a69331cd38544ee3d20dbfb2', './lib/core/lib/Zend/Service/Yahoo/WebResult.php', '4.2', 0),
('52efda012a942afdd3d65a8c8aa29ffd', './lib/core/lib/Zend/Service/Yahoo/WebResultSet.php', '4.2', 0),
('2fd86d65a2bee03616b27608b7f91ea4', './lib/core/lib/Zend/Session.php', '4.2', 0),
('d087476a35f96d211098780ad162b04c', './lib/core/lib/Zend/Session/Abstract.php', '4.2', 0),
('36d22c6c78428a57cb0fd1f10114f4f7', './lib/core/lib/Zend/Session/Exception.php', '4.2', 0),
('eb4b50b1ee46eb07dd1fc60cd98e2f33', './lib/core/lib/Zend/Session/Namespace.php', '4.2', 0),
('0c676961e26629f75008a69e0c0f6ed0', './lib/core/lib/Zend/Session/SaveHandler/DbTable.php', '4.2', 0),
('2bb02b39c5abe742c0adb81176ee031f', './lib/core/lib/Zend/Session/SaveHandler/Exception.php', '4.2', 0),
('ba4b2abeb06cad5d6c0f6e2467aaeb61', './lib/core/lib/Zend/Session/SaveHandler/Interface.php', '4.2', 0),
('e4572f27f229f46edbfb02f6450c8f10', './lib/core/lib/Zend/Session/Validator/Abstract.php', '4.2', 0),
('53233bff5ecb66fa75966f45003b5157', './lib/core/lib/Zend/Session/Validator/HttpUserAgent.php', '4.2', 0),
('d8ac8655e166eae59b01e60ed2df4409', './lib/core/lib/Zend/Session/Validator/Interface.php', '4.2', 0),
('1023b21b13900a6e94b95f534fa46db1', './lib/core/lib/Zend/Soap/AutoDiscover.php', '4.2', 0),
('5994b5c40e96b4a99be0678fdddeb9cb', './lib/core/lib/Zend/Soap/AutoDiscover/Exception.php', '4.2', 0),
('107e4405fa4bd1ba1a20d14bf97373c3', './lib/core/lib/Zend/Soap/Client.php', '4.2', 0),
('3965af225829f1e1c64c32e37a260096', './lib/core/lib/Zend/Soap/Client/Common.php', '4.2', 0),
('f302b8560d059f825b71a3debb5a42cc', './lib/core/lib/Zend/Soap/Client/DotNet.php', '4.2', 0),
('2e246db0a362690415a94dbe0e444190', './lib/core/lib/Zend/Soap/Client/Exception.php', '4.2', 0),
('b495f286e44d9cb5c04e43f993dbb785', './lib/core/lib/Zend/Soap/Client/Local.php', '4.2', 0),
('74a893558e5913ab0418e2b5d68aa550', './lib/core/lib/Zend/Soap/Server.php', '4.2', 0),
('a5c25827e14906063e8a6a6bd72403d0', './lib/core/lib/Zend/Soap/Server/Exception.php', '4.2', 0),
('186fa0b9a612fbe1da8bde5cabe5dc63', './lib/core/lib/Zend/Soap/Wsdl.php', '4.2', 0),
('4e84746c30451c8cf87cc8ba5667e32b', './lib/core/lib/Zend/Soap/Wsdl/Exception.php', '4.2', 0),
('feb0684f3f9a39aef6825c1e557b14f0', './lib/core/lib/Zend/Soap/Wsdl/Strategy/Abstract.php', '4.2', 0),
('e6bbc12539db6a7954a6a541a68699b8', './lib/core/lib/Zend/Soap/Wsdl/Strategy/AnyType.php', '4.2', 0),
('fb1fb5cc076e1c39f01b215176fcdeae', './lib/core/lib/Zend/Soap/Wsdl/Strategy/ArrayOfTypeComplex.php', '4.2', 0),
('bbc197175765705c763f69bee0aa3cce', './lib/core/lib/Zend/Soap/Wsdl/Strategy/ArrayOfTypeSequence.php', '4.2', 0),
('da1f20a73a1c97ed22eb41b10146678f', './lib/core/lib/Zend/Soap/Wsdl/Strategy/Composite.php', '4.2', 0),
('a72d96a8dfe2dc57725b69f19e5d3a98', './lib/core/lib/Zend/Soap/Wsdl/Strategy/DefaultComplexType.php', '4.2', 0),
('1dfc289a6555eb587a016fe69b8e2f89', './lib/core/lib/Zend/Soap/Wsdl/Strategy/Interface.php', '4.2', 0),
('0fd97bf6bd4e58d3c0ce483629935c90', './lib/core/lib/Zend/Tag/Cloud.php', '4.2', 0),
('39082f0a372d6902817e205ba2976a49', './lib/core/lib/Zend/Tag/Cloud/Decorator/Cloud.php', '4.2', 0),
('b22687b90db1fbdc69aa6b4761075a76', './lib/core/lib/Zend/Tag/Cloud/Decorator/Exception.php', '4.2', 0),
('116f270162b5429aacc36e43c2abf55b', './lib/core/lib/Zend/Tag/Cloud/Decorator/HtmlCloud.php', '4.2', 0),
('1b1372281e848f051c0e097be17db5a9', './lib/core/lib/Zend/Tag/Cloud/Decorator/HtmlTag.php', '4.2', 0),
('16932c3133e78b42a3e43b37292c790d', './lib/core/lib/Zend/Tag/Cloud/Decorator/Tag.php', '4.2', 0),
('7a4b23e30aa08c906ec04a2060f46ed7', './lib/core/lib/Zend/Tag/Cloud/Exception.php', '4.2', 0),
('44b59f486c910049b1b5a29dcec588e3', './lib/core/lib/Zend/Tag/Exception.php', '4.2', 0),
('6d52137930dc2af6e5ead2aee6df8b65', './lib/core/lib/Zend/Tag/Item.php', '4.2', 0),
('b4af9a233e26dbef96aff83b849dade8', './lib/core/lib/Zend/Tag/ItemList.php', '4.2', 0),
('dc57a43d0a2c12de1c99b694a2810b3b', './lib/core/lib/Zend/Tag/Taggable.php', '4.2', 0),
('3707053bd56a10520ecdb0fbb030ba1a', './lib/core/lib/Zend/Test/DbAdapter.php', '4.2', 0),
('71e4020adec3966599b343ccc7911fc7', './lib/core/lib/Zend/Test/DbStatement.php', '4.2', 0),
('bfe4ef7b5d8a5c2a5d27408becb8c717', './lib/core/lib/Zend/Test/PHPUnit/Constraint/DomQuery.php', '4.2', 0),
('1eb8cda05cfa9985e4465bf2e0377be8', './lib/core/lib/Zend/Test/PHPUnit/Constraint/Exception.php', '4.2', 0),
('3459d08b03303bb6d9d163893185f177', './lib/core/lib/Zend/Test/PHPUnit/Constraint/Redirect.php', '4.2', 0),
('7245b4fad47d54038685967cc619368a', './lib/core/lib/Zend/Test/PHPUnit/Constraint/ResponseHeader.php', '4.2', 0),
('e07bc722196dbe9b2c7b6c9855e485d2', './lib/core/lib/Zend/Test/PHPUnit/ControllerTestCase.php', '4.2', 0),
('188b365f8d7486a3d90f87ea73e342a9', './lib/core/lib/Zend/Test/PHPUnit/DatabaseTestCase.php', '4.2', 0),
('e25b58096419e2eb7ccebcdc516e607a', './lib/core/lib/Zend/Test/PHPUnit/Db/Connection.php', '4.2', 0),
('3f517c566a3e4420f6c5f6d2d8380660', './lib/core/lib/Zend/Test/PHPUnit/Db/DataSet/DbRowset.php', '4.2', 0),
('47aa035391a494e71dfea62b93f24cc3', './lib/core/lib/Zend/Test/PHPUnit/Db/DataSet/DbTable.php', '4.2', 0),
('bc3e64437e074728275507d8506f5602', './lib/core/lib/Zend/Test/PHPUnit/Db/DataSet/DbTableDataSet.php', '4.2', 0),
('9fcbce267ec9579eaaa3c757087a9742', './lib/core/lib/Zend/Test/PHPUnit/Db/DataSet/QueryDataSet.php', '4.2', 0),
('9205ab89c8c8068b37a513aedb8b4821', './lib/core/lib/Zend/Test/PHPUnit/Db/DataSet/QueryTable.php', '4.2', 0),
('f9ad72b00c622fd2b15558e59bd0a27a', './lib/core/lib/Zend/Test/PHPUnit/Db/Exception.php', '4.2', 0),
('d1152652289bf52f2732e86afe09d259', './lib/core/lib/Zend/Test/PHPUnit/Db/Metadata/Generic.php', '4.2', 0),
('6fc09ae1ec4c6e16dd43486285244f09', './lib/core/lib/Zend/Test/PHPUnit/Db/Operation/DeleteAll.php', '4.2', 0),
('d9aa038465a65ba8046d59876bbf98d4', './lib/core/lib/Zend/Test/PHPUnit/Db/Operation/Insert.php', '4.2', 0),
('d6fe88af37a803c0856869fba7828082', './lib/core/lib/Zend/Test/PHPUnit/Db/Operation/Truncate.php', '4.2', 0),
('f8037cb8b26065b62171617e4aa73e4b', './lib/core/lib/Zend/Test/PHPUnit/Db/SimpleTester.php', '4.2', 0),
('0cb3b9244576f5d512cbbbc0918a92a5', './lib/core/lib/Zend/Text/Exception.php', '4.2', 0),
('5de0465c643ee737c20f23978f484c02', './lib/core/lib/Zend/Text/Figlet.php', '4.2', 0),
('e56af81fc1b217494f5a1db6a054b688', './lib/core/lib/Zend/Text/Figlet/Exception.php', '4.2', 0),
('877dfa5992fb9ff62c89453653ec7dd0', './lib/core/lib/Zend/Text/MultiByte.php', '4.2', 0),
('fe703c4a628730bcc00a81803404653e', './lib/core/lib/Zend/Text/Table.php', '4.2', 0),
('c4d78ea360056fa19907f06810148fea', './lib/core/lib/Zend/Text/Table/Column.php', '4.2', 0),
('1e7c97192440fb87d34b0e830098df8c', './lib/core/lib/Zend/Text/Table/Decorator/Ascii.php', '4.2', 0),
('7a07fbfbc6ef3238a1ccb496e4a843a4', './lib/core/lib/Zend/Text/Table/Decorator/Interface.php', '4.2', 0),
('f48fc644d05333512215afcdb86bf77c', './lib/core/lib/Zend/Text/Table/Decorator/Unicode.php', '4.2', 0),
('13b08f4564bdecd2143e8c3119b2788e', './lib/core/lib/Zend/Text/Table/Exception.php', '4.2', 0),
('88e6a24feaa74836362932ba4057224f', './lib/core/lib/Zend/Text/Table/Row.php', '4.2', 0),
('e81b1aba3a81556b6a2e2b8898b71218', './lib/core/lib/Zend/TimeSync.php', '4.2', 0),
('ed9aaa2ca0e7423d85639bddabac3d56', './lib/core/lib/Zend/TimeSync/Exception.php', '4.2', 0),
('1c3f368951354d7209d7acb10032c78b', './lib/core/lib/Zend/TimeSync/Ntp.php', '4.2', 0),
('6f069441b372ccdb1db03fccb95ff0b5', './lib/core/lib/Zend/TimeSync/Protocol.php', '4.2', 0),
('97d6725894f8b6d91c5bc2dc023ef27b', './lib/core/lib/Zend/TimeSync/Sntp.php', '4.2', 0),
('fce799c409ab230eac7647ad8dd20557', './lib/core/lib/Zend/Tool/Framework/Action/Base.php', '4.2', 0),
('b164b10cf4b78a3ec02496888d69436d', './lib/core/lib/Zend/Tool/Framework/Action/Exception.php', '4.2', 0),
('b92d5e06af83ef598ec9196ba2fc05a1', './lib/core/lib/Zend/Tool/Framework/Action/Interface.php', '4.2', 0),
('10b876cb2768116e2aac842f841f95ee', './lib/core/lib/Zend/Tool/Framework/Action/Repository.php', '4.2', 0),
('13b3901b2d3c99b42f10a886d3543bba', './lib/core/lib/Zend/Tool/Framework/Client/Abstract.php', '4.2', 0),
('e00d2955f8fcdf83389b9753aeb31097', './lib/core/lib/Zend/Tool/Framework/Client/Config.php', '4.2', 0),
('6a72b1423e9d0787aa682bbcbe864905', './lib/core/lib/Zend/Tool/Framework/Client/Console.php', '4.2', 0),
('3e97f09769ac83b5b121e304757c9191', './lib/core/lib/Zend/Tool/Framework/Client/Console/ArgumentParser.php', '4.2', 0),
('40bb99f18aa2572e808ee1f42584be64', './lib/core/lib/Zend/Tool/Framework/Client/Console/HelpSystem.php', '4.2', 0),
('37b8d93367dcd995ec9f019edee01fad', './lib/core/lib/Zend/Tool/Framework/Client/Console/Manifest.php', '4.2', 0),
('36dc921a51d10f6b5dfecacaed3ec81f', './lib/core/lib/Zend/Tool/Framework/Client/Console/ResponseDecorator/Colorizer.php', '4.2', 0),
('c15387c5c6730097dc1f7fd94364935d', './lib/core/lib/Zend/Tool/Framework/Client/Exception.php', '4.2', 0),
('72e290c567f76d62ccc540f55e8ba85d', './lib/core/lib/Zend/Tool/Framework/Client/Interactive/InputHandler.php', '4.2', 0),
('e89ddb790ce46cfd0548ca4c9b96edd7', './lib/core/lib/Zend/Tool/Framework/Client/Interactive/InputInterface.php', '4.2', 0),
('bdd1819e873b3920225dfe2b653557d6', './lib/core/lib/Zend/Tool/Framework/Client/Interactive/InputRequest.php', '4.2', 0),
('835306529f3cac3b0c076bb7fef0cfc9', './lib/core/lib/Zend/Tool/Framework/Client/Interactive/InputResponse.php', '4.2', 0),
('7308eb771b8ab37ad8341f0204def9fb', './lib/core/lib/Zend/Tool/Framework/Client/Interactive/OutputInterface.php', '4.2', 0),
('ec8e082a8a897e436b57f2ef67166834', './lib/core/lib/Zend/Tool/Framework/Client/Request.php', '4.2', 0),
('b5ca12bda5c17994477c41475a884952', './lib/core/lib/Zend/Tool/Framework/Client/Response.php', '4.2', 0),
('a415d3e953eb5c831cb3301a7aeb254a', './lib/core/lib/Zend/Tool/Framework/Client/Response/ContentDecorator/Interface.php', '4.2', 0),
('edcddacfb7fcb4414643ebc830e9d1cf', './lib/core/lib/Zend/Tool/Framework/Client/Response/ContentDecorator/Separator.php', '4.2', 0),
('bc15ce537640fc6202fb23a17fe94cc7', './lib/core/lib/Zend/Tool/Framework/Client/Storage.php', '4.2', 0),
('cce22fdd13492f46e1fff2d10fb4bda2', './lib/core/lib/Zend/Tool/Framework/Client/Storage/AdapterInterface.php', '4.2', 0),
('48aee182b16a7eada83a37dc4efd393e', './lib/core/lib/Zend/Tool/Framework/Client/Storage/Directory.php', '4.2', 0),
('c894c11a8a62c3425bd72132ae922343', './lib/core/lib/Zend/Tool/Framework/Exception.php', '4.2', 0),
('740ed000df98eb4f2a54a289f17755b9', './lib/core/lib/Zend/Tool/Framework/Loader/Abstract.php', '4.2', 0),
('a00c13b3fa32e233fb26ce03002434ab', './lib/core/lib/Zend/Tool/Framework/Loader/IncludePathLoader.php', '4.2', 0),
('532790442925b92a1d932f36866a6790', './lib/core/lib/Zend/Tool/Framework/Loader/IncludePathLoader/RecursiveFilterIterator.php', '4.2', 0),
('566dec7b6ad92c2cabec89a41e6f541e', './lib/core/lib/Zend/Tool/Framework/Manifest/ActionManifestable.php', '4.2', 0),
('b3766af33550e94b75e21ac7e4ba87c0', './lib/core/lib/Zend/Tool/Framework/Manifest/Exception.php', '4.2', 0),
('816909132279147530accbb84aec16ac', './lib/core/lib/Zend/Tool/Framework/Manifest/Indexable.php', '4.2', 0),
('f52a91dd182dfb8d7e3bf8f56f19aaad', './lib/core/lib/Zend/Tool/Framework/Manifest/Interface.php', '4.2', 0),
('c0fc7b407ead828784d1c18f1a494e6e', './lib/core/lib/Zend/Tool/Framework/Manifest/MetadataManifestable.php', '4.2', 0),
('a94c8aebb842d9cf26a338024feca9fd', './lib/core/lib/Zend/Tool/Framework/Manifest/ProviderManifestable.php', '4.2', 0),
('77e04a634097b3011488b4dfdb9b2dd5', './lib/core/lib/Zend/Tool/Framework/Manifest/Repository.php', '4.2', 0),
('c302a7319cd02c553086288b417f1fee', './lib/core/lib/Zend/Tool/Framework/Metadata/Basic.php', '4.2', 0),
('49f05cc8ed6b944afcdc1890b0575e3f', './lib/core/lib/Zend/Tool/Framework/Metadata/Dynamic.php', '4.2', 0),
('fd61b795e79f4a2a479a41c7310a8b3a', './lib/core/lib/Zend/Tool/Framework/Metadata/Interface.php', '4.2', 0),
('37c90b12aaf275089e120764c360ab30', './lib/core/lib/Zend/Tool/Framework/Metadata/Tool.php', '4.2', 0),
('429ff9f5c0622caf8f7ea425d5af118d', './lib/core/lib/Zend/Tool/Framework/Provider/Abstract.php', '4.2', 0),
('0106428657781b2fd2c60690d44cbf16', './lib/core/lib/Zend/Tool/Framework/Provider/DocblockManifestable.php', '4.2', 0),
('d1d92846e1592a873e76096caa7f2085', './lib/core/lib/Zend/Tool/Framework/Provider/Exception.php', '4.2', 0),
('83f3ec5e11fa76d3c35da59b6db13885', './lib/core/lib/Zend/Tool/Framework/Provider/Interactable.php', '4.2', 0),
('a20532cb0a22e3cef9972e8abe85e0ff', './lib/core/lib/Zend/Tool/Framework/Provider/Interface.php', '4.2', 0),
('ab6fa82a9b904145fbcbfb78e45e06a2', './lib/core/lib/Zend/Tool/Framework/Provider/Pretendable.php', '4.2', 0),
('f17671e91862cc3ffd010dde7f789b75', './lib/core/lib/Zend/Tool/Framework/Provider/Repository.php', '4.2', 0),
('9a27b7810f9e8e33d6fc57454671c594', './lib/core/lib/Zend/Tool/Framework/Provider/Signature.php', '4.2', 0),
('cdf53c69b62abaf6e341686b553e4eba', './lib/core/lib/Zend/Tool/Framework/Registry.php', '4.2', 0),
('99adaa22db267d6e6bf09928bddb46ac', './lib/core/lib/Zend/Tool/Framework/Registry/EnabledInterface.php', '4.2', 0),
('6bc5d2b3d8681e39730cadc3f4b43183', './lib/core/lib/Zend/Tool/Framework/Registry/Exception.php', '4.2', 0),
('73e85ddd1c9c6e47478312142bca11aa', './lib/core/lib/Zend/Tool/Framework/Registry/Interface.php', '4.2', 0),
('6e64606d06b8189111a07fa7f21c4c92', './lib/core/lib/Zend/Tool/Framework/System/Action/Create.php', '4.2', 0),
('137f9965b509a3e4f4b6a6ded0ed07e7', './lib/core/lib/Zend/Tool/Framework/System/Action/Delete.php', '4.2', 0),
('09c762568f987589697a792a0306fff4', './lib/core/lib/Zend/Tool/Framework/System/Manifest.php', '4.2', 0),
('dbc4e18129373def592f9b55cea24886', './lib/core/lib/Zend/Tool/Framework/System/Provider/Manifest.php', '4.2', 0),
('1a0a42d299a1d39c8725f6c44e291e68', './lib/core/lib/Zend/Tool/Framework/System/Provider/Phpinfo.php', '4.2', 0),
('c9fc841768ef2f227df07f04908c3a66', './lib/core/lib/Zend/Tool/Framework/System/Provider/Version.php', '4.2', 0),
('44ae6e90cf9d83baa4cbd7a3450d68b6', './lib/core/lib/Zend/Tool/Project/Context/Content/Engine.php', '4.2', 0),
('7bcedd7d938870c1ec323692791e323e', './lib/core/lib/Zend/Tool/Project/Context/Content/Engine/CodeGenerator.php', '4.2', 0),
('30a96b1536c4124efbf70dec40454298', './lib/core/lib/Zend/Tool/Project/Context/Content/Engine/Phtml.php', '4.2', 0),
('b94c1275acf1332338aa1f94cafa9952', './lib/core/lib/Zend/Tool/Project/Context/Exception.php', '4.2', 0),
('ee9033b104eb5282e0743b64ab096c06', './lib/core/lib/Zend/Tool/Project/Context/Filesystem/Abstract.php', '4.2', 0),
('fad265d825a93e1535ea106675338072', './lib/core/lib/Zend/Tool/Project/Context/Filesystem/Directory.php', '4.2', 0),
('ec2d3b24f257cdea21e6d3c7b8cbf021', './lib/core/lib/Zend/Tool/Project/Context/Filesystem/File.php', '4.2', 0),
('964c63850de0062f14a243b762c9b0e4', './lib/core/lib/Zend/Tool/Project/Context/Interface.php', '4.2', 0),
('9c59763afdac6b92835300bbadc493f9', './lib/core/lib/Zend/Tool/Project/Context/Repository.php', '4.2', 0),
('50d26e41bc7bc5f75eaf1e6d24eadc2f', './lib/core/lib/Zend/Tool/Project/Context/System/Interface.php', '4.2', 0),
('87f2a60bf325a480327c2ea5e2e5062e', './lib/core/lib/Zend/Tool/Project/Context/System/NotOverwritable.php', '4.2', 0),
('8451c4485073b4cb01cc3fc724b5f9c0', './lib/core/lib/Zend/Tool/Project/Context/System/ProjectDirectory.php', '4.2', 0),
('4b19e09e17a2b493d50ef3f756c49e3c', './lib/core/lib/Zend/Tool/Project/Context/System/ProjectProfileFile.php', '4.2', 0),
('6d0c53b9ef810046e02c3fcefad92ee8', './lib/core/lib/Zend/Tool/Project/Context/System/ProjectProvidersDirectory.php', '4.2', 0),
('4091bd0eaaf17ad28bb2abee6061b39e', './lib/core/lib/Zend/Tool/Project/Context/System/TopLevelRestrictable.php', '4.2', 0),
('1fa73d49849fcf266447bd35a3dac837', './lib/core/lib/Zend/Tool/Project/Context/Zf/ActionMethod.php', '4.2', 0),
('da6ff8921f219477de3332c0c827a14d', './lib/core/lib/Zend/Tool/Project/Context/Zf/ApisDirectory.php', '4.2', 0),
('8df15bf6967badb043c437f2fec2490f', './lib/core/lib/Zend/Tool/Project/Context/Zf/ApplicationConfigFile.php', '4.2', 0),
('1d21ec40e36e983b90e276166577598c', './lib/core/lib/Zend/Tool/Project/Context/Zf/ApplicationDirectory.php', '4.2', 0),
('a0697beb630721431e32f324728b08e4', './lib/core/lib/Zend/Tool/Project/Context/Zf/BootstrapFile.php', '4.2', 0),
('556975265ea4d1186ae95ed0eb761712', './lib/core/lib/Zend/Tool/Project/Context/Zf/CacheDirectory.php', '4.2', 0),
('48c140e96d473918944deab5e2cae221', './lib/core/lib/Zend/Tool/Project/Context/Zf/ConfigFile.php', '4.2', 0),
('c230fc07e102d123b8bc5cd7f970a373', './lib/core/lib/Zend/Tool/Project/Context/Zf/ConfigsDirectory.php', '4.2', 0),
('ff279f8157169017be9bfee2c4876ab8', './lib/core/lib/Zend/Tool/Project/Context/Zf/ControllerFile.php', '4.2', 0),
('ac1293dfce9b6e9e9bd0a52db37000bc', './lib/core/lib/Zend/Tool/Project/Context/Zf/ControllersDirectory.php', '4.2', 0),
('957b490df906e148c6398cccd9d4977d', './lib/core/lib/Zend/Tool/Project/Context/Zf/DataDirectory.php', '4.2', 0),
('dec028acb26d26c8ddf477395b2e52df', './lib/core/lib/Zend/Tool/Project/Context/Zf/DbTableDirectory.php', '4.2', 0),
('b3426be16ebab329b608f155465ea6d5', './lib/core/lib/Zend/Tool/Project/Context/Zf/DbTableFile.php', '4.2', 0),
('788347b2825115adf96338ecbabe4829', './lib/core/lib/Zend/Tool/Project/Context/Zf/FormFile.php', '4.2', 0),
('9c53b9770328ae348c9ae54e35d98728', './lib/core/lib/Zend/Tool/Project/Context/Zf/FormsDirectory.php', '4.2', 0),
('ff2459bf9ffcc702497282f2bbf76e0f', './lib/core/lib/Zend/Tool/Project/Context/Zf/HtaccessFile.php', '4.2', 0),
('7f158699a70e3230634163c58207f7e8', './lib/core/lib/Zend/Tool/Project/Context/Zf/LayoutsDirectory.php', '4.2', 0),
('4585489a3b946c8ff6c9b49ea6ac063a', './lib/core/lib/Zend/Tool/Project/Context/Zf/LibraryDirectory.php', '4.2', 0),
('fe9f8cedc07c966e6901bd996a232904', './lib/core/lib/Zend/Tool/Project/Context/Zf/LocalesDirectory.php', '4.2', 0),
('c882aeae1c38fd11dd4ef93f204cb745', './lib/core/lib/Zend/Tool/Project/Context/Zf/LogsDirectory.php', '4.2', 0),
('eee95e550a58671986e21e0935637ac0', './lib/core/lib/Zend/Tool/Project/Context/Zf/ModelFile.php', '4.2', 0),
('084859efd575700f856ed15b307c7e64', './lib/core/lib/Zend/Tool/Project/Context/Zf/ModelsDirectory.php', '4.2', 0),
('eed9588a34736676ab3823687f3c99d4', './lib/core/lib/Zend/Tool/Project/Context/Zf/ModuleDirectory.php', '4.2', 0),
('62e45f6274ce7b7013416713e16afa82', './lib/core/lib/Zend/Tool/Project/Context/Zf/ModulesDirectory.php', '4.2', 0),
('f1441c8917368246f2641bf00beb3584', './lib/core/lib/Zend/Tool/Project/Context/Zf/ProjectProviderFile.php', '4.2', 0),
('bed14448a0bc5f565f7ac5f8a1d21852', './lib/core/lib/Zend/Tool/Project/Context/Zf/PublicDirectory.php', '4.2', 0),
('cc3bec15b1b283083544dc15bd556d11', './lib/core/lib/Zend/Tool/Project/Context/Zf/PublicImagesDirectory.php', '4.2', 0),
('f60594046b594d5588ea571a272259d2', './lib/core/lib/Zend/Tool/Project/Context/Zf/PublicIndexFile.php', '4.2', 0),
('fa534ba54bff196a7376bf90add102c9', './lib/core/lib/Zend/Tool/Project/Context/Zf/PublicScriptsDirectory.php', '4.2', 0),
('9287aab35ca2899fe620b99e1fdcc021', './lib/core/lib/Zend/Tool/Project/Context/Zf/PublicStylesheetsDirectory.php', '4.2', 0),
('a7ce5a1c571a507b322f5a08cd1b1314', './lib/core/lib/Zend/Tool/Project/Context/Zf/SearchIndexesDirectory.php', '4.2', 0),
('ec959f39c534c8d536c333130c25dd20', './lib/core/lib/Zend/Tool/Project/Context/Zf/SessionsDirectory.php', '4.2', 0),
('3b31b2a3485237ceb472ae281da630c5', './lib/core/lib/Zend/Tool/Project/Context/Zf/TemporaryDirectory.php', '4.2', 0),
('d7e6a76a7ae1512064231bfe284bf35a', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestApplicationBootstrapFile.php', '4.2', 0),
('522198fee689dc3ba435664c75038e1e', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestApplicationControllerDirectory.php', '4.2', 0),
('283989fb094481ed8c316872c40971e6', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestApplicationControllerFile.php', '4.2', 0),
('b1d4446b15af6d481eab0f0c8ded25cd', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestApplicationDirectory.php', '4.2', 0),
('40783fafc2551a2cdc01aaf81c25db6e', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestLibraryBootstrapFile.php', '4.2', 0),
('e9c7612cdf06462e0eab6fecffeed8f2', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestLibraryDirectory.php', '4.2', 0),
('e5fac83859f3b91524fb990a2ccbd639', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestLibraryFile.php', '4.2', 0),
('c876d147f1eb272b3e2260edab75f710', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestLibraryNamespaceDirectory.php', '4.2', 0),
('5ee7e2536d67edd78413cfba1facfbcf', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestPHPUnitConfigFile.php', '4.2', 0),
('11ed3bccb78754229840dbad7603cc71', './lib/core/lib/Zend/Tool/Project/Context/Zf/TestsDirectory.php', '4.2', 0),
('4168093276b453587bf7a96d7237ba98', './lib/core/lib/Zend/Tool/Project/Context/Zf/UploadsDirectory.php', '4.2', 0),
('2a7e209624becfcb691bed5e58284e2e', './lib/core/lib/Zend/Tool/Project/Context/Zf/ViewControllerScriptsDirectory.php', '4.2', 0),
('8d2a626886247eea611f9883af3c65ee', './lib/core/lib/Zend/Tool/Project/Context/Zf/ViewFiltersDirectory.php', '4.2', 0),
('2b29899d49b43ec89eefebe968b7185a', './lib/core/lib/Zend/Tool/Project/Context/Zf/ViewHelpersDirectory.php', '4.2', 0),
('1d0495b00381fa091d6989aba5706f9c', './lib/core/lib/Zend/Tool/Project/Context/Zf/ViewScriptFile.php', '4.2', 0),
('fbed8340998b594df101b88902390974', './lib/core/lib/Zend/Tool/Project/Context/Zf/ViewScriptsDirectory.php', '4.2', 0),
('210e3b52b6665b2f8e66e9c700048453', './lib/core/lib/Zend/Tool/Project/Context/Zf/ViewsDirectory.php', '4.2', 0),
('f423b7415befd09c00a357e6101f8e6c', './lib/core/lib/Zend/Tool/Project/Context/Zf/ZfStandardLibraryDirectory.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('12bceecefb6ac2767a4dfd3fec761cb6', './lib/core/lib/Zend/Tool/Project/Exception.php', '4.2', 0),
('0d39f4b3220134a33d0ba8a0730f2a72', './lib/core/lib/Zend/Tool/Project/Profile.php', '4.2', 0),
('4f1231ca0b6a1ba1a543ecaa8a10c29f', './lib/core/lib/Zend/Tool/Project/Profile/Exception.php', '4.2', 0),
('5fc82994542fe59fbf0fe44425ac75ef', './lib/core/lib/Zend/Tool/Project/Profile/FileParser/Interface.php', '4.2', 0),
('1fc45e535b431d69bc1481384f372cb6', './lib/core/lib/Zend/Tool/Project/Profile/FileParser/Xml.php', '4.2', 0),
('3bc040c93c5d5886e530ed7eb667fe2a', './lib/core/lib/Zend/Tool/Project/Profile/Iterator/ContextFilter.php', '4.2', 0),
('a4d1843fca0418127c63f60c5915461e', './lib/core/lib/Zend/Tool/Project/Profile/Iterator/EnabledResourceFilter.php', '4.2', 0),
('aaa70091fdabb87afed9a495ef6829ce', './lib/core/lib/Zend/Tool/Project/Profile/Resource.php', '4.2', 0),
('121bd55b25463522c9910a27dee1cabb', './lib/core/lib/Zend/Tool/Project/Profile/Resource/Container.php', '4.2', 0),
('a4781884cf1f9e3752d07773f0d59e70', './lib/core/lib/Zend/Tool/Project/Profile/Resource/SearchConstraints.php', '4.2', 0),
('2d251e3ac0b479a3ad018f6a21d5f5bd', './lib/core/lib/Zend/Tool/Project/Provider/Abstract.php', '4.2', 0),
('1a66f0d4757dc246f7c39a02cf704729', './lib/core/lib/Zend/Tool/Project/Provider/Action.php', '4.2', 0),
('0d46b62ed01e928eeb03b181ecddb2a3', './lib/core/lib/Zend/Tool/Project/Provider/Controller.php', '4.2', 0),
('fcceb32c390ea9775e352c1e619882a9', './lib/core/lib/Zend/Tool/Project/Provider/Exception.php', '4.2', 0),
('76c97346192fe7b8da6874ada022b7f8', './lib/core/lib/Zend/Tool/Project/Provider/Form.php', '4.2', 0),
('d9055c709187cf1e82fea1f60663fc99', './lib/core/lib/Zend/Tool/Project/Provider/Manifest.php', '4.2', 0),
('e6c8c8bc7653f0ec6336948c51995f6d', './lib/core/lib/Zend/Tool/Project/Provider/Model.php', '4.2', 0),
('d62f0a122300d52ae36d95dd5b421215', './lib/core/lib/Zend/Tool/Project/Provider/Module.php', '4.2', 0),
('09e9b3fcc4167bd208049d3987d45454', './lib/core/lib/Zend/Tool/Project/Provider/Profile.php', '4.2', 0),
('99f91ba5049911fb3e9ab81fb431c860', './lib/core/lib/Zend/Tool/Project/Provider/Project.php', '4.2', 0),
('f0dbcf6407012533f299443b3fb15adc', './lib/core/lib/Zend/Tool/Project/Provider/ProjectProvider.php', '4.2', 0),
('39bd05f739ba8417295520de65b644a6', './lib/core/lib/Zend/Tool/Project/Provider/Test.php', '4.2', 0),
('ec973966afbe35adc3a1030089cf32ca', './lib/core/lib/Zend/Tool/Project/Provider/View.php', '4.2', 0),
('d046804b2688d779d5a924d7a7326d55', './lib/core/lib/Zend/Translate.php', '4.2', 0),
('b678abee56e80b3927b9e08e0ec34055', './lib/core/lib/Zend/Translate/Adapter.php', '4.2', 0),
('24ed29abc80c0b82663596af4c60c0ae', './lib/core/lib/Zend/Translate/Adapter/Array.php', '4.2', 0),
('419e81706a9e56e4a5061addcd349414', './lib/core/lib/Zend/Translate/Adapter/Csv.php', '4.2', 0),
('e2d9fb9795632dc0fcc7746ea6bcbde2', './lib/core/lib/Zend/Translate/Adapter/Gettext.php', '4.2', 0),
('cceed0554e29a467bb7b5475a832d736', './lib/core/lib/Zend/Translate/Adapter/Ini.php', '4.2', 0),
('ae0e1d64dfde8ece0f81d7cc8edc4910', './lib/core/lib/Zend/Translate/Adapter/Qt.php', '4.2', 0),
('7ec6032712756ad3dd940dbb9bd7ff95', './lib/core/lib/Zend/Translate/Adapter/Tbx.php', '4.2', 0),
('9fe4786e1d9bbc4cb09063a5da02c636', './lib/core/lib/Zend/Translate/Adapter/Tmx.php', '4.2', 0),
('90b5fbebe46a70f13211f1e366be7357', './lib/core/lib/Zend/Translate/Adapter/Xliff.php', '4.2', 0),
('ea6bd00b1b117584320eb0d0ac89ba24', './lib/core/lib/Zend/Translate/Adapter/XmlTm.php', '4.2', 0),
('bf3d101f7cd6b543d756ac5e8ab4f00f', './lib/core/lib/Zend/Translate/Exception.php', '4.2', 0),
('98bb807ad485a4a4ad24607633f5a0ed', './lib/core/lib/Zend/Translate/Plural.php', '4.2', 0),
('54b9cf6788dd8694f2c1b896a1af8ec7', './lib/core/lib/Zend/Uri.php', '4.2', 0),
('6fc183f853d59282278b0caef43f146d', './lib/core/lib/Zend/Uri/Exception.php', '4.2', 0),
('f0011256ed04525b3cada360b4e69fe5', './lib/core/lib/Zend/Uri/Http.php', '4.2', 0),
('c663ff9be3fb8d374a01e1cfce477eb9', './lib/core/lib/Zend/Validate.php', '4.2', 0),
('ce8e1259c3f43faea14a83f9c5e8533c', './lib/core/lib/Zend/Validate/Abstract.php', '4.2', 0),
('f23195f312862c73cb130dac77a40fb6', './lib/core/lib/Zend/Validate/Alnum.php', '4.2', 0),
('97ba3a15acd38b36c6b7d365122b9508', './lib/core/lib/Zend/Validate/Alpha.php', '4.2', 0),
('10ded2adce54e3764fb8361c0f731778', './lib/core/lib/Zend/Validate/Barcode.php', '4.2', 0),
('08ff9107f43607cc0e50d956768c3eea', './lib/core/lib/Zend/Validate/Barcode/Ean13.php', '4.2', 0),
('83176a6c345e70e128973c18cc70632e', './lib/core/lib/Zend/Validate/Barcode/UpcA.php', '4.2', 0),
('ce2513e2fc568af204ac094a3bf5fbcd', './lib/core/lib/Zend/Validate/Between.php', '4.2', 0),
('30f663994a839b55e0b2ee847ea5a885', './lib/core/lib/Zend/Validate/Ccnum.php', '4.2', 0),
('f43d21e3f4ae13d90af05f0cb2d79a81', './lib/core/lib/Zend/Validate/Date.php', '4.2', 0),
('7004cfb90010c8a98f035aaca2eaa4cc', './lib/core/lib/Zend/Validate/Db/Abstract.php', '4.2', 0),
('9c364c17878631f4a5de424ec20d3c34', './lib/core/lib/Zend/Validate/Db/NoRecordExists.php', '4.2', 0),
('51a76aaa293cb2225c20ad711469bb3d', './lib/core/lib/Zend/Validate/Db/RecordExists.php', '4.2', 0),
('19c66adf537c599f1384a323d0f41009', './lib/core/lib/Zend/Validate/Digits.php', '4.2', 0),
('b6ee5b10e3fb84bd82efdc34104213e7', './lib/core/lib/Zend/Validate/EmailAddress.php', '4.2', 0),
('bcd8d22aeaa7aa4a3dbe62b733569b79', './lib/core/lib/Zend/Validate/Exception.php', '4.2', 0),
('8c0dbd19852dce92f965e673c145cf78', './lib/core/lib/Zend/Validate/File/Count.php', '4.2', 0),
('4852965ef49db6568db9fcce88d9886a', './lib/core/lib/Zend/Validate/File/Crc32.php', '4.2', 0),
('a6aa414c788ed3f415e592cab026cf41', './lib/core/lib/Zend/Validate/File/ExcludeExtension.php', '4.2', 0),
('3daeaf7972bfeae85c867fca7cb50d9b', './lib/core/lib/Zend/Validate/File/ExcludeMimeType.php', '4.2', 0),
('d12909b14276918609a8e8f3d20a0f1d', './lib/core/lib/Zend/Validate/File/Exists.php', '4.2', 0),
('66a1ca592f3766848b532bf79f25263c', './lib/core/lib/Zend/Validate/File/Extension.php', '4.2', 0),
('b787d22d9d8462db7ddf3ca019d9ca80', './lib/core/lib/Zend/Validate/File/FilesSize.php', '4.2', 0),
('d9ac3e23588454bc6915c67cd9bd7c89', './lib/core/lib/Zend/Validate/File/Hash.php', '4.2', 0),
('6b9f7df61f51e1e93102031516326536', './lib/core/lib/Zend/Validate/File/ImageSize.php', '4.2', 0),
('358898f3e9842eeb18cb50dd2bc7b9e7', './lib/core/lib/Zend/Validate/File/IsCompressed.php', '4.2', 0),
('33d99accd705e6f37f39b5246019369e', './lib/core/lib/Zend/Validate/File/IsImage.php', '4.2', 0),
('d8b6332d130cbb4ee5b99e4673f73378', './lib/core/lib/Zend/Validate/File/Md5.php', '4.2', 0),
('c63c52217774bb0021dfa674560703e7', './lib/core/lib/Zend/Validate/File/MimeType.php', '4.2', 0),
('2551b17f8912648bcfa9c92943b7bcc3', './lib/core/lib/Zend/Validate/File/NotExists.php', '4.2', 0),
('91c7e2e7146b6f5b8a0b8fccbea0cdcd', './lib/core/lib/Zend/Validate/File/Sha1.php', '4.2', 0),
('87705266cce4fd929ea45591e79c0fcd', './lib/core/lib/Zend/Validate/File/Size.php', '4.2', 0),
('08d4ad6d01e6ae870ef374d20efc347a', './lib/core/lib/Zend/Validate/File/Upload.php', '4.2', 0),
('2681ade688ff8a755757bdb3de70bdb8', './lib/core/lib/Zend/Validate/File/WordCount.php', '4.2', 0),
('77f1d4605308b4829e81b320d0ea5b0c', './lib/core/lib/Zend/Validate/Float.php', '4.2', 0),
('5126195a50cc03b90bb4c67e68761977', './lib/core/lib/Zend/Validate/GreaterThan.php', '4.2', 0),
('7387451cdfc97e49448e68fd3fba69fa', './lib/core/lib/Zend/Validate/Hex.php', '4.2', 0),
('957c878f2630d302c479caaf694e5d86', './lib/core/lib/Zend/Validate/Hostname.php', '4.2', 0),
('52ade07540b4862e28f3b14f9c8ef3be', './lib/core/lib/Zend/Validate/Hostname/Biz.php', '4.2', 0),
('2c769de08c4e0571cc22abfec3a524b7', './lib/core/lib/Zend/Validate/Hostname/Cn.php', '4.2', 0),
('63ab0de19d77f67011b96160323d31a7', './lib/core/lib/Zend/Validate/Hostname/Com.php', '4.2', 0),
('c1e8e02a9e31a68c8fdfb92fd97b521b', './lib/core/lib/Zend/Validate/Hostname/Jp.php', '4.2', 0),
('d22387231f5dba47a2c57207805f2a46', './lib/core/lib/Zend/Validate/Iban.php', '4.2', 0),
('23851b2732970f3484faea52bca41901', './lib/core/lib/Zend/Validate/Identical.php', '4.2', 0),
('ffcae5d0a7db67f33fc617f7a1b94ee6', './lib/core/lib/Zend/Validate/InArray.php', '4.2', 0),
('b0f4f878333336796b07359d2f7bd0d5', './lib/core/lib/Zend/Validate/Int.php', '4.2', 0),
('dc4fde8e0e89f0b33a6f6b06d3e9a8a8', './lib/core/lib/Zend/Validate/Interface.php', '4.2', 0),
('92175bd7489ea8da6446c4e7445a8b23', './lib/core/lib/Zend/Validate/Ip.php', '4.2', 0),
('9e59eb92bf410ae80901d4db5869dcfe', './lib/core/lib/Zend/Validate/LessThan.php', '4.2', 0),
('88c776ca020cb53c017c560dce5901f3', './lib/core/lib/Zend/Validate/NotEmpty.php', '4.2', 0),
('4f7c67e512b571f46f7bd4b3c837301a', './lib/core/lib/Zend/Validate/Regex.php', '4.2', 0),
('759750447a9a47a7568950f69f8600da', './lib/core/lib/Zend/Validate/Sitemap/Changefreq.php', '4.2', 0),
('e1bec69ec6a0b7396e1e08ec0a25c5d1', './lib/core/lib/Zend/Validate/Sitemap/Lastmod.php', '4.2', 0),
('3ec1551b28e4d788784e4c75b84d83f0', './lib/core/lib/Zend/Validate/Sitemap/Loc.php', '4.2', 0),
('8cf837111c2e8e3084ba7334c59cd681', './lib/core/lib/Zend/Validate/Sitemap/Priority.php', '4.2', 0),
('c5680b2e6dd39b1fb064c30cfd16b078', './lib/core/lib/Zend/Validate/StringLength.php', '4.2', 0),
('b4fd96c38c854a676e128946d3be060b', './lib/core/lib/Zend/Version.php', '4.2', 0),
('3d6dc1075d1d6dea5f4abbd18055aba1', './lib/core/lib/Zend/View.php', '4.2', 0),
('03ec0db43688d6156db5f1d6d7c0ffed', './lib/core/lib/Zend/View/Abstract.php', '4.2', 0),
('75192f4d46ca9ee3242647d5a8bc2067', './lib/core/lib/Zend/View/Exception.php', '4.2', 0),
('ca76adf8348d068d49b71265da1dffd1', './lib/core/lib/Zend/View/Helper/Abstract.php', '4.2', 0),
('f9ecfc662e37259cdfe8eea18bc77010', './lib/core/lib/Zend/View/Helper/Action.php', '4.2', 0),
('f0794d140c687ae7e1c1fa1ccbfe5a93', './lib/core/lib/Zend/View/Helper/BaseUrl.php', '4.2', 0),
('9d28add6dfc9010e01eccce4ec3f3182', './lib/core/lib/Zend/View/Helper/Cycle.php', '4.2', 0),
('4de5392345e7f2fd21e6bb7a6ed5d4bb', './lib/core/lib/Zend/View/Helper/DeclareVars.php', '4.2', 0),
('978c3e8d6a6e4f5431c9e481d0369509', './lib/core/lib/Zend/View/Helper/Doctype.php', '4.2', 0),
('db18e45ab15fdaa220649c3c0aa7da63', './lib/core/lib/Zend/View/Helper/Fieldset.php', '4.2', 0),
('6273be1963eb48393bd4bd8a987c5ddf', './lib/core/lib/Zend/View/Helper/Form.php', '4.2', 0),
('a9c471056543800958baed87421c4cda', './lib/core/lib/Zend/View/Helper/FormButton.php', '4.2', 0),
('a3911285ed9d664f3f74856e28caff79', './lib/core/lib/Zend/View/Helper/FormCheckbox.php', '4.2', 0),
('06f8eae56cc386d09b5df8ad4ffc971f', './lib/core/lib/Zend/View/Helper/FormElement.php', '4.2', 0),
('622402de5257d1e9afad7562a4c29c4f', './lib/core/lib/Zend/View/Helper/FormErrors.php', '4.2', 0),
('e9fdbdbea26daba2fa35f4066cdeb6c9', './lib/core/lib/Zend/View/Helper/FormFile.php', '4.2', 0),
('6ba7dcf2219faa7b99b4757b6926f915', './lib/core/lib/Zend/View/Helper/FormHidden.php', '4.2', 0),
('5cc9ecaf3140ea8e7278d06805c393f8', './lib/core/lib/Zend/View/Helper/FormImage.php', '4.2', 0),
('a1d4acaa71b335ac4f74433d65020598', './lib/core/lib/Zend/View/Helper/FormLabel.php', '4.2', 0),
('bfdc634b646037d334ac7633d1a5065e', './lib/core/lib/Zend/View/Helper/FormMultiCheckbox.php', '4.2', 0),
('bc4e903c0eb6fb511c4a7b9394ff1e5e', './lib/core/lib/Zend/View/Helper/FormNote.php', '4.2', 0),
('cfc6d1d176d82917604aee2307436648', './lib/core/lib/Zend/View/Helper/FormPassword.php', '4.2', 0),
('1fccf85806dd21b5d840d3802a29dd79', './lib/core/lib/Zend/View/Helper/FormRadio.php', '4.2', 0),
('484536d7b31fc0cbe08b20ae4ba1149a', './lib/core/lib/Zend/View/Helper/FormReset.php', '4.2', 0),
('3203c1823b3e4f1e26556a423fa6a69f', './lib/core/lib/Zend/View/Helper/FormSelect.php', '4.2', 0),
('1c2c49f7c449e22248ba373352a359a8', './lib/core/lib/Zend/View/Helper/FormSubmit.php', '4.2', 0),
('d2aacd876fe13204e679bcb793d99c33', './lib/core/lib/Zend/View/Helper/FormText.php', '4.2', 0),
('8bc8f48fd1240b98b9316c4479d851a9', './lib/core/lib/Zend/View/Helper/FormTextarea.php', '4.2', 0),
('2c1b966c9bf06f7604f9e2b00d2f927b', './lib/core/lib/Zend/View/Helper/HeadLink.php', '4.2', 0),
('c5496f636f2d97631b40f2de1197d660', './lib/core/lib/Zend/View/Helper/HeadMeta.php', '4.2', 0),
('c547a09dc55a83516ef8ed79ccbe2715', './lib/core/lib/Zend/View/Helper/HeadScript.php', '4.2', 0),
('0fa1a24c653e298a9af47cf3e06500df', './lib/core/lib/Zend/View/Helper/HeadStyle.php', '4.2', 0),
('5e814f7696123a26857406543b29c742', './lib/core/lib/Zend/View/Helper/HeadTitle.php', '4.2', 0),
('a078b243cc7f83a25f9a15a63c75b9a1', './lib/core/lib/Zend/View/Helper/HtmlElement.php', '4.2', 0),
('ed3022164e3bc57b92d1828afb078b8f', './lib/core/lib/Zend/View/Helper/HtmlFlash.php', '4.2', 0),
('cb0d30e47a36ea5f1c0a52c1cfe765e0', './lib/core/lib/Zend/View/Helper/HtmlList.php', '4.2', 0),
('2db4d55b16cfb3622da7d60001661638', './lib/core/lib/Zend/View/Helper/HtmlObject.php', '4.2', 0),
('9885b33b8c3987befca09b21940e0253', './lib/core/lib/Zend/View/Helper/HtmlPage.php', '4.2', 0),
('8afdc24796eef890f748aa0f475755fa', './lib/core/lib/Zend/View/Helper/HtmlQuicktime.php', '4.2', 0),
('5ba165e66add9f7e66b7eeed0900a659', './lib/core/lib/Zend/View/Helper/InlineScript.php', '4.2', 0),
('6825295e7a38f6138b4c23c915326742', './lib/core/lib/Zend/View/Helper/Interface.php', '4.2', 0),
('ce215e3a9123b234de3b3d608d6ef194', './lib/core/lib/Zend/View/Helper/Json.php', '4.2', 0),
('15808b06b86781c238965960807aaab3', './lib/core/lib/Zend/View/Helper/Layout.php', '4.2', 0),
('9e3f4691eac118cccd3e4eb2dc520516', './lib/core/lib/Zend/View/Helper/Navigation.php', '4.2', 0),
('82964edf0c0117dc62d1461db08bc898', './lib/core/lib/Zend/View/Helper/Navigation/Breadcrumbs.php', '4.2', 0),
('469810b1b430cb0eb35a66f77b41d07c', './lib/core/lib/Zend/View/Helper/Navigation/Helper.php', '4.2', 0),
('b92aa66d2ecf80b2020b4a5b4e430809', './lib/core/lib/Zend/View/Helper/Navigation/HelperAbstract.php', '4.2', 0),
('55e7a6b239688d227df9ba7f54c60f6e', './lib/core/lib/Zend/View/Helper/Navigation/Links.php', '4.2', 0),
('a67a05a25f1e0e98f23fc7763d065e91', './lib/core/lib/Zend/View/Helper/Navigation/Menu.php', '4.2', 0),
('4dffc3dbba1ffd1a5ea07ced45c77dd6', './lib/core/lib/Zend/View/Helper/Navigation/Sitemap.php', '4.2', 0),
('09693ca9dcf05341df89d9918a91a02c', './lib/core/lib/Zend/View/Helper/PaginationControl.php', '4.2', 0),
('19b99dd1101f4cbc0a16bf250eae3229', './lib/core/lib/Zend/View/Helper/Partial.php', '4.2', 0),
('a52d94f268e755e56df34f313ec0f24d', './lib/core/lib/Zend/View/Helper/Partial/Exception.php', '4.2', 0),
('7e41045ae6735786fd941d132a4b0a0f', './lib/core/lib/Zend/View/Helper/PartialLoop.php', '4.2', 0),
('8188f8dc97ebd5e2c1145bd850d588f0', './lib/core/lib/Zend/View/Helper/Placeholder.php', '4.2', 0),
('e06f6a32abbbb37965b9c55a3fe97995', './lib/core/lib/Zend/View/Helper/Placeholder/Container.php', '4.2', 0),
('55dc92d3f6b15b47c5e6e8df9195a08a', './lib/core/lib/Zend/View/Helper/Placeholder/Container/Abstract.php', '4.2', 0),
('9a9883f5b9173073e4386a4fa9bd7187', './lib/core/lib/Zend/View/Helper/Placeholder/Container/Exception.php', '4.2', 0),
('443190ee48252ec8a8d19d7b3ef4b93c', './lib/core/lib/Zend/View/Helper/Placeholder/Container/Standalone.php', '4.2', 0),
('7a9cea7b28ba755deb2429d9b25395f5', './lib/core/lib/Zend/View/Helper/Placeholder/Registry.php', '4.2', 0),
('d5fc00faca11c3dfebf12c2efcd240fd', './lib/core/lib/Zend/View/Helper/Placeholder/Registry/Exception.php', '4.2', 0),
('463fa2bd74ed173a181827939236cc48', './lib/core/lib/Zend/View/Helper/RenderToPlaceholder.php', '4.2', 0),
('fc9eead1f72553477b1a486eba1b9407', './lib/core/lib/Zend/View/Helper/ServerUrl.php', '4.2', 0),
('37d61c6527c8c9de44e368d7fba8f5bb', './lib/core/lib/Zend/View/Helper/Translate.php', '4.2', 0),
('ee5ac6b8a4e3bb02761ff1667cd308b5', './lib/core/lib/Zend/View/Helper/Url.php', '4.2', 0),
('4f3ad2ced4950ad56231173f52bd5b2d', './lib/core/lib/Zend/View/Interface.php', '4.2', 0),
('0549d045695dfcbea439a847617cbc65', './lib/core/lib/Zend/View/Stream.php', '4.2', 0),
('8d57610621ba3eca0df304d442b3b145', './lib/core/lib/Zend/Wildfire/Channel/HttpHeaders.php', '4.2', 0),
('3e72fe579f896886ae3a95a9f42d9ff0', './lib/core/lib/Zend/Wildfire/Channel/Interface.php', '4.2', 0),
('32a3f2a527a1cbfc3af3526e2632e313', './lib/core/lib/Zend/Wildfire/Exception.php', '4.2', 0),
('7673ee5f9d268968f7c5ffcf4c76ed79', './lib/core/lib/Zend/Wildfire/Plugin/FirePhp.php', '4.2', 0),
('7f67baa0f97395bbc54cb2b8023bc29e', './lib/core/lib/Zend/Wildfire/Plugin/FirePhp/Message.php', '4.2', 0),
('53467d6cd3634e738e65c8f893808aaf', './lib/core/lib/Zend/Wildfire/Plugin/FirePhp/TableMessage.php', '4.2', 0),
('5c5900ab5bd2527e55b706658d1a1d99', './lib/core/lib/Zend/Wildfire/Plugin/Interface.php', '4.2', 0),
('f1d7c83821141794337156ba2651df77', './lib/core/lib/Zend/Wildfire/Protocol/JsonStream.php', '4.2', 0),
('44f4a4780d099432736b7b142b08899d', './lib/core/lib/Zend/XmlRpc/Client.php', '4.2', 0),
('e921516c5b1d832033e0a4493d3b363a', './lib/core/lib/Zend/XmlRpc/Client/Exception.php', '4.2', 0),
('acdf26b9d26b6f9f0c864e9be4b21427', './lib/core/lib/Zend/XmlRpc/Client/FaultException.php', '4.2', 0),
('8275863f0cac008da0c0b2bdd33360ef', './lib/core/lib/Zend/XmlRpc/Client/HttpException.php', '4.2', 0),
('8a639a35c8f13d0247f8f98a07c5035b', './lib/core/lib/Zend/XmlRpc/Client/IntrospectException.php', '4.2', 0),
('688a6ef8dfa621d8904f2fca67603798', './lib/core/lib/Zend/XmlRpc/Client/ServerIntrospection.php', '4.2', 0),
('98daa15ad56bc0d4487ec549c2ec581c', './lib/core/lib/Zend/XmlRpc/Client/ServerProxy.php', '4.2', 0),
('e89d10591e793d66bb9f71683d1d2994', './lib/core/lib/Zend/XmlRpc/Exception.php', '4.2', 0),
('e747e240c8f4793f2fc771716f73eb03', './lib/core/lib/Zend/XmlRpc/Fault.php', '4.2', 0),
('400c78faccb1a610d5b16f8686a6c0ac', './lib/core/lib/Zend/XmlRpc/Request.php', '4.2', 0),
('d5b9b23a6867365d04c5893cb26bc564', './lib/core/lib/Zend/XmlRpc/Request/Http.php', '4.2', 0),
('8e4e3b852e6412b2aea360b5c1f7da1f', './lib/core/lib/Zend/XmlRpc/Request/Stdin.php', '4.2', 0),
('7fb69a86278d316aa1f7d9fa0960f57d', './lib/core/lib/Zend/XmlRpc/Response.php', '4.2', 0),
('2f3b47cb2da40a7d8b15473a3519fa89', './lib/core/lib/Zend/XmlRpc/Response/Http.php', '4.2', 0),
('f8dd411078d6fa479039cbb94463f99c', './lib/core/lib/Zend/XmlRpc/Server.php', '4.2', 0),
('9468c98c1c3d739b90f4153a5a108686', './lib/core/lib/Zend/XmlRpc/Server/Cache.php', '4.2', 0),
('0f641ddbd3df17766a07c0272c8a13d2', './lib/core/lib/Zend/XmlRpc/Server/Exception.php', '4.2', 0),
('4999f2ce725b8b2ea47e356cef205e38', './lib/core/lib/Zend/XmlRpc/Server/Fault.php', '4.2', 0),
('5f0cf72282d8275b3873ec975a0625e9', './lib/core/lib/Zend/XmlRpc/Server/System.php', '4.2', 0),
('3651b597fe92b5899d2a98e804785550', './lib/core/lib/Zend/XmlRpc/Value.php', '4.2', 0),
('d5d7df794ec15ba4392022320de142f4', './lib/core/lib/Zend/XmlRpc/Value/Array.php', '4.2', 0),
('6a87f602c551da8e7d1d1f681969c444', './lib/core/lib/Zend/XmlRpc/Value/Base64.php', '4.2', 0),
('bc7937e53ef05a001688f16fc2b16e54', './lib/core/lib/Zend/XmlRpc/Value/BigInteger.php', '4.2', 0),
('bfb1be35aaa618fb0c83ebefb12c1434', './lib/core/lib/Zend/XmlRpc/Value/Boolean.php', '4.2', 0),
('4648d013fc6ec2a592bdbe1183473a1b', './lib/core/lib/Zend/XmlRpc/Value/Collection.php', '4.2', 0),
('374fdca1c20e83f3c82e735d8186caf7', './lib/core/lib/Zend/XmlRpc/Value/DateTime.php', '4.2', 0),
('c1a7858f3bc0b5b7c63f8a7afaa8af6d', './lib/core/lib/Zend/XmlRpc/Value/Double.php', '4.2', 0),
('7fe0c7f085d201b3f9f4a844981d2428', './lib/core/lib/Zend/XmlRpc/Value/Exception.php', '4.2', 0),
('d386d70be5a9e52c817a7cdcf42f2d9b', './lib/core/lib/Zend/XmlRpc/Value/Integer.php', '4.2', 0),
('27bb2a429402caa03a92e61f9dc717b1', './lib/core/lib/Zend/XmlRpc/Value/Nil.php', '4.2', 0),
('193d7ac7920490b4982c2156bd6ff5a8', './lib/core/lib/Zend/XmlRpc/Value/Scalar.php', '4.2', 0),
('472503df32b9be6ed4ccad062ded54e4', './lib/core/lib/Zend/XmlRpc/Value/String.php', '4.2', 0),
('062fad9831163ce084a0e8e0e5b9c713', './lib/core/lib/Zend/XmlRpc/Value/Struct.php', '4.2', 0),
('da08b7933a45a900245d7e7f294df692', './lib/csslib.php', '4.2', 0),
('8e85a52f55803e6a70e32eb3b03743b5', './lib/db/tiki_registration_fields.php', '4.2', 0),
('504c21a171bf784fcee2115faf5dc7f2', './lib/dcs/dcslib.php', '4.2', 0),
('4e2e5f5685e9f569740f531217beefde', './lib/dcs/index.php', '4.2', 0),
('418d14e6d57883dfe1c4a687ad57f254', './lib/debug/debug-command_dmsg.php', '4.2', 0),
('452f553cfccd522f79c69d7269417a8a', './lib/debug/debug-command_features.php', '4.2', 0),
('86fb0d7528180cbbb32ff6eedcb2988b', './lib/debug/debug-command_perm.php', '4.2', 0),
('98559cd231461b59788b687d2ca5f242', './lib/debug/debug-command_print.php', '4.2', 0),
('73cf825edc41976b9248297e36c3a037', './lib/debug/debug-command_slist.php', '4.2', 0),
('19279db14a1b44814660decc40fa7f35', './lib/debug/debug-command_sprint.php', '4.2', 0),
('8e1ecde8bce21e8884fe9fdab4e2b2ad', './lib/debug/debug-command_sql.php', '4.2', 0),
('9741d8faecb4e4a37db3195c25e363b4', './lib/debug/debug-command_test.php', '4.2', 0),
('154254e3cb8472b4c126afdb12609b37', './lib/debug/debug-command_tikitables.php', '4.2', 0),
('f34afd8d5894aa887e1def1b66b65a50', './lib/debug/debug-command_watch.php', '4.2', 0),
('f0850ed377705e4f6bb942e1f0dfd0d6', './lib/debug/debugger-common.php', '4.2', 0),
('878e79e038afe46a0e761f6a4fc326ed', './lib/debug/debugger-ext.php', '4.2', 0),
('2ce9a6f7fb8321dc1e4e2fbb46f0e96b', './lib/debug/debugger.php', '4.2', 0),
('c3526297be5bf2de1aa2d9486d281cd3', './lib/debug/index.php', '4.2', 0),
('6a13f7ee6aa8f717477b93dd6ec369ac', './lib/diff.php', '4.2', 0),
('94c47c5d18080f1f31ee359ba851b502', './lib/diff/Diff.php', '4.2', 0),
('175bd9091efa2f789c7f9181f4a772e1', './lib/diff/Renderer.php', '4.2', 0),
('dc525da020c2a8624d6a4761d4e62a3a', './lib/diff/difflib.php', '4.2', 0),
('7f7e9158e944de98d6a66582c463aa88', './lib/diff/renderer_bytes.php', '4.2', 0),
('a24ba9011c73e0ab8b1542923504242b', './lib/diff/renderer_character.php', '4.2', 0),
('46b621bc011c77281daa6fa12188c87a', './lib/diff/renderer_character_inline.php', '4.2', 0),
('9be0d9f5f2eee413bdd28d5be6a80314', './lib/diff/renderer_htmldiff.php', '4.2', 0),
('349c43968ea9864a34e3bae75d82795f', './lib/diff/renderer_inline.php', '4.2', 0),
('f1963ea98cd58244e8d6329d00911075', './lib/diff/renderer_sidebyside.php', '4.2', 0),
('6704f82b879c1d1e9ae8d9859fa8a029', './lib/diff/renderer_unified.php', '4.2', 0),
('17c8a8bdabf86c12ddca7aaaa18aa1e5', './lib/directory/dirlib.php', '4.2', 0),
('ccaa66eefd3810079bc6d547edb02bd2', './lib/directory/index.php', '4.2', 0),
('7ff214fdb679cf2ac71dcddb0ad29ab2', './lib/encoding/lib-encoding.php', '4.2', 0),
('3c7a136a7c31f174c5a6bc2c8c906826', './lib/equation/class.latexrender.php', '4.2', 0),
('60d84e4870869b3f32da222c1c43780f', './lib/equation/pictures/index.php', '4.2', 0),
('feb70da91ee420cab373436145d0c404', './lib/equation/tmp/index.php', '4.2', 0),
('f087ab13ffd4221d4547e9f6f4191c31', './lib/events/evlib.php', '4.2', 0),
('00eb3082a8a80fd7d3365954e1744940', './lib/events/index.php', '4.2', 0),
('580bcc3b99f15597c937a51fd715e82a', './lib/faqs/faqlib.php', '4.2', 0),
('c43a56daed83dd812beebb5802ef3783', './lib/faqs/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/_source/classes/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/_source/commandclasses/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/_source/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/_source/internals/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/css/behaviors/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/css/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/css/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/common/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/common/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_about/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_about/sponsors/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_docprops/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_flash/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_image/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_link/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_select/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_spellerpages/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_spellerpages/spellerpages/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_spellerpages/spellerpages/server-scripts/index.php', '4.2', 0),
('7924f50e876cff3c5166910022ea7e83', './lib/fckeditor/editor/dialog/fck_spellerpages/spellerpages/server-scripts/spellchecker.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_template/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/fck_template/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dialog/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/dtd/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/browser/default/images/icons/32/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/browser/default/images/icons/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/browser/default/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/browser/default/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/browser/default/js/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/browser/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/connectors/index.php', '4.2', 0),
('f1c366f498b63bd900103936a59f8a3c', './lib/fckeditor/editor/filemanager/connectors/php/basexml.php', '4.2', 0),
('02e036d69437e9664d239076e1a118c0', './lib/fckeditor/editor/filemanager/connectors/php/commands.php', '4.2', 0),
('5ded2d121b141ed70eb3fa743e0cea10', './lib/fckeditor/editor/filemanager/connectors/php/config.php', '4.2', 0),
('73f32ed75348d95f37cf914fd887d843', './lib/fckeditor/editor/filemanager/connectors/php/connector.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/connectors/php/index.php', '4.2', 0),
('87ec76db5b1dff3dc67208efe3029f57', './lib/fckeditor/editor/filemanager/connectors/php/io.php', '4.2', 0),
('7763888b2073fa72a8c5b8a3e65b9089', './lib/fckeditor/editor/filemanager/connectors/php/phpcompat.php', '4.2', 0),
('fcc1b5ecd93599c6d6adfacd34326680', './lib/fckeditor/editor/filemanager/connectors/php/upload.php', '4.2', 0),
('7021268a0ec1ecb17aeff8b8e7e0acd7', './lib/fckeditor/editor/filemanager/connectors/php/util.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/filemanager/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/images/smiley/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/images/smiley/msn/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/js/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/lang/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/autogrow/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/bbcode/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/dragresizetable/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/placeholder/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/placeholder/lang/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/simplecommands/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/plugins/tablecommands/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/default/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/default/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/office2003/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/office2003/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/silver/images/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/skins/silver/index.php', '4.2', 0),
('fa1e408a5862c9b19cb7f3a185f6b96f', './lib/fckeditor/editor/wsc/index.php', '4.2', 0),
('0fa1807038ba89320979232de09ec266', './lib/fckeditor/fckeditor.php', '4.2', 0),
('aa7412d90aea75d51c4d40b9882bee71', './lib/fckeditor/fckeditor_php4.php', '4.2', 0),
('a6f8b9490d293ddaac252a7d1d6b8d51', './lib/fckeditor/fckeditor_php5.php', '4.2', 0),
('9a9ad557c2101eac8992bc1cae1f4129', './lib/fckeditor/index.php', '4.2', 0),
('81f27d1b780da532812acffdda8c08ea', './lib/fckeditor_tiki/plugins/tikilink/fck_tikilink.php', '4.2', 0),
('9a9ad557c2101eac8992bc1cae1f4129', './lib/fckeditor_tiki/plugins/tikiswitch/index.php', '4.2', 0),
('f98a1bbb5402f6dafea61b76a2e5fd9b', './lib/featured_links/flinkslib.php', '4.2', 0),
('34ed4195e1f930ba367e5b5c6d0741b4', './lib/featured_links/index.php', '4.2', 0),
('c2acff6c6583e139ff13affa6ffd77ad', './lib/feedcreator/feedcreator.class.php', '4.2', 0),
('d6c3d8f98d5b882608c15a4d866cba93', './lib/filegals/filegallib.php', '4.2', 0),
('bf1d6d7d0192c8bd719c1231763a3925', './lib/filegals/index.php', '4.2', 0),
('c1edae55ce0d95fecb8fb646104d2e67', './lib/filegals/max_upload_size.php', '4.2', 0),
('41a8b63e2397fa2aba80a29b16d97642', './lib/freetag/freetaglib.php', '4.2', 0),
('cf69bd313d1a9c6467bbb05c1057edc6', './lib/freetag/index.php', '4.2', 0),
('16d612ddb5155fc75570dbdb9b3357cf', './lib/graph-engine/abstract.gridbased.php', '4.2', 0),
('5b9469b0621878854b9a16d1fd36f963', './lib/graph-engine/core.php', '4.2', 0),
('ee46b71af99e61656aa6603ae0223f6c', './lib/graph-engine/gd.php', '4.2', 0),
('09a2e972fdeb3dcc2f4cec39fa699018', './lib/graph-engine/graph.bar.php', '4.2', 0),
('c3327399ac202faff8f1dd9df723350e', './lib/graph-engine/graph.multiline.php', '4.2', 0),
('65d333fde1b1f59aee2b4318b5971ed7', './lib/graph-engine/graph.pie.php', '4.2', 0),
('d048d7b82d43ed2d5110f3c07d79d1b3', './lib/graph-engine/pdflib.php', '4.2', 0),
('ed2c73080fafb670b19f508ef4665081', './lib/graph-engine/ps.php', '4.2', 0),
('5207863ee6fe04d00900d17f5a6f4755', './lib/groupalert/groupalertlib.php', '4.2', 0),
('737cfe6472cd86869e0076061c4a5c20', './lib/groupalert/index.php', '4.2', 0),
('f40a2dc12cef6c4bcf1527cd2299197b', './lib/hawhaw/hawimconv.php', '4.2', 0),
('e7746b5e4a11bfb9c88c1fdba6c45eb8', './lib/hawhaw/hawtikilib.php', '4.2', 0),
('10e0b8da7848c4623e46ce4f287fb68f', './lib/hawhaw/index.php', '4.2', 0),
('db23acfcc8105fb64f07785f2747e395', './lib/headerlib.php', '4.2', 0),
('6e91efd32ad15dd2346cedf06bbb3ba7', './lib/hotwords/hotwordlib.php', '4.2', 0),
('52e3a59d73a15255cdda880b063866dd', './lib/hotwords/index.php', '4.2', 0),
('906c5bcfd2fbb453b04926b75a2ed9b4', './lib/htmlpages/htmlpageslib.php', '4.2', 0),
('13a9d2b72e19a933ad9820b9c679c2c8', './lib/htmlpages/index.php', '4.2', 0),
('53aa941e819e20a319a3065e04da98c2', './lib/htmlparser/index.php', '4.2', 0),
('f3043427b49526c0197c1ce6dd34c6ae', './lib/htmlparser/rebuildgrammar.php', '4.2', 0),
('0f6dba2689f471c382240c8d2d7892ba', './lib/htmlpurifier/HTMLPurifier.auto.php', '4.2', 0),
('4bb70e5ba6b06a23b8416cc0e59254bb', './lib/htmlpurifier/HTMLPurifier.autoload.php', '4.2', 0),
('f09594e7a7db5826b4b3aef3b9f874ed', './lib/htmlpurifier/HTMLPurifier.func.php', '4.2', 0),
('d1c01716d0f9c51bc61183466eb7e4c1', './lib/htmlpurifier/HTMLPurifier.includes.php', '4.2', 0),
('25043ef5e632f88e8d5c825a8516a1cc', './lib/htmlpurifier/HTMLPurifier.kses.php', '4.2', 0),
('5a6eedd494dd20c8579e2a9d39809d5b', './lib/htmlpurifier/HTMLPurifier.path.php', '4.2', 0),
('a630aa63016ded28453e109edc35d331', './lib/htmlpurifier/HTMLPurifier.php', '4.2', 0),
('23904b4310c99fa9da91bff4bd3b223a', './lib/htmlpurifier/HTMLPurifier.safe-includes.php', '4.2', 0),
('5b1067853574bae62d9cd70370ff10af', './lib/htmlpurifier/HTMLPurifier/AttrCollections.php', '4.2', 0),
('c2ac5eb00e5fe0dfe53793a532243826', './lib/htmlpurifier/HTMLPurifier/AttrDef.php', '4.2', 0),
('6caf3a641704cee2aeb15b4eb1c287c9', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS.php', '4.2', 0),
('f0232cc2a7573418b8ebe5efcf108c46', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/AlphaValue.php', '4.2', 0),
('8a16f12cb9b9f6d941b7a82f1c40862c', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Background.php', '4.2', 0),
('ecc93e18d1aeea6e8231119575e40e9c', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/BackgroundPosition.php', '4.2', 0),
('0301346329aae91bae8924c90d3d4688', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Border.php', '4.2', 0),
('4bd2e4e9cd6e71ca7a6cb5e62700b380', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Color.php', '4.2', 0),
('ac75113a9cbfe6bfe8d3afe36444f272', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Composite.php', '4.2', 0),
('a112e7c263f001b9ac062ea64201cccd', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/DenyElementDecorator.php', '4.2', 0),
('54e42fbf58fe9c70ef082d6a8f8be821', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Filter.php', '4.2', 0),
('c14c12936339b03f24e9b50cd5273450', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Font.php', '4.2', 0),
('59ca381609f084649bf71d8093eab3a9', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/FontFamily.php', '4.2', 0),
('9a9a4ef13940096bbe18037d54cb056f', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/ImportantDecorator.php', '4.2', 0),
('6774b03e0b29672961ad4fba15c25787', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Length.php', '4.2', 0),
('3d888cc157a4ea616dc1e94dd5f1c21e', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/ListStyle.php', '4.2', 0),
('2c4560cf0dd700ae39c0a553140ffd1b', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Multiple.php', '4.2', 0),
('0f1f03450117004aabb529c43f154334', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Number.php', '4.2', 0),
('10afadc403e14974645b3e1c17f83adb', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/Percentage.php', '4.2', 0),
('54f6f27a44bdb66d6197a46ba89213e8', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/TextDecoration.php', '4.2', 0),
('aea3d16cd52cbdf70ec2c9fd6e28b166', './lib/htmlpurifier/HTMLPurifier/AttrDef/CSS/URI.php', '4.2', 0),
('1a11be0015a161c2a11d6c51305f45fa', './lib/htmlpurifier/HTMLPurifier/AttrDef/Enum.php', '4.2', 0),
('c579b5a145c447f1880c7bc6d3db774c', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/Bool.php', '4.2', 0),
('fa319109d0c0e5989a24f550c884c1b5', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/Class.php', '4.2', 0),
('ed699f61359c5d7ab046d248253e5d9e', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/Color.php', '4.2', 0),
('96026f3e8ffdc70e533f306e63322923', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/FrameTarget.php', '4.2', 0),
('bd36cb0c65c586c2d1dff7a44a4bf0dc', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/ID.php', '4.2', 0),
('a38926a6e784e67d5cd7e9d657802214', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/Length.php', '4.2', 0),
('ed11d4126e34e45fd127650a45f0ee56', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/LinkTypes.php', '4.2', 0),
('122498f21ff87dcab5ec8f1dfb51d39c', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/MultiLength.php', '4.2', 0),
('8face464a844799e3aab2e9f4f918868', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/Nmtokens.php', '4.2', 0),
('95962e03883b9a84496487a1f8af5da3', './lib/htmlpurifier/HTMLPurifier/AttrDef/HTML/Pixels.php', '4.2', 0),
('f57bc53b7c7a29b0c4324e0ad2039c2a', './lib/htmlpurifier/HTMLPurifier/AttrDef/Integer.php', '4.2', 0),
('04a72938e4c07553d9a18ae6649cd90f', './lib/htmlpurifier/HTMLPurifier/AttrDef/Lang.php', '4.2', 0),
('8fcf6999bbd3f2cd9d3780182d91be7d', './lib/htmlpurifier/HTMLPurifier/AttrDef/Switch.php', '4.2', 0),
('0ad9dcd58ce4f104006b59a9df51802a', './lib/htmlpurifier/HTMLPurifier/AttrDef/Text.php', '4.2', 0),
('05afd73beee5b644bc49790b7a0dde0f', './lib/htmlpurifier/HTMLPurifier/AttrDef/URI.php', '4.2', 0),
('958e3072379737950b8ce0f6823ac8eb', './lib/htmlpurifier/HTMLPurifier/AttrDef/URI/Email.php', '4.2', 0),
('cebebf0d99b63ecd2072f37e69055b6c', './lib/htmlpurifier/HTMLPurifier/AttrDef/URI/Email/SimpleCheck.php', '4.2', 0),
('38b3ca8b1c3522fbbd27bce785bc58ab', './lib/htmlpurifier/HTMLPurifier/AttrDef/URI/Host.php', '4.2', 0),
('da52096d6feb81bd8a40f9d5ed439139', './lib/htmlpurifier/HTMLPurifier/AttrDef/URI/IPv4.php', '4.2', 0),
('44004a19ee045f386993905c84600d61', './lib/htmlpurifier/HTMLPurifier/AttrDef/URI/IPv6.php', '4.2', 0),
('18870fa532d982a78f20d00e93b6ba3e', './lib/htmlpurifier/HTMLPurifier/AttrTransform.php', '4.2', 0),
('1decd9fa8e0777811024260549d29aaa', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Background.php', '4.2', 0),
('3e6afa73230fc31d74eb382bd42bb18a', './lib/htmlpurifier/HTMLPurifier/AttrTransform/BdoDir.php', '4.2', 0),
('ec7f74671186c8e5e93a381cce6470fa', './lib/htmlpurifier/HTMLPurifier/AttrTransform/BgColor.php', '4.2', 0),
('b7d7e4d45de29fc50eefdc97e760e6d5', './lib/htmlpurifier/HTMLPurifier/AttrTransform/BoolToCSS.php', '4.2', 0),
('faca234a22422d5cf69ca7068145eac8', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Border.php', '4.2', 0),
('f1f2fb8deb98f319592e4f55545facee', './lib/htmlpurifier/HTMLPurifier/AttrTransform/EnumToCSS.php', '4.2', 0),
('87bd7efd4aaaa1f439a0a948d2c48a52', './lib/htmlpurifier/HTMLPurifier/AttrTransform/ImgRequired.php', '4.2', 0),
('107148ff2b640ff7afbfc59e638812f5', './lib/htmlpurifier/HTMLPurifier/AttrTransform/ImgSpace.php', '4.2', 0),
('a0ee62ef96c7ac5c6add36ef47f9ba47', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Input.php', '4.2', 0),
('17dd8373c191efd5c95bfe5fb79ed8fe', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Lang.php', '4.2', 0),
('0c9bfa9cdc93cff8714b237e854f4595', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Length.php', '4.2', 0),
('563026acbdd46b682f91cdfea1103ce8', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Name.php', '4.2', 0),
('03c2f1e68d493f53430c42d4c8806166', './lib/htmlpurifier/HTMLPurifier/AttrTransform/NameSync.php', '4.2', 0),
('c9814258f610f4cbc17b6a511289b329', './lib/htmlpurifier/HTMLPurifier/AttrTransform/SafeEmbed.php', '4.2', 0),
('6575e1225807af9eb79e3c005b028591', './lib/htmlpurifier/HTMLPurifier/AttrTransform/SafeObject.php', '4.2', 0),
('e6239d696e5a698544d8aecef02871da', './lib/htmlpurifier/HTMLPurifier/AttrTransform/SafeParam.php', '4.2', 0),
('aeeb086b76d4bcb87d8a36a61b7ca644', './lib/htmlpurifier/HTMLPurifier/AttrTransform/ScriptRequired.php', '4.2', 0),
('45c48b09a03a9abef719748ce27c4728', './lib/htmlpurifier/HTMLPurifier/AttrTransform/Textarea.php', '4.2', 0),
('b1ba10c4bcd37a7f5e9a6c97a81b18c8', './lib/htmlpurifier/HTMLPurifier/AttrTypes.php', '4.2', 0),
('53aebf76f83099026c95c03844ecf39b', './lib/htmlpurifier/HTMLPurifier/AttrValidator.php', '4.2', 0),
('de2d3205b26e42deaa94d8d74e3692c4', './lib/htmlpurifier/HTMLPurifier/Bootstrap.php', '4.2', 0),
('d6018966da297fe60eeba65b9adc843a', './lib/htmlpurifier/HTMLPurifier/CSSDefinition.php', '4.2', 0),
('281eaa00a5e3ff98b611b5ebca97bcb0', './lib/htmlpurifier/HTMLPurifier/ChildDef.php', '4.2', 0),
('3c557d08cadb051c7e1711376da3acb8', './lib/htmlpurifier/HTMLPurifier/ChildDef/Chameleon.php', '4.2', 0),
('13c44a1aaf1ab1b25744758cd1831b4f', './lib/htmlpurifier/HTMLPurifier/ChildDef/Custom.php', '4.2', 0),
('22f2d339fcb60c536e651f80f03f7c82', './lib/htmlpurifier/HTMLPurifier/ChildDef/Empty.php', '4.2', 0),
('6b324d68260f872dc1a9312608af70bf', './lib/htmlpurifier/HTMLPurifier/ChildDef/Optional.php', '4.2', 0),
('682f8da336f2a1dad1cd7880d4848076', './lib/htmlpurifier/HTMLPurifier/ChildDef/Required.php', '4.2', 0),
('538d675731b05c7483ec31e1ae55ca4a', './lib/htmlpurifier/HTMLPurifier/ChildDef/StrictBlockquote.php', '4.2', 0),
('98c3856ffede2c519fa703dee541fc01', './lib/htmlpurifier/HTMLPurifier/ChildDef/Table.php', '4.2', 0),
('aefeb82b17623a6d0594a084afb664b4', './lib/htmlpurifier/HTMLPurifier/Config.php', '4.2', 0),
('37ccb7351a8bcc8c49bba3c2d312996d', './lib/htmlpurifier/HTMLPurifier/ConfigSchema.php', '4.2', 0),
('a9d77f36c69fcdeeaffdddccf53b1aea', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Builder/ConfigSchema.php', '4.2', 0),
('2f3ef23752e2cb399fea85c3368b2d47', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Builder/Xml.php', '4.2', 0),
('31bf3afba867409fdf11f75eaa3725fd', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Exception.php', '4.2', 0),
('16ec96e01b7a93a75f6c0d27a3044d2c', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Interchange.php', '4.2', 0),
('3b11731a184f921ad82632a4d5ca8ea3', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Interchange/Directive.php', '4.2', 0),
('b67c7f7562c9eac082a960b3be9f5f1f', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Interchange/Id.php', '4.2', 0),
('67a0d7fbab812db7f0b0144392b9f146', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Interchange/Namespace.php', '4.2', 0),
('2da487ed0053dd17f8f4c13a7b3cf04d', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/InterchangeBuilder.php', '4.2', 0),
('d9327f8aaab4fdc364107d0779310b3b', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/Validator.php', '4.2', 0),
('9a57bfdb6b774679e2f5593d4c67d7f5', './lib/htmlpurifier/HTMLPurifier/ConfigSchema/ValidatorAtom.php', '4.2', 0),
('1bd2243d0d7b68504723ebc5dddd0ea2', './lib/htmlpurifier/HTMLPurifier/ContentSets.php', '4.2', 0),
('c1ed36707d08237daa646b3b8eeb30a4', './lib/htmlpurifier/HTMLPurifier/Context.php', '4.2', 0),
('a188cbe72b81f021578b989d1566f0b3', './lib/htmlpurifier/HTMLPurifier/Definition.php', '4.2', 0),
('db24b53bab53b8ffa40b197e06078fe4', './lib/htmlpurifier/HTMLPurifier/DefinitionCache.php', '4.2', 0),
('f185adab8aad39c577d9d4900ed61b81', './lib/htmlpurifier/HTMLPurifier/DefinitionCache/Decorator.php', '4.2', 0),
('31e3ea9d5988c5a1ae3f369ddccbfead', './lib/htmlpurifier/HTMLPurifier/DefinitionCache/Decorator/Cleanup.php', '4.2', 0),
('8acd4ef5453cc2c25612a665f46ca836', './lib/htmlpurifier/HTMLPurifier/DefinitionCache/Decorator/Memory.php', '4.2', 0),
('e27dfb4700f20a6ccd1ab8e498ce0ac6', './lib/htmlpurifier/HTMLPurifier/DefinitionCache/Null.php', '4.2', 0),
('d63b0aeacf255afb75982a14f1dd0daf', './lib/htmlpurifier/HTMLPurifier/DefinitionCache/Serializer.php', '4.2', 0),
('1df8a4f27f64b5473b41e4666f787c6d', './lib/htmlpurifier/HTMLPurifier/DefinitionCacheFactory.php', '4.2', 0),
('512fcd900313924eb7902442186a06cc', './lib/htmlpurifier/HTMLPurifier/Doctype.php', '4.2', 0),
('0ab0a6b2a7d358ab8532d897e8bfe729', './lib/htmlpurifier/HTMLPurifier/DoctypeRegistry.php', '4.2', 0),
('b0025522437a72f339de994d0e26dd1d', './lib/htmlpurifier/HTMLPurifier/ElementDef.php', '4.2', 0),
('fc3fee6ae7b5cfa04ce2c4ba8699a98b', './lib/htmlpurifier/HTMLPurifier/Encoder.php', '4.2', 0),
('1ebc1f6db1134f98ba757d16bec67d0a', './lib/htmlpurifier/HTMLPurifier/EntityLookup.php', '4.2', 0),
('85a29be7cf7434024284aeb333659c0b', './lib/htmlpurifier/HTMLPurifier/EntityParser.php', '4.2', 0),
('5aee849a4ef4f610cd383752697f6966', './lib/htmlpurifier/HTMLPurifier/ErrorCollector.php', '4.2', 0),
('3cc9e13fb56fb8816bd478e46522a926', './lib/htmlpurifier/HTMLPurifier/ErrorStruct.php', '4.2', 0),
('6549f2e00060fd671149191f1e94eaf3', './lib/htmlpurifier/HTMLPurifier/Exception.php', '4.2', 0),
('33181bbe7f6e7e839796e73d4d2a790d', './lib/htmlpurifier/HTMLPurifier/Filter.php', '4.2', 0),
('739249b8ed7c1e1ff906931b13d477f6', './lib/htmlpurifier/HTMLPurifier/Filter/ExtractStyleBlocks.php', '4.2', 0),
('5c61e7f9db9239ad5f23a4ef94e83d14', './lib/htmlpurifier/HTMLPurifier/Filter/YouTube.php', '4.2', 0),
('51925aaea7436e6a75f4ccae2597d806', './lib/htmlpurifier/HTMLPurifier/Generator.php', '4.2', 0),
('75a3e23b95fd758922132c79fdca9e56', './lib/htmlpurifier/HTMLPurifier/HTMLDefinition.php', '4.2', 0),
('9cbb7c9019e68203ca205eff77a61fe5', './lib/htmlpurifier/HTMLPurifier/HTMLModule.php', '4.2', 0),
('e129432b77bb64fdc290d13987c45596', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Bdo.php', '4.2', 0),
('381c8ba0950e07c6c82c42a642385800', './lib/htmlpurifier/HTMLPurifier/HTMLModule/CommonAttributes.php', '4.2', 0),
('5475ee52a8791d170b841cd6ad905094', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Edit.php', '4.2', 0),
('73153b86492552a9fbb88340c770963f', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Forms.php', '4.2', 0),
('bb4790cbd4a68e90a2d1fb8b820d7147', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Hypertext.php', '4.2', 0),
('911df038afaefbc0f662a3d6fa8d9554', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Image.php', '4.2', 0),
('e36d4f596bd85f285d243013495c8dcb', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Legacy.php', '4.2', 0),
('21bac4a6658e819d2b0c807351f300c1', './lib/htmlpurifier/HTMLPurifier/HTMLModule/List.php', '4.2', 0),
('9765121a41a8e2a372a65c6bd3b32789', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Name.php', '4.2', 0),
('24b18ff07b334f19fc8c1e5f184d2570', './lib/htmlpurifier/HTMLPurifier/HTMLModule/NonXMLCommonAttributes.php', '4.2', 0),
('a7cca883348645c6a77ec7db0932a610', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Object.php', '4.2', 0),
('e503304a642c6786f6a11eb3ead87ddd', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Presentation.php', '4.2', 0),
('aae031812e9fbe29dff05f23e1b4cda5', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Proprietary.php', '4.2', 0),
('c87f9de5628a72270943de5496d36ddf', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Ruby.php', '4.2', 0),
('59f3c3ddec2793fdb18084a2b6da20b6', './lib/htmlpurifier/HTMLPurifier/HTMLModule/SafeEmbed.php', '4.2', 0),
('d02bfe5bcd269deac0cd7886ae288364', './lib/htmlpurifier/HTMLPurifier/HTMLModule/SafeObject.php', '4.2', 0),
('074b0eb6b6c34a1992ab65aa67e29a35', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Scripting.php', '4.2', 0),
('4770bf322cefdc9b155d9faf2851e21f', './lib/htmlpurifier/HTMLPurifier/HTMLModule/StyleAttribute.php', '4.2', 0),
('7d6e6c2595498da192d69006c46d769d', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tables.php', '4.2', 0),
('ad4c41177390713e568bdd96848e37f5', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Target.php', '4.2', 0),
('65b57e9b356a4d13b6f0c65dfcd337dd', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Text.php', '4.2', 0),
('4837b4cb0776cc1af14a21c1b877e078', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy.php', '4.2', 0),
('f6bed98e1a7ebae0e09764956bdac4f2', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy/Name.php', '4.2', 0),
('ad27e0f4952db6bd52a6798ce252c812', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy/Proprietary.php', '4.2', 0),
('5215ba83a8f645d50077b748ab344b8a', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy/Strict.php', '4.2', 0),
('a00c39ef28493892552b3f3e452cf992', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy/Transitional.php', '4.2', 0),
('7f514a82cfd85b03d712274b5d249954', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy/XHTML.php', '4.2', 0),
('cbdf3deab781644fcc25dde08b441727', './lib/htmlpurifier/HTMLPurifier/HTMLModule/Tidy/XHTMLAndHTML4.php', '4.2', 0),
('4927a47ebe2721507baaddf7f66da265', './lib/htmlpurifier/HTMLPurifier/HTMLModule/XMLCommonAttributes.php', '4.2', 0),
('b3fe48fa29465d75928b5a2917d4ba30', './lib/htmlpurifier/HTMLPurifier/HTMLModuleManager.php', '4.2', 0),
('41e2004626f0e87d894ad091f91f6554', './lib/htmlpurifier/HTMLPurifier/IDAccumulator.php', '4.2', 0),
('9f1d4fac7ab8e8ba0a94a13cdfb5c644', './lib/htmlpurifier/HTMLPurifier/Injector.php', '4.2', 0),
('0d1dc975105ef1208e3228586335abaf', './lib/htmlpurifier/HTMLPurifier/Injector/AutoParagraph.php', '4.2', 0),
('e0ba2c64ec1ff45452069ea4a61194c8', './lib/htmlpurifier/HTMLPurifier/Injector/DisplayLinkURI.php', '4.2', 0),
('a205c290b398a25a7f4b76a5401e54c4', './lib/htmlpurifier/HTMLPurifier/Injector/Linkify.php', '4.2', 0),
('dbfe4673baeefc27fb505c867d56c5d4', './lib/htmlpurifier/HTMLPurifier/Injector/PurifierLinkify.php', '4.2', 0),
('f6216052673d05748b26bfcbd51689f7', './lib/htmlpurifier/HTMLPurifier/Injector/RemoveEmpty.php', '4.2', 0),
('027296ea99d041b96bfb9f86b4b2246f', './lib/htmlpurifier/HTMLPurifier/Injector/SafeObject.php', '4.2', 0),
('34c9de227562f8967141cbf9f565c289', './lib/htmlpurifier/HTMLPurifier/Language.php', '4.2', 0),
('f645558786c86be0b603b7cfc82f7e12', './lib/htmlpurifier/HTMLPurifier/Language/classes/en-x-test.php', '4.2', 0),
('c1ea035c3a68aee24f6d4c264ee79d6b', './lib/htmlpurifier/HTMLPurifier/Language/messages/en-x-test.php', '4.2', 0),
('146f1c2d41e1fdf85f334a05a0dd41ca', './lib/htmlpurifier/HTMLPurifier/Language/messages/en-x-testmini.php', '4.2', 0),
('7246930b43b3e3caea10e6bce02fa95e', './lib/htmlpurifier/HTMLPurifier/Language/messages/en.php', '4.2', 0),
('58a26316f701ac79ca439ce4d874b9d3', './lib/htmlpurifier/HTMLPurifier/LanguageFactory.php', '4.2', 0),
('39382c387dc2a7dac903c2b63849a9a6', './lib/htmlpurifier/HTMLPurifier/Length.php', '4.2', 0),
('a9d40a8c5ae52525e876cf061358bc1e', './lib/htmlpurifier/HTMLPurifier/Lexer.php', '4.2', 0),
('461417b2a89ff805874fb3200edecc3a', './lib/htmlpurifier/HTMLPurifier/Lexer/DOMLex.php', '4.2', 0),
('f4a371e75951a563aa06c76afec748d5', './lib/htmlpurifier/HTMLPurifier/Lexer/DirectLex.php', '4.2', 0),
('8643ddf9638ba444abb3f0d14a906f1a', './lib/htmlpurifier/HTMLPurifier/Lexer/PEARSax3.php', '4.2', 0),
('0f6893d064ab38c573384140159dd275', './lib/htmlpurifier/HTMLPurifier/Lexer/PH5P.php', '4.2', 0),
('4d14a6fa6959c5c6993391b9946b57fe', './lib/htmlpurifier/HTMLPurifier/PercentEncoder.php', '4.2', 0),
('530db343c69ec3d4ba27e09e4b837903', './lib/htmlpurifier/HTMLPurifier/Printer.php', '4.2', 0),
('d1d09c86a9c81b526bbd44c847344b6d', './lib/htmlpurifier/HTMLPurifier/Printer/CSSDefinition.php', '4.2', 0),
('512c6d0717c3fcb0bb0997594cdf7f3f', './lib/htmlpurifier/HTMLPurifier/Printer/ConfigForm.php', '4.2', 0),
('a46e55a618e944c96bbd09e5cfcf8cc1', './lib/htmlpurifier/HTMLPurifier/Printer/HTMLDefinition.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('319d75a5f8e6bbc8c644056a68a4aaec', './lib/htmlpurifier/HTMLPurifier/PropertyList.php', '4.2', 0),
('d17e7d5f8bc24cfc07f97aa7b014c4cd', './lib/htmlpurifier/HTMLPurifier/PropertyListIterator.php', '4.2', 0),
('05823f704d950d3a9debbd3784e4aaea', './lib/htmlpurifier/HTMLPurifier/Strategy.php', '4.2', 0),
('55d2b2fd0577ebdcbbbf1312f4e6eb6e', './lib/htmlpurifier/HTMLPurifier/Strategy/Composite.php', '4.2', 0),
('0324f1ab3397cb1544a51257994f576a', './lib/htmlpurifier/HTMLPurifier/Strategy/Core.php', '4.2', 0),
('48272af4271d1d6cc193052d9a175222', './lib/htmlpurifier/HTMLPurifier/Strategy/FixNesting.php', '4.2', 0),
('310ba416548021da80413cf04a90cce8', './lib/htmlpurifier/HTMLPurifier/Strategy/MakeWellFormed.php', '4.2', 0),
('6c6dbc3f24bccf2fdbfdbe9fe0912653', './lib/htmlpurifier/HTMLPurifier/Strategy/RemoveForeignElements.php', '4.2', 0),
('3e085d73ce91a3d38f3017b112d07a0d', './lib/htmlpurifier/HTMLPurifier/Strategy/ValidateAttributes.php', '4.2', 0),
('934cbbd131e387f9e2cf0921e0c88936', './lib/htmlpurifier/HTMLPurifier/StringHash.php', '4.2', 0),
('d2040cbc74c4ce31449d127719bcc6cb', './lib/htmlpurifier/HTMLPurifier/StringHashParser.php', '4.2', 0),
('3516a182bdf938206958c01134604b23', './lib/htmlpurifier/HTMLPurifier/TagTransform.php', '4.2', 0),
('a8e11a0600b535514f7d790fcb0e008e', './lib/htmlpurifier/HTMLPurifier/TagTransform/Font.php', '4.2', 0),
('5e45fd1e8d10be6b9f4da28c765532ee', './lib/htmlpurifier/HTMLPurifier/TagTransform/Simple.php', '4.2', 0),
('cebdc28d8a702d0d2dfceb8c27196812', './lib/htmlpurifier/HTMLPurifier/Token.php', '4.2', 0),
('0a93e4fcea3cf8114eec37914806e54f', './lib/htmlpurifier/HTMLPurifier/Token/Comment.php', '4.2', 0),
('b38096253b7361aa606beabbd361e744', './lib/htmlpurifier/HTMLPurifier/Token/Empty.php', '4.2', 0),
('6dc6cdb4e980b6ffb9bb18ae73236ca9', './lib/htmlpurifier/HTMLPurifier/Token/End.php', '4.2', 0),
('abb859525c52a506e5f58c309431f3ca', './lib/htmlpurifier/HTMLPurifier/Token/Start.php', '4.2', 0),
('21a3ed284d9cded0eba7e6910192f92b', './lib/htmlpurifier/HTMLPurifier/Token/Tag.php', '4.2', 0),
('a1ee2cf2a31f87fe63b5702ff82ed9ba', './lib/htmlpurifier/HTMLPurifier/Token/Text.php', '4.2', 0),
('ed32af45fe9dba652840c42075a7cdf3', './lib/htmlpurifier/HTMLPurifier/TokenFactory.php', '4.2', 0),
('b150e8e19a71f29c19d7fdff69b4fd3d', './lib/htmlpurifier/HTMLPurifier/URI.php', '4.2', 0),
('549903c3c3bfa86d91d3c2e2c8e065db', './lib/htmlpurifier/HTMLPurifier/URIDefinition.php', '4.2', 0),
('62112e5c17a05698309321ea85935061', './lib/htmlpurifier/HTMLPurifier/URIFilter.php', '4.2', 0),
('9df1553f001cd2e5e574be075396a575', './lib/htmlpurifier/HTMLPurifier/URIFilter/DisableExternal.php', '4.2', 0),
('f75e2069424d0b4f60988b1e8344cde8', './lib/htmlpurifier/HTMLPurifier/URIFilter/DisableExternalResources.php', '4.2', 0),
('a520831064417a45e03fd669b0f8256c', './lib/htmlpurifier/HTMLPurifier/URIFilter/HostBlacklist.php', '4.2', 0),
('f60d09064deb7203990b68895c6c8d66', './lib/htmlpurifier/HTMLPurifier/URIFilter/MakeAbsolute.php', '4.2', 0),
('af92dd990abc627653f029dca94ed2d2', './lib/htmlpurifier/HTMLPurifier/URIFilter/Munge.php', '4.2', 0),
('d52d2040f01112af0e00f8b9bac38267', './lib/htmlpurifier/HTMLPurifier/URIParser.php', '4.2', 0),
('4122f8aeaf11cc424c9a720c07ba0724', './lib/htmlpurifier/HTMLPurifier/URIScheme.php', '4.2', 0),
('18245d29655347bfb39c3342476a2d96', './lib/htmlpurifier/HTMLPurifier/URIScheme/ftp.php', '4.2', 0),
('9e58f88917c4cbc385ba52c20c78e832', './lib/htmlpurifier/HTMLPurifier/URIScheme/http.php', '4.2', 0),
('add878b1199b2907f31135e89baebc12', './lib/htmlpurifier/HTMLPurifier/URIScheme/https.php', '4.2', 0),
('b847abc08adc931880036bcddde2362a', './lib/htmlpurifier/HTMLPurifier/URIScheme/mailto.php', '4.2', 0),
('2187e2b929cf26764e2a4acb24beaf46', './lib/htmlpurifier/HTMLPurifier/URIScheme/news.php', '4.2', 0),
('dc9834550ddfe8edfc4a7c55bf32c05b', './lib/htmlpurifier/HTMLPurifier/URIScheme/nntp.php', '4.2', 0),
('dbcd0c8ef8f54df0bf8945d5a61b2a9c', './lib/htmlpurifier/HTMLPurifier/URISchemeRegistry.php', '4.2', 0),
('9dcddc344c2d6d44698479dead8beead', './lib/htmlpurifier/HTMLPurifier/UnitConverter.php', '4.2', 0),
('629508f0959354d4ebd99c527e704036', './lib/htmlpurifier/HTMLPurifier/VarParser.php', '4.2', 0),
('5e05d7b4f800f3cbca03efb3537277cb', './lib/htmlpurifier/HTMLPurifier/VarParser/Flexible.php', '4.2', 0),
('faa91653d527c5229b49253658ca80dd', './lib/htmlpurifier/HTMLPurifier/VarParser/Native.php', '4.2', 0),
('8b1819c0ed397d313e5c76b062e6264d', './lib/htmlpurifier/HTMLPurifier/VarParserException.php', '4.2', 0),
('7a1b210147b89cb08b63c711d3026ce0', './lib/htmlpurifier_tiki/HTMLPurifier.tiki.php', '4.2', 0),
('576530797b0f5cfeb0b5a9abb5a4ceb8', './lib/ical/File.php', '4.2', 0),
('455c826453028fd2957553bf2b6979df', './lib/ical/iCal.php', '4.2', 0),
('611b8d91e20f429bcfe6962c02a32bf8', './lib/ical/iCal/Alarm.php', '4.2', 0),
('297e453b275ad124ad5c81ba833f7494', './lib/ical/iCal/Attendee.php', '4.2', 0),
('a5e85956a964fc290792449c2ce082e5', './lib/ical/iCal/BaseComponent.php', '4.2', 0),
('e4fd231d49b8341071985eacef40bd9c', './lib/ical/iCal/Component.php', '4.2', 0),
('e6e445cc81e1cf0d655ad197f2d366bb', './lib/ical/iCal/ContentLine.php', '4.2', 0),
('d1dd121c86e809ab903d62b1ebb57fe4', './lib/ical/iCal/Event.php', '4.2', 0),
('a81188c8734b36574a6a2f11353ee7c3', './lib/ical/iCal/ExceptionRule.php', '4.2', 0),
('bab8ae488484714393e60cad1b225978', './lib/ical/iCal/FreeBusy.php', '4.2', 0),
('3dcf6827f0ffa5184190a8958425250f', './lib/ical/iCal/Parameter.php', '4.2', 0),
('dbb97f10ab3e29c04fcf512e74aa1bac', './lib/ical/iCal/Parser/iCalendar.php', '4.2', 0),
('1f7bd6dbecd2de068460185c27c2e3ea', './lib/ical/iCal/Property.php', '4.2', 0),
('5fe2d81c5f335299c359fb9927015153', './lib/ical/iCal/Recurrence.php', '4.2', 0),
('814f3f8fa169656101dbf33d0cbe67d1', './lib/ical/iCal/TimeZone.php', '4.2', 0),
('4d8f3c999fd50f604cf59f62d92c9d79', './lib/ical/iCal/ToDo.php', '4.2', 0),
('0dd24ec17a0864297d38de3f2f90bcd8', './lib/ical/iCal/ValueDataType.php', '4.2', 0),
('9db8fea32049fb58e9a30913a58a2cc9', './lib/ical/iCal/iCalendar.php', '4.2', 0),
('0f6b9d8e873b5fe8e96c8f3eb743212b', './lib/iepngfix/index.php', '4.2', 0),
('d0a5b9f741b92aa0f6168054aed38249', './lib/imagegals/imagegallib.php', '4.2', 0),
('b9318a070ce0c9676ed958bbc12cd15e', './lib/imagegals/index.php', '4.2', 0),
('036a08b3a21c9d200ac9635c373c1878', './lib/images/abstract.php', '4.2', 0),
('1c6afa14b44cf4f31013bd9cacdcbb44', './lib/images/gd.php', '4.2', 0),
('ae2255e9ebd3127ee0f30608cdac2c90', './lib/images/images.php', '4.2', 0),
('1f604507d978127e0f417d0af912e645', './lib/images/imagick_new.php', '4.2', 0),
('bc8463ce65e8d34968a37a7117331a85', './lib/images/imagick_old.php', '4.2', 0),
('6068404841ac19a019652501a873e82e', './lib/importer/index.php', '4.2', 0),
('7f1e13565109909c8bb619ff49063457', './lib/importer/tikiimporter.php', '4.2', 0),
('e97fc859cbf0be1a94923afd2d59a45e', './lib/importer/tikiimporter_wiki.php', '4.2', 0),
('14e7a289b3e55ed376814b1937c1af76', './lib/importer/tikiimporter_wiki_mediawiki.php', '4.2', 0),
('3e9d035f6da9ff566a785d7e51fe9eb5', './lib/importerlib.php', '4.2', 0),
('1d31111a28e60efe675255d85c45c1d5', './lib/index.php', '4.2', 0),
('d8a0badbb29c6415c3de5a37de140256', './lib/init/index.php', '4.2', 0),
('9884e00821c0cea4d7f360e92bde8cb3', './lib/init/initlib.php', '4.2', 0),
('4013cfc81715f32a4f7ab467ebb47fdd', './lib/init/setup_inc.php', '4.2', 0),
('c51660a2310d9adf787e9e70df5286ed', './lib/init/tra.php', '4.2', 0),
('e9920a933ccf8980984cbf33a4665330', './lib/integrator/index.php', '4.2', 0),
('e071b146e1e7142526f465c2fff74d35', './lib/integrator/integrator.php', '4.2', 0),
('86f40c7ed9048c43e7a27f408340699a', './lib/jquery/index.php', '4.2', 0),
('86f40c7ed9048c43e7a27f408340699a', './lib/jquery_tiki/index.php', '4.2', 0),
('a9ac64b886281754bfc9d45f1910961f', './lib/jscalendar/calendar.php', '4.2', 0),
('9d0844ef5c0656eb7f1e5cdbc2a66f71', './lib/jscalendar/index.php', '4.2', 0),
('ac8cc76b231f4b698b503aa44e93feea', './lib/jscalendar/lang/index.php', '4.2', 0),
('997902013ce5ac9246dba962bf4af507', './lib/live_support/index.php', '4.2', 0),
('22e31120a904c638f8ae1bb48a493c75', './lib/live_support/lsadminlib.php', '4.2', 0),
('749eb46d830ae26f3b43b26d97b0b2b0', './lib/live_support/lslib.php', '4.2', 0),
('2cff8e8f9e8e5a1aad8793986678ce40', './lib/logs/logslib.php', '4.2', 0),
('cc83f77733d9974997c4dbf9c64f3ddc', './lib/mail/maillib.php', '4.2', 0),
('743df79fbf51e0bae01912f9480975ee', './lib/mail/mimelib.php', '4.2', 0),
('392f9bcf7a893d08279d496224b5cf1e', './lib/mailin/index.php', '4.2', 0),
('618fde48b5738d34a469f2e11a3d2918', './lib/mailin/mailinlib.php', '4.2', 0),
('980abced6892d8ef98aa299e1c1df0f0', './lib/map/index.php', '4.2', 0),
('6b49cba1fa98ef9620938c3bcf7b6acd', './lib/map/map_query.php', '4.2', 0),
('072cd80419ff0070b81e76bf27168571', './lib/map/maplib.php', '4.2', 0),
('b58f8585944bc5a825ede924a721990f', './lib/map/usermap.php', '4.2', 0),
('ebd478929936fc4aa62e51a26de0a017', './lib/menubuilder/index.php', '4.2', 0),
('db2e3976ab7b5ae6f88229ad16d4fde2', './lib/menubuilder/menulib.php', '4.2', 0),
('3a148f930ab1bca567fedb9c28045a3b', './lib/messu/index.php', '4.2', 0),
('fb72eb6f124b5683dee03df3b85da74c', './lib/messu/messulib.php', '4.2', 0),
('4dd94fa762250a6c16efe2bb4b677fbc', './lib/mime/index.php', '4.2', 0),
('f23b4f2c1cb84aed63200615e910e0cf', './lib/mime/mimeextensions.php', '4.2', 0),
('6dfb432a9011b61630c7252e2280fbfd', './lib/mime/mimelib.php', '4.2', 0),
('0c75acf42f61d5226cc22fa748cb1689', './lib/mime/mimetypes.php', '4.2', 0),
('7cfcf4f2a00475c3f9da50f9211305fb', './lib/minical/index.php', '4.2', 0),
('06200a2c8324c29f5485bb779effa485', './lib/minical/minicallib.php', '4.2', 0),
('ed402f9af70cd00a96067c43a5ff230c', './lib/minify/JSMin.php', '4.2', 0),
('9c9035371d687e9c4b090dcae9047d47', './lib/mods/index.php', '4.2', 0),
('57be2480c30a2304265de3bf4fe44a0a', './lib/mods/modslib.php', '4.2', 0),
('210ab89339e9b3265dcd1fa29c443442', './lib/modules/index.php', '4.2', 0),
('d3c0dfe803a8094eafd2311fc9c85c46', './lib/modules/modlib.php', '4.2', 0),
('33c053289b741f978be90c069949dbe9', './lib/multilingual/multilinguallib.php', '4.2', 0),
('d82aa795a9ebebe2aabcd37f685228ba', './lib/newsletters/index.php', '4.2', 0),
('00900e51067b196cf1deb74778824440', './lib/newsletters/nllib.php', '4.2', 0),
('fe6bed4c2dd92842739f0f8141875d4c', './lib/notepad/index.php', '4.2', 0),
('fa01a82755ab697cfbfc8ca9bf8c9c16', './lib/notepad/notepadlib.php', '4.2', 0),
('737cfe6472cd86869e0076061c4a5c20', './lib/notifications/index.php', '4.2', 0),
('7325870ee7328cf06a79feae9eb1e008', './lib/notifications/notificationemaillib.php', '4.2', 0),
('8048e639e141c1fcedffa93381b935c8', './lib/notifications/notificationlib.php', '4.2', 0),
('9e96a3ffb4c6a2ed9a053ec1e566c5a9', './lib/objectlib.php', '4.2', 0),
('8d425fdf13fd9befe9d5daa7f07be0f0', './lib/ointegratelib.php', '4.2', 0),
('15eb4bcad7bd29b3e98487d034660c90', './lib/pagelist/pagelistlib.php', '4.2', 0),
('1daa6eacb23c2ec1d4d648aa8b7230d0', './lib/pclzip/pclzip.lib.php', '4.2', 0),
('499b6f496d51eaaf108dd753583c2181', './lib/pear/Auth.php', '4.2', 0),
('3985c28bc1393d54d659e0131c2d9c86', './lib/pear/Auth/Anonymous.php', '4.2', 0),
('30d3ab2654455baf49d7afd63504c4c7', './lib/pear/Auth/Auth.php', '4.2', 0),
('8ade2c7140187609cefbc28ad80f5487', './lib/pear/Auth/Container.php', '4.2', 0),
('c711bf32449e8f041a7068588caa1cd3', './lib/pear/Auth/Container/Array.php', '4.2', 0),
('79297cf2eba1f87544d5d5ba6549534c', './lib/pear/Auth/Container/DB.php', '4.2', 0),
('e18bdb1b11cbcb2f827fef2948329c9b', './lib/pear/Auth/Container/DBLite.php', '4.2', 0),
('e6e24dd0ac2cb4cb47e5e1a741679523', './lib/pear/Auth/Container/File.php', '4.2', 0),
('d3d10c5fae0c53f7bd7cbe1732130caf', './lib/pear/Auth/Container/IMAP.php', '4.2', 0),
('894af4f7050ca3cb9bf6f93bece2bd96', './lib/pear/Auth/Container/KADM5.php', '4.2', 0),
('c857d9d00787830cf570cec348c4af5d', './lib/pear/Auth/Container/LDAP.php', '4.2', 0),
('f1c1d23f619be87d8cb2c4193b74263c', './lib/pear/Auth/Container/MDB.php', '4.2', 0),
('e41e8391a572e5a43dadc48750263f96', './lib/pear/Auth/Container/MDB2.php', '4.2', 0),
('9308fde5956866dc28c9f57836cbe31d', './lib/pear/Auth/Container/Multiple.php', '4.2', 0),
('d34e1e007fdf33d48daa2a233cd24bcb', './lib/pear/Auth/Container/PEAR.php', '4.2', 0),
('aff6bc374dc4a011d49b9f5488bedf33', './lib/pear/Auth/Container/POP3.php', '4.2', 0),
('50816605e84106d6f317c1e527ff475d', './lib/pear/Auth/Container/RADIUS.php', '4.2', 0),
('101ac05314daf7587a120f52e80544bb', './lib/pear/Auth/Container/SAP.php', '4.2', 0),
('f4f90ff8a5fcedafb8ecab4f66a6b502', './lib/pear/Auth/Container/SMBPasswd.php', '4.2', 0),
('afae816a40ff82c22ceaf502972d2198', './lib/pear/Auth/Container/SOAP.php', '4.2', 0),
('884e2e191a7e669596fd4502e28f2a5b', './lib/pear/Auth/Container/SOAP5.php', '4.2', 0),
('33910da0f7c935a82f62c99c5f12df9b', './lib/pear/Auth/Container/index.php', '4.2', 0),
('3cb99259da67c049a2a2f23e0dbef399', './lib/pear/Auth/Container/vpopmail.php', '4.2', 0),
('7bc924a4c87b768e011b924371cbb9a5', './lib/pear/Auth/Controller.php', '4.2', 0),
('adfa3a887bf82f31dc53e627bfd5fd06', './lib/pear/Auth/Frontend/Html.php', '4.2', 0),
('18e52ca8db684c79c8771bcbf028d1cb', './lib/pear/Auth/OpenID.php', '4.2', 0),
('4e5b11eef8606bdc6766758ab101f1db', './lib/pear/Auth/OpenID/AX.php', '4.2', 0),
('baa3c1f652d580da6b8c108297eeea94', './lib/pear/Auth/OpenID/Association.php', '4.2', 0),
('ffc24e3b36355ce3d0f05667956b1f0b', './lib/pear/Auth/OpenID/BigMath.php', '4.2', 0),
('0ec43fdf3b08e68af94b30816423dad9', './lib/pear/Auth/OpenID/Consumer.php', '4.2', 0),
('5248bb22b327928a9eea805843cbd5fd', './lib/pear/Auth/OpenID/CryptUtil.php', '4.2', 0),
('024fba757fc732f51fd51301b36b1e5e', './lib/pear/Auth/OpenID/DatabaseConnection.php', '4.2', 0),
('016b7f017cec5912ee1b6bb8959bca43', './lib/pear/Auth/OpenID/DiffieHellman.php', '4.2', 0),
('c9c0b3f334a479779f5bc732b0761152', './lib/pear/Auth/OpenID/Discover.php', '4.2', 0),
('f4277d45116a1a76bcb0da347bc40765', './lib/pear/Auth/OpenID/DumbStore.php', '4.2', 0),
('51a2c033ffbdfd24d8a85999e12c46fa', './lib/pear/Auth/OpenID/Extension.php', '4.2', 0),
('c3b8b0876ee424f311fdd781d901f27f', './lib/pear/Auth/OpenID/FileStore.php', '4.2', 0),
('15f983b1c89afcf9c669fd3ee176ae75', './lib/pear/Auth/OpenID/HMACSHA1.php', '4.2', 0),
('9fcc9f8550ac9a0a46b41e9aa9c3a84d', './lib/pear/Auth/OpenID/Interface.php', '4.2', 0),
('d82e28a2302e56255073251b2e16c947', './lib/pear/Auth/OpenID/KVForm.php', '4.2', 0),
('ec327243c3ce9e7e4e7f463c70c9c44c', './lib/pear/Auth/OpenID/MemcachedStore.php', '4.2', 0),
('c64e87ea383b2e0c5d2068bb53412ab9', './lib/pear/Auth/OpenID/Message.php', '4.2', 0),
('20fdb95fdc44320351f071f703e19f27', './lib/pear/Auth/OpenID/MySQLStore.php', '4.2', 0),
('4a34434d8b568e060d53d39ee21b7bae', './lib/pear/Auth/OpenID/Nonce.php', '4.2', 0),
('9a0d9308b363476f8686c44635cba876', './lib/pear/Auth/OpenID/PAPE.php', '4.2', 0),
('bca0a5c3cf4e3aedd8d091e897233965', './lib/pear/Auth/OpenID/Parse.php', '4.2', 0),
('9d1214f85070da28c7c4bcbce1aaf987', './lib/pear/Auth/OpenID/PostgreSQLStore.php', '4.2', 0),
('e23fc04570b3b35934cd77470e6de9bc', './lib/pear/Auth/OpenID/SQLStore.php', '4.2', 0),
('e42d41d60d29724a715af3d2200d30dc', './lib/pear/Auth/OpenID/SQLiteStore.php', '4.2', 0),
('3b5725e2a54805540025ae1f6c223be2', './lib/pear/Auth/OpenID/SReg.php', '4.2', 0),
('bb382dc904ea10d77204ff057b498464', './lib/pear/Auth/OpenID/Server.php', '4.2', 0),
('86a2e3a568a04d22f4c9de879a15898f', './lib/pear/Auth/OpenID/ServerRequest.php', '4.2', 0),
('b6afd7b8d510841ff390a4a963ed5094', './lib/pear/Auth/OpenID/TrustRoot.php', '4.2', 0),
('167d009a4c13284d29218f24e9522c8b', './lib/pear/Auth/OpenID/URINorm.php', '4.2', 0),
('195253a2222d46ec533e8806bcbca290', './lib/pear/Auth/Yadis/HTTPFetcher.php', '4.2', 0),
('5cbc73cd0349dd31b6b06205d2f3da90', './lib/pear/Auth/Yadis/Manager.php', '4.2', 0),
('75b05c9cea35c9f0a66529facdeca073', './lib/pear/Auth/Yadis/Misc.php', '4.2', 0),
('f0e12929e26bc8b285092f5292883cbf', './lib/pear/Auth/Yadis/ParanoidHTTPFetcher.php', '4.2', 0),
('c03928c6835d46fcd9a44fbcdca904be', './lib/pear/Auth/Yadis/ParseHTML.php', '4.2', 0),
('4d64fa9c4927187ea782552dc9bd4faa', './lib/pear/Auth/Yadis/PlainHTTPFetcher.php', '4.2', 0),
('c078071a863ea09e77d1e147eaa1582c', './lib/pear/Auth/Yadis/XML.php', '4.2', 0),
('5c75a3ffdf25861bbc2238f46db85a39', './lib/pear/Auth/Yadis/XRDS.php', '4.2', 0),
('0ba55a95ae99c5b1b336b5fdec875bb9', './lib/pear/Auth/Yadis/XRI.php', '4.2', 0),
('4e7b7c2f855f68085e3834fd9cfd81dd', './lib/pear/Auth/Yadis/XRIRes.php', '4.2', 0),
('bd05891991d82c859fe734e1f3b2f508', './lib/pear/Auth/Yadis/Yadis.php', '4.2', 0),
('4d4bc7c2de4681cd75360631211dc40d', './lib/pear/Auth/index.php', '4.2', 0),
('6d7a3bbf0eb55a80246ff4bc14595fe2', './lib/pear/DB.php', '4.2', 0),
('57c701ab89afc55ac9274cd538e000e6', './lib/pear/DB/common.php', '4.2', 0),
('a7f83d56dee82ae547c4b387e8034489', './lib/pear/DB/dbase.php', '4.2', 0),
('161b10ffc11613ec9f7335adf22f5dd5', './lib/pear/DB/fbsql.php', '4.2', 0),
('b7245e08a2f9c5e5b7740344fbc49c17', './lib/pear/DB/ibase.php', '4.2', 0),
('ad9b54a4a07cddb535e2b64f7071b2fe', './lib/pear/DB/ifx.php', '4.2', 0),
('599ec7b47d5776ad86d673d68543b77a', './lib/pear/DB/index.php', '4.2', 0),
('98f00fc645792cd17aa8460b9c8a3c5a', './lib/pear/DB/msql.php', '4.2', 0),
('5c95bfc6f7e77328618be4b593968e77', './lib/pear/DB/mssql.php', '4.2', 0),
('d9e005512d97a284606728a9ebf83023', './lib/pear/DB/mysql.php', '4.2', 0),
('1c1f610eaf9522fefb35386526791694', './lib/pear/DB/mysqli.php', '4.2', 0),
('f7a7ed84a1edd49689478b67e0f810ed', './lib/pear/DB/oci8.php', '4.2', 0),
('6e8cafdb5e3f9921bf30c55269975e3f', './lib/pear/DB/odbc.php', '4.2', 0),
('72936ad98acaaaa832ab365ea115ec65', './lib/pear/DB/pgsql.php', '4.2', 0),
('88feb3cd91cfa1117ad93d02269e6db9', './lib/pear/DB/sqlite.php', '4.2', 0),
('da9d3699416092800f793dd4b5c890c7', './lib/pear/DB/storage.php', '4.2', 0),
('c16ec31559bc5b31f103ee05de419f21', './lib/pear/DB/sybase.php', '4.2', 0),
('1cc354629c288264f173ccda409d2ac9', './lib/pear/Date.php', '4.2', 0),
('964b8b39f4c3e1503569c4d9a1452eed', './lib/pear/Date/Calc.php', '4.2', 0),
('50b8aa1a54b07d5a4b605a17c6b74f81', './lib/pear/Date/Human.php', '4.2', 0),
('0220d004cca04814a956c2fcc8a782ce', './lib/pear/Date/Span.php', '4.2', 0),
('96eb161963b4d46342b080b314f13184', './lib/pear/Date/TimeZone.php', '4.2', 0),
('4389b90e1ba556489f6186622f956061', './lib/pear/Date/index.php', '4.2', 0),
('ae3e4163f4904ea74ecbe17941d74665', './lib/pear/HTTP/Request.php', '4.2', 0),
('0b2bf6bf9907a505efc2acd9a34eebf6', './lib/pear/HTTP/Request/Listener.php', '4.2', 0),
('de450b9058b371a96c9f922038f5a792', './lib/pear/HTTP/WebDAV/Client.php', '4.2', 0),
('74f0cdfc398cb31e265aae2a66db3145', './lib/pear/HTTP/WebDAV/Client/Stream.php', '4.2', 0),
('0dd723a09b26b627e96fd7cd9d239f57', './lib/pear/HTTP/WebDAV/Tools/_parse_lock_response.php', '4.2', 0),
('ee6aec5b54f662b35c23be417a9048c0', './lib/pear/HTTP/WebDAV/Tools/_parse_propfind_response.php', '4.2', 0),
('5ed44b6098295fc780017de9cd7c4d50', './lib/pear/HTTP/index.php', '4.2', 0),
('521bd5b60f22ba235274041b1dc87faa', './lib/pear/Net/DIME.php', '4.2', 0),
('2e9880aef8741aef23f8acd88a1acb67', './lib/pear/Net/DNS.php', '4.2', 0),
('7238e08ac04cd35c47a217b45d5ce8fc', './lib/pear/Net/DNS/Header.php', '4.2', 0),
('3f3803ecb2a410ab7f88226162a5cbea', './lib/pear/Net/DNS/Packet.php', '4.2', 0),
('827da26a4cf935f0f6187d174f5c5b51', './lib/pear/Net/DNS/Question.php', '4.2', 0),
('06b3afb7418733bc2f221711fade0b33', './lib/pear/Net/DNS/RR.php', '4.2', 0),
('819fc601210233bd4029a499dda7c5cb', './lib/pear/Net/DNS/RR/A.php', '4.2', 0),
('863bf97a5f81c47e59fab41853bddd89', './lib/pear/Net/DNS/RR/AAAA.php', '4.2', 0),
('d1c763d1a8b8b1bf380048aba9efb11c', './lib/pear/Net/DNS/RR/CNAME.php', '4.2', 0),
('5a73b193fc6ae8f40f893fe2e5386f8d', './lib/pear/Net/DNS/RR/HINFO.php', '4.2', 0),
('e8a44f5f773f8f3990dbb62ed21962f4', './lib/pear/Net/DNS/RR/MX.php', '4.2', 0),
('06f17b6ffa43dbfe6811846341a5a1a2', './lib/pear/Net/DNS/RR/NAPTR.php', '4.2', 0),
('800e54de5985038962c21ffa8f88c420', './lib/pear/Net/DNS/RR/NS.php', '4.2', 0),
('e47fce5f277e3e977793388d1564f9b9', './lib/pear/Net/DNS/RR/PTR.php', '4.2', 0),
('aee3fc814e718590d1cfe4f5295e4a29', './lib/pear/Net/DNS/RR/SOA.php', '4.2', 0),
('c9aedf777c33388ba25b4dbff5148d17', './lib/pear/Net/DNS/RR/SRV.php', '4.2', 0),
('8ff08c29b6137da0c14544770917b708', './lib/pear/Net/DNS/RR/TSIG.php', '4.2', 0),
('a68c4cbee7d724de4a9cd80784b16829', './lib/pear/Net/DNS/RR/TXT.php', '4.2', 0),
('bddc375c1a7dc4050153fc032ac53de0', './lib/pear/Net/DNS/Resolver.php', '4.2', 0),
('2f6fc5b6e4a4cd7bff8345c4c78e6c9b', './lib/pear/Net/LDAP2.php', '4.2', 0),
('e490ca69dad964882663b6530c819661', './lib/pear/Net/LDAP2/Entry.php', '4.2', 0),
('d2f1e326ccb87e5cceb0ef353a849d21', './lib/pear/Net/LDAP2/Filter.php', '4.2', 0),
('e7d6bdb64b3228b1648739ce547a7261', './lib/pear/Net/LDAP2/LDIF.php', '4.2', 0),
('8f2565242c1e271cc3302b1c024d8160', './lib/pear/Net/LDAP2/RootDSE.php', '4.2', 0),
('5047524cd0bb1742c92f2f65457b2f9f', './lib/pear/Net/LDAP2/Schema.php', '4.2', 0),
('39b4749e4082c91f7f8a00cad2052986', './lib/pear/Net/LDAP2/SchemaCache.interface.php', '4.2', 0),
('029bb8ceb590caceeb1e2358269ffe1c', './lib/pear/Net/LDAP2/Search.php', '4.2', 0),
('45d913bc56b264a72c1fb05bafba8ade', './lib/pear/Net/LDAP2/SimpleFileSchemaCache.php', '4.2', 0),
('8d3bfff262f22ac4e1638de8b0ce8d16', './lib/pear/Net/LDAP2/Util.php', '4.2', 0),
('0b9af8aca1d784cb4d273f7adcef5103', './lib/pear/Net/Ping.php', '4.2', 0),
('932f5fa83613be28fdb8f2b9dc145ca3', './lib/pear/Net/Socket.php', '4.2', 0),
('8a660a166aaa895befada60e66a47dd3', './lib/pear/Net/URL.php', '4.2', 0),
('462e156e69059a600e133d510a9cdb30', './lib/pear/Net/index.php', '4.2', 0),
('7142b3a399864f7dff990ada5620692e', './lib/pear/OS/Guess.php', '4.2', 0),
('ee1c4c31c269c5872a18dab3a9061f28', './lib/pear/PEAR.php', '4.2', 0),
('7fdd9dd2d0d4072db9267582df40ee9c', './lib/pear/PEAR/Builder.php', '4.2', 0),
('e8c96da49c2251aa05754c3cf97b4d4d', './lib/pear/PEAR/ChannelFile.php', '4.2', 0),
('a23a0e1d528a56a382d6aa4bf131fcb5', './lib/pear/PEAR/ChannelFile/Parser.php', '4.2', 0),
('821fc55dcd0ca199d3a9da2655716177', './lib/pear/PEAR/Command.php', '4.2', 0),
('8154f1baca43e41781cd3bbe094230a8', './lib/pear/PEAR/Command/Auth.php', '4.2', 0),
('2af3d1912b4b6aef6bf17db5e01f257e', './lib/pear/PEAR/Command/Build.php', '4.2', 0),
('1e7a7f9174b9788e168c6ca450609419', './lib/pear/PEAR/Command/Channels.php', '4.2', 0),
('89f1dc80f28544a23c4eb05ce67ccf46', './lib/pear/PEAR/Command/Common.php', '4.2', 0),
('5ee8c85828686b560594569ee1263238', './lib/pear/PEAR/Command/Config.php', '4.2', 0),
('db756b987329301db8bef71d41bdb48e', './lib/pear/PEAR/Command/Install.php', '4.2', 0),
('b1c6d624fa98d7f95948e1bca76c46b5', './lib/pear/PEAR/Command/Mirror.php', '4.2', 0),
('20e1853f1f61436d38b5304e544abb44', './lib/pear/PEAR/Command/Package.php', '4.2', 0),
('ace988de7f48ad07ef5954f7cb386dc1', './lib/pear/PEAR/Command/Pickle.php', '4.2', 0),
('1eb7e236f43aa186a2979fcebf76902d', './lib/pear/PEAR/Command/Registry.php', '4.2', 0),
('92c785a64da88610daaee2ddff951d10', './lib/pear/PEAR/Command/Remote.php', '4.2', 0),
('8f94c1b9b79cdbacb38cc408f726526e', './lib/pear/PEAR/Command/Test.php', '4.2', 0),
('f796f0cd05c7ab1e2ede3ad9673de69c', './lib/pear/PEAR/Common.php', '4.2', 0),
('44f546c33394fe782243cb967a68b88f', './lib/pear/PEAR/Config.php', '4.2', 0),
('e10614808889be3f2fdece6e3f9e73d4', './lib/pear/PEAR/Dependency.php', '4.2', 0),
('9662d182660c16690afc7f26a42a142a', './lib/pear/PEAR/Dependency2.php', '4.2', 0),
('02f1d96789cbecfe3e7e241eda2aa2b7', './lib/pear/PEAR/DependencyDB.php', '4.2', 0),
('44bbe7bae0b00a305b989e2830d3bee7', './lib/pear/PEAR/Downloader.php', '4.2', 0),
('06cb3419355e23ad6c654e8279cb1166', './lib/pear/PEAR/Downloader/Package.php', '4.2', 0),
('af4a520ca55d91bd3891ed1295b27f86', './lib/pear/PEAR/ErrorStack.php', '4.2', 0),
('4b66dc7bf749ab902b6efb71efda14cf', './lib/pear/PEAR/Exception.php', '4.2', 0),
('1238cf62eefe73ce8bb955e2a56b513c', './lib/pear/PEAR/FixPHP5PEARWarnings.php', '4.2', 0),
('8d1177902650a7e91d1ae61f231b9f2f', './lib/pear/PEAR/Frontend.php', '4.2', 0),
('a72e6bcd759841310337ddc17e816132', './lib/pear/PEAR/Frontend/CLI.php', '4.2', 0),
('c8695b29af6a0d75ebc197cc0d6bddad', './lib/pear/PEAR/Installer.php', '4.2', 0),
('4bd494bb370a2418b8072ec732ca92ad', './lib/pear/PEAR/Installer/Role.php', '4.2', 0),
('3fb2045c4328ba0f0791e6c46aabce8a', './lib/pear/PEAR/Installer/Role/Cfg.php', '4.2', 0),
('b92412d192b39de87fd3cfb356215e26', './lib/pear/PEAR/Installer/Role/Common.php', '4.2', 0),
('da4e5d80a37dd53618f8f25de266a6c0', './lib/pear/PEAR/Installer/Role/Data.php', '4.2', 0),
('8ce6b8da0c801cbd30288db459e34f6d', './lib/pear/PEAR/Installer/Role/Doc.php', '4.2', 0),
('eb4558eda00f0b77956491e5dd14bf6b', './lib/pear/PEAR/Installer/Role/Ext.php', '4.2', 0),
('02c809b8a0b3aa221b7085cb609b4183', './lib/pear/PEAR/Installer/Role/Php.php', '4.2', 0),
('f835735b01aa530010bcaab3b47b0fa3', './lib/pear/PEAR/Installer/Role/Script.php', '4.2', 0),
('712a2d00271b4d522d09abd0a83da6b6', './lib/pear/PEAR/Installer/Role/Src.php', '4.2', 0),
('6309ac78005d025586019ffc73c5aeee', './lib/pear/PEAR/Installer/Role/Test.php', '4.2', 0),
('953179037c360a500af806463926b55a', './lib/pear/PEAR/Installer/Role/Www.php', '4.2', 0),
('46a2cde16cd2d8d1f029c3ed3ff3071a', './lib/pear/PEAR/PackageFile.php', '4.2', 0),
('ad49e95616e4d34dbcdca0fec3f09d6a', './lib/pear/PEAR/PackageFile/Generator/v1.php', '4.2', 0),
('2706cd6b18e56994aa948f3ef545f883', './lib/pear/PEAR/PackageFile/Generator/v2.php', '4.2', 0),
('b3b9c15673f360fd8084c4b5c801049d', './lib/pear/PEAR/PackageFile/Parser/v1.php', '4.2', 0),
('f3d9e7e03eb8e9581b1c96025f8bd626', './lib/pear/PEAR/PackageFile/Parser/v2.php', '4.2', 0),
('7a7cfa88daa047fa63355ad5892b5fc8', './lib/pear/PEAR/PackageFile/v1.php', '4.2', 0),
('e2293366617a7b206dee7ed3c1ac4f76', './lib/pear/PEAR/PackageFile/v2.php', '4.2', 0),
('50ceec8455585a285b671febd2884dc3', './lib/pear/PEAR/PackageFile/v2/Validator.php', '4.2', 0),
('21d9d8a12f2a3d1cb80baeee4d8ff7a9', './lib/pear/PEAR/PackageFile/v2/rw.php', '4.2', 0),
('9571d777d12418a53c76c3e70b8194ba', './lib/pear/PEAR/Packager.php', '4.2', 0),
('009a23c4df085c17e56d0740f0f0fb27', './lib/pear/PEAR/REST.php', '4.2', 0),
('567358fbdc324552abc8858fbb55b645', './lib/pear/PEAR/REST/10.php', '4.2', 0),
('c76624762ee35b50391e8aa3e9c4b45e', './lib/pear/PEAR/REST/11.php', '4.2', 0),
('71c615d8545733f39a3cd02b197d011b', './lib/pear/PEAR/REST/13.php', '4.2', 0),
('7f3ca8a7b3ca7e499b20ee48244a309e', './lib/pear/PEAR/Registry.php', '4.2', 0),
('9f2dbbfe5eed5033dd807e48fad7162d', './lib/pear/PEAR/Remote.php', '4.2', 0),
('f53a213649c373b0353592f35188503c', './lib/pear/PEAR/RunTest.php', '4.2', 0),
('a4adcafc692b67d889aacfc8e0e3849b', './lib/pear/PEAR/Task/Common.php', '4.2', 0),
('c79bcbb936b967cd9615739781b285dd', './lib/pear/PEAR/Task/Postinstallscript.php', '4.2', 0),
('7ba6ec8d585a22be3a504bb6776c09be', './lib/pear/PEAR/Task/Postinstallscript/rw.php', '4.2', 0),
('60b86b2961f5ddd5dbbcea9d56f49154', './lib/pear/PEAR/Task/Replace.php', '4.2', 0),
('5ab6db56d93fcf61e0ea6cac02d44337', './lib/pear/PEAR/Task/Replace/rw.php', '4.2', 0),
('4bb56d233b5dd2e735cb6862213b55e4', './lib/pear/PEAR/Task/Unixeol.php', '4.2', 0),
('8e8da9a75829f78bc2bb7752ae60a5ef', './lib/pear/PEAR/Task/Unixeol/rw.php', '4.2', 0),
('173189090bc2cfee89e2e0247ff3eaa6', './lib/pear/PEAR/Task/Windowseol.php', '4.2', 0),
('fe5ab3da07067d9def9cf99a3c3cd90c', './lib/pear/PEAR/Task/Windowseol/rw.php', '4.2', 0),
('a9ccad4012c2aff3072ea3a500125f86', './lib/pear/PEAR/Validate.php', '4.2', 0),
('ecb89be0247b7911d7437ee1a00e1a7c', './lib/pear/PEAR/Validator/PECL.php', '4.2', 0),
('829568582dfa0feddd47644014a67ebf', './lib/pear/PEAR/XMLParser.php', '4.2', 0),
('1e11406b251d05d191d0467b3388eb86', './lib/pear/Services/JSON.php', '4.2', 0),
('63b47fcfd7b1996577cbb321b6851711', './lib/pear/System.php', '4.2', 0),
('7787d81566cb7342ffcb126a750b990a', './lib/pear/Text/Wiki.php', '4.2', 0),
('2399ccd2fed0de6387e770470d63ca29', './lib/pear/Text/Wiki/Default.php', '4.2', 0),
('0e3a429b0dcdd1dfeec9a77e0d1427c4', './lib/pear/Text/Wiki/Mediawiki.php', '4.2', 0),
('c3dd1415981633e868494f13984259e5', './lib/pear/Text/Wiki/Parse.php', '4.2', 0),
('fa4d0dd619696699ad029cae14332eef', './lib/pear/Text/Wiki/Parse/Default/Anchor.php', '4.2', 0),
('b1cc529c6db9121300a64d874bb21fb4', './lib/pear/Text/Wiki/Parse/Default/Blockquote.php', '4.2', 0),
('1dde8ffd06301b9c82137d160c08b29c', './lib/pear/Text/Wiki/Parse/Default/Bold.php', '4.2', 0),
('67aa3d50ab34a755b6c0e726d0a60c3f', './lib/pear/Text/Wiki/Parse/Default/Break.php', '4.2', 0),
('142ae6e1d86ddc41d25f67d5a28d74c1', './lib/pear/Text/Wiki/Parse/Default/Center.php', '4.2', 0),
('19fa671a5461501b042652a2129e4c4e', './lib/pear/Text/Wiki/Parse/Default/Code.php', '4.2', 0),
('7281cf18d8d681d93bd16c080c01af17', './lib/pear/Text/Wiki/Parse/Default/Colortext.php', '4.2', 0),
('c6ae3583eaff43230c07e1151a4f3b9f', './lib/pear/Text/Wiki/Parse/Default/Deflist.php', '4.2', 0),
('9f6468c4ba51e603cc9f1acf901f925c', './lib/pear/Text/Wiki/Parse/Default/Delimiter.php', '4.2', 0),
('ec5ef03de5cc155559afb6f0722ba779', './lib/pear/Text/Wiki/Parse/Default/Embed.php', '4.2', 0),
('5c2d85066e03b2c74d49dd8a419df30a', './lib/pear/Text/Wiki/Parse/Default/Emphasis.php', '4.2', 0),
('bccff7ca36e2afc33cfdd23699d3aa6f', './lib/pear/Text/Wiki/Parse/Default/Freelink.php', '4.2', 0),
('96ebbed3ed6d610544f42e5e2620d687', './lib/pear/Text/Wiki/Parse/Default/Function.php', '4.2', 0),
('407bad7cd535a595e56bddde34f206ca', './lib/pear/Text/Wiki/Parse/Default/Heading.php', '4.2', 0),
('124bac15d98249133c7e374078ce9e47', './lib/pear/Text/Wiki/Parse/Default/Horiz.php', '4.2', 0),
('baec74d247a84b27c136a3f2f8ed2808', './lib/pear/Text/Wiki/Parse/Default/Html.php', '4.2', 0),
('b73201e9a37bbcbd5cb190614573600c', './lib/pear/Text/Wiki/Parse/Default/Image.php', '4.2', 0),
('0c69ea1cd9993e80a914fe327e89eafa', './lib/pear/Text/Wiki/Parse/Default/Include.php', '4.2', 0),
('7e5bdd2c68fb20f78ca476439f6bfab7', './lib/pear/Text/Wiki/Parse/Default/Interwiki.php', '4.2', 0),
('1025a334b448174b516a09ee43e4f1b8', './lib/pear/Text/Wiki/Parse/Default/Italic.php', '4.2', 0),
('368ef9977d64a96f28ccd6b3a030dc35', './lib/pear/Text/Wiki/Parse/Default/List.php', '4.2', 0),
('935a79ce5f404b7b83d95dcee9ed41ef', './lib/pear/Text/Wiki/Parse/Default/Newline.php', '4.2', 0),
('4a02efe2160d11ec462c2fb4227ecd0d', './lib/pear/Text/Wiki/Parse/Default/Paragraph.php', '4.2', 0),
('17cef3ba74b9b4918b657683129fe87a', './lib/pear/Text/Wiki/Parse/Default/Phplookup.php', '4.2', 0),
('8846c3f3304ea992edc539154a2a2781', './lib/pear/Text/Wiki/Parse/Default/Prefilter.php', '4.2', 0),
('42d8aa3a43ae7554ac36f4205b10d446', './lib/pear/Text/Wiki/Parse/Default/Raw.php', '4.2', 0),
('cc2fad29b9ec288f0849e8278d099fef', './lib/pear/Text/Wiki/Parse/Default/Revise.php', '4.2', 0),
('f2e1eb63f755995035c57a8accf1af54', './lib/pear/Text/Wiki/Parse/Default/Smiley.php', '4.2', 0),
('3829886dacd927724cd069d92615728b', './lib/pear/Text/Wiki/Parse/Default/Strong.php', '4.2', 0),
('bdd5c9a8485d122cd75be4720c61886c', './lib/pear/Text/Wiki/Parse/Default/Subscript.php', '4.2', 0),
('aaf24e97b909f5b5b46bf633bea4178b', './lib/pear/Text/Wiki/Parse/Default/Superscript.php', '4.2', 0),
('a44f170f00b9eaa319f6f9c5ca7ebf8c', './lib/pear/Text/Wiki/Parse/Default/Table.php', '4.2', 0),
('6622bf5f950928c43d0f9644ffbb93db', './lib/pear/Text/Wiki/Parse/Default/Tighten.php', '4.2', 0),
('f6ad066d9edd83bdc42ec6c62f5e8b0e', './lib/pear/Text/Wiki/Parse/Default/Toc.php', '4.2', 0),
('c04e6a512abc844399583c2c24ba9bc2', './lib/pear/Text/Wiki/Parse/Default/Tt.php', '4.2', 0),
('9c1b8d06abecc8c0b536826dda1da4f0', './lib/pear/Text/Wiki/Parse/Default/Underline.php', '4.2', 0),
('183148d3dcd28cfecac8a0646cd5a2e3', './lib/pear/Text/Wiki/Parse/Default/Url.php', '4.2', 0),
('e4a8f4384643931422c959e92fe9a117', './lib/pear/Text/Wiki/Parse/Default/Wikilink.php', '4.2', 0),
('ff72a42439e31bf7270244659fa6d4ad', './lib/pear/Text/Wiki/Parse/Mediawiki/Break.php', '4.2', 0),
('87b8c59283e2881fdb9460114ea092a3', './lib/pear/Text/Wiki/Parse/Mediawiki/Code.php', '4.2', 0),
('bd7b6e175e0327f1ea2ea1a72ad9975a', './lib/pear/Text/Wiki/Parse/Mediawiki/Comment.php', '4.2', 0),
('90d2a899c45fe104a6b5405ccef90d90', './lib/pear/Text/Wiki/Parse/Mediawiki/Deflist.php', '4.2', 0),
('6a9b7255c69f7dc08c7d687e78133bc8', './lib/pear/Text/Wiki/Parse/Mediawiki/Emphasis.php', '4.2', 0),
('80652a58ce5c8d2b31cf598ae3fd3621', './lib/pear/Text/Wiki/Parse/Mediawiki/Heading.php', '4.2', 0),
('5b46541e8bab0766c21b25592f05be17', './lib/pear/Text/Wiki/Parse/Mediawiki/List.php', '4.2', 0),
('55e466e84a30e62447ee7ac847292594', './lib/pear/Text/Wiki/Parse/Mediawiki/Newline.php', '4.2', 0),
('28f397cd31f0203883feec26e7b1abca', './lib/pear/Text/Wiki/Parse/Mediawiki/Preformatted.php', '4.2', 0),
('f50c2a3a7dc4fb63b01eca070387b870', './lib/pear/Text/Wiki/Parse/Mediawiki/Raw.php', '4.2', 0),
('9c8113434bdb139258001313a01e03c1', './lib/pear/Text/Wiki/Parse/Mediawiki/Redirect.php', '4.2', 0),
('9cc5d5f5f03543170a8e523fe57288f5', './lib/pear/Text/Wiki/Parse/Mediawiki/Subscript.php', '4.2', 0),
('b0c8046635e60af04e44cdb0f23a3843', './lib/pear/Text/Wiki/Parse/Mediawiki/Superscript.php', '4.2', 0),
('84a42b1197763ce6fce33ced8c1d84ec', './lib/pear/Text/Wiki/Parse/Mediawiki/Table.php', '4.2', 0),
('2234a9e8664d22f6b1f56c88b62b1ae0', './lib/pear/Text/Wiki/Parse/Mediawiki/Tt.php', '4.2', 0),
('17c1480143a2559436ee60f7dcafffd3', './lib/pear/Text/Wiki/Parse/Mediawiki/Url.php', '4.2', 0),
('eab780b585b7d33d13c05f999548de4e', './lib/pear/Text/Wiki/Parse/Mediawiki/Wikilink.php', '4.2', 0),
('456c5ee6635bed2a5452f7aaa2373b65', './lib/pear/Text/Wiki/Render.php', '4.2', 0),
('0967f512492ad4995b272ef101101b23', './lib/pear/Text/Wiki/Render/Tiki.php', '4.2', 0),
('9714e69c9fa2da32eb8f29367a993582', './lib/pear/Text/Wiki/Render/Tiki/Anchor.php', '4.2', 0),
('aaf2b0ba1fafe86f780b68a005a99f3d', './lib/pear/Text/Wiki/Render/Tiki/Blockquote.php', '4.2', 0),
('c559e687414a19d804e9dfdcdef0f325', './lib/pear/Text/Wiki/Render/Tiki/Bold.php', '4.2', 0),
('f07fc5f729f31e7db24367f4e3e4f318', './lib/pear/Text/Wiki/Render/Tiki/Box.php', '4.2', 0),
('7051a857370e556c43ab6afe552864ad', './lib/pear/Text/Wiki/Render/Tiki/Break.php', '4.2', 0),
('bf3d0f02367f520a8b97767337ae1393', './lib/pear/Text/Wiki/Render/Tiki/Center.php', '4.2', 0),
('9e9799b1942353efc8b5b8986a801a65', './lib/pear/Text/Wiki/Render/Tiki/Code.php', '4.2', 0),
('25bf40ee91b1e44e4f40aa6740c63cfd', './lib/pear/Text/Wiki/Render/Tiki/Colortext.php', '4.2', 0),
('ed7365c4d6231997810b9f4e4005b33e', './lib/pear/Text/Wiki/Render/Tiki/Deflist.php', '4.2', 0),
('db2ac931322be2984d237faa699e2bf1', './lib/pear/Text/Wiki/Render/Tiki/Delimiter.php', '4.2', 0),
('caf86ec6efca23e668f20f2535655646', './lib/pear/Text/Wiki/Render/Tiki/Embed.php', '4.2', 0),
('abbbb5a6963be619093ef2e3bf645e9d', './lib/pear/Text/Wiki/Render/Tiki/Emphasis.php', '4.2', 0),
('9f79db9b148e5deeda98fec6e0c26e02', './lib/pear/Text/Wiki/Render/Tiki/Freelink.php', '4.2', 0),
('4e04d5dfa534b2fb97b6f0fc71794461', './lib/pear/Text/Wiki/Render/Tiki/Function.php', '4.2', 0),
('76bc7d5262d745900a4a2f59fe451920', './lib/pear/Text/Wiki/Render/Tiki/Heading.php', '4.2', 0),
('b1e2afe854e5ea9f65a7249c08ec66a1', './lib/pear/Text/Wiki/Render/Tiki/Horiz.php', '4.2', 0),
('3875ba86827984244008eb8f654bb4b4', './lib/pear/Text/Wiki/Render/Tiki/Html.php', '4.2', 0),
('ccfd4aa02681daf44d09f5f1840e8ea3', './lib/pear/Text/Wiki/Render/Tiki/Image.php', '4.2', 0),
('62f780b833bf82057c1ac64d69f4d727', './lib/pear/Text/Wiki/Render/Tiki/Include.php', '4.2', 0),
('385591aa1714db3c290c7d9683275914', './lib/pear/Text/Wiki/Render/Tiki/Interwiki.php', '4.2', 0),
('f057022ae6c1bb6348bdc3e72c8c20e4', './lib/pear/Text/Wiki/Render/Tiki/Italic.php', '4.2', 0),
('c6e25882004e683972c00e1ffb250baf', './lib/pear/Text/Wiki/Render/Tiki/List.php', '4.2', 0),
('e4391e07a87c9853d894d4f5d00e1f59', './lib/pear/Text/Wiki/Render/Tiki/Newline.php', '4.2', 0),
('1d461a273eb6ee0eb94e6c20ccc17a61', './lib/pear/Text/Wiki/Render/Tiki/Paragraph.php', '4.2', 0),
('24dac39027cc2a47355631b9e11c0210', './lib/pear/Text/Wiki/Render/Tiki/Phplookup.php', '4.2', 0),
('bde2f22c759db291cc9b906f3c2e98be', './lib/pear/Text/Wiki/Render/Tiki/Prefilter.php', '4.2', 0),
('be7f430bd5d611fb82dd9da6cc1dfc6a', './lib/pear/Text/Wiki/Render/Tiki/Preformatted.php', '4.2', 0),
('3d2221b4887de35aec3dfe8243ad364b', './lib/pear/Text/Wiki/Render/Tiki/Raw.php', '4.2', 0),
('a32009f3c2b0fd0d68e61ec138367ac1', './lib/pear/Text/Wiki/Render/Tiki/Redirect.php', '4.2', 0),
('011cee9815fe659e55223d5aed08f3a6', './lib/pear/Text/Wiki/Render/Tiki/Revise.php', '4.2', 0),
('d8c5a69b5f8fd0a81bf116ff07979c9e', './lib/pear/Text/Wiki/Render/Tiki/Strong.php', '4.2', 0),
('37693332c42fa2f65b97a7eb627a2797', './lib/pear/Text/Wiki/Render/Tiki/Subscript.php', '4.2', 0),
('cd5d893b9434b375e4d4fd5eb83775e4', './lib/pear/Text/Wiki/Render/Tiki/Superscript.php', '4.2', 0),
('26cd169ae69891b7c10c0e0991933d2e', './lib/pear/Text/Wiki/Render/Tiki/Table.php', '4.2', 0),
('6afbede158cb6c4f66843f681232bd65', './lib/pear/Text/Wiki/Render/Tiki/Tighten.php', '4.2', 0),
('45eb9bcd7c9f2146bc6604501c7b4670', './lib/pear/Text/Wiki/Render/Tiki/Toc.php', '4.2', 0),
('f0b9830e7675c010e7981ce6b43de773', './lib/pear/Text/Wiki/Render/Tiki/Tt.php', '4.2', 0),
('38542123cafbf123ce8bef34ac3ca1d2', './lib/pear/Text/Wiki/Render/Tiki/Underline.php', '4.2', 0),
('8af96a8556219fda316400f1e11c1441', './lib/pear/Text/Wiki/Render/Tiki/Url.php', '4.2', 0),
('4a29d61bb9728131cf19eefd7ab0a3b9', './lib/pear/Text/Wiki/Render/Tiki/Wikilink.php', '4.2', 0),
('496e76223279ebaf8f5c88c38d6da13b', './lib/pear/Text/Wiki/Tiki.php', '4.2', 0),
('a259129574a6074b806ae36ececa3f88', './lib/pear/XML/Dump.php', '4.2', 0),
('809edbab489c1b42f7ed21fd9ff7fcfe', './lib/pear/XML/RPC.php', '4.2', 0),
('fb6d0f2d949d46834e9174379a913d89', './lib/pear/XML/Server.php', '4.2', 0),
('c13c44306fec6a6c6c0d435d490b0584', './lib/pear/XML/index.php', '4.2', 0),
('b675448fcc1ea31cea4db8c4169bcb1c', './lib/pear/XML_Parser/Parser.php', '4.2', 0),
('461bfbb139507776329bc957e1c1069b', './lib/pear/XML_Parser/Parser/Simple.php', '4.2', 0),
('16c00cd2cc29cc4e815897e0fdf99bcc', './lib/pear/XML_Parser/examples/xml_parser_file.php', '4.2', 0),
('4640f4e41a20df8f36314443aaa6cd10', './lib/pear/XML_Parser/examples/xml_parser_funcmode.php', '4.2', 0),
('4dbd6fe63e22370d306df173c79b269c', './lib/pear/XML_Parser/examples/xml_parser_handler.php', '4.2', 0),
('a48097891c44d4287aa0f2e6c8362fac', './lib/pear/XML_Parser/examples/xml_parser_simple1.php', '4.2', 0),
('e808267e22f328016975fe22813ecd96', './lib/pear/XML_Parser/examples/xml_parser_simple2.php', '4.2', 0),
('5193261625e5c50d913b9b46a617c819', './lib/pear/XML_Parser/examples/xml_parser_simple_handler.php', '4.2', 0),
('c5b77f8b27c26414528eb8b7b52538ae', './lib/pear/index.php', '4.2', 0),
('8732c745cbfc77007fb5240a33e804c0', './lib/perspectivelib.php', '4.2', 0),
('54ecc8fcfc35272d60eaca57d37ac6bc', './lib/phplayers/DUMPS/index.php', '4.2', 0),
('ef3ee036d8c2d5321b8a0f10481b340d', './lib/phplayers/LOGOS/index.php', '4.2', 0),
('e498bdac4e103231ef7b84b3fa3da35c', './lib/phplayers/THEMES/index.php', '4.2', 0),
('4f28ea56403c896fd6c3ab4ba621bd03', './lib/phplayers/demo.php', '4.2', 0),
('87e0e947cb5e62754ba622c3b432fa54', './lib/phplayers/example-db-hormenu.php', '4.2', 0),
('a9b55f7a72d62b948a791c1e591b5c5a', './lib/phplayers/example-db-treemenu.notshown.php', '4.2', 0),
('5129d3c8e90317a46a23badbac9213ae', './lib/phplayers/example-db-treemenu.php', '4.2', 0),
('378d07ee3867009aa09cb21b8821d5c6', './lib/phplayers/example-dbtofile.php', '4.2', 0),
('151adaeff20616da3e7fe265bf934401', './lib/phplayers/example-filetodb.php', '4.2', 0),
('858c85a048a271fcab244b08ac2c18ba', './lib/phplayers/example-frame-body.php', '4.2', 0),
('09985b56d0e1797c214714ce62b1eddd', './lib/phplayers/example-frame-treemenu.php', '4.2', 0),
('b13a94adcb32441f087f939922540975', './lib/phplayers/example-hormenu-old.php', '4.2', 0),
('50c56d66056419d0960ecff608c229d3', './lib/phplayers/example-hormenu.php', '4.2', 0),
('a424914f5ee4bb4879a028fb2dd94263', './lib/phplayers/example-hormenu_and_treemenu.php', '4.2', 0),
('66071cfb25f071853c8db083d43a2f2f', './lib/phplayers/example-hormenu_and_vermenu.php', '4.2', 0),
('ddeda807ddb26e9958b1dfef92e208f4', './lib/phplayers/example-horplainmenu.php', '4.2', 0),
('b69323dad5891e243b0be1cc5a12fd1f', './lib/phplayers/example-layersmenus_and_treemenus.php', '4.2', 0),
('e9d02f69b11d57f8c7c70f64e2248423', './lib/phplayers/example-phptreemenu.php', '4.2', 0),
('12913d34b4a9689f43c1f5f1c894af89', './lib/phplayers/example-see-through.php', '4.2', 0),
('51ebcdd826c431d585213c247311494e', './lib/phplayers/example-treemenu.php', '4.2', 0),
('343e21f12601450c7c3ca1062728d523', './lib/phplayers/example-two_treemenus.php', '4.2', 0),
('c82d03970c6643a47223be479eeaca2e', './lib/phplayers/example-vermenu.php', '4.2', 0),
('4fd713af5150521a6c683c7fe45795c7', './lib/phplayers/example-verplainmenu.php', '4.2', 0),
('fb2e2588536cbfceda875c9ca438d676', './lib/phplayers/images/index.php', '4.2', 0),
('e47b03c660307b523eb894025efa2184', './lib/phplayers/index.php', '4.2', 0),
('8bb1c2e2f077f31bb5b0b113037ce639', './lib/phplayers/lib/PHPLIB.php', '4.2', 0),
('9a6dd12248357d6013d9029e1fb1c3e9', './lib/phplayers/lib/index.php', '4.2', 0),
('ad2848e382b6b2bb510f51a4d7b52034', './lib/phplayers/lib/layersmenu-browser_detection.php', '4.2', 0),
('26a0752ac401d311357e0c92a885bfa9', './lib/phplayers/lib/layersmenu-common.inc.php', '4.2', 0),
('dafd894557ca2019130450793fd0bc65', './lib/phplayers/lib/layersmenu-process.inc.php', '4.2', 0),
('06367b5497e0dcca3cc782d6d49635c9', './lib/phplayers/lib/layersmenu.inc.php', '4.2', 0),
('3542444e91554d4bcd24a04375ef6288', './lib/phplayers/lib/phptreemenu.inc.php', '4.2', 0),
('250e9cbce90feae16a31acf43c61f5f6', './lib/phplayers/lib/plainmenu.inc.php', '4.2', 0),
('37b1a0075e59859950c75777716d0492', './lib/phplayers/lib/treemenu.inc.php', '4.2', 0),
('9746a635105e5657c3fdee49eed95a6c', './lib/phplayers/libjs/index.php', '4.2', 0),
('594613b891934ad88b5bed6dca11f8bd', './lib/phplayers/phplayersindex.php', '4.2', 0),
('1f83a4fd59c1922f1fb2339fbd419668', './lib/phplayers/templates/index.php', '4.2', 0),
('4b4c6d97f5a21999eedb38e1a2e9e4e5', './lib/phplayers_tiki/index.php', '4.2', 0),
('dfda07686e0b64b0537eb6342a50251a', './lib/phplayers_tiki/lib/index.php', '4.2', 0),
('e6fafe7df1eed5e4df7ccf3cfe3a849b', './lib/phplayers_tiki/lib/layersmenu-common.inc.php', '4.2', 0),
('3bbb9388c1de6a766d2079404975e620', './lib/phplayers_tiki/templates/index.php', '4.2', 0),
('2e108cbc0e43ca94356cca0f6440fc7b', './lib/phplayers_tiki/tiki-phplayers.php', '4.2', 0),
('5a7f24d1efb7eed7c169dacf8a0f891e', './lib/polls/index.php', '4.2', 0),
('db741d3f2b103168261710daa4624220', './lib/polls/polllib.php', '4.2', 0),
('15a3060fbfa954b3161833e9dcb08abe', './lib/polls/polllib_shared.php', '4.2', 0),
('11bf4dd5150f5395e70b5cdb8eff5fe0', './lib/prefs/allowmsg.php', '4.2', 0),
('483033b3f735d869d3d6bc113961cee9', './lib/prefs/art.php', '4.2', 0),
('171b0c89c4d80f22930c8d9f396db9bd', './lib/prefs/article.php', '4.2', 0),
('099cba4d668ae45412500f73a4d333c6', './lib/prefs/articles.php', '4.2', 0),
('1638c52a2240a7faff133daeb04fccaf', './lib/prefs/auth.php', '4.2', 0),
('307bed4fe6d116d5e22fbbe9c5dbf43c', './lib/prefs/available.php', '4.2', 0),
('d41d8cd98f00b204e9800998ecf8427e', './lib/prefs/babelfish.php', '4.2', 0),
('1f98c62b58f01cd3cd37814b63fdfb11', './lib/prefs/blog.php', '4.2', 0),
('8800a9f7e3eac7fa0532db62c8821135', './lib/prefs/blogues.php', '4.2', 0),
('46a928fb366b98e66e9c26abd5936b11', './lib/prefs/categories.php', '4.2', 0),
('fc6dab2b8d57e74779a40268b27cfe69', './lib/prefs/categorypath.php', '4.2', 0),
('5e0b0fb0beb3aa7f7a58f8d6a4d8b6c3', './lib/prefs/change.php', '4.2', 0),
('4865dbf21b0e7ba6b7b9ca201a8865c9', './lib/prefs/cms.php', '4.2', 0),
('3c266df3e55adf37c5cb04430a84b56e', './lib/prefs/contact.php', '4.2', 0),
('270f3f3852a7842f1a382c31b5f6e4bd', './lib/prefs/count.php', '4.2', 0),
('d6fc0872c97ae9843dcb2d63683fdc79', './lib/prefs/default.php', '4.2', 0),
('b1944c8b23c3773b85c687617b2d603b', './lib/prefs/desc.php', '4.2', 0),
('1429f33259cee33764cd6b4e15ae38f4', './lib/prefs/directory.php', '4.2', 0),
('b13eb6614e96487597f426fadf5771cd', './lib/prefs/error.php', '4.2', 0),
('83efb03dcc3fd6223025854606ff7a13', './lib/prefs/faq.php', '4.2', 0),
('9c83c883a7e3ba8e34a8c4eaaad35a3f', './lib/prefs/faqs.php', '4.2', 0),
('1d77de6c02f47fc17d6730b82b70b0bd', './lib/prefs/feature.php', '4.2', 0),
('30d51e83fc10d8e3abb77296a2192043', './lib/prefs/fgal.php', '4.2', 0),
('065f3fa2f7d121a0865a1ba157debc1e', './lib/prefs/file.php', '4.2', 0),
('90f16de7af863ffad2de3fa4951a81a7', './lib/prefs/forum.php', '4.2', 0),
('2da6797a1359d7f8b1307f29d6d3c261', './lib/prefs/forums.php', '4.2', 0),
('1b64d1f4a4ff9fe6f6d7a73480981162', './lib/prefs/freetags.php', '4.2', 0),
('7c9d8a3aeb90261e27b0d2e1642c5bae', './lib/prefs/global.php', '4.2', 0),
('88d1f16ff6f05a59f04b980df40f6404', './lib/prefs/lang.php', '4.2', 0),
('a64fd98061bc1e798a8b3ee33ba70d5e', './lib/prefs/language.php', '4.2', 0),
('6ff588becc30cf1d1cfa5c5893a83b10', './lib/prefs/load.php', '4.2', 0),
('c130351b70d809c03b4650f2c67d4f1f', './lib/prefs/log.php', '4.2', 0),
('31da3f30708e887069d90b1df68322b6', './lib/prefs/mail.php', '4.2', 0),
('4553573499ef9b56e7b93883020ad8be', './lib/prefs/map.php', '4.2', 0),
('4b6963ce2c24c89d57a5681966fe748a', './lib/prefs/memcache.php', '4.2', 0),
('2c1be50c7f9a2eabcff44b4fcf466f32', './lib/prefs/menus.php', '4.2', 0),
('d6e0360000a569dc9d168cbfd2607754', './lib/prefs/messu.php', '4.2', 0),
('cc8a27f0b4d1a237b85d46c71a777b69', './lib/prefs/metatag.php', '4.2', 0),
('ef39e9c85dee343b69da6278291ff0f1', './lib/prefs/multidomain.php', '4.2', 0),
('18b29646e9f7ab5a527703000f64e8ce', './lib/prefs/page.php', '4.2', 0),
('25441c46b12aa8eba3bacfe03e6ff710', './lib/prefs/poll.php', '4.2', 0),
('df3d1bd1d60915373404d47576e66f08', './lib/prefs/proxy.php', '4.2', 0),
('be3aa65dd0f7c6ef58988c28ac22e259', './lib/prefs/quantify.php', '4.2', 0),
('078cc34ac1a879ac9427f63022733402', './lib/prefs/record.php', '4.2', 0),
('331943117a31b75feec084edadd1812e', './lib/prefs/restrict.php', '4.2', 0),
('f2d4d81c405e52ba57d97d6b274dcce1', './lib/prefs/search.php', '4.2', 0),
('040820174a31de28737dc56ce227c349', './lib/prefs/sender.php', '4.2', 0),
('2e02f632400d237514d77518fec11755', './lib/prefs/session.php', '4.2', 0),
('4082491e4ef2b2b25c722b45775ea882', './lib/prefs/show.php', '4.2', 0),
('847d3d947cb367c46dad9fbfbd8e3acc', './lib/prefs/site.php', '4.2', 0),
('e8bfd1bcdb5f5ed6e62625c395b6b148', './lib/prefs/sitead.php', '4.2', 0),
('c3b52ccff9fc1eff21d45c5957a1af04', './lib/prefs/smarty.php', '4.2', 0),
('1a5b12a555b4c297a8353cf3d62b3f9f', './lib/prefs/tiki.php', '4.2', 0),
('9359c97b64eee4aba5ced7f02504284f', './lib/prefs/tracker.php', '4.2', 0),
('1dfb67c5f8a3fd1a85fef07aceeced34', './lib/prefs/use.php', '4.2', 0),
('00d7f5441449afd52cec78dc4e02d964', './lib/prefs/user.php', '4.2', 0),
('7ed1c034a6eaf6008a0da702b690fa7b', './lib/prefs/webmail.php', '4.2', 0),
('2287d6be959fb5d437211c8721d18bfd', './lib/prefs/wiki.php', '4.2', 0),
('5ff21529f75ce624af5040fe6530f9bd', './lib/prefs/wikiplugin.php', '4.2', 0),
('a8e867c60116f02086a3d08fab2737ec', './lib/prefs/wikiplugininline.php', '4.2', 0),
('2cb597d897d00a5c508dd9f2935a6e87', './lib/prefs/wysiwyg.php', '4.2', 0),
('68bb22277b2e110e92b364bc46bce058', './lib/prefslib.php', '4.2', 0),
('0668844cde0bf579149588bb5883dde2', './lib/profilelib/channellib.php', '4.2', 0),
('8a5de3effac0b296aa32063a21734044', './lib/profilelib/installlib.php', '4.2', 0),
('2e52e7b79a32fb7cf02f2a7dd7de6990', './lib/profilelib/listlib.php', '4.2', 0),
('846e1cdfcced6e930bf34117e21e5769', './lib/profilelib/profilelib.php', '4.2', 0),
('65494afa1d4105cfbbb92ccee3683032', './lib/quizzes/index.php', '4.2', 0),
('2cd81ac59f66274ed5cd88b1902d78de', './lib/quizzes/quizlib.php', '4.2', 0),
('74d7af57d978677cbe7098e3f2a1ece1', './lib/rankings/index.php', '4.2', 0),
('3f0bc9aac9c65cf4b23fd195b8dcf5d8', './lib/rankings/ranklib.php', '4.2', 0),
('4c51ae9b34f70f7779f0f826572e7b31', './lib/refererstats/index.php', '4.2', 0),
('de93b421b3ddb90f3cdb347dba94fdb8', './lib/refererstats/refererlib.php', '4.2', 0),
('8f2fbb4a22b5d1e2922944d2d7fb417e', './lib/registration/index.php', '4.2', 0),
('2c0ff322473fcb2a23f6ff7c30ac7e6c', './lib/registration/registrationlib.php', '4.2', 0),
('fa380e27372f8fee40e7769a5eac8f59', './lib/reportslib.php', '4.2', 0),
('8e792e371d89a88e7c0eb9e4f3630d8c', './lib/rss/index.php', '4.2', 0),
('17a7f672ca0b630c550f26ddc6d2fdcc', './lib/rss/rsslib.php', '4.2', 0),
('1c2c3714df7698d56fd1446c66a64250', './lib/score/events.php', '4.2', 0),
('4241d983e5450a052b5cb0635c5c9d64', './lib/score/index.php', '4.2', 0),
('8fab5ae57239fb80f9b082032563e726', './lib/score/scorelib.php', '4.2', 0),
('fd68e42f96382aaa432810a38b5f92ae', './lib/screencasts/screencastlib.php', '4.2', 0),
('030e8dfe36dca9f23af63b18e8d58ba5', './lib/search/index.php', '4.2', 0),
('e497cc060ad5e29e73efaac927f367b9', './lib/search/refresh-functions.php', '4.2', 0),
('4c59603e756c85e6285b19b71a51f237', './lib/search/refresh.php', '4.2', 0),
('9731c369137236638dee11f438eb9cef', './lib/search/searchlib-mysql.php', '4.2', 0),
('8512d12a4ffdd3c6e400205951d769ca', './lib/search/searchlib-tiki.php', '4.2', 0),
('4c7a60b57be1614a0cb826c979457754', './lib/search/searchstatslib.php', '4.2', 0),
('b6d2e095cc5c2c7a6eff5a0fe7df572b', './lib/setup/absolute_urls.php', '4.2', 0),
('5848a1968ea9492b2d8abf30912c7f96', './lib/setup/babelfish.php', '4.2', 0),
('405861fe113b99aa556dba0f7a72c8b6', './lib/setup/breadcrumb.php', '4.2', 0),
('3f3df476fe759bcff261e101c055500b', './lib/setup/categories.php', '4.2', 0),
('d6ae19ba2d9c2b5ce67e6457970c664d', './lib/setup/challenge.php', '4.2', 0),
('2e1cdad40cd3474b900b3a158518ea62', './lib/setup/comments_zone.php', '4.2', 0),
('f9f00073156777fa9cfcca4e35faaf66', './lib/setup/compat.php', '4.2', 0),
('00fe7fc6b34c8202d906b7e84af125e7', './lib/setup/cookies.php', '4.2', 0),
('24a846aae1286aaef238f6f3404227da', './lib/setup/default_homepage.php', '4.2', 0),
('3f184d0c16d5e5f26192e146685f5212', './lib/setup/dynamic_variables.php', '4.2', 0),
('0c9022b7a545dbbb8281857b8ec0102e', './lib/setup/editmode.php', '4.2', 0),
('f86e05e6e410b1046a3d765df3ee512c', './lib/setup/error_reporting.php', '4.2', 0),
('eb46e646c1092185b90ecbeadf283e16', './lib/setup/freetags.php', '4.2', 0),
('02f28abbf02a3cd400d8add984a53826', './lib/setup/fullscreen.php', '4.2', 0),
('3b134b6b572f66ed1736ad8ece23fabb', './lib/setup/integrator.php', '4.2', 0),
('524fc204beb0644aac61260b9e98b4ca', './lib/setup/js_detect.php', '4.2', 0),
('4ab767ea745cde5d94fe8daa4d93a2a7', './lib/setup/language.php', '4.2', 0),
('a1ac1684c3aed74bc8febb045d4cf142', './lib/setup/last_update.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('fd8fa92fb278fa4ee800cbf076f72514', './lib/setup/live_support.php', '4.2', 0),
('77d20e4f051fd3da0df996420576d49c', './lib/setup/load_threshold.php', '4.2', 0),
('6fce8a25cf350d686976d32fb63e089d', './lib/setup/mailin.php', '4.2', 0),
('d3191fcb9ab01a97d09662ee208fd3cc', './lib/setup/menus.php', '4.2', 0),
('9dfbf82c2210acf54a2c0837a96e8d7e', './lib/setup/openid.php', '4.2', 0),
('416166756dcb95e7d26f9be7a5ce4ebb', './lib/setup/output_compression.php', '4.2', 0),
('c18883a297ba2cbea5e7a8b8e79d751f', './lib/setup/patches.php', '4.2', 0),
('a9eedf9499f909916617071d945bdd2b', './lib/setup/perms.php', '4.2', 0),
('bb69157c5e8daa1b7055e80c3a2f32b1', './lib/setup/phplayers.php', '4.2', 0),
('18b930539610a876372711c1c080cb3c', './lib/setup/polls.php', '4.2', 0),
('34d92e200fada8dcb556b2b38c375461', './lib/setup/prefs.php', '4.2', 0),
('079bd9ff2dbbf133823aaa44f1c0cd84', './lib/setup/sections.php', '4.2', 0),
('79b5a845f0994210fd3f03d55f70f094', './lib/setup/set_paths.php', '4.2', 0),
('8e657f34caa7e5b48e52f17ed145b5d1', './lib/setup/site_closed.php', '4.2', 0),
('58281e3713ca8da17c77f96d4d3b7a3a', './lib/setup/smarty.php', '4.2', 0),
('4fe4782510c478c545008ea40e1fe0eb', './lib/setup/stats.php', '4.2', 0),
('ed54fdfb0f13c7900fb36e55b7b5375f', './lib/setup/theme.php', '4.2', 0),
('52f6b0f358bf4bcb4f56621768d98384', './lib/setup/third_party.php', '4.2', 0),
('a12fabaa0df6e2c3229a3f2530188bd1', './lib/setup/tikisetup.class.php', '4.2', 0),
('d9db33bea89df8d149655e4394c5c215', './lib/setup/timer.class.php', '4.2', 0),
('6deaf6f18ef4d9272cec2a968a44f7fd', './lib/setup/twversion.class.php', '4.2', 0),
('cdb45d3c0934ae5c576a9135f22650c0', './lib/setup/user_prefs.php', '4.2', 0),
('e65f6a9414d8e4c61a27c59ff8256142', './lib/setup/userlevels.php', '4.2', 0),
('e5044dc39b1b48d0e6f50e293ebbe021', './lib/setup/usermenu.php', '4.2', 0),
('7507a275fa22ff6e1a19a12d544937f4', './lib/setup/wiki.php', '4.2', 0),
('e1a6db256a1501790edc021794592f64', './lib/sharelib.php', '4.2', 0),
('f4f2d2ee3b03a071d827bc3c55d603ba', './lib/sheet/conf/config.inc.php', '4.2', 0),
('72f9252ee9c20073f9f9c4901f722cba', './lib/sheet/excel/index.php', '4.2', 0),
('7ba2d6fc6869a4b61d1c436c123b90cf', './lib/sheet/excel/reader.php', '4.2', 0),
('4e4bed778b26e61ec51080c02c111710', './lib/sheet/excel/reader_ole.php', '4.2', 0),
('74cb1b95daa8554eaec7f3b0d9ad11b4', './lib/sheet/excel/writer.php', '4.2', 0),
('e994568d4069f4b3b94fcb74cb16b1f8', './lib/sheet/excel/writer/biffwriter.php', '4.2', 0),
('218d96dc0ea61588169734c1908fd2b3', './lib/sheet/excel/writer/format.php', '4.2', 0),
('df5193c421043794f198d9474a067b20', './lib/sheet/excel/writer/index.php', '4.2', 0),
('f27e79ecb58c4cffc8fcec3fc5b91725', './lib/sheet/excel/writer/parser.php', '4.2', 0),
('a989f1109c974c3b1b7501ca443150f9', './lib/sheet/excel/writer/validator.php', '4.2', 0),
('3adee7a57f552215f1b7af5962da2a36', './lib/sheet/excel/writer/workbook.php', '4.2', 0),
('59d84a557139e904863a29d4512cef1e', './lib/sheet/excel/writer/worksheet.php', '4.2', 0),
('c577bc74a338c55ab7d4f1df4f10d8df', './lib/sheet/grid.php', '4.2', 0),
('7f99b8e8a0ad7b1e18a90a8ba7c36df8', './lib/sheet/include/core/APIC.php', '4.2', 0),
('0938520399b9f3f5d8a42313e7720152', './lib/sheet/include/core/APIClass.php', '4.2', 0),
('0f157dff47846b6d797667616f6849b6', './lib/sheet/include/core/APIClassRegistry.php', '4.2', 0),
('d2894659a5ff55f191231206eb1e74e9', './lib/sheet/include/core/ErrorManager.php', '4.2', 0),
('074f5be6ebf9b162ee0df64b725044b6', './lib/sheet/include/core/Object.php', '4.2', 0),
('95577e56508ffd91313edb41383a2a14', './lib/sheet/include/org/apicnet/io/File.php', '4.2', 0),
('a58cc99a5ea672213350869ff5795325', './lib/sheet/include/org/apicnet/io/OOo/OOoCalc.php', '4.2', 0),
('208dfd20cf828e4a905e364f07c91254', './lib/sheet/include/org/apicnet/io/OOo/OOoDoc.php', '4.2', 0),
('2f12c041b11c010c3dbf62e48e9486d7', './lib/sheet/include/org/apicnet/io/OOo/OOoManifest.php', '4.2', 0),
('c0c003cebffa1eb4bb042218e0cc42cc', './lib/sheet/include/org/apicnet/io/OOo/OOoMeta.php', '4.2', 0),
('f88b34e1d082f2c50baed5f5539724bc', './lib/sheet/include/org/apicnet/io/OOo/OOoMime.php', '4.2', 0),
('c2255097ba5d8be547f27a75ea3cc759', './lib/sheet/include/org/apicnet/io/OOo/OOoStyle.php', '4.2', 0),
('615edefc619e55fc9158b3f0cb88e2bc', './lib/sheet/include/org/apicnet/io/OOo/OOoUtil.php', '4.2', 0),
('5530027ed19904acacdf0d3285dbc815', './lib/sheet/include/org/apicnet/io/OOo/OOoWriter.php', '4.2', 0),
('afc6d6de228a29c1a7e62246dc1b7b61', './lib/sheet/include/org/apicnet/io/OOo/absOOo.php', '4.2', 0),
('d41d8cd98f00b204e9800998ecf8427e', './lib/sheet/include/org/apicnet/io/OOo/objOOo/OOoCadre.php', '4.2', 0),
('6ca0d0b684e5d2ddbdc603e98f06d4d3', './lib/sheet/include/org/apicnet/io/OOo/objOOo/OOoImg.php', '4.2', 0),
('99d14a3aef06ba752f07d32aad117fc5', './lib/sheet/include/org/apicnet/io/OOo/objOOo/OOoTable.php', '4.2', 0),
('f7f90d07d9f7aca289cde3a54c4bb932', './lib/sheet/include/org/apicnet/io/OOo/objOOo/OOoText.php', '4.2', 0),
('99d46bfea2396c121483022197f6ec62', './lib/sheet/include/org/apicnet/io/archive/CZip.php', '4.2', 0),
('e1ff35c678ee51b45844705eeb6a2281', './lib/sheet/include/org/apicnet/io/cdir.php', '4.2', 0),
('ec98b6f8876b7c9e0529ffcb2d6f6b99', './lib/sheet/include/org/apicnet/util/HTTPHeader.php', '4.2', 0),
('b6a3f7dd8bed723cb13bee72d10aba6d', './lib/sheet/include/org/apicnet/util/StringBuffer.php', '4.2', 0),
('8618bffc88226add5e1504c6e89836fa', './lib/sheet/index.php', '4.2', 0),
('1464a886dbae7c9083e43ca8087548f9', './lib/sheet/ole.php', '4.2', 0),
('a3e0e67ded93f724c64f64ff5a1450fc', './lib/sheet/ole/index.php', '4.2', 0),
('bdf621142ef9e9bcf479014278f3ae5a', './lib/sheet/ole/pps.php', '4.2', 0),
('be748c58a28d4edb714ab3b3f6a1f4db', './lib/sheet/ole/pps/file.php', '4.2', 0),
('9e7e4363a17a72f8cd8cee24ec3dcf66', './lib/sheet/ole/pps/index.php', '4.2', 0),
('c90252884915491026fef2dfdb817774', './lib/sheet/ole/pps/root.php', '4.2', 0),
('7e6893804a65bd5050def73fb157114e', './lib/shoutbox/index.php', '4.2', 0),
('b9c7b833b0af48ba6d86311533b39b37', './lib/shoutbox/shoutboxlib.php', '4.2', 0),
('2e485e1b32262c35974c079dd7701d32', './lib/smarty/demo/index.php', '4.2', 0),
('dd507b29d51e897ee66d1f4b54442a5d', './lib/smarty/index.php', '4.2', 0),
('8005e0d072190dd3a3c5d8d9e7ded373', './lib/smarty/libs/Config_File.class.php', '4.2', 0),
('4f280d0817540872d15dca8b10fa5df6', './lib/smarty/libs/Smarty.class.php', '4.2', 0),
('79d2d22090e76c555149a34a2bf23abd', './lib/smarty/libs/Smarty_Compiler.class.php', '4.2', 0),
('c98832bd718c94629c732b5d4c2980cb', './lib/smarty/libs/internals/core.assemble_plugin_filepath.php', '4.2', 0),
('4c2dd142c1c59e101b2f60cfc7a7cdc2', './lib/smarty/libs/internals/core.assign_smarty_interface.php', '4.2', 0),
('a12f6e4653dc814369202e0ed57206b0', './lib/smarty/libs/internals/core.create_dir_structure.php', '4.2', 0),
('297b9baf349e7f32e8e815612e823e3c', './lib/smarty/libs/internals/core.display_debug_console.php', '4.2', 0),
('ba78ea6d4112d4325b00e4b8101497c6', './lib/smarty/libs/internals/core.get_include_path.php', '4.2', 0),
('72eb40e8367f77f0bd251e15a5bd4f5f', './lib/smarty/libs/internals/core.get_microtime.php', '4.2', 0),
('e0fccd538d6f0ed8915d39cc2f9dd860', './lib/smarty/libs/internals/core.get_php_resource.php', '4.2', 0),
('7ea83dd65e64bc0bc893d44096ec61e0', './lib/smarty/libs/internals/core.is_secure.php', '4.2', 0),
('83e22de7a251fef6a033769b35989bf6', './lib/smarty/libs/internals/core.is_trusted.php', '4.2', 0),
('d60028c542ec06749cd2d381bc07d0c2', './lib/smarty/libs/internals/core.load_plugins.php', '4.2', 0),
('08d531fb688eed7253b316b11436e512', './lib/smarty/libs/internals/core.load_resource_plugin.php', '4.2', 0),
('2a846ebfec89211b7090149052374059', './lib/smarty/libs/internals/core.process_cached_inserts.php', '4.2', 0),
('95e1308976578925f2e57b1aa8d716bf', './lib/smarty/libs/internals/core.process_compiled_include.php', '4.2', 0),
('e7de28f374768f8b319687a34e226c80', './lib/smarty/libs/internals/core.read_cache_file.php', '4.2', 0),
('8834d9e9a8aa8473244d74096638b5c2', './lib/smarty/libs/internals/core.rm_auto.php', '4.2', 0),
('08209df8f3113b0d8322bcac3b5e055b', './lib/smarty/libs/internals/core.rmdir.php', '4.2', 0),
('f6452eb1f0f65cf3b07634228ea4c938', './lib/smarty/libs/internals/core.run_insert_handler.php', '4.2', 0),
('0d87e492eb18ec8b4fa492f2ac34c163', './lib/smarty/libs/internals/core.smarty_include_php.php', '4.2', 0),
('a000f4e24379b7dcc05603b2ad91c789', './lib/smarty/libs/internals/core.write_cache_file.php', '4.2', 0),
('ff7944e8092eaf7c2ee97d865df29788', './lib/smarty/libs/internals/core.write_compiled_include.php', '4.2', 0),
('caa79e832d4587991606dd9a0988c852', './lib/smarty/libs/internals/core.write_compiled_resource.php', '4.2', 0),
('23f99e19895028592cff61325b6ed0b1', './lib/smarty/libs/internals/core.write_file.php', '4.2', 0),
('f4e1cc15997ff132066f5e4e09e92054', './lib/smarty/libs/plugins/block.textformat.php', '4.2', 0),
('b4f1eb6f5a8cde9dbec9f5fb1ccb108c', './lib/smarty/libs/plugins/compiler.assign.php', '4.2', 0),
('0abdfebfea185a7b1a727d9546e244be', './lib/smarty/libs/plugins/function.assign_debug_info.php', '4.2', 0),
('fa6466c59cab6333c64ac270dd6c53b1', './lib/smarty/libs/plugins/function.config_load.php', '4.2', 0),
('9531e844efd007c593dadd6173cb0bbd', './lib/smarty/libs/plugins/function.counter.php', '4.2', 0),
('db7b2e51bd5e26f93032929dcb2d531b', './lib/smarty/libs/plugins/function.cycle.php', '4.2', 0),
('4963d564da17a2578fc5f56d9c53e7bc', './lib/smarty/libs/plugins/function.debug.php', '4.2', 0),
('3fedd0e2a4c285200c12fe6427bc2739', './lib/smarty/libs/plugins/function.eval.php', '4.2', 0),
('51259f99b6554fa1a6a60013a5e7880a', './lib/smarty/libs/plugins/function.fetch.php', '4.2', 0),
('a05460918e36fd9ef66d955754868a3e', './lib/smarty/libs/plugins/function.html_checkboxes.php', '4.2', 0),
('de11daabe07795fe4229b8d0185489dd', './lib/smarty/libs/plugins/function.html_image.php', '4.2', 0),
('b634076ab0424a5b8310ff733c5615a6', './lib/smarty/libs/plugins/function.html_options.php', '4.2', 0),
('6a00315efe8f8202823ade3bf3e6e513', './lib/smarty/libs/plugins/function.html_radios.php', '4.2', 0),
('ad1d200bf750d98379cfc5507eac681d', './lib/smarty/libs/plugins/function.html_select_date.php', '4.2', 0),
('ac7c160c72b293e6509840a5aba9a429', './lib/smarty/libs/plugins/function.html_select_time.php', '4.2', 0),
('d7ade8af24efeb33f852bef185004521', './lib/smarty/libs/plugins/function.html_table.php', '4.2', 0),
('03b5b66b3c6221c34b0d27c030dc7b60', './lib/smarty/libs/plugins/function.mailto.php', '4.2', 0),
('6cfac881d33e586406551b19296d8154', './lib/smarty/libs/plugins/function.math.php', '4.2', 0),
('1e8b78080d08a386ba297c0dbb7c3a7b', './lib/smarty/libs/plugins/function.popup.php', '4.2', 0),
('b2353a42807535109e1f037c0d51f19c', './lib/smarty/libs/plugins/function.popup_init.php', '4.2', 0),
('70f58c49c5bd2851be11a3d67a92d2a4', './lib/smarty/libs/plugins/modifier.capitalize.php', '4.2', 0),
('9dbc6c2d6d78165d9d0ffae481509b6a', './lib/smarty/libs/plugins/modifier.cat.php', '4.2', 0),
('91694b84f8b86aa551ff49ced16dbd11', './lib/smarty/libs/plugins/modifier.count_characters.php', '4.2', 0),
('c64e0f47b6435424a7bf9647eed06c1e', './lib/smarty/libs/plugins/modifier.count_paragraphs.php', '4.2', 0),
('c22e43e96e6ecd34cc18bc5235d59337', './lib/smarty/libs/plugins/modifier.count_sentences.php', '4.2', 0),
('073467c9ea7434647bb9ff27fe09183b', './lib/smarty/libs/plugins/modifier.count_words.php', '4.2', 0),
('5d57183abba166f670d0b8649086f516', './lib/smarty/libs/plugins/modifier.date_format.php', '4.2', 0),
('083998f71b350e0f2bea5b46477680c2', './lib/smarty/libs/plugins/modifier.debug_print_var.php', '4.2', 0),
('11c16bd6f7dde6d576d7f93433652925', './lib/smarty/libs/plugins/modifier.default.php', '4.2', 0),
('3bd0b2464f2fe8e2688da39079d84190', './lib/smarty/libs/plugins/modifier.escape.php', '4.2', 0),
('ea1f5db88c00e850c3968e434eadb074', './lib/smarty/libs/plugins/modifier.indent.php', '4.2', 0),
('5520933762ceac07d49e658c52587279', './lib/smarty/libs/plugins/modifier.lower.php', '4.2', 0),
('1d16b98e8ec34aac69f0827fab1dc999', './lib/smarty/libs/plugins/modifier.nl2br.php', '4.2', 0),
('f3ae42b7cb1bb85e22084c5d94ccb420', './lib/smarty/libs/plugins/modifier.regex_replace.php', '4.2', 0),
('b7d144b301a878c3015f9ba96b1922c6', './lib/smarty/libs/plugins/modifier.replace.php', '4.2', 0),
('66993120ab60306acd278a327c5af448', './lib/smarty/libs/plugins/modifier.spacify.php', '4.2', 0),
('401048107fc62eecf175d2a0ab997161', './lib/smarty/libs/plugins/modifier.string_format.php', '4.2', 0),
('b1281f77297db8c1e50bc1fd883ebd78', './lib/smarty/libs/plugins/modifier.strip.php', '4.2', 0),
('481144a581e2d56a2182add2e09c5641', './lib/smarty/libs/plugins/modifier.strip_tags.php', '4.2', 0),
('da35c3d0a2dfc9ea11c32b3a10246aa7', './lib/smarty/libs/plugins/modifier.truncate.php', '4.2', 0),
('0ef0e9784273f5d5384f34ad303bd15e', './lib/smarty/libs/plugins/modifier.upper.php', '4.2', 0),
('b80bdf801ac29e3aa4662a0428b676e4', './lib/smarty/libs/plugins/modifier.wordwrap.php', '4.2', 0),
('ac1de570fd1361b24090ffce22b218e0', './lib/smarty/libs/plugins/outputfilter.trimwhitespace.php', '4.2', 0),
('2f7221015323ba27d2ed5ae20450fa0d', './lib/smarty/libs/plugins/shared.escape_special_chars.php', '4.2', 0),
('29ffe6553da8fda72147a12273105e10', './lib/smarty/libs/plugins/shared.make_timestamp.php', '4.2', 0),
('58112074797eb30123fb5f6e2465d61e', './lib/smarty/unit_test/config.php', '4.2', 0),
('2420634cf218db4740ed816ca33654b1', './lib/smarty/unit_test/smarty_unit_test.php', '4.2', 0),
('756cf0c254cc69dc65a5adbab01be1c3', './lib/smarty/unit_test/smarty_unit_test_gui.php', '4.2', 0),
('d62292f1b1fc7ad607687ba9f4bed56b', './lib/smarty/unit_test/test_cases.php', '4.2', 0),
('b6cb0bc8c2d2dee5cfe544f185afebb0', './lib/smarty_tiki/block.add_help.php', '4.2', 0),
('411eef970754cd5bc72122cdbe86e579', './lib/smarty_tiki/block.ajax_href.php', '4.2', 0),
('b7942e654756d0f281f35ecf8af85336', './lib/smarty_tiki/block.compact.php', '4.2', 0),
('220c27b53ef9346697e118e2451ceb74', './lib/smarty_tiki/block.display.php', '4.2', 0),
('7bd77769945a0e0c172c8079d2527ec8', './lib/smarty_tiki/block.itemfield.php', '4.2', 0),
('9c0bb0b0eae93edd6b2fd0be4ea83033', './lib/smarty_tiki/block.jq.php', '4.2', 0),
('2ada9c17f7cbca12d518a1f8b35f9131', './lib/smarty_tiki/block.pagination_links.php', '4.2', 0),
('1ce4bf6528303b27ada50ebc3ef87e0a', './lib/smarty_tiki/block.popup_link.php', '4.2', 0),
('8a8153a0a4314bbe7e9c2a52e706e3c0', './lib/smarty_tiki/block.remarksbox.php', '4.2', 0),
('4d2262b3e4ba125fb1828b7980c1c6ef', './lib/smarty_tiki/block.repeat.php', '4.2', 0),
('3fd7a352924500b55af8588d0a111a08', './lib/smarty_tiki/block.self_link.php', '4.2', 0),
('0d6d910a239e266251fd199a3e031302', './lib/smarty_tiki/block.sortlinks.php', '4.2', 0),
('e6e53553a752417748582dee98d60a6d', './lib/smarty_tiki/block.tab.php', '4.2', 0),
('aee0af6ae0e667e26ec2e00ead090feb', './lib/smarty_tiki/block.tabset.php', '4.2', 0),
('6612b69a879ed6b755c4c188586033a5', './lib/smarty_tiki/block.textarea.php', '4.2', 0),
('028a8f405d8412fe55babede6f98cd06', './lib/smarty_tiki/block.tikimodule.php', '4.2', 0),
('9ece786dcda315b44d09266748636251', './lib/smarty_tiki/block.title.php', '4.2', 0),
('042fcab07ada1fee2be8c09ed5878f0a', './lib/smarty_tiki/block.tr.php', '4.2', 0),
('e1f6f476653aa34543e5eb03937f8cb4', './lib/smarty_tiki/block.translation.php', '4.2', 0),
('f34363c588e4f7eb150f96576947754a', './lib/smarty_tiki/block.wiki.php', '4.2', 0),
('26da84dfde037cfa2fe18a10e26088a4', './lib/smarty_tiki/compiler.assign.php', '4.2', 0),
('1ed1c6187f2dc0e63f9bb7ae68bef702', './lib/smarty_tiki/compiler.assign_content.php', '4.2', 0),
('143557dec3552c4951f0837f357c1ae5', './lib/smarty_tiki/function.article.php', '4.2', 0),
('f114846e1d63e55bdec0296ab04f9609', './lib/smarty_tiki/function.banner.php', '4.2', 0),
('e03a7c15433ae2fe89334cf6a510df5b', './lib/smarty_tiki/function.breadcrumbs.php', '4.2', 0),
('955036c8d55f80523af79e0eb1ab56c4', './lib/smarty_tiki/function.button.php', '4.2', 0),
('43e83006df9e2dbba452a38b96167b47', './lib/smarty_tiki/function.categoryName.php', '4.2', 0),
('18d7a598d1efc3b409c99bed5950c6e4', './lib/smarty_tiki/function.content.php', '4.2', 0),
('901bfb6cd7e12377b1320b6a693c7183', './lib/smarty_tiki/function.cookie.php', '4.2', 0),
('eebebe2f30d0878179e5ba9fb6e6b8ba', './lib/smarty_tiki/function.cookie_jar.php', '4.2', 0),
('eddf7fcb939598800f02538962eb3007', './lib/smarty_tiki/function.count.php', '4.2', 0),
('09c641c4423d3b9490b83eacb5157185', './lib/smarty_tiki/function.debugger.php', '4.2', 0),
('aaf7ea3e2cf5180b939075764a34ed02', './lib/smarty_tiki/function.ed.php', '4.2', 0),
('16d5b05b28c408602dabd1a3e220747f', './lib/smarty_tiki/function.editform.php', '4.2', 0),
('a26c5f59071c998d33fa834d7689b874', './lib/smarty_tiki/function.elapsed.php', '4.2', 0),
('cc81ed6d264bd59729d4a9d8aec84f64', './lib/smarty_tiki/function.fgal_browse.php', '4.2', 0),
('618acbe4b1f4b3c53cd80c27d1c6912b', './lib/smarty_tiki/function.filegal_manager_url.php', '4.2', 0),
('efd1dd4e90b2571373ae707906c510a1', './lib/smarty_tiki/function.fileinfo.php', '4.2', 0),
('97fced4c595c98da3421b755ca671228', './lib/smarty_tiki/function.gallery.php', '4.2', 0),
('9ca82760c1c9826b8bffbe5ed249f4e5', './lib/smarty_tiki/function.help.php', '4.2', 0),
('bee8768c9d849d52fc943fc08d0ca64b', './lib/smarty_tiki/function.helplink.php', '4.2', 0),
('2546573f20c1d89038cc77ae47e3f802', './lib/smarty_tiki/function.html_select_time.php', '4.2', 0),
('ed830af481b8525e2a22f6c428226ef2', './lib/smarty_tiki/function.icon.php', '4.2', 0),
('1d69583005cfdb2ba31e6b138e2e5438', './lib/smarty_tiki/function.initials_filter_links.php', '4.2', 0),
('d3650132f6278bf3c70f9f2ed6e23eea', './lib/smarty_tiki/function.js_maxlength.php', '4.2', 0),
('21a374eaebeb515197656189c8acf009', './lib/smarty_tiki/function.jscalendar.php', '4.2', 0),
('75ee93a3b7397c17512e809e5c1757e5', './lib/smarty_tiki/function.jspopup.php', '4.2', 0),
('b2b19e6b4a21e76e9186afd4dea0a843', './lib/smarty_tiki/function.listfilter.php', '4.2', 0),
('5ba1f7c8d4f8c4af9941df47baf00588', './lib/smarty_tiki/function.memusage.php', '4.2', 0),
('9b11b528c855e537f18f04b770a6feef', './lib/smarty_tiki/function.menu.php', '4.2', 0),
('c8f299d823efe42d936f72b9802072c2', './lib/smarty_tiki/function.phplayers.php', '4.2', 0),
('172e3e6fd7a0a6b5fb44fb61692eb28b', './lib/smarty_tiki/function.poll.php', '4.2', 0),
('256ec296357fc24cb48d487fd201daa9', './lib/smarty_tiki/function.popup.php', '4.2', 0),
('083c1289db8dc01ba76facca7fbb8840', './lib/smarty_tiki/function.popup_init.php', '4.2', 0),
('48c165dd3abeab7ce52e192fe2521351', './lib/smarty_tiki/function.preference.php', '4.2', 0),
('9330ab8cfb1f3bc9f2b14d136a83ac58', './lib/smarty_tiki/function.query.php', '4.2', 0),
('4f70677b2f0cf00e32a5ec379654fe73', './lib/smarty_tiki/function.quotabar.php', '4.2', 0),
('2dc63788f956c892ea8712d391f9b82e', './lib/smarty_tiki/function.rcontent.php', '4.2', 0),
('52c57ab1cc24b4184705b4961dc0558e', './lib/smarty_tiki/function.redirect.php', '4.2', 0),
('7568f135ee5a74ddb8f796f6a127b87c', './lib/smarty_tiki/function.reindex_file_pixel.php', '4.2', 0),
('ede040118aee9996a974683a602f97f8', './lib/smarty_tiki/function.rss.php', '4.2', 0),
('b0072ec773633d820b31b67aa454633d', './lib/smarty_tiki/function.sameurl.php', '4.2', 0),
('27451208d0faa08b119124315e2dc3a4', './lib/smarty_tiki/function.sefurl.php', '4.2', 0),
('f41e55426256db68768a7eb52cf5056d', './lib/smarty_tiki/function.select_all.php', '4.2', 0),
('a436ab7af80210e7a57278add1c9f1b7', './lib/smarty_tiki/function.set.php', '4.2', 0),
('196e3be016319a72553734affe93701f', './lib/smarty_tiki/function.show_help.php', '4.2', 0),
('0bbf5266f6937d4331a9b2bf18a6bf28', './lib/smarty_tiki/function.show_sort.php', '4.2', 0),
('1f8cb400ddcd8941d314041b19ed8eb2', './lib/smarty_tiki/function.thumb.php', '4.2', 0),
('055f19eb582e9718b749c07ece9fd466', './lib/smarty_tiki/function.tikicon.php', '4.2', 0),
('8c04ffe520d1d7ed6d55ce890cddba23', './lib/smarty_tiki/function.toolbars.php', '4.2', 0),
('8493a8c8bfaf234a9752ea4520b39ff1', './lib/smarty_tiki/function.tree.php', '4.2', 0),
('b445f9642436ce1f241a79ea39483889', './lib/smarty_tiki/function.treetable.php', '4.2', 0),
('9f344172dfcf011dec4d1a4a30406e59', './lib/smarty_tiki/function.var_dump.php', '4.2', 0),
('32da677ef105031962b1b431c872bff3', './lib/smarty_tiki/function.wikistructure.php', '4.2', 0),
('cdfa6349c745ee3a0920964139a2df2f', './lib/smarty_tiki/function.xajax_response.php', '4.2', 0),
('498ad59d5ae5dee7a15340e291c2bfec', './lib/smarty_tiki/index.php', '4.2', 0),
('bb55fae4b755bfa40c5ea265203ec76b', './lib/smarty_tiki/modifier.adjust.php', '4.2', 0),
('04951d677b25dd1ceb279acc03e379f8', './lib/smarty_tiki/modifier.avatarize.php', '4.2', 0),
('a0b4314d2eaee8ee9de40f016f9de1d9', './lib/smarty_tiki/modifier.compactisodate.php', '4.2', 0),
('968c0453d99a0e3055f58ff5e8471408', './lib/smarty_tiki/modifier.countryflag.php', '4.2', 0),
('3d4be0b6725946e519a7a5236e1f2d35', './lib/smarty_tiki/modifier.dbg.php', '4.2', 0),
('a27d8e3048184e73335784fa050880f3', './lib/smarty_tiki/modifier.div.php', '4.2', 0),
('6a515e8f8bc38e9c5a9c54cdfb0c83de', './lib/smarty_tiki/modifier.duration.php', '4.2', 0),
('4b5b7a9b6bdabb6bd4d8c6fe4d364e81', './lib/smarty_tiki/modifier.duration_short.php', '4.2', 0),
('7dcfe8390472639035361065881c2f82', './lib/smarty_tiki/modifier.escape.php', '4.2', 0),
('425666327df39759d36db5020c3f2f90', './lib/smarty_tiki/modifier.how_many_user_inscriptions.php', '4.2', 0),
('2047488e5500890eb6a34f5342a4090c', './lib/smarty_tiki/modifier.htmldecode.php', '4.2', 0),
('93a988df95afdc96a30277a97817ed83', './lib/smarty_tiki/modifier.iconify.php', '4.2', 0),
('e551317c04b742628a18226e0b9b5b28', './lib/smarty_tiki/modifier.isodate.php', '4.2', 0),
('027dffc101d852a227c6414d306f3f03', './lib/smarty_tiki/modifier.kbsize.php', '4.2', 0),
('6cedc98b6d00a96d945ef244b95dbe7d', './lib/smarty_tiki/modifier.langname.php', '4.2', 0),
('ce9885f0b499180d82a9f75c33bf89f1', './lib/smarty_tiki/modifier.lcfirst.php', '4.2', 0),
('ddca42f26879be66c8d59e18e57fca14', './lib/smarty_tiki/modifier.max_user_inscriptions.php', '4.2', 0),
('1af2ac72c3238286c3db1abb841f50c6', './lib/smarty_tiki/modifier.nlbr.php', '4.2', 0),
('da19894ab456be8df4a0fafa53961ee7', './lib/smarty_tiki/modifier.pagename.php', '4.2', 0),
('c9cda4046cdac59260c842a9ee999de7', './lib/smarty_tiki/modifier.quoted.php', '4.2', 0),
('8b9639d755d230d7259f981586c27439', './lib/smarty_tiki/modifier.sefurl.php', '4.2', 0),
('c89ef3a4ee88c4bcb58e3ed7f1ac2b64', './lib/smarty_tiki/modifier.star.php', '4.2', 0),
('824d6cfdf37ba7fb125aead6658f56f3', './lib/smarty_tiki/modifier.stringfix.php', '4.2', 0),
('ff8de4c0d6523a13bfa7ef7f36a91aed', './lib/smarty_tiki/modifier.substring.php', '4.2', 0),
('0eb6b1bde9947a9c86a13f2fb9350e0e', './lib/smarty_tiki/modifier.tasklink.php', '4.2', 0),
('bbc1dc721cac96af704a84a32119f5c6', './lib/smarty_tiki/modifier.tiki_date_format.php', '4.2', 0),
('aeaf1540b071cfd954e3d8b309ebc257', './lib/smarty_tiki/modifier.tiki_long_date.php', '4.2', 0),
('af045a051246fd145104b99e286ee353', './lib/smarty_tiki/modifier.tiki_long_datetime.php', '4.2', 0),
('01eee7fcafd7a590dbf8ad52cd6410e3', './lib/smarty_tiki/modifier.tiki_long_time.php', '4.2', 0),
('ebe7ee70431474b43366f89f4653063f', './lib/smarty_tiki/modifier.tiki_short_date.php', '4.2', 0),
('96605f4a857a4835b1e85d8608a9da0d', './lib/smarty_tiki/modifier.tiki_short_datetime.php', '4.2', 0),
('b27508853c31f24a1593a49a5342eca3', './lib/smarty_tiki/modifier.tiki_short_time.php', '4.2', 0),
('31f64bbcef4a0b8fa32d0c562985ad34', './lib/smarty_tiki/modifier.times.php', '4.2', 0),
('d40ca30e72e3e0cee448cd9e950294f5', './lib/smarty_tiki/modifier.tr_if.php', '4.2', 0),
('e82f094257265112a3f7e105a9ff8b9a', './lib/smarty_tiki/modifier.truex.php', '4.2', 0),
('cb10f203796f0e652911934a9e926f56', './lib/smarty_tiki/modifier.truncate.php', '4.2', 0),
('0665b57e662facd22da1762782ea7491', './lib/smarty_tiki/modifier.userlink.php', '4.2', 0),
('2e45a017425e497ada2b1cbb00ebf4d6', './lib/smarty_tiki/modifier.username.php', '4.2', 0),
('751a4a6653983090d40b64db5fa2b04d', './lib/smarty_tiki/modifier.utf8unicode.php', '4.2', 0),
('5ae53472b87580b3cc32cd67536251a9', './lib/smarty_tiki/modifier.yesno.php', '4.2', 0),
('0ff77dadcb86c16cf120ca984039fe9f', './lib/smarty_tiki/outputfilter.highlight.php', '4.2', 0),
('fc56a31d5475b188fcdeaf93ebf85eb9', './lib/smarty_tiki/outputfilter.ticket.php', '4.2', 0),
('7ddb084c808d7fbdaeb796e3e3209d51', './lib/smarty_tiki/prefilter.jq.php', '4.2', 0),
('61079a8ba85de8e27cb7cc2d68929f0f', './lib/smarty_tiki/prefilter.log_tpl.php', '4.2', 0),
('0e73b6378dc8e58397f89a9791f7f1f9', './lib/smarty_tiki/prefilter.ticket.php', '4.2', 0),
('3cb892447a3bc88221c5e8e4d2e62286', './lib/smarty_tiki/prefilter.tr.php', '4.2', 0),
('907bee5f6ca67e4d2a0212ef30ba7553', './lib/smarty_tiki/resource.style.php', '4.2', 0),
('52ec38fff477dbc58dbd7db1742bb62e', './lib/smarty_tiki/resource.wiki.php', '4.2', 0),
('0483bce2ea59e01efbf448d36e0c9787', './lib/stats/index.php', '4.2', 0),
('27edc45a24f90de05477b3fc914abfcc', './lib/stats/statslib.php', '4.2', 0),
('cb67c0a60b4c5862a779a27bfab21235', './lib/structures/index.php', '4.2', 0),
('b095a678a908ad090f2e42406ae3a211', './lib/structures/structlib.php', '4.2', 0),
('677ada3280f10f4802e98688f35c182a', './lib/surveys/index.php', '4.2', 0),
('dba1971c7f4694a32d2a4883ce12e648', './lib/surveys/surveylib.php', '4.2', 0),
('23d39a88001c550e6c3de7fb68250bdd', './lib/taglines/index.php', '4.2', 0),
('5ceb93fd5d0ef102159f032e2e20c5be', './lib/taglines/taglinelib.php', '4.2', 0),
('c0f0eef4eebb9563c38335fd63f9e0c3', './lib/tail/index.php', '4.2', 0),
('a7c39f591700f3f0bc654dc07a935a9e', './lib/tar.class.php', '4.2', 0),
('1793315325225bf2ce5fd13076fcb925', './lib/tasks/index.php', '4.2', 0),
('f5f81c1597fb2b305e140699f03b8531', './lib/tasks/tasklib.php', '4.2', 0),
('9bfde05e2390eada32d98f03f1ce89e7', './lib/templates/index.php', '4.2', 0),
('a9a242a1e06b1549581044d2b94f7d0e', './lib/templates/templateslib.php', '4.2', 0),
('6893ee9cfff7497d103af8f298687434', './lib/test/AcceptanceTests/AllTests.php', '4.2', 0),
('3bba4d9084b75737f4e91fd64c4a7604', './lib/test/AcceptanceTests/CollaborativeMultilingualTerminologyTest.php', '4.2', 0),
('d82f22d49579927c824255feb06afeeb', './lib/test/AcceptanceTests/ListPagesTest.php', '4.2', 0),
('cb398adcd3589f0846fca3fb7c69c7f1', './lib/test/AcceptanceTests/MultilingualTest.php', '4.2', 0),
('d6d3ae6f07416408515097f2df295384', './lib/test/AcceptanceTests/MultilinguallibTest.php', '4.2', 0),
('1c023825c26ab2c72b67a50a184fb408', './lib/test/AcceptanceTests/SearchTest.php', '4.2', 0),
('f51806736721fd3fa05bffe52272d2f3', './lib/test/AcceptanceTests/TikiLibrariesAccessTest.php', '4.2', 0),
('9cd8ba9555e5b2a807100755a6481404', './lib/test/AcceptanceTests/utils/create_dump_db_file.php', '4.2', 0),
('56aa5ecacbc184b5e5394bbb196c8884', './lib/test/AcceptanceTests/utils/restore_db_dump.php', '4.2', 0),
('8b22595de75130a948fffce485d4feed', './lib/test/AcceptanceTests/utils/upgrade_test_database_dump_file.php', '4.2', 0),
('40eb3632cce05c68a220ee9ff016d5ed', './lib/test/AllTests.php', '4.2', 0),
('f2021004e9e4ddbb189ce118d820e562', './lib/test/AllTestsAcceptance.php', '4.2', 0),
('c56a7c8f996b006a8d5e17c59e1b30c0', './lib/test/TikiAcceptanceTestDBRestorer.php', '4.2', 0),
('43ec9ad32b788b06f02efd400f9ab1a1', './lib/test/TikiSeleniumTestCase.php', '4.2', 0),
('1ed06b6d00e4927c98f7055582033e3c', './lib/test/TikiTestCase.php', '4.2', 0),
('6574a709502f01ed5c62c0fb87405aab', './lib/test/core/Category/ManipulatorTest.php', '4.2', 0),
('355a51b8038549c0b3806ed98028daf9', './lib/test/core/DeclFilter/BaseTest.php', '4.2', 0),
('8c25f02d7f38caf130ce9f1bd98918c0', './lib/test/core/DeclFilter/CatchAllFilterTest.php', '4.2', 0),
('fe34593e09796e0a50836e778bc990c6', './lib/test/core/DeclFilter/CatchAllUnsetTest.php', '4.2', 0),
('43fe3974de316f4a108f4a9aeeecb275', './lib/test/core/DeclFilter/ConfigureTest.php', '4.2', 0),
('cf44120f075fc5337a4bd90b5248f65c', './lib/test/core/DeclFilter/KeyPatternFilterTest.php', '4.2', 0),
('ff2dc282b6ef88f4376bffa76dca5545', './lib/test/core/DeclFilter/KeyPatternUnsetTest.php', '4.2', 0),
('771ffb32951c7038439cc1473f50d6e4', './lib/test/core/DeclFilter/StaticKeyFilterTest.php', '4.2', 0),
('0fdeb238695e58d797955623be8a9419', './lib/test/core/DeclFilter/StaticKeyUnsetTest.php', '4.2', 0),
('c4b4e5e66cafe02337f941cd05c1cf32', './lib/test/core/JitFilter/AccessTest.php', '4.2', 0),
('78e481a444ef8a21c84e6f49c92b88bf', './lib/test/core/JitFilter/FilterTest.php', '4.2', 0),
('c384326745179119c0e66b8b8ef60d41', './lib/test/core/JitFilter/IteratorTest.php', '4.2', 0),
('0d4a00e90d8cb7d3bf8ccd82fcc700e6', './lib/test/core/Multilingual/Aligner/BilingualAlignerTest.php', '4.2', 0),
('43540262b0b35e80bf9feac4e8697ee4', './lib/test/core/Multilingual/Aligner/SentenceAlignmentsTest.php', '4.2', 0),
('7c129039516ae4a37fe28db84f450c7d', './lib/test/core/Multilingual/Aligner/SentenceSegmentorTest.php', '4.2', 0),
('efe09fb203085dfba3ff821f0b6b1443', './lib/test/core/Multilingual/Aligner/ShortestPathFinderTest.php', '4.2', 0),
('a4d9d2b6a7376a08fb4531ff69cfed00', './lib/test/core/Multilingual/MachineTranslation/GoogleTranslateWrapperTest.php', '4.2', 0),
('6f8eee2bc201d90791c618e29c1ce856', './lib/test/core/Perms/AccessorTest.php', '4.2', 0),
('b91f64075d81db69abdad44ae075300b', './lib/test/core/Perms/ApplierTest.php', '4.2', 0),
('c39a8a637db04b1b80ddc4ffba6c1a08', './lib/test/core/Perms/BaseTest.php', '4.2', 0),
('38d4a678bbe14e0f1924cc51bbfd6526', './lib/test/core/Perms/Check/AlternateTest.php', '4.2', 0),
('e27b9fb85257fd5d9a9f7781d57f43a4', './lib/test/core/Perms/Check/CreatorTest.php', '4.2', 0),
('c2e6dd207e231fbf526d5508cc8f4f37', './lib/test/core/Perms/Check/DirectTest.php', '4.2', 0),
('cc0f0949880b06f56c9369a23307c731', './lib/test/core/Perms/Check/IndirectTest.php', '4.2', 0),
('5c0e0e7c34cf5579aa0078a1fd4fdca5', './lib/test/core/Perms/CheckSequenceTest.php', '4.2', 0),
('1ee2b4fafca39fb5241913d1ab3b4187', './lib/test/core/Perms/MixedTest.php', '4.2', 0),
('b2ba2f2368954c287d363319dd64b5ba', './lib/test/core/Perms/Reflection/FactoryTest.php', '4.2', 0),
('0466fb0463cdb39b980f2cb083f17ec1', './lib/test/core/Perms/Reflection/PermissionComparatorTest.php', '4.2', 0),
('37c6c63f9be1321400f05c0fc12aa022', './lib/test/core/Perms/Reflection/PermissionSetTest.php', '4.2', 0),
('d2977cb0e58fe0c9d4bd03d42f7b45a4', './lib/test/core/Perms/Reflection/QuickTest.php', '4.2', 0),
('46c463c26a5b7aa4a7f1b2375908b73d', './lib/test/core/Perms/Resolver/DefaultTest.php', '4.2', 0),
('0fd62a77d503a090c4ff3824243bf509', './lib/test/core/Perms/Resolver/StaticTest.php', '4.2', 0),
('d5af84c41de632b2f7b9650448512b67', './lib/test/core/Perms/ResolverFactory/CategoryFactoryTest.php', '4.2', 0),
('f3b5e40867e49adea6f824b4ecd8ecf4', './lib/test/core/Perms/ResolverFactory/GlobalFactoryTest.php', '4.2', 0),
('f8f240f7a8e4c453ea69917412b3adc4', './lib/test/core/Perms/ResolverFactory/ObjectFactoryTest.php', '4.2', 0),
('bcea1ab3a6c2cdf144510519aba30ab9', './lib/test/core/Perms/ResolverFactory/TestFactoryTest.php', '4.2', 0),
('02e858ea7b2efff6e98f8174530fdac8', './lib/test/core/TikiFilter/CallbackTest.php', '4.2', 0),
('ce70d0ccc63f25cd1e77a22eca6a8cac', './lib/test/core/TikiFilter/MapTest.php', '4.2', 0),
('6cf605fdfa0d1e1bcf062dfd8b1ec69e', './lib/test/core/TikiFilter/WordTest.php', '4.2', 0),
('ebc318a3f1954d5e5799bb9a4de254db', './lib/test/core/TikiFilter/XssTest.php', '4.2', 0),
('8d31c6d971e1a7bb1a22423bfa9f526f', './lib/test/core/Transition/AtLeastTest.php', '4.2', 0),
('f10ba74f0e3de561eaf39ad321370503', './lib/test/core/Transition/AtMostTest.php', '4.2', 0),
('0752db8c1f6541846a3566cdeb9ee4fb', './lib/test/core/Transition/BasicTest.php', '4.2', 0),
('8f8f6f20aa46cb5c538776a6c3659670', './lib/test/core/WikiParser/PluginArgumentParserTest.php', '4.2', 0),
('5ee60e9ce444ab1eb0de280a314a236f', './lib/test/core/WikiParser/PluginMatcherTest.php', '4.2', 0),
('571efd7477f95d3f80cb2d07a86cf594', './lib/test/core/WikiParser/PluginParserTest.php', '4.2', 0),
('83b1cecd62fb81a3519a0c2e7f19ef17', './lib/test/core/WikiParser/PluginRepositoryTest.php', '4.2', 0),
('001aba33039748009e415c257d9b8786', './lib/test/core/WikiParser/wikiplugin_foo.php', '4.2', 0),
('592825de0b5b3f46b8473db1e6d67d1f', './lib/test/core/bootstrap.php', '4.2', 0),
('4e292752ca312e8e1fcb172bba967365', './lib/test/importer/AllTests.php', '4.2', 0),
('f123b850e2213ac7224a06205365fcb1', './lib/test/importer/fixtures/index.php', '4.2', 0),
('da046856ba43157294d69fe35f841f04', './lib/test/importer/fixtures/mediawiki_page_as_array.php', '4.2', 0),
('47a363ac1ed84e2be029bd0efd726794', './lib/test/importer/index.php', '4.2', 0),
('2a433290030a625049874f772824cadd', './lib/test/importer/tikiimporter_test.php', '4.2', 0),
('88ea15d20414ff03727d7ef137b056f9', './lib/test/importer/tikiimporter_testcase.php', '4.2', 0),
('4348d2fc56bbe18fd1c2d6fcf7f00428', './lib/test/importer/tikiimporter_wiki_mediawiki_test.php', '4.2', 0),
('926c8ce6a10232a29bdebe9414be7013', './lib/test/importer/tikiimporter_wiki_test.php', '4.2', 0),
('4087a2dc822e708f1e3ebd041a12b3a3', './lib/test/index.php', '4.2', 0),
('ed8275c1efdcd9de74b0ea2aa4452cd8', './lib/test/wikiparser/AllTests.php', '4.2', 0),
('c6c070d2c924048e3cde350dfbc434a3', './lib/test/wikiparser/tikiwikiparser_test.php', '4.2', 0),
('3ffdc40db8138cbbde9648b5b72f2473', './lib/themecontrol/index.php', '4.2', 0),
('01100939339a4949bb1daf70b48ca0be', './lib/themecontrol/tcontrol.php', '4.2', 0),
('a8ab558766070c27f99a9a764a1faa62', './lib/tiki-dynamic-js.php', '4.2', 0),
('8b4ba81e62f021a7ce0e70803b0a1d72', './lib/tikiaccesslib.php', '4.2', 0),
('3d6534b021eb29f965541d53f163042f', './lib/tikidate-pear-date.php', '4.2', 0),
('28e47e2e65b4249c1edfe8d40dddb6ee', './lib/tikidate-php5.php', '4.2', 0),
('e67e735294fa68eac5a8664c00ef2b1f', './lib/tikidate.php', '4.2', 0),
('0ef36879b135c989dfbffbcd6dbefc0c', './lib/tikifck.php', '4.2', 0),
('770b1979d7eff316f8adfc4f280dd42b', './lib/tikihelp/css/index.php', '4.2', 0),
('a0b22e7a8b80788d12f701e018a4323d', './lib/tikihelp/icons/index.php', '4.2', 0),
('34e553471bac97bd6e13d657fc807db4', './lib/tikihelp/index.php', '4.2', 0),
('7a52dc83315e75c02c9c09b244d91c17', './lib/tikihelp/js/index.php', '4.2', 0),
('1d0e5bd7b6a1c23061751997048cb8f9', './lib/tikihelp/menu/index.php', '4.2', 0),
('00967ae5c00d3ae5428787e2701b1711', './lib/tikihelplib.php', '4.2', 0),
('b09f8d894b6e3d6ae32da282844b60d9', './lib/tikilib.php', '4.2', 0),
('0893bfdfd3bbb765883560fed988148f', './lib/tikisession-adodb.php', '4.2', 0),
('9ba8c19d606ad16a46806c990fdbf70f', './lib/tikisession-memcache.php', '4.2', 0),
('b81b237eba27be0347691f2fe2f4cf29', './lib/tikisession-pdo.php', '4.2', 0),
('61470148dc4c592325979cfbe5c83b02', './lib/tikiticketlib.php', '4.2', 0),
('b4320da087bf400e03f46165d88ba7a8', './lib/toolbars/index.php', '4.2', 0),
('2156da317349ee978a6ae81b3b822ec9', './lib/toolbars/toolbarslib.php', '4.2', 0),
('cd83a9e63fd9dc392c110ad28bfd85b0', './lib/trackers/index.php', '4.2', 0),
('0ddb859d675f2f8b4656f0832d97d5e1', './lib/trackers/trackerlib.php', '4.2', 0),
('3b84d6c4e3109551b2702f8ff8c83bd7', './lib/trackers/trkWithMirrorTablesLib.php', '4.2', 0),
('23684b2e0b795cc7d22998cc2270c9de', './lib/transitionlib.php', '4.2', 0),
('14f388951debb5f34dd691bee82ea045', './lib/tree/categ_admin_tree.php', '4.2', 0),
('a5e96e653d6b3b1a2791163f2b28c8e1', './lib/tree/categ_browse_tree.php', '4.2', 0),
('9dcb2767a0f5d3064351da9559e4f9a4', './lib/tree/categ_picker_tree.php', '4.2', 0),
('4bf5def3321296dec787cf5567a141e8', './lib/tree/index.php', '4.2', 0),
('6dc85594dfca6f53c5e0c355709a2d19', './lib/tree/tree.php', '4.2', 0),
('71413300495cdc241f99a7abeea56f3f', './lib/userfiles/index.php', '4.2', 0),
('1d826023fd262fc5c015d01acf4fd498', './lib/userfiles/userfileslib.php', '4.2', 0),
('85011c387e825ee81ee3410d8cd27ff6', './lib/usermenu/index.php', '4.2', 0),
('e6b72583c2358b22217db2859e51a1da', './lib/usermenu/usermenulib.php', '4.2', 0),
('eeecc3947385e12f2fd78bf24920c753', './lib/usermodules/index.php', '4.2', 0),
('f8e7c2d8b5941152d3aef350b8e2908a', './lib/usermodules/usermoduleslib.php', '4.2', 0),
('4f0f6833ef2a00ef3cf7f7522b11748d', './lib/userprefs/index.php', '4.2', 0),
('a7ab8fa2326e7002fd377742b6072371', './lib/userprefs/scrambleEmail.php', '4.2', 0),
('5deae2c820d14d6f7c6d42c6ab14a4bf', './lib/userprefs/userprefslib.php', '4.2', 0),
('7c2bb8e216fafbefb3d2550a8597fa10', './lib/userslib.php', '4.2', 0),
('3e8e5cad6770932f5f0b5eb382275c50', './lib/videogals/KalturaClientBase_v3.php', '4.2', 0),
('500d069ec85903a5a929076a07123aa4', './lib/videogals/KalturaClient_v3.php', '4.2', 0),
('59bf3ea6ecf9efb7955b9205463ca7e5', './lib/videogals/videogallib.php', '4.2', 0),
('c88cbf38c5ccbdcca0c9b6bd6bc24c1b', './lib/webdav/webdavlib.php', '4.2', 0),
('fe157817f37cae5cb6680da499bcd4a0', './lib/webmail/class.rc4crypt.php', '4.2', 0),
('8b99fc3863cb13a23a92ede6693f086a', './lib/webmail/contactlib.php', '4.2', 0),
('f23b32eca8e3df13d6caaa232465fd23', './lib/webmail/decodemessage.php', '4.2', 0),
('3def6271e852eae9c21a5fd2a1c6092e', './lib/webmail/example.1.php', '4.2', 0),
('b0a0aaf4a1aa11c3ea4387ef60337386', './lib/webmail/htmlMimeMail.php', '4.2', 0),
('96c3ebde6c030d6b6349ea106d451367', './lib/webmail/index.php', '4.2', 0),
('f4780781095ec6f3dd06f4e3cd4b626c', './lib/webmail/mail.php', '4.2', 0),
('b7ae24d6969887afa1d67054b7331006', './lib/webmail/mimeDecode.php', '4.2', 0),
('623960c6e2ad3e970e315d8c95943d1b', './lib/webmail/net_pop3.php', '4.2', 0),
('65c684714bf8ae8de8127d361c4c3832', './lib/webmail/tikimaillib.php', '4.2', 0),
('c4f449e4dd74d044c7d10527905c52a9', './lib/webmail/webmaillib.php', '4.2', 0),
('ddbf892f100bf28c88760d846700a693', './lib/webservicelib.php', '4.2', 0),
('363b265ce8881f5be0305aa885a99fe2', './lib/wiki-plugins/index.php', '4.2', 0),
('b24c0199fadc4974cfd51a5bd9da2d80', './lib/wiki-plugins/wikiplugin_agentinfo.php', '4.2', 0),
('6e061f813a35b0a52c8d719ef55a3fb7', './lib/wiki-plugins/wikiplugin_alink.php', '4.2', 0),
('11a81867880907420fd62c7d5452abac', './lib/wiki-plugins/wikiplugin_aname.php', '4.2', 0),
('28a5dd1d9acad4a32986aae65db3f7f0', './lib/wiki-plugins/wikiplugin_annotation.php', '4.2', 0),
('3e98f7d85cbe3d7d3228836a4c1c0c27', './lib/wiki-plugins/wikiplugin_article.php', '4.2', 0),
('54565903188d236f4552d2aac0ee4f7a', './lib/wiki-plugins/wikiplugin_articles.php', '4.2', 0),
('8d70e8b46c1affcb50c3ec9ec9d21d11', './lib/wiki-plugins/wikiplugin_attach.php', '4.2', 0),
('24d46660b78316aaf8461e3b54e3b429', './lib/wiki-plugins/wikiplugin_avatar.php', '4.2', 0),
('3aa0469441c6f93323fb5c60077972b0', './lib/wiki-plugins/wikiplugin_back.php', '4.2', 0),
('f58e6b745aace23fafa02b6bd7ad5ca3', './lib/wiki-plugins/wikiplugin_backlinks.php', '4.2', 0),
('5941f2c2680274e177d6e31e34ef882f', './lib/wiki-plugins/wikiplugin_banner.php', '4.2', 0),
('645296107bb864d2b5f5fe1254140ddf', './lib/wiki-plugins/wikiplugin_bloglist.php', '4.2', 0),
('e9c81a8633b390c2e0a32ab7f54ef4c6', './lib/wiki-plugins/wikiplugin_box.php', '4.2', 0),
('0e4dcb128cc8abd1e82f9939c2da1d85', './lib/wiki-plugins/wikiplugin_calendar.php', '4.2', 0),
('4d35b18c7afa4e646edf873640d1234c', './lib/wiki-plugins/wikiplugin_category.php', '4.2', 0),
('afd3a483bbe4055be1127388e3bd5bec', './lib/wiki-plugins/wikiplugin_catorphans.php', '4.2', 0),
('641e7f72ea82402bffaca2b1211b535a', './lib/wiki-plugins/wikiplugin_catpath.php', '4.2', 0),
('935c57a06f19e6f07a0fb6add65125ec', './lib/wiki-plugins/wikiplugin_center.php', '4.2', 0),
('8a24f46b6fc10754518f1332ea368e60', './lib/wiki-plugins/wikiplugin_chart.php', '4.2', 0),
('4c7be08ee728af0a3af149b185889d8a', './lib/wiki-plugins/wikiplugin_code.php', '4.2', 0),
('4895878191cc711302aba48638cb2184', './lib/wiki-plugins/wikiplugin_content.php', '4.2', 0),
('aa256f748cee12cf98c7a0ce47395912', './lib/wiki-plugins/wikiplugin_cookie.php', '4.2', 0),
('8dca082ebc679c26f91e2293f1a3c8e4', './lib/wiki-plugins/wikiplugin_copyright.php', '4.2', 0),
('08389e250300af43ff1d7f4fe6686c30', './lib/wiki-plugins/wikiplugin_countdown.php', '4.2', 0),
('37b8137a031f482ed42cf0bb7a11ee68', './lib/wiki-plugins/wikiplugin_datachannel.php', '4.2', 0),
('c0f6ccd49f8f4f625c52cd91194829fa', './lib/wiki-plugins/wikiplugin_dbreport.php', '4.2', 0),
('3cff470f01d595605034571b7240d810', './lib/wiki-plugins/wikiplugin_div.php', '4.2', 0),
('40b6f7b43dd1c426805f3423c28050ef', './lib/wiki-plugins/wikiplugin_dl.php', '4.2', 0),
('b8fa9e8dc5c2bfb10fe4631e32261259', './lib/wiki-plugins/wikiplugin_equation.php', '4.2', 0),
('eeec51a676a3203379d46be84493fcca', './lib/wiki-plugins/wikiplugin_events.php', '4.2', 0),
('2a8c6f17abd0e8807195cab8128e6583', './lib/wiki-plugins/wikiplugin_fade.php', '4.2', 0),
('df19090462f8830088e2cd3527f5bd06', './lib/wiki-plugins/wikiplugin_fancylist.php', '4.2', 0),
('0ab3f9487f2e1a960b6029b869873ab9', './lib/wiki-plugins/wikiplugin_fancytable.php', '4.2', 0),
('406eaa9370abd36949074a427770f990', './lib/wiki-plugins/wikiplugin_file.php', '4.2', 0),
('b16d7efea924974b0be8f3134d418426', './lib/wiki-plugins/wikiplugin_files.php', '4.2', 0),
('eb9a48a3962fa3433cc40dcbdc6d90d5', './lib/wiki-plugins/wikiplugin_flash.php', '4.2', 0),
('e0d1bc74db9958762f33e3dfb0b0e702', './lib/wiki-plugins/wikiplugin_footnote.php', '4.2', 0),
('c7098d9a5c6814e4407483a9705d5bd7', './lib/wiki-plugins/wikiplugin_footnotearea.php', '4.2', 0),
('bb5e96e34f4e39c29d145ea6efb31851', './lib/wiki-plugins/wikiplugin_ftp.php', '4.2', 0),
('b8d4ef42f3c69dc45c002dd885879f83', './lib/wiki-plugins/wikiplugin_gauge.php', '4.2', 0),
('bd80e9615a2cb26d4d7abd2a7a7fdf33', './lib/wiki-plugins/wikiplugin_googleanalytics.php', '4.2', 0),
('37df278a21faf7c313d27d0abd0e22d0', './lib/wiki-plugins/wikiplugin_googledoc.php', '4.2', 0),
('13a0450cd71f8a8621c40337666d8403', './lib/wiki-plugins/wikiplugin_group.php', '4.2', 0),
('6167de944fb54a3362d51326c6455f3d', './lib/wiki-plugins/wikiplugin_groupmailcore.php', '4.2', 0),
('c862bf0bc9649a65602be189b7130916', './lib/wiki-plugins/wikiplugin_groupstat.php', '4.2', 0),
('3a9e8140f083a6ab09b8ff5262d5abea', './lib/wiki-plugins/wikiplugin_html.php', '4.2', 0),
('2c644501e9ad628cb9fd0617d1930c00', './lib/wiki-plugins/wikiplugin_iframe.php', '4.2', 0),
('5e8b606590676ad3628a6de5c02231f9', './lib/wiki-plugins/wikiplugin_image.php', '4.2', 0),
('3bda67c8c9e0f266e9a4e865fe279361', './lib/wiki-plugins/wikiplugin_img.php', '4.2', 0),
('cea9f53b4ed874bbb05b68008e313b18', './lib/wiki-plugins/wikiplugin_include.php', '4.2', 0),
('fa3e3eeb5594ac65ffa128d50acb3b69', './lib/wiki-plugins/wikiplugin_invite.php', '4.2', 0),
('a6ef90c68aee5dafc6f8403e215f7ea3', './lib/wiki-plugins/wikiplugin_jabber.php', '4.2', 0),
('fe5a8a5405b7bcab37908544f20eff2e', './lib/wiki-plugins/wikiplugin_jq.php', '4.2', 0),
('8b393ce7372a11ae762ae47563f86720', './lib/wiki-plugins/wikiplugin_js.php', '4.2', 0),
('03ab980e12b69439c6198b5771570b3a', './lib/wiki-plugins/wikiplugin_kaltura.php', '4.2', 0),
('a37360d52c1ecdcb86a5c30d340ae726', './lib/wiki-plugins/wikiplugin_lang.php', '4.2', 0),
('321bd46f9d8d1aff278a3b84a048ef9f', './lib/wiki-plugins/wikiplugin_lastmod.php', '4.2', 0),
('a97a72e67938c9d9c504c3abb9af1739', './lib/wiki-plugins/wikiplugin_listpages.php', '4.2', 0),
('773eeb1ac51efa767bc2e29a3608483e', './lib/wiki-plugins/wikiplugin_listprogress.php', '4.2', 0),
('e3482d63b51dd2a2a002069e2112a1b4', './lib/wiki-plugins/wikiplugin_lsdir.php', '4.2', 0),
('53f7780cabe74010d02f66ef1666336b', './lib/wiki-plugins/wikiplugin_map.php', '4.2', 0),
('91f15a8f6cfa561959d4a4d79a28f784', './lib/wiki-plugins/wikiplugin_mcalendar.php', '4.2', 0),
('3edeb45a7d2fb08124da71cc56ddaf8e', './lib/wiki-plugins/wikiplugin_mediaplayer.php', '4.2', 0),
('e1d430a6a5ec6421827ae56057e37946', './lib/wiki-plugins/wikiplugin_memberlist.php', '4.2', 0),
('801cad4c3528e7814309851e91735663', './lib/wiki-plugins/wikiplugin_miniquiz.php', '4.2', 0),
('84b432200cb93deb8f54978705046843', './lib/wiki-plugins/wikiplugin_module.php', '4.2', 0),
('d6ec6446f77e3f8174f904705d7f2370', './lib/wiki-plugins/wikiplugin_mono.php', '4.2', 0),
('98c3adea0771fba49398713c0ba6fd3c', './lib/wiki-plugins/wikiplugin_mouseover.php', '4.2', 0),
('087c4c23e8a217f26f37e6e526942a6e', './lib/wiki-plugins/wikiplugin_mwtable.php', '4.2', 0),
('7f2e29a4f8bffab48e3cbe757060e793', './lib/wiki-plugins/wikiplugin_myspace.php', '4.2', 0),
('79c9afc54680c53fdeb2d9ca7eaebcfd', './lib/wiki-plugins/wikiplugin_objecthits.php', '4.2', 0),
('5495423922b7eab4daf87c1a08e34800', './lib/wiki-plugins/wikiplugin_pagelist.php', '4.2', 0),
('8a889dd17859f2fb190c71ca2e720856', './lib/wiki-plugins/wikiplugin_picture.php', '4.2', 0),
('826e46b23f7a0fa4316232078ec9f1aa', './lib/wiki-plugins/wikiplugin_pluginmanager.php', '4.2', 0),
('3cded8e106fae54cb457c91e20e4c360', './lib/wiki-plugins/wikiplugin_poll.php', '4.2', 0),
('e1204c6aa9130f3ec1d77e6bb79346d4', './lib/wiki-plugins/wikiplugin_profile.php', '4.2', 0),
('a20ffc71bff6c0c209a2c7d3c7051605', './lib/wiki-plugins/wikiplugin_proposal.php', '4.2', 0),
('73af7e4e3f28023a9b6467f1df6f5162', './lib/wiki-plugins/wikiplugin_quote.php', '4.2', 0),
('79c7001f188a2cf710d21b867d72bdc7', './lib/wiki-plugins/wikiplugin_rcontent.php', '4.2', 0),
('aca949c290289fd9da59a25b5af959b6', './lib/wiki-plugins/wikiplugin_realnamelist.php', '4.2', 0),
('ed4e824f8d62b65dd66183b7a40944aa', './lib/wiki-plugins/wikiplugin_redirect.php', '4.2', 0),
('edc56659e3f1576dbe73d3b45dc9590f', './lib/wiki-plugins/wikiplugin_regex.php', '4.2', 0),
('b4a494105c3f143eff01f0c75139fbaf', './lib/wiki-plugins/wikiplugin_remarksbox.php', '4.2', 0),
('8ae7b69687848df4130b69f2cf4e06f9', './lib/wiki-plugins/wikiplugin_rss.php', '4.2', 0),
('81dadcea416f15cca8f6786d962fefce', './lib/wiki-plugins/wikiplugin_screencast.php', '4.2', 0),
('43f0f31c47264dcce698230d80dde94c', './lib/wiki-plugins/wikiplugin_sf.php', '4.2', 0),
('b38a7211bf8b1ed64ef4bf02db133b89', './lib/wiki-plugins/wikiplugin_sharethis.php', '4.2', 0),
('46483d950e4d18d688197aff8e50469a', './lib/wiki-plugins/wikiplugin_sheet.php', '4.2', 0),
('d54d300593c46399ace0158b449a5bb2', './lib/wiki-plugins/wikiplugin_showpages.php', '4.2', 0),
('3c4914e17c5cc34662cfac2e06a2997c', './lib/wiki-plugins/wikiplugin_skype.php', '4.2', 0),
('146229057f26791da8b707066c7d0cc8', './lib/wiki-plugins/wikiplugin_snarf.php', '4.2', 0),
('034a722d2b2f84ab64a2b82bd0c42b38', './lib/wiki-plugins/wikiplugin_sort.php', '4.2', 0),
('48e6f5233b52a73e6bf21d92ee9d56e4', './lib/wiki-plugins/wikiplugin_split.php', '4.2', 0),
('63d1e9bac497798a1c9c2fb07cfa4367', './lib/wiki-plugins/wikiplugin_sql.php', '4.2', 0),
('b622af695ae46e86ee3cb28c43fdf6e2', './lib/wiki-plugins/wikiplugin_stat.php', '4.2', 0),
('8c8990725b6e30b0f960ab1b575e36b2', './lib/wiki-plugins/wikiplugin_sub.php', '4.2', 0),
('e1b5be980456a7eaaac57c6c5bd23be9', './lib/wiki-plugins/wikiplugin_subscribegroup.php', '4.2', 0),
('4bfef5efcf95dc9f57775f997bb8644e', './lib/wiki-plugins/wikiplugin_subscribegroups.php', '4.2', 0),
('998374c14d20637236bfa103c698bef2', './lib/wiki-plugins/wikiplugin_sup.php', '4.2', 0),
('124ebca97335363e14aaff2b3a2b3d9f', './lib/wiki-plugins/wikiplugin_survey.php', '4.2', 0),
('11b0b0e07daf8319f8a2251c8d1211f4', './lib/wiki-plugins/wikiplugin_tabs.php', '4.2', 0),
('1d1e8b172e9de9ef3cfd8d6205dedcdc', './lib/wiki-plugins/wikiplugin_tag.php', '4.2', 0),
('2b610e61ae80941e1a8ab69c838722c0', './lib/wiki-plugins/wikiplugin_thumb.php', '4.2', 0),
('90258e336e9b312a6e0fe72778cd742b', './lib/wiki-plugins/wikiplugin_titlesearch.php', '4.2', 0),
('017fe7930d540dbb23eb144bf96a3276', './lib/wiki-plugins/wikiplugin_toc.php', '4.2', 0),
('d690f4b9f006a120870c42ccf461a5d4', './lib/wiki-plugins/wikiplugin_topfriends.php', '4.2', 0),
('54123b3a6c3bb955bccc07ce64ee5b8e', './lib/wiki-plugins/wikiplugin_tr.php', '4.2', 0),
('1649f202a7d3d2f3290da19334017673', './lib/wiki-plugins/wikiplugin_tracker.php', '4.2', 0),
('df52c262f0ee7bbded209db85b1d99e3', './lib/wiki-plugins/wikiplugin_trackerfilter.php', '4.2', 0),
('fdcb567e7d43210d25d1e54d8f318f45', './lib/wiki-plugins/wikiplugin_trackeritemfield.php', '4.2', 0),
('68b1dd56b41c128899006bff7d2cdd97', './lib/wiki-plugins/wikiplugin_trackerlist.php', '4.2', 0),
('c127eb4d797c5be623c2ba1ede34aa74', './lib/wiki-plugins/wikiplugin_trackerprefill.php', '4.2', 0),
('d74c306decd50da60f6cf1dc43d4ab54', './lib/wiki-plugins/wikiplugin_trackerstat.php', '4.2', 0),
('9f9a4a4c997d68c8887e44a9c77ce049', './lib/wiki-plugins/wikiplugin_trackertimeline.php', '4.2', 0),
('b452cdee43d462a9f02febd3294f2cb3', './lib/wiki-plugins/wikiplugin_translated.php', '4.2', 0),
('8764a86010ba9c208a3fb2e116540bef', './lib/wiki-plugins/wikiplugin_usercount.php', '4.2', 0),
('0763998863805b8c5cea03f72ac6bc75', './lib/wiki-plugins/wikiplugin_userlist.php', '4.2', 0),
('f67bd9ab8457b59fda29cb23aa51aaa0', './lib/wiki-plugins/wikiplugin_userpref.php', '4.2', 0),
('883075734288a4af0fcd0959cdc3b4d6', './lib/wiki-plugins/wikiplugin_versions.php', '4.2', 0),
('fc2f9e306e122bed6076d15563eba778', './lib/wiki-plugins/wikiplugin_vote.php', '4.2', 0),
('116604eff26ebd8c54edace18e2d6bc8', './lib/wiki-plugins/wikiplugin_wantedpages.php', '4.2', 0),
('c6c0c218b0bbe42ddfab37b042bf8019', './lib/wiki-plugins/wikiplugin_webservice.php', '4.2', 0),
('70533ece6d342ac4ebab2a05a84c28c7', './lib/wiki-plugins/wikiplugin_youtube.php', '4.2', 0),
('6923ac2713487e442261c8bb03f02e82', './lib/wiki/editlib.php', '4.2', 0),
('f70e2a10b7486dd8508ce1ada6115557', './lib/wiki/exportlib.php', '4.2', 0),
('9f4d0296224519a9eafa328af0caaf2c', './lib/wiki/histlib.php', '4.2', 0),
('1d97d22e634d5fbd84b5b7cedb49d1ec', './lib/wiki/index.php', '4.2', 0),
('9abead94939f3b816a63b25c0bc0cd34', './lib/wiki/pluginslib.php', '4.2', 0),
('d0d59a57188e82b712425fa9cf1d2fcd', './lib/wiki/quantifylib.php', '4.2', 0),
('1cde018b631a9ee9fed71f7462540350', './lib/wiki/renderlib.php', '4.2', 0),
('20ea9be7725b9ce115aa74168ff16e99', './lib/wiki/semanticlib.php', '4.2', 0),
('df8d8d8a0302a1018fd7bd8c6ab78ed7', './lib/wiki/wiki-ajax.php', '4.2', 0),
('e865524602208d4c81758fa3b32bf2cd', './lib/wiki/wikilib.php', '4.2', 0),
('bb26003f96c7aa6ba578b9bd1556aeb4', './lib/wiki/xmllib.php', '4.2', 0),
('cfeebfb88b096a18881b7592bf6cc555', './lib/x/index.php', '4.2', 0),
('b914cbbf2481975bad283ab70336c6fc', './lib/ziplib.php', '4.2', 0),
('4e29bb6368d541aaec04a3d36a80c873', './list-tracker_field_values_ajax.php', '4.2', 0),
('3c5794bb55ee97bb7cd9c6edcb799575', './maps/index.php', '4.2', 0),
('cb6afc4aec39e1731356d84473826e32', './messu-archive.php', '4.2', 0),
('4a79d660435c2ba4f0a0139f8ac9a06b', './messu-broadcast.php', '4.2', 0),
('5b379409209c99ebbabb782777078257', './messu-compose.php', '4.2', 0),
('10f54cba4f6cdca1f0e588fff51d7219', './messu-mailbox.php', '4.2', 0),
('1360411c9d235ddf4903caeb87d49b32', './messu-read.php', '4.2', 0),
('a52c9f13c19e5afe6cbdb2efd1422a99', './messu-read_archive.php', '4.2', 0);
INSERT INTO `tiki_secdb` (`md5_value`, `filename`, `tiki_version`, `severity`) VALUES 
('c2cd5a312b495f93534cbafb8e00a072', './messu-read_sent.php', '4.2', 0),
('8f7a31cf551f90c70b7f04089114a893', './messu-sent.php', '4.2', 0),
('ac4857f83f960578fa51bc13c3c2029f', './modsadm.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './modules/cache/index.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './modules/index.php', '4.2', 0),
('6497be569921e7baea4fbdc77a00a206', './modules/mod-func-action_calendar.php', '4.2', 0),
('ca6520f9a1c6218c761d8da6c8488a4e', './modules/mod-func-adsense.php', '4.2', 0),
('b57e542bd7bc39135d84fc4650b82cf6', './modules/mod-func-article_archives.php', '4.2', 0),
('f000627c3bd0e0bd35b2c4c9a07b7f72', './modules/mod-func-article_topics.php', '4.2', 0),
('e16c1ceadcc43ca97a3bc2978d718816', './modules/mod-func-articles.php', '4.2', 0),
('a7290d795e9e8a8b6480651f04e6181f', './modules/mod-func-assistant.php', '4.2', 0),
('fc82eb455b15b445f9abbfc56be85e8f', './modules/mod-func-blog_last_comments.php', '4.2', 0),
('4c631faf5712d68d99d48ea65c56b5d7', './modules/mod-func-breadcrumb.php', '4.2', 0),
('ea4eb6b2568a78ace213f47992f7787d', './modules/mod-func-calendar_new.php', '4.2', 0),
('59e3c8f4b347a32001d01592d6ec43cf', './modules/mod-func-categories.php', '4.2', 0),
('68424add0a2c21bf220eae473e0e2d8e', './modules/mod-func-category_transition.php', '4.2', 0),
('d4a7fb660e2b5d646f0b1c231882470f', './modules/mod-func-change_category.php', '4.2', 0),
('073ca59459814d3eb28da6698859b901', './modules/mod-func-comm_received_objects.php', '4.2', 0),
('dadf633f1aa1bde0b38fb8dfae04a673', './modules/mod-func-directory_last_sites.php', '4.2', 0),
('71289ad2fcc930723421281e3b63da68', './modules/mod-func-directory_stats.php', '4.2', 0),
('db756935eead1d6da5bece5b1468c283', './modules/mod-func-directory_top_sites.php', '4.2', 0),
('9a77f51e20c203e75bcba78c093b6d27', './modules/mod-func-featured_links.php', '4.2', 0),
('42c6725caf042a83bf4079722a768a28', './modules/mod-func-file_galleries.php', '4.2', 0),
('ae3689424976099bbd4f81860b625dfc', './modules/mod-func-forums_best_voted_topics.php', '4.2', 0),
('b6f25016b1e5b1a54a0b60d6ae9605ef', './modules/mod-func-forums_last_posts.php', '4.2', 0),
('22d7945032eca755b2b89aa7cc5a6e95', './modules/mod-func-forums_most_commented_forums.php', '4.2', 0),
('7df3f46795987ce9964c89066712c7ce', './modules/mod-func-forums_most_read_topics.php', '4.2', 0),
('24236e554637db3d2bf8cf4e72d41da7', './modules/mod-func-forums_most_visited_forums.php', '4.2', 0),
('09cbb11cf01fbdfa18a32d29be66a44c', './modules/mod-func-freetag.php', '4.2', 0),
('fc64a8c0dc5ef9b67370da12f6ca9252', './modules/mod-func-freetags_current.php', '4.2', 0),
('d4e81914488b9dd10470261499a70dbf', './modules/mod-func-freetags_morelikethis.php', '4.2', 0),
('5885a66851c8df9b07dd0a8d7bbcf6cc', './modules/mod-func-freetags_most_popular.php', '4.2', 0),
('55a2d03bcf1c38703cf381be17385869', './modules/mod-func-freetags_prefered.php', '4.2', 0),
('bcff26ceed2c8a91c0349dc4e3dd8a75', './modules/mod-func-google.php', '4.2', 0),
('2358a688a8d3f6c612b3b43aa71574d2', './modules/mod-func-groups_emulation.php', '4.2', 0),
('5168103cc1eac2c9728fca02059c6331', './modules/mod-func-last_actions.php', '4.2', 0),
('55a8c2b1b649cfbfd94763a6a979bec6', './modules/mod-func-last_blog_posts.php', '4.2', 0),
('e54c6a7eaa58270a4df09f6a62f0a180', './modules/mod-func-last_category_objects.php', '4.2', 0),
('aef20056a5aff23dea7d98302ec0c71f', './modules/mod-func-last_created_blogs.php', '4.2', 0),
('11d2f99a798960e4bfa87fba67d45fac', './modules/mod-func-last_created_faqs.php', '4.2', 0),
('b9d54510d0e9257d6fc7f6492fc62b23', './modules/mod-func-last_created_quizzes.php', '4.2', 0),
('ee92b2d16b2489fb010ebf3272020dc0', './modules/mod-func-last_file_galleries.php', '4.2', 0),
('2a89c7f2ee7f7fdd7cef5f90186d7dba', './modules/mod-func-last_files.php', '4.2', 0),
('a80e30be74ddf1a5a919ebeb6b57d7c8', './modules/mod-func-last_image_galleries.php', '4.2', 0),
('53b4c8e83db604da0074c56fb84ba7ab', './modules/mod-func-last_images.php', '4.2', 0),
('71ec4a204af2b273fc04f196de03b945', './modules/mod-func-last_modif_events.php', '4.2', 0),
('3eeb9f36591e4b74d714646d6d8b94f6', './modules/mod-func-last_modif_pages.php', '4.2', 0),
('657f572d650f2f534e9cb4afb672fddc', './modules/mod-func-last_modified_blogs.php', '4.2', 0),
('57e63164a86bd30e133f0ca3e38237a8', './modules/mod-func-last_submissions.php', '4.2', 0),
('bfe0c30c8753ffa4851796dd25300494', './modules/mod-func-last_tracker_comments.php', '4.2', 0),
('7272409edbc990dd3c75147afdf9ee95', './modules/mod-func-last_tracker_items.php', '4.2', 0),
('a44e90c1d5ffb4d0b2f2ccd9158ae6ad', './modules/mod-func-last_validated_faq_questions.php', '4.2', 0),
('c34787bcba57b054ecb54c6151cd4bb1', './modules/mod-func-last_visitors.php', '4.2', 0),
('23bce2a81e33931b2ddfda8eaefed61b', './modules/mod-func-live_support.php', '4.2', 0),
('2efa9265f4dbfc20c09cf4571e2220dc', './modules/mod-func-login_box.php', '4.2', 0),
('a4e956d282d9f82d3d5ca8a2d443457b', './modules/mod-func-logo.php', '4.2', 0),
('9541c7e75f6702038b657a0d945a9071', './modules/mod-func-menupage.php', '4.2', 0),
('ad85a6376a87a88ad9ce7923a584f19d', './modules/mod-func-messages_unread_messages.php', '4.2', 0),
('9ecbb5cd41e6c5ab717d2c703b4956f8', './modules/mod-func-minichat.php', '4.2', 0),
('71bd54e9ea911f95a62133554aaa7998', './modules/mod-func-months_links.php', '4.2', 0),
('e3bdbb25030ba21ba0ebff24b8d1c593', './modules/mod-func-num_submissions.php', '4.2', 0),
('4578250e9cd73e33a7bf8d256f740eb8', './modules/mod-func-old_articles.php', '4.2', 0),
('aef8fe07fe426c229c0d2c0fb0f41c30', './modules/mod-func-perspective.php', '4.2', 0),
('78486b797f7ebe333bbc6a8842e94ee6', './modules/mod-func-quick_edit.php', '4.2', 0),
('9f47e390390418c708c61ec1230be25f', './modules/mod-func-random_images.php', '4.2', 0),
('ff42f339648357948e96ea06e0a39543', './modules/mod-func-random_pages.php', '4.2', 0),
('fbffb4bb2259e8f7ffd8de4d389f6372', './modules/mod-func-register.php', '4.2', 0),
('3cb3e4771c6466e4eedd9dae1e753c09', './modules/mod-func-rsslist.php', '4.2', 0),
('cc89371edd5ccb6691f49a447f4f49bb', './modules/mod-func-search_box.php', '4.2', 0),
('074b1ddad2a2fd55ed80a5fe4fb7f43a', './modules/mod-func-search_new.php', '4.2', 0),
('3f0b6ffe75f222127e5b1fb3f91225cc', './modules/mod-func-search_wiki_page.php', '4.2', 0),
('793424c4f5aa0ec940449423949b3d63', './modules/mod-func-search_wiki_page_new.php', '4.2', 0),
('7f5723f09336fad05283b2716cf504b3', './modules/mod-func-semantic_links.php', '4.2', 0),
('1f9705944813353b1457e1615a7d0238', './modules/mod-func-shoutbox.php', '4.2', 0),
('58b26c725e01ab12973c5d248efa5d73', './modules/mod-func-since_last_visit.php', '4.2', 0),
('781e01de8dfa7571199ea24afe502be5', './modules/mod-func-since_last_visit_new.php', '4.2', 0),
('4ad68273158e18ad2fa365f1d338deea', './modules/mod-func-switch_lang.php', '4.2', 0),
('99cde39106292a687a7fcf6de6cc0876', './modules/mod-func-switch_theme.php', '4.2', 0),
('212bd16fbda8887f08325407bda0930b', './modules/mod-func-terminology.php', '4.2', 0),
('d9ff68f75ad7de691c75d5d32f259ba7', './modules/mod-func-tikitests.php', '4.2', 0),
('b0bfeca54ca5aba09438af556027d5e7', './modules/mod-func-top_active_blogs.php', '4.2', 0),
('3244bb7b74715cbc3fbdb64eed5cec3f', './modules/mod-func-top_articles.php', '4.2', 0),
('785c02a39a1544f5d9222ae35dc87c9d', './modules/mod-func-top_file_galleries.php', '4.2', 0),
('b69e866fb431e77f480863c1b0538a43', './modules/mod-func-top_files.php', '4.2', 0),
('8a9f14e9fe1d25c01be1c29906d110e3', './modules/mod-func-top_forum_posters.php', '4.2', 0),
('a53a0694ecce6bc310d24ec63f63cf86', './modules/mod-func-top_image_galleries.php', '4.2', 0),
('d39050cc6838be6319cc48628d54e587', './modules/mod-func-top_images.php', '4.2', 0),
('432b926097a5f1c31000f65fb1bf1c70', './modules/mod-func-top_objects.php', '4.2', 0),
('7199a60dd37de0df0d243c387287cfd5', './modules/mod-func-top_pages.php', '4.2', 0),
('2cb80d02e8d5025393274b4189434626', './modules/mod-func-top_quizzes.php', '4.2', 0),
('a7b9da1038197518a47ba9040aac8ca2', './modules/mod-func-top_visited_blogs.php', '4.2', 0),
('25e350f2b010d5bf271fcc9086d3503f', './modules/mod-func-top_visited_faqs.php', '4.2', 0),
('15cdadbfd272f75bf5e6bb224a124db8', './modules/mod-func-translation.php', '4.2', 0),
('63d5c24e28c3da3b145d4f18a2a6d691', './modules/mod-func-upcoming_events.php', '4.2', 0),
('6c5f568d6ee9c10e60cb1465107913c3', './modules/mod-func-user_blogs.php', '4.2', 0),
('daaf1aba9f37cb86d9d3852f649556a1', './modules/mod-func-user_bookmarks.php', '4.2', 0),
('dcbf8aee937fa2478f7cab8977fd74b7', './modules/mod-func-user_image_galleries.php', '4.2', 0),
('06d6eaa1054745a3ecf9dd8af7d1c7ce', './modules/mod-func-user_pages.php', '4.2', 0),
('8137769456efc2dcb40c913fe1e5b167', './modules/mod-func-user_tasks.php', '4.2', 0),
('224ecebcb15f621fc0662680dbb337a9', './modules/mod-func-user_tasks_public.php', '4.2', 0),
('b552681f914170377df6773306795df4', './modules/mod-func-usergroup_tracker.php', '4.2', 0),
('ac3279af767c20838133e9f0360ea8f3', './modules/mod-func-users_rank.php', '4.2', 0),
('0cbb21f2093cab3c9dcfd630a39753e4', './modules/mod-func-webmail_inbox.php', '4.2', 0),
('7c27591be470c4048a6a7b75d4b37176', './modules/mod-func-whats_related.php', '4.2', 0),
('22c79880ce9e817f4658da194df0f999', './modules/mod-func-who_is_there.php', '4.2', 0),
('3c68fc1c66a1122ed0e5c32052312e80', './modules/mod-func-wiki_last_comments.php', '4.2', 0),
('e9a1dc5e80434cad0fe729b9515566f9', './modules/mod-func-youtube.php', '4.2', 0),
('dbc5fd3098528c2809bbf95aed8ac367', './plugins_help.php', '4.2', 0),
('29ef09f6104f0c5cd3f173ef447d5df7', './poll_categorize.php', '4.2', 0),
('5c7fb52c74ecbf3b68d981a57a7fa5ae', './received_article_image.php', '4.2', 0),
('aab4ac66aad1972589f4540ae018f334', './reindex_file.php', '4.2', 0),
('0d8d5f0b78eebe74d28004169a427913', './remote.php', '4.2', 0),
('526495e9176c537f4d7f8d3d575de76c', './select_banner.php', '4.2', 0),
('f78570dcb8df126aef0081512b21920a', './setup_fckeditor.php', '4.2', 0),
('fd4ea9921944a1422cdcb43603468f9d', './setup_smarty.php', '4.2', 0),
('fde7409ee255d5e7a461736d1b55ea08', './show_image.php', '4.2', 0),
('7389cb463dc6715eb8dee83beae2873c', './styles/BiDi/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/coelesce/index.php', '4.2', 0),
('5db925b90f3df57bdb0c1e71b87f2a78', './styles/coelesce/options/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/darkroom/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/feb12/index.php', '4.2', 0),
('5db925b90f3df57bdb0c1e71b87f2a78', './styles/feb12/options/index.php', '4.2', 0),
('7569dbfab7f54f99938e6e5159bcb768', './styles/index.php', '4.2', 0),
('4526146ebb3f584ff6b46c44c4dcd303', './styles/integrator/index.php', '4.2', 0),
('717b80a5586c4a32c7d233065be35d69', './styles/layout/index.php', '4.2', 0),
('c36bfb4f013d29dcec09d82b51abfdbf', './styles/slides/index.php', '4.2', 0),
('e11caf1af437c1aa7c0e1cb71127d24e', './styles/slideshows/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/strasa/index.php', '4.2', 0),
('15684ec01626d6f94186dec04762ee98', './styles/strasa/options/fixed_width/index.php', '4.2', 0),
('5db925b90f3df57bdb0c1e71b87f2a78', './styles/strasa/options/index.php', '4.2', 0),
('1d3a10b1eaa84ee87c14551eb19dadbf', './styles/strasa/options/mono/pics/icons/index.php', '4.2', 0),
('1d3a10b1eaa84ee87c14551eb19dadbf', './styles/strasa/options/mono/pics/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/strasa/pics/icons/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/strasa/pics/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './styles/thenews/index.php', '4.2', 0),
('5db925b90f3df57bdb0c1e71b87f2a78', './styles/thenews/options/index.php', '4.2', 0),
('5db925b90f3df57bdb0c1e71b87f2a78', './styles/tikinewt/options/index.php', '4.2', 0),
('3c5794bb55ee97bb7cd9c6edcb799575', './temp/cache/index.php', '4.2', 0),
('0a7a87591f8a510cadb88542920a5eeb', './temp/index.php', '4.2', 0),
('08bba8eb781f1f1ee6ee1adb7b7704a9', './temp/mail_attachs/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './templates/debug/index.php', '4.2', 0),
('ccdc8a0e7e98b03cec03785e3af80662', './templates/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './templates/mail/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './templates/map/index.php', '4.2', 0),
('3189384977cbbb5b0e7c0f5e715e5fac', './templates/modules/index.php', '4.2', 0),
('298dfe4ecb043721e17067b5456f3f58', './templates/styles/coelesce/index.php', '4.2', 0),
('166729ee73f645ffc954ccaf2480c7d1', './templates/styles/darkroom/index.php', '4.2', 0),
('298dfe4ecb043721e17067b5456f3f58', './templates/styles/feb12/index.php', '4.2', 0),
('7159e8ab37aa2b1fe768c0de0664d1c4', './templates/styles/index.php', '4.2', 0),
('298dfe4ecb043721e17067b5456f3f58', './templates/styles/strasa/index.php', '4.2', 0),
('298dfe4ecb043721e17067b5456f3f58', './templates/styles/thenews/index.php', '4.2', 0),
('921934b777c80e9c7e676d72357ae458', './templates/styles/tikinewt/index.php', '4.2', 0),
('64bfc6c9ce1d964ed36639a2158bcce3', './templates_c/index.php', '4.2', 0),
('fcb879e9199439bb7d4f03127df59c52', './tests/index.php', '4.2', 0),
('cee72083bdd1a0a6262048ca6737302f', './textareasize.php', '4.2', 0),
('24ba8d76505948b2f008e7373631c82a', './tiki-action_calendar.php', '4.2', 0),
('d3a98134042db1dafce60a1004709792', './tiki-admin.php', '4.2', 0),
('18356355441bb6b40b0adc760ea6d3fe', './tiki-admin_actionlog.php', '4.2', 0),
('b374ca4ccdcccf2352effd5819ace2b2', './tiki-admin_banners.php', '4.2', 0),
('797485895e5b9473dd4047d785464fe5', './tiki-admin_banning.php', '4.2', 0),
('82dae27e55bbad17e51f0e23730d74da', './tiki-admin_calendars.php', '4.2', 0),
('561124d8b387f59d0d4890c8ee69340e', './tiki-admin_categories.php', '4.2', 0),
('d24ac362a1f1b9d76ab1dc6ec99c7999', './tiki-admin_content_templates.php', '4.2', 0),
('a3d3ae03c6201578ef16265bc04cd51a', './tiki-admin_contribution.php', '4.2', 0),
('0824bde3ca3c8c394116b4120f7a83ef', './tiki-admin_cookies.php', '4.2', 0),
('2bb98e7e2c6491d566539d92d3a9957d', './tiki-admin_dsn.php', '4.2', 0),
('5d8e0b29e21edd5de8789395ae38dd82', './tiki-admin_external_wikis.php', '4.2', 0),
('95f439c9c0a9510a83085b97bd19c67d', './tiki-admin_forums.php', '4.2', 0),
('15b24af023779d951ee592f6b3eea134', './tiki-admin_hotwords.php', '4.2', 0),
('dd0fec0cc35d9bb39acdc922714618f4', './tiki-admin_html_page_content.php', '4.2', 0),
('467fd67373e5c233e338725e561b6ce8', './tiki-admin_html_pages.php', '4.2', 0),
('1498d131e14e3b4623ae26e82e611a4a', './tiki-admin_include_ads.php', '4.2', 0),
('8639ccd96a20a5b2be09485c55a5096d', './tiki-admin_include_blogs.php', '4.2', 0),
('3c79965f6a0fec3ade59142ca1f19adb', './tiki-admin_include_calendar.php', '4.2', 0),
('896c2f916c37d6a0a95c74ca13f61634', './tiki-admin_include_category.php', '4.2', 0),
('3b53a735e05543af8e57c44decca4390', './tiki-admin_include_cms.php', '4.2', 0),
('c706c82abac2b12a9fc612fa164f24b6', './tiki-admin_include_community.php', '4.2', 0),
('0b8b80d61384f0c722bf70574d2cbcfb', './tiki-admin_include_connect.php', '4.2', 0),
('f247539b72ef5bd0103421eca8cc580d', './tiki-admin_include_copyright.php', '4.2', 0),
('cbf6c88652c7bda8497726507d118f2c', './tiki-admin_include_directory.php', '4.2', 0),
('285f30a088d6eda515aedb713c0630bd', './tiki-admin_include_faqs.php', '4.2', 0),
('11d40dc42e0b96f7c42c4d303d482253', './tiki-admin_include_features.php', '4.2', 0),
('21b29ea4677f861acc8e5bc367f14f07', './tiki-admin_include_fgal.php', '4.2', 0),
('86d548b58944d8012784c569cb3f5114', './tiki-admin_include_forums.php', '4.2', 0),
('9cfc6c6c5e522ccce52678e0f85c6e4f', './tiki-admin_include_freetags.php', '4.2', 0),
('c79ddd1a67c304de4ea3d3f371bbcd53', './tiki-admin_include_gal.php', '4.2', 0),
('f1da31e3791aab7493ae7b3684dc9909', './tiki-admin_include_general.php', '4.2', 0),
('84b4b27c6e60ff8fab99f79c058f98b7', './tiki-admin_include_gmap.php', '4.2', 0),
('d48d3a70fa44d9796f9a3d49d9655c4a', './tiki-admin_include_i18n.php', '4.2', 0),
('a741adef0bce18b97aa3e345adf4f15f', './tiki-admin_include_intertiki.php', '4.2', 0),
('f4090779b6408c3a1bea302cccd26b0e', './tiki-admin_include_kaltura.php', '4.2', 0),
('82611bebf41b425a0563954b1251246c', './tiki-admin_include_login.php', '4.2', 0),
('5f02e8a5983fa78ac6df6e84844281a9', './tiki-admin_include_look.php', '4.2', 0),
('0f8416e3a8fb9e6db8d8ec9027bec08c', './tiki-admin_include_maps.php', '4.2', 0),
('43e0b311be0079f83f631a54694ca04d', './tiki-admin_include_messages.php', '4.2', 0),
('4cbadc25462ee02deed02d458057cf92', './tiki-admin_include_metatags.php', '4.2', 0),
('8b2d600ba0ad33f1c2eaecaf0f23b0e9', './tiki-admin_include_module.php', '4.2', 0),
('8751f32d14d999f30dda65a8988a5cd5', './tiki-admin_include_multimedia.php', '4.2', 0),
('33c21456d1cff7dda7a2f9120a53a36d', './tiki-admin_include_performance.php', '4.2', 0),
('0418fe113e5c4cba458d43c236a394be', './tiki-admin_include_polls.php', '4.2', 0),
('ab5e93f0ae94d2698d8efd76d50aa2ff', './tiki-admin_include_profiles.php', '4.2', 0),
('77c35520f9c2c5a2554e877cb6659f11', './tiki-admin_include_rss.php', '4.2', 0),
('b0d4218919e4fdbdf201ed67afa149de', './tiki-admin_include_score.php', '4.2', 0),
('38fa996dc8f7a9dec0953991879a547a', './tiki-admin_include_search.php', '4.2', 0),
('368de2e722362b79213db771790e918f', './tiki-admin_include_security.php', '4.2', 0),
('627b434372191858907e7b4d7b82b950', './tiki-admin_include_sefurl.php', '4.2', 0),
('6973a789327bb65941c15b47bd377310', './tiki-admin_include_semantic.php', '4.2', 0),
('18e2769b8a4d1dd086a3b01e7e36406e', './tiki-admin_include_textarea.php', '4.2', 0),
('12e8ccb2e115674e6c7e34ce1b1b5db8', './tiki-admin_include_trackers.php', '4.2', 0),
('11814c3634cb59da14913d1a23769d9e', './tiki-admin_include_userfiles.php', '4.2', 0),
('4afee82137ce47fd54dace6c4d53ab2f', './tiki-admin_include_webmail.php', '4.2', 0),
('4063a67dcd80502d01e586e2acc49676', './tiki-admin_include_webservices.php', '4.2', 0),
('ad45422143b5331fa273ce0b031f4514', './tiki-admin_include_wiki.php', '4.2', 0),
('1515a07cf3267216623a338b51938554', './tiki-admin_include_wikiatt.php', '4.2', 0),
('90bd19839ac7632301c6782443ddd02f', './tiki-admin_include_wysiwyg.php', '4.2', 0),
('a800cb4e7117bd7b53c0b8dccddff9ad', './tiki-admin_integrator.php', '4.2', 0),
('2efa0080a5ba7f58145d8760e338d5e1', './tiki-admin_integrator_rules.php', '4.2', 0),
('8f267757d50b79f55d759e80eaab94b9', './tiki-admin_layout.php', '4.2', 0),
('27fae9dad6dc48ae78dabea08b3189d0', './tiki-admin_links.php', '4.2', 0),
('ce96d786829fcdc7df8338986f52d373', './tiki-admin_mailin.php', '4.2', 0),
('7cdd8e2ba24984a9c42538a5a55da4f1', './tiki-admin_menu_options.php', '4.2', 0),
('df059d26002494d77362564b6cff5200', './tiki-admin_menus.php', '4.2', 0),
('310fe435cd271b6c5e48689d1dbb1d67', './tiki-admin_modules.php', '4.2', 0),
('9820684c6b31152e77a4ef626a8f1a71', './tiki-admin_newsletter_subscriptions.php', '4.2', 0),
('c8a9284c98d656e77c0a6c65de8af7d8', './tiki-admin_newsletters.php', '4.2', 0),
('35c77a18402bf6761dac1b0c0ce5a013', './tiki-admin_notifications.php', '4.2', 0),
('4d534a67991ca6aa0de725af96f0cb22', './tiki-admin_pagelist.php', '4.2', 0),
('fb11e51e844ee7511944d8db29f333d1', './tiki-admin_poll_options.php', '4.2', 0),
('a220d2a99a9a8eaef60d5e4fcea38cba', './tiki-admin_polls.php', '4.2', 0),
('1c4ba1f74e7abaddfa9994da99dce9aa', './tiki-admin_rssmodules.php', '4.2', 0),
('3f8c86bd09525c3ca81e5c540ff1d321', './tiki-admin_security.php', '4.2', 0),
('5c0933b2759ebcda5c465d0dd5333b77', './tiki-admin_shoutbox_words.php', '4.2', 0),
('9c007ca4052b91c0592a8a0bf3b3eadd', './tiki-admin_structures.php', '4.2', 0),
('99eaeb2c7e5c781d0d6bd123f9b20cd7', './tiki-admin_survey_questions.php', '4.2', 0),
('e4feb41416e3d8cb924e3e2d8c98e17e', './tiki-admin_surveys.php', '4.2', 0),
('e0a0266f637b724c5418fcde81cce36b', './tiki-admin_system.php', '4.2', 0),
('92c357e41070c32d1322ecf163d84119', './tiki-admin_toolbars.php', '4.2', 0),
('4f32b1fcce69cade8a3a5650267d6929', './tiki-admin_topics.php', '4.2', 0),
('e92a75e96ff8476a9d7bb28842d580ba', './tiki-admin_tracker_fields.php', '4.2', 0),
('b51fbb7b9f58d4ed054c63581dd40d01', './tiki-admin_trackers.php', '4.2', 0),
('a4c8905b2a63b0b4667fb2f092c4d3d7', './tiki-admingroups.php', '4.2', 0),
('ba85a7d7b1774ed77aac849fa1c65d66', './tiki-adminusers.php', '4.2', 0),
('8e145eb67e7d1bb07412c59612fa02d4', './tiki-ajax_services.php', '4.2', 0),
('2d5f6868cc686d3c56754b72823d7f87', './tiki-all_languages.php', '4.2', 0),
('74b9167ceca195e9ac931df69a0a24d5', './tiki-approve_staging_page.php', '4.2', 0),
('e64ff7f3d0e21fd9b9837cd1d46eb4ab', './tiki-article_types.php', '4.2', 0),
('83591ed2d46340da983832883b9cda0c', './tiki-articles_rss.php', '4.2', 0),
('590ebdb25b6e9c015d484617d1248278', './tiki-assignpermission.php', '4.2', 0),
('7e4974cb2f0c933c17f12d7c725fd023', './tiki-assignuser.php', '4.2', 0),
('7295c105335998984d170c0dae966fdd', './tiki-atom.php', '4.2', 0),
('329c886b096a569cbfb019d52c3ffbc0', './tiki-auto_save.php', '4.2', 0),
('7b54f977ca89651022e8fc0bde72f6a0', './tiki-backlinks.php', '4.2', 0),
('e90166b0a2a370d6bb4a5524e6a94c35', './tiki-batch_upload.php', '4.2', 0),
('d14b27d37dbaa7b47312c96c53e523f3', './tiki-batch_upload_files.php', '4.2', 0),
('2970d114b88c31fd3374420ebb426544', './tiki-blog_post.php', '4.2', 0),
('03bea46599bcb07925c8e3d89530dbcc', './tiki-blog_rankings.php', '4.2', 0),
('8f84fa4e5dc2366f6286f8490e9d2dde', './tiki-blog_rss.php', '4.2', 0),
('c2f933205e9fb63b33cfc9a20798d2bb', './tiki-blogs_rss.php', '4.2', 0),
('2c88dd8135c2b33dc6a09241cd38a258', './tiki-browse_categories.php', '4.2', 0),
('8a0e3aad97545794ceb97758b9241219', './tiki-browse_freetags.php', '4.2', 0),
('d93b3da6b552fe34f82808b0d204021a', './tiki-browse_gallery.php', '4.2', 0),
('7e274862cf6f32589e0f9cbb5f31258a', './tiki-browse_image.php', '4.2', 0),
('72e83fcf47bb736c714fffd0fad4efec', './tiki-calendar.php', '4.2', 0),
('820b410d209e24eebc0473eb43ab2710', './tiki-calendar_edit_item.php', '4.2', 0),
('0bad2ee0eb55380dc6256c3ef06d9f40', './tiki-calendar_export_ical.php', '4.2', 0),
('f5543fad060ac5bf0f04eeeb055b818e', './tiki-calendar_import.php', '4.2', 0),
('a3e5b20ef04de1cea9a614245080335f', './tiki-calendar_params_ical.php', '4.2', 0),
('e501858ea1b4a987d29bfd9289002786', './tiki-calendar_setup.php', '4.2', 0),
('57296afe764e008ae54a12fe65392a75', './tiki-calendars_rss.php', '4.2', 0),
('0160a6a71066e0f8b9ac56827f827719', './tiki-change_password.php', '4.2', 0),
('3649ef42225a70e952290421ef79039f', './tiki-channel.php', '4.2', 0),
('ca557f2cb572eabf7fa44422443bae6f', './tiki-cms_rankings.php', '4.2', 0),
('e9b23c11ff3213b02858a0ffaade309e', './tiki-confirm_user_email.php', '4.2', 0),
('cd59f7380ab38cbad308911f50e596aa', './tiki-contact.php', '4.2', 0),
('56234fe208954738ca6822cf1532b10b', './tiki-contacts.php', '4.2', 0),
('e480584222af093705383b05cbdfd209', './tiki-cookie-jar.php', '4.2', 0),
('fdf93878b65d4e071c2dd1498f7163cb', './tiki-create_webhelp.php', '4.2', 0),
('1dcde9b321226e20d2a527221735ef88', './tiki-custom_home.php', '4.2', 0),
('0279d700c3d3d40af3900374c39c0dd3', './tiki-directories_rss.php', '4.2', 0),
('2798949eef189aabc644a75b0f32bb90', './tiki-directory_add_site.php', '4.2', 0),
('77b29834dba67f8f1b0b9cd2ab185935', './tiki-directory_add_tiki_site.php', '4.2', 0),
('fc676bc31aea5665a49a36e50d69a8d1', './tiki-directory_admin.php', '4.2', 0),
('cc790d2066f766355383b013ce5bb75e', './tiki-directory_admin_categories.php', '4.2', 0),
('dfae80b7cb5caf1938322115c1d38abc', './tiki-directory_admin_related.php', '4.2', 0),
('73199d17469c17795ab38cf969206729', './tiki-directory_admin_sites.php', '4.2', 0),
('afc98a1bd91455184315af7f8c718910', './tiki-directory_browse.php', '4.2', 0),
('2339e3a85629fbdfc3e199145e12fa1f', './tiki-directory_ranking.php', '4.2', 0),
('8e4033456249fbf4867959738d52bebb', './tiki-directory_redirect.php', '4.2', 0),
('d759f26a7a604e14876959ba05874493', './tiki-directory_rss.php', '4.2', 0),
('4024fb459b3aaba92e00f4d93390e1b0', './tiki-directory_search.php', '4.2', 0),
('378efadd5cdff224966ad1d67c1f9392', './tiki-directory_validate_sites.php', '4.2', 0),
('2be5b57edeb190647a2cbd70368fc010', './tiki-download_file.php', '4.2', 0),
('1ef689779a40f15e33adf538f76ee5db', './tiki-download_forum_attachment.php', '4.2', 0),
('70936e2965f397f4619d8017c1bfdfc4', './tiki-download_item_attachment.php', '4.2', 0),
('119757478a43001c9f860860d57e55bf', './tiki-download_userfile.php', '4.2', 0),
('1000f0e597a0e815fd1c2fb1f0221959', './tiki-download_wiki_attachment.php', '4.2', 0),
('fce2d9aba7ed0c50bd48b3dd531ee7c5', './tiki-edit_article.php', '4.2', 0),
('6953983d9ea14f3de99aff926f03c5a8', './tiki-edit_banner.php', '4.2', 0),
('ac81e575d14c7729fdb3f48d8d5ccbc8', './tiki-edit_blog.php', '4.2', 0),
('e16aefd071f518a8fb4170977d9ad059', './tiki-edit_css.php', '4.2', 0),
('4a9db62b02c726c0b6ffea78ddafaa09', './tiki-edit_image.php', '4.2', 0),
('d9760a89ab33e97f452fed47c7d4864a', './tiki-edit_languages.php', '4.2', 0),
('93fa8f6eec7ce593e41e42b9acee2901', './tiki-edit_programmed_content.php', '4.2', 0),
('7d9a99fe54b350b54f3681d2ad92ff8c', './tiki-edit_question_options.php', '4.2', 0),
('d77e57341de24193ea9b377e6a365fd9', './tiki-edit_quiz.php', '4.2', 0),
('53f2d51c5f80d61d78ef26d4484db683', './tiki-edit_quiz_questions.php', '4.2', 0),
('4a8382d31031dc0935b31e841c5bd672', './tiki-edit_quiz_results.php', '4.2', 0),
('5e1fdcc9e2eac9e019d71776e5f0ec2f', './tiki-edit_structure.php', '4.2', 0),
('075467603dab51e5fe9c8a59af44ba03', './tiki-edit_submission.php', '4.2', 0),
('1a190152c4499503863b40ebe52fd5bf', './tiki-edit_templates.php', '4.2', 0),
('26660031842ec68442065cd2a582b456', './tiki-edit_topic.php', '4.2', 0),
('aa793b85e287997ba407ef50d1bc674a', './tiki-edit_translation.php', '4.2', 0),
('90c8573244201a6271c76a96ee511664', './tiki-edit_wiki_section.php', '4.2', 0),
('aea36305a5a207cadfa4ac2aaab2c2e4', './tiki-editpage.php', '4.2', 0),
('91142e8955492f2d832a74c60f81b2ce', './tiki-emulate_groups_switch.php', '4.2', 0),
('5b92257ab0d733ae42a78da95b56af3d', './tiki-error_simple.php', '4.2', 0),
('fbfd2d6d1869c79cf4eb5f7ecb4e94c0', './tiki-export_sheet.php', '4.2', 0),
('9cb45d0d33a120730eff45385ebd6826', './tiki-export_tracker.php', '4.2', 0),
('83f716c63bf2cbebda1a2bde39e6c366', './tiki-export_wiki_pages.php', '4.2', 0),
('88a697aefef5da4777115b75f6471604', './tiki-faq_questions.php', '4.2', 0),
('fdc5916f1e1181e7ad2871dac50e2edc', './tiki-featured_link.php', '4.2', 0),
('820bbca03066fb868260fe042b998eb8', './tiki-file_archives.php', '4.2', 0),
('33791d2635b0d4e00a7869c609ffaea4', './tiki-file_galleries_rankings.php', '4.2', 0),
('e46cd448aff70bc33d1391c0aa85285f', './tiki-file_galleries_rss.php', '4.2', 0),
('305c48c09ab09f574021e762af5488b0', './tiki-file_gallery_rss.php', '4.2', 0),
('7c7c4d85b5a8f2d6663a83e694114572', './tiki-filter-base.php', '4.2', 0),
('05d1293c1fa1defb5bf642cabe2a8beb', './tiki-forum_import.php', '4.2', 0),
('1af30d578337c2b2fec12b8502a2976e', './tiki-forum_queue.php', '4.2', 0),
('4ddef92d856032169e2ed86c98edfca7', './tiki-forum_rankings.php', '4.2', 0),
('7d3c5bebf358513412949ce345bec164', './tiki-forum_rss.php', '4.2', 0),
('9c61cc181900aed6c3e768cccc1842d7', './tiki-forums.php', '4.2', 0),
('50231e7a2b0c4fb42400c92d7f499e67', './tiki-forums_reported.php', '4.2', 0),
('2396656c50f217d527f553d38f165276', './tiki-forums_rss.php', '4.2', 0),
('d4e852b5b0a8277bbe39d2343626d5a4', './tiki-freetag3d_xmlrpc.php', '4.2', 0),
('65ea944cd4bfbd7390e8e3d02fb1a9f4', './tiki-freetag_translate.php', '4.2', 0),
('1e661ccfa566060caa5687f6a7d7c1c4', './tiki-friends.php', '4.2', 0),
('16dd2edf88bf7565a70bfba8e50d873c', './tiki-galleries.php', '4.2', 0),
('2c092ffd66e42eca1adfbb4787488a48', './tiki-galleries_rankings.php', '4.2', 0),
('fade1e386f832cf5f6b2ee9878af9472', './tiki-gmap_locator.php', '4.2', 0),
('86344bae5da771d07b4fd20f1406537b', './tiki-gmap_usermap.php', '4.2', 0),
('2d9ab14d7b076a119bb9c426e882303e', './tiki-graph_formula.php', '4.2', 0),
('15f852b9a2eed75bf1646c6ac77766fe', './tiki-graph_sheet.php', '4.2', 0),
('29f58db2d1d39c5a3bf9a4bf09d4bddb', './tiki-history_sheets.php', '4.2', 0),
('7770ccedb6fb2220ff1ccdccd808e373', './tiki-image_galleries_rss.php', '4.2', 0),
('d63cefb1ef62b986f5ca9c76aee1137c', './tiki-image_gallery_rss.php', '4.2', 0),
('c4bf22158a61fb86266ce77c6299bf73', './tiki-imexport_languages.php', '4.2', 0),
('67a0b2c431861371d02c7d4c3fa523cd', './tiki-import_sheet.php', '4.2', 0),
('77684110f8b9df06260a88e170a20b1b', './tiki-import_structuredtext.php', '4.2', 0),
('40854db16bb7f543fdcd2cffbd664357', './tiki-import_tracker.php', '4.2', 0),
('3f6954222ece42de771aceab1ec6289f', './tiki-import_xml_zip.php', '4.2', 0),
('805bed55a6fe462ec8a9928849488f58', './tiki-importer.php', '4.2', 0),
('ee2ac0371d4bfe0735eef51e1950384e', './tiki-index.php', '4.2', 0),
('b6c62cf7b89fe3c5d68eb1c517cfca5e', './tiki-index_p.php', '4.2', 0),
('25d019b42bc99f1e2f46f9f9b513634a', './tiki-index_raw.php', '4.2', 0),
('e039e80579b405bea3ede9e824c21121', './tiki-information.php', '4.2', 0),
('732910844535bab4fd5d2a25cf29e1a4', './tiki-install.php', '4.2', 0),
('979204b7cc40a333e813ccdaa273d435', './tiki-integrator.php', '4.2', 0),
('8bd86a2907e478588c80d23d843988db', './tiki-interactive_trans.php', '4.2', 0),
('e2fbe3eeba76f84166d4cc3e6a3bcdb2', './tiki-jscalendar.php', '4.2', 0),
('d6fd47b39a8959650b7a96fb99a09022', './tiki-jsplugin.php', '4.2', 0),
('da16ab71e679478a561f267d6d2ecd1b', './tiki-kaltura_upload.php', '4.2', 0),
('030e26aef295ed3842414744422f6916', './tiki-kaltura_video.php', '4.2', 0),
('9f505519e6b84da8fa27088868f5b511', './tiki-lastchanges.php', '4.2', 0),
('9e12e416e6039fb06dca3e097ecb756c', './tiki-layout_options.php', '4.2', 0),
('a0feadd744c71466fda4e86773d9499a', './tiki-likepages.php', '4.2', 0),
('40001cb367ab0ce0974d119f098f0b6e', './tiki-list_articles.php', '4.2', 0),
('6ab30c31ec4743d152031e771f42fb9e', './tiki-list_banners.php', '4.2', 0),
('74345b5bd5d0e188fd06490fa77af64c', './tiki-list_blogs.php', '4.2', 0),
('f83d4281129671360e24cc18b3cb0ac3', './tiki-list_cache.php', '4.2', 0),
('1daab481836cd282a2aef3783f8ae14a', './tiki-list_comments.php', '4.2', 0),
('1cca349149ac1178895eef159078d029', './tiki-list_contents.php', '4.2', 0),
('b1e556b0a3971c3709d476939f73260a', './tiki-list_faqs.php', '4.2', 0),
('893dd5be0a409945cf0e5d973e5c3350', './tiki-list_file_gallery.php', '4.2', 0),
('8fba8d9f49745c7a8f018b9ea3f14490', './tiki-list_gallery.php', '4.2', 0),
('45c4c21548354647818818583c84de18', './tiki-list_integrator_repositories.php', '4.2', 0),
('016b39a67f8c2906df65204b1d416c3d', './tiki-list_kaltura_entries.php', '4.2', 0),
('1d9e1db5687d1ebe32d41e86c167d88f', './tiki-list_object_permissions.php', '4.2', 0),
('9aaddc21f8210dbcacff1acfda1fc68a', './tiki-list_posts.php', '4.2', 0),
('b9d398e196723f4d5e6c689c748b9ce4', './tiki-list_quizzes.php', '4.2', 0),
('512baed79e23c5422b87f377fcea21d0', './tiki-list_submissions.php', '4.2', 0),
('978b59d6943c82c05ee49b42ef97b1e3', './tiki-list_surveys.php', '4.2', 0),
('d5743ef600a8be8f7e78673b104bb5ba', './tiki-list_trackers.php', '4.2', 0),
('a38afe72611c307a1711a705d92a9a2a', './tiki-list_users.php', '4.2', 0),
('58fd11c1333241670bab9d7f10bf2da1', './tiki-listmovies.php', '4.2', 0),
('fa7e71d00f9ece9b7117b27de43b4351', './tiki-listpages.php', '4.2', 0),
('e821c53cd7f62cc0aad054e24a4a01c2', './tiki-live_support_admin.php', '4.2', 0),
('517822174e007c06868ecd052df58e82', './tiki-live_support_chat_frame.php', '4.2', 0),
('fdf9dea6160586219125b03fc9e1e506', './tiki-live_support_chat_window.php', '4.2', 0),
('38a910275f7d1a280274eccf612cedd8', './tiki-live_support_client.php', '4.2', 0),
('56e6e126fa79493852d64a4a309cad48', './tiki-live_support_console.php', '4.2', 0),
('6fb9724d730761eb9b318e6f57d1f5e8', './tiki-live_support_message.php', '4.2', 0),
('0c4ff0b54342ac9a23dfe2560acf2afb', './tiki-live_support_server.php', '4.2', 0),
('6b035f1db61171011871f2e3efd310a1', './tiki-live_support_transcripts.php', '4.2', 0),
('5f502fe3e474aad2d480e9abda3a6790', './tiki-login.php', '4.2', 0),
('3e87eb3cd40712697a6faddf39f1dac9', './tiki-login_openid.php', '4.2', 0),
('91035b36753351071b5772dcb9da68e0', './tiki-login_scr.php', '4.2', 0),
('a25f878785d05873e39824b3fbebede8', './tiki-login_validate.php', '4.2', 0),
('7c2f67bae80e715ed99b8294a1e64c00', './tiki-logout.php', '4.2', 0),
('bde941c493ec7db121988f9df3b6c526', './tiki-mailin-code.php', '4.2', 0),
('4e58c393b4bac4a24d9195c17193fd08', './tiki-mailin.php', '4.2', 0),
('76204ab393a6719aefbf204f04b3a405', './tiki-map.php', '4.2', 0),
('7e66a4ecf03cbacb2d0423c2cd7e1a57', './tiki-map_edit.php', '4.2', 0),
('a40897f2be68fcb8cfa10f2bed1a0e76', './tiki-map_history.php', '4.2', 0),
('da625bdbae1be23c316497a8788b0021', './tiki-map_rss.php', '4.2', 0),
('280f314c6b3bfcead9a44752b2f3e8f0', './tiki-map_upload.php', '4.2', 0),
('568418f57b87f7699fa97cb772c8b36f', './tiki-mindmap.php', '4.2', 0),
('70901c58c8e8db0b8dff5b85b6787647', './tiki-minical.php', '4.2', 0),
('7a86452c1752d6283d6776c08136c71a', './tiki-minical_export.php', '4.2', 0),
('bde57096ead22a7cccdce2bd3e6198a7', './tiki-minical_prefs.php', '4.2', 0),
('98833df44772cef2a2f223d400db96b4', './tiki-minical_reminders.php', '4.2', 0),
('9d1646b3b1ee86f2cc6488040d31a9dd', './tiki-minichat_ajax.php', '4.2', 0),
('fc073d611ddf6b29a6001806cef3ab10', './tiki-mobile.php', '4.2', 0),
('db969560becd07c6508966cac27993e0', './tiki-mods.php', '4.2', 0),
('802046b071861288d6aab31093b9e042', './tiki-mods_admin.php', '4.2', 0),
('418532fb85e73cbf799d43936a09e8df', './tiki-module_controls.php', '4.2', 0),
('9511b9750904d6d460faa11815c0ed12', './tiki-modules.php', '4.2', 0),
('7b807ddf8c554ea0f3405b730fe7e1b7', './tiki-my_tiki.php', '4.2', 0),
('1cb08ef32e623b020f92f0d6a64c77fb', './tiki-mytiki_shared.php', '4.2', 0),
('3c35defcae0078c835fe3294dfa94e47', './tiki-newsletter_archives.php', '4.2', 0),
('e680923ae5699b198afb503ff4cdbc25', './tiki-newsletters.php', '4.2', 0),
('3a5a6561610877b7489e47e57b868fa2', './tiki-notepad_get.php', '4.2', 0),
('cf63be4bb5bafe9e55166cbe864eec39', './tiki-notepad_list.php', '4.2', 0),
('49bfce408c26e26a1f7ed3f1ead4a0c8', './tiki-notepad_read.php', '4.2', 0),
('45465b195c25bd16fa4d79c3cdbedebb', './tiki-notepad_write.php', '4.2', 0),
('d295201978e1fbda93a99dfee8b30115', './tiki-object_watches.php', '4.2', 0),
('35f2bb3476942aced0e0654ddb30fb2a', './tiki-objectpermissions.php', '4.2', 0),
('13033407c62a2ab2e1543a24f9331a61', './tiki-old_polls.php', '4.2', 0),
('3f119a1ed4e37e4bb3a0af882e4baf37', './tiki-orphan_pages.php', '4.2', 0),
('f50268b35c876b6b2c8838a235c9d123', './tiki-page.php', '4.2', 0),
('fca48836096e8d982f4372d12d69be7a', './tiki-page_loader.php', '4.2', 0),
('0e97f8424800d01ce9b3df1a0c452844', './tiki-pagehistory.php', '4.2', 0),
('9289ceb63d1f2bdcaee9102edb001010', './tiki-phpinfo.php', '4.2', 0),
('72fe8fe67bdcb38efa7eb4a68d95bb70', './tiki-pick_avatar.php', '4.2', 0),
('9720a3a4ed2c45f882d950151c381953', './tiki-plugins.php', '4.2', 0),
('e977291d61c60ef283eb7946b9192dee', './tiki-poll_form.php', '4.2', 0),
('5bd2584038348144d01799243860f2b7', './tiki-poll_results.php', '4.2', 0),
('680f3ed365ddc7d1092a76ce7fcb1f26', './tiki-print.php', '4.2', 0),
('011f45dedbe62ce19e76046a54c5e3bb', './tiki-print_article.php', '4.2', 0),
('3cc2a3ada01a9b45b24481d608ed7526', './tiki-print_blog_post.php', '4.2', 0),
('bd949db70385dc13338ed1c2096d3e22', './tiki-print_indexed.php', '4.2', 0),
('2fdb574ad0a8e444634ff5707e4462c6', './tiki-print_multi_pages.php', '4.2', 0),
('7d2727a99d362b791f36cc9707c70e6c', './tiki-print_pages.php', '4.2', 0),
('c6f3b08581bcde272b3321670b25a75f', './tiki-pv_chart.php', '4.2', 0),
('0ab48e2d1025b335c482be569ec37679', './tiki-quiz_download_answer.php', '4.2', 0),
('23877cd72d4e19d4de7a5fd0475a4345', './tiki-quiz_edit.php', '4.2', 0),
('ffa79ce4754dd2c82493bdd21342fd8c', './tiki-quiz_result_stats.php', '4.2', 0),
('7136204da6e52188acc272762caf5c38', './tiki-quiz_stats.php', '4.2', 0),
('9e2824878f20591c7c76f30e82a12247', './tiki-quiz_stats_quiz.php', '4.2', 0),
('d4f21173feb8f4eb2e2d75240f7153f6', './tiki-random_num_img.php', '4.2', 0),
('c61415bebb6238364186102b4fd0f629', './tiki-read_article.php', '4.2', 0),
('f9531c3e98f94708e70d5b246a6515f4', './tiki-received_articles.php', '4.2', 0),
('06d994b57cdca831c0136e79a9104f63', './tiki-received_pages.php', '4.2', 0),
('6110d7a9bbbcfcaa903ee55d7aa19c49', './tiki-referer_stats.php', '4.2', 0),
('aa6905878133e0915c92351b9bde3082', './tiki-register.php', '4.2', 0),
('26fbc688e6f0970d8d17e23064f7ef53', './tiki-register_site.php', '4.2', 0),
('9dcf4e0793e0916b77b520a4128d0ae8', './tiki-remind_password.php', '4.2', 0),
('45d2539ba17e2ce2c65f999869fdd9aa', './tiki-removepage.php', '4.2', 0),
('bb510b7aa83a2e0689d03996de33cfeb', './tiki-rename_page.php', '4.2', 0),
('24d8f8282a2ac1d67199cc68f2a0df16', './tiki-rollback.php', '4.2', 0),
('5941800c2afe1b97da537e8a6f751748', './tiki-rss_error.php', '4.2', 0),
('fc6c186b16850a9d949aa612a268a96d', './tiki-search_stats.php', '4.2', 0),
('6291180a70b9007fb7b37687b39be9e1', './tiki-searchindex.php', '4.2', 0),
('e3ae63b8487aa2a7c5b05e970008ec05', './tiki-searchresults.php', '4.2', 0),
('ea709ae8b5db6c21f4404c4ae81916c6', './tiki-section_options.php', '4.2', 0),
('53196992499679714bcf8f8054251e8f', './tiki-sefurl.php', '4.2', 0),
('de218f8fdc17c1e5656d638ff299e90a', './tiki-send_mail.php', '4.2', 0),
('b626cf5f1185d6ca62c732619af5624d', './tiki-send_newsletters.php', '4.2', 0),
('c2dfc3daf1e4ae2aece5d86f55a9ef9b', './tiki-send_objects.php', '4.2', 0),
('b0dd4105b4a7f1b5cabf603f0e61f1fd', './tiki-setup.php', '4.2', 0),
('f70ed19c60c2ce51587aa48347a8817a', './tiki-setup_base.php', '4.2', 0),
('5cfd30760b91d5284be51a20ac0cce0d', './tiki-sheets.php', '4.2', 0),
('aa835ce8e3d30d4678fe951dc6182d7a', './tiki-shoutbox.php', '4.2', 0),
('7616015a81083f5f81a8b913c7a04e91', './tiki-show_all_images.php', '4.2', 0),
('0858daf40a0e53ff911ad64a59a6521c', './tiki-show_user_avatar.php', '4.2', 0),
('dfd9201ee7fdd4d8ebb44c2aa7692d36', './tiki-slideshow.php', '4.2', 0),
('a3afa22d5f2ca846b5cc668cd873169d', './tiki-slideshow2.php', '4.2', 0),
('7ca2d66b265f77d9edc0e72147e19bc7', './tiki-sqllog.php', '4.2', 0),
('c0a9d85ae05d3e5917071faf2a317f04', './tiki-stats.php', '4.2', 0),
('63d4ad1761287c26ed6e6fb6180a9444', './tiki-survey_stats.php', '4.2', 0),
('710af85474fdbf1ebcf13b87c56fa128', './tiki-survey_stats_survey.php', '4.2', 0),
('a7d215605856fb58463b543b99ed5ba4', './tiki-switch_lang.php', '4.2', 0),
('02e33bccff54aad88e66efdb6e3511f7', './tiki-switch_perspective.php', '4.2', 0),
('01a257f6868f09ae1ccbe26a199ff2e4', './tiki-switch_theme.php', '4.2', 0),
('365a7a6a23914f2a61e6f19d15b68f8b', './tiki-syslog.php', '4.2', 0),
('090469efbc755f932d756b4f9b1cb1e2', './tiki-take_quiz.php', '4.2', 0),
('d0d1c7e32df9c7da5aa01ada66181fc6', './tiki-take_survey.php', '4.2', 0),
('20acedff58e5c6375f507ea3a3be7760', './tiki-tc.php', '4.2', 0),
('83ed96d4cf59a781948f4236d031852f', './tiki-tell_a_friend.php', '4.2', 0),
('0dfdfc242d290d4940e2a7bce7894629', './tiki-testGD.php', '4.2', 0),
('0e7638c4d4e69e97a87553a6e78ec4c3', './tiki-theme_control.php', '4.2', 0),
('448e14d0bb7ccbc5c27919f21f779ab8', './tiki-theme_control_objects.php', '4.2', 0),
('3b63dc79b7a79de9ddc0cd92d318afb8', './tiki-theme_control_sections.php', '4.2', 0),
('847611a3ddda18ffc7900d010679ea5b', './tiki-tracker_http_request.php', '4.2', 0),
('f0fcc15d93305969d20417d6e9dbb8e9', './tiki-tracker_rss.php', '4.2', 0),
('b7ef9d2d69e6eb4e20206535cc5b969e', './tiki-upload_file.php', '4.2', 0),
('32a242a2b0689b275dbcaa83b1fca4fd', './tiki-upload_image.php', '4.2', 0),
('cb9e87dc60a26531ca9234c7c49fb633', './tiki-upload_screencast_ajax.php', '4.2', 0),
('4b2aaa2e7bec6b39df0fc29c9727e65b', './tiki-usage_chart.php', '4.2', 0),
('2a5a852db3f33de59640414d017ae6dc', './tiki-user_assigned_modules.php', '4.2', 0),
('cf5f3a1f6086f46c1e3c5f5a6504bc8f', './tiki-user_bookmarks.php', '4.2', 0),
('ef26c1bd38f96556d182d92f15bb554a', './tiki-user_cached_bookmark.php', '4.2', 0),
('b8c897cc412e3b19510d47943dbcbb4b', './tiki-user_contacts_prefs.php', '4.2', 0),
('3a1e625664f121da2271cd0ec52ca344', './tiki-user_information.php', '4.2', 0),
('5cd42fbd4b69fffb692ea8cafda993ae', './tiki-user_preferences.php', '4.2', 0),
('d1ac2138ba579f64e90457a4d693769c', './tiki-user_reports.php', '4.2', 0),
('1f941299982b27180862708c64d41939', './tiki-user_reports_send.php', '4.2', 0),
('c332d5d9bf807b84d36dba2e1c6d9509', './tiki-user_tasks.php', '4.2', 0),
('51a19ecbb308b05eec1c773fc265110f', './tiki-user_watches.php', '4.2', 0),
('6331bb6810a961930cfda19d070c6a5a', './tiki-userfiles.php', '4.2', 0),
('1b8cad76d71e726ad3a7690e8f22d0db', './tiki-usermenu.php', '4.2', 0),
('7f679ee57d0a744c52f2a172a82abb0f', './tiki-users3d_xmlrpc.php', '4.2', 0),
('9eebe0033825c6c879c3599390705671', './tiki-userversions.php', '4.2', 0),
('4fa1db91da01ab2141ce1509dc3cc976', './tiki-view_articles.php', '4.2', 0),
('8bbfdb7c9b693dd82cfc229b89974a1e', './tiki-view_banner.php', '4.2', 0),
('d17d667a581ecc2f53612d1d8de0296f', './tiki-view_blog.php', '4.2', 0),
('d8eb24c88095f583b81ca4bdbc80cc25', './tiki-view_blog_post.php', '4.2', 0),
('80cc7a98896948f5b1be78882ce70148', './tiki-view_blog_post_image.php', '4.2', 0),
('d9265c6265978bd4049bb9f96c277d78', './tiki-view_cache.php', '4.2', 0),
('8fc0c8a41c97934951422ef95bb195bd', './tiki-view_faq.php', '4.2', 0),
('78b2a0d97d09ba9848f6601622d0910c', './tiki-view_forum.php', '4.2', 0),
('1a2de8a40c755ce0c599d6343ae2c338', './tiki-view_forum_thread.php', '4.2', 0),
('e7982d063ce694318e71b79a80989b9d', './tiki-view_minical_topic.php', '4.2', 0),
('eb8fbdcd1312f0f0393d4fca09d85fb8', './tiki-view_sheets.php', '4.2', 0),
('cf33498a7dc7b1eb3a9efb2344e3397d', './tiki-view_tracker.php', '4.2', 0),
('42bb36331d3ce438d83ce1b2fea00b98', './tiki-view_tracker_item.php', '4.2', 0),
('4edda506e927a7ae50b356f3cc236686', './tiki-view_tracker_more_info.php', '4.2', 0),
('79f1a8284ad91c63d4685aff1ea871a5', './tiki-wap.php', '4.2', 0),
('5e2f3e843f58a35299ad8fc5abd026e1', './tiki-webmail.php', '4.2', 0),
('0b904a7cb003847776ae509376fd30c9', './tiki-webmail_ajax.php', '4.2', 0),
('c9435c91825b1b7a872a9181f85e671b', './tiki-webmail_contacts.php', '4.2', 0),
('1aaf99ab3d214ee7e6554a911d30e5a8', './tiki-webmail_download_attachment.php', '4.2', 0),
('4c372865d46f2294791e1f230189a1a1', './tiki-wiki3d.php', '4.2', 0),
('ae556ef4ae46aee23fa5e18d16b92cb6', './tiki-wiki3d_xmlrpc.php', '4.2', 0),
('10e90cd94590ab04e1c782635dccfedf', './tiki-wiki_rankings.php', '4.2', 0),
('f6a87288cf1bfc73293a3a0bf932a72c', './tiki-wiki_rss.php', '4.2', 0),
('9f8fd45fa4b675717b431cf5895e96cc', './tiki-wikiplugin_edit.php', '4.2', 0),
('e098d9b974f40e5a609ba5659de96089', './tiki-xmlrpc_services.php', '4.2', 0),
('314d5dad3a0fcefa01eea14959707f5f', './tiki_tests/index.php', '4.2', 0),
('d5dc9d8094a640fd6680c132713eafa2', './tiki_tests/tests/index.php', '4.2', 0),
('359e9e47b79fdfee9b2db1713b5fa360', './tiki_tests/tiki-tests_edit.php', '4.2', 0),
('bc61c94a329760f90f1ae0f9f7f71361', './tiki_tests/tiki-tests_list.php', '4.2', 0),
('3e384cb95bc21bd594f980d90fdcb0e7', './tiki_tests/tiki-tests_record.php', '4.2', 0),
('d6295f90b6872134796637d901cb6f25', './tiki_tests/tiki-tests_replay.php', '4.2', 0),
('b7f1312cd7952711ed5129a40d088ddc', './tiki_tests/tiki-tests_show_xpath.php', '4.2', 0),
('d26ac04d090051bf5f3448bcad6bfc9a', './tiki_tests/tikitestslib.php', '4.2', 0),
('0c85367e4b3c33773797c940f34893b3', './whelp/index.php', '4.2', 0),
('aa79006d96a110e83bf80a2da7eb02b6', './x_maps.php', '4.2', 0),
('f6d8040d3e22dfd8ce88e813098f7b0b', './xmlrpc.php', '4.2', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sefurl_regex_out`
-- 

CREATE TABLE `tiki_sefurl_regex_out` (
  `id` int(11) NOT NULL auto_increment,
  `left` varchar(256) NOT NULL,
  `right` varchar(256) default NULL,
  `type` varchar(32) default NULL,
  `silent` char(1) default 'n',
  `feature` varchar(256) default NULL,
  `comment` varchar(256) default NULL,
  `order` int(11) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `left` (`left`(128)),
  KEY `idx1` (`silent`,`type`,`feature`(30))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- 
-- Dumping data for table `tiki_sefurl_regex_out`
-- 

INSERT INTO `tiki_sefurl_regex_out` (`id`, `left`, `right`, `type`, `silent`, `feature`, `comment`, `order`) VALUES 
(1, 'tiki-index.php\\?page=(.+)', '$1', 'wiki', 'n', 'feature_wiki', NULL, 0),
(2, 'tiki-slideshow.php\\?page=(.+)', 'show:$1', '', 'n', 'feature_wiki', NULL, 0),
(3, 'tiki-read_article.php\\?articleId=(\\d+)', 'article$1', 'article', 'n', 'feature_articles', NULL, 0),
(4, 'tiki-browse_categories.php\\?parentId=(\\d+)', 'cat$1', 'category', 'n', 'feature_categories', NULL, 0),
(5, 'tiki-view_blog.php\\?blogId=(\\d+)', 'blog$1', 'blog', 'n', 'feature_blogs', NULL, 0),
(6, 'tiki-view_blog_post.php\\?postId=(\\d+)', 'blogpost$1', 'blogpost', 'n', 'feature_blogs', NULL, 0),
(7, 'tiki-browse_image.php\\?imageId=(\\d+)', 'browseimage$1', 'image', 'n', 'feature_galleries', NULL, 0),
(8, 'tiki-directory_browse.php\\?parent=(\\d+)', 'directory$1', 'directory', 'n', 'feature_directory', NULL, 0),
(9, 'tiki-view_faq.php\\?faqId=(\\d+)', 'faq$1', 'faq', 'n', 'feature_faqs', NULL, 0),
(10, 'tiki-list_file_gallery.php\\?galleryId=(\\d+)', 'file$1', 'file', 'n', 'feature_file_galleries', NULL, 0),
(11, 'tiki-download_file.php\\?fileId=(\\d+)', 'dl$1', 'file', 'n', 'feature_file_galleries', NULL, 0),
(12, 'tiki-download_file.php\\?fileId=(\\d+)&amp;thumbnail', 'thumbnail$1', 'thumbnail', 'n', 'feature_file_galleries', NULL, 0),
(13, 'tiki-download_file.php\\?fileId=(\\d+)&amp;display', 'display$1', 'display', 'n', 'feature_file_galleries', NULL, 0),
(14, 'tiki-download_file.php\\?fileId=(\\d+)&amp;preview', 'preview$1', 'preview', 'n', 'feature_file_galleries', NULL, 0),
(15, 'tiki-view_forum.php\\?forumId=(\\d+)', 'forum$1', 'forum', 'n', 'feature_forums', NULL, 0),
(16, 'tiki-browse_gallery.php\\?galleryId=(\\d+)', 'gallery$1', 'gallery', 'n', 'feature_galleries', NULL, 0),
(17, 'show_image.php\\?id=(\\d+)', 'image$1', 'image', 'n', 'feature_galleries', NULL, 0),
(18, 'show_image.php\\?id=(\\d+)&scalesize=(\\d+)', 'imagescale$1/$2', 'image', 'n', 'feature_galleries', NULL, 0),
(19, 'tiki-newsletters.php\\?nlId=(\\d+)', 'newsletter$1', 'newsletter', 'n', 'feature_newsletters', NULL, 0),
(20, 'tiki-take_quiz.php\\?quizId=(\\d+)', 'quiz$1', 'quiz', 'n', 'feature_quizzes', NULL, 0),
(21, 'tiki-take_survey.php\\?surveyId=(\\d+)', 'survey$1', 'survey', 'n', 'feature_surveys', NULL, 0),
(22, 'tiki-view_tracker.php\\?trackerId=(\\d+)', 'tracker$1', 'tracker', 'n', 'feature_trackers', NULL, 0),
(23, 'tiki-integrator.php\\?repID=(\\d+)', 'int$1', '', 'n', 'feature_integrator', NULL, 0),
(24, 'tiki-view_sheets.php\\?sheetId=(\\d+)', 'sheet$1', 'sheet', 'n', 'feature_sheet', NULL, 0),
(25, 'tiki-directory_redirect.php\\?siteId=(\\d+)', 'dirlink$1', 'directory', 'n', 'feature_directory', NULL, 0),
(26, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)&calIds\\[\\]=(\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)', 'cal$1,$2,$3,$4,$5,$6,$7', 'calendar', 'n', 'feature_calendar', '7', 100),
(27, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)&calIds\\[\\]=(\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)', 'cal$1,$2,$3,$4,$5,$6', 'calendar', 'n', 'feature_calendar', '6', 101),
(28, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)&calIds\\[\\]=(\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)', 'cal$1,$2,$3,$4,$5', 'calendar', 'n', 'feature_calendar', '5', 102),
(29, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)&calIds\\[\\]=(\\d+)&callIds\\[\\](\\d+)&callIds\\[\\](\\d+)', 'cal$1,$2,$3,$4', 'calendar', 'n', 'feature_calendar', '4', 103),
(30, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)&calIds\\[\\]=(\\d+)&callIds\\[\\](\\d+)', 'cal$1,$2,$3', 'calendar', 'n', 'feature_calendar', '3', 104),
(31, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)&calIds\\[\\]=(\\d+)', 'cal$1,$2', 'calendar', 'n', 'feature_calendar', '2', 105),
(32, 'tiki-calendar.php\\?calIds\\[\\]=(\\d+)', 'cal$1', 'calendar', 'n', 'feature_calendar', '1', 106),
(33, 'tiki-calendar.php', 'calendar', 'calendar', 'n', 'feature_calendar', NULL, 200),
(34, 'tiki-view_articles.php', 'articles', '', 'n', 'feature_articles', NULL, 200),
(35, 'tiki-list_blogs.php', 'blogs', '', 'n', 'feature_blogs', NULL, 200),
(36, 'tiki-browse_categories.php', 'categories', '', 'n', 'feature_categories', NULL, 200),
(37, 'tiki-contact.php', 'contact', '', 'n', 'feature_contact', NULL, 200),
(38, 'tiki-directory_browse.php', 'directories', '', 'n', 'feature_directory', NULL, 200),
(39, 'tiki-list_faqs.php', 'faqs', '', 'n', 'feature_faqs', NULL, 200),
(40, 'tiki-file_galleries.php', 'files', '', 'n', 'feature_file_galleries', NULL, 200),
(41, 'tiki-forums.php', 'forums', '', 'n', 'feature_forums', NULL, 200),
(42, 'tiki-galleries.php', 'galleries', '', 'n', 'feature_galleries', NULL, 200),
(43, 'tiki-login_scr.php', 'login', '', 'n', '', NULL, 200),
(44, 'tiki-my_tiki.php', 'my', '', 'n', '', NULL, 200),
(45, 'tiki-newsletters.php', 'newsletters', 'newsletter', 'n', 'feature_newsletters', NULL, 200),
(46, 'tiki-list_quizzes.php', 'quizzes', '', 'n', 'feature_quizzes', NULL, 200),
(47, 'tiki-stats.php', 'stats', '', 'n', 'feature_stats', NULL, 200),
(48, 'tiki-list_surveys.php', 'surveys', '', 'n', 'feature_surveys', NULL, 200),
(49, 'tiki-list_trackers.php', 'trackers', '', 'n', 'feature_trackers', NULL, 200),
(50, 'tiki-mobile.php', 'mobile', '', 'n', 'feature_mobile', NULL, 200),
(51, 'tiki-sheets.php', 'sheets', '', 'n', 'feature_sheet', NULL, 200),
(52, 'tiki-view_tracker_item.php\\?trackerId=(\\d+)\\&itemId=(\\d+)', 'item$2', 'trackeritem', 'n', 'feature_trackers', NULL, 200);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_semantic_tokens`
-- 

CREATE TABLE `tiki_semantic_tokens` (
  `token` varchar(15) NOT NULL,
  `label` varchar(25) NOT NULL,
  `invert_token` varchar(15) default NULL,
  PRIMARY KEY  (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_semantic_tokens`
-- 

INSERT INTO `tiki_semantic_tokens` (`token`, `label`, `invert_token`) VALUES 
('alias', 'Page Alias', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_semaphores`
-- 

CREATE TABLE `tiki_semaphores` (
  `semName` varchar(250) NOT NULL default '',
  `objectType` varchar(20) default 'wiki page',
  `user` varchar(200) NOT NULL default '',
  `timestamp` int(14) default NULL,
  PRIMARY KEY  (`semName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_semaphores`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sent_newsletters`
-- 

CREATE TABLE `tiki_sent_newsletters` (
  `editionId` int(12) NOT NULL auto_increment,
  `nlId` int(12) NOT NULL default '0',
  `users` int(10) default NULL,
  `sent` int(14) default NULL,
  `subject` varchar(200) default NULL,
  `data` longblob,
  `datatxt` longblob,
  `wysiwyg` char(1) default NULL,
  PRIMARY KEY  (`editionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_sent_newsletters`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sent_newsletters_errors`
-- 

CREATE TABLE `tiki_sent_newsletters_errors` (
  `editionId` int(12) default NULL,
  `email` varchar(255) default NULL,
  `login` varchar(40) default '',
  `error` char(1) default '',
  KEY `editionId` (`editionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_sent_newsletters_errors`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sent_newsletters_files`
-- 

CREATE TABLE `tiki_sent_newsletters_files` (
  `id` int(11) NOT NULL auto_increment,
  `editionId` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` varchar(64) NOT NULL,
  `size` int(11) NOT NULL,
  `filename` varchar(256) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `editionId` (`editionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_sent_newsletters_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sessions`
-- 

CREATE TABLE `tiki_sessions` (
  `sessionId` varchar(32) NOT NULL default '',
  `user` varchar(200) default '',
  `timestamp` int(14) default NULL,
  `tikihost` varchar(200) default NULL,
  PRIMARY KEY  (`sessionId`),
  KEY `user` (`user`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_sessions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sheet_layout`
-- 

CREATE TABLE `tiki_sheet_layout` (
  `sheetId` int(8) NOT NULL default '0',
  `begin` int(10) NOT NULL default '0',
  `end` int(10) default NULL,
  `headerRow` int(4) NOT NULL default '0',
  `footerRow` int(4) NOT NULL default '0',
  `className` varchar(64) default NULL,
  UNIQUE KEY `sheetId` (`sheetId`,`begin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_sheet_layout`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sheet_values`
-- 

CREATE TABLE `tiki_sheet_values` (
  `sheetId` int(8) NOT NULL default '0',
  `begin` int(10) NOT NULL default '0',
  `end` int(10) default NULL,
  `rowIndex` int(4) NOT NULL default '0',
  `columnIndex` int(4) NOT NULL default '0',
  `value` varchar(255) default NULL,
  `calculation` varchar(255) default NULL,
  `width` int(4) NOT NULL default '1',
  `height` int(4) NOT NULL default '1',
  `format` varchar(255) default NULL,
  `user` varchar(200) default '',
  UNIQUE KEY `sheetId` (`sheetId`,`begin`,`rowIndex`,`columnIndex`),
  KEY `sheetId_2` (`sheetId`,`rowIndex`,`columnIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_sheet_values`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_sheets`
-- 

CREATE TABLE `tiki_sheets` (
  `sheetId` int(8) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL default '',
  `description` text,
  `author` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`sheetId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_sheets`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_shoutbox`
-- 

CREATE TABLE `tiki_shoutbox` (
  `msgId` int(10) NOT NULL auto_increment,
  `message` varchar(255) default NULL,
  `timestamp` int(14) default NULL,
  `user` varchar(200) default '',
  `hash` varchar(32) default NULL,
  PRIMARY KEY  (`msgId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_shoutbox`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_shoutbox_words`
-- 

CREATE TABLE `tiki_shoutbox_words` (
  `word` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL default '0',
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_shoutbox_words`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_stats`
-- 

CREATE TABLE `tiki_stats` (
  `object` varchar(255) NOT NULL default '',
  `type` varchar(20) NOT NULL default '',
  `day` int(14) NOT NULL default '0',
  `hits` int(14) NOT NULL default '0',
  PRIMARY KEY  (`object`(200),`type`,`day`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_stats`
-- 

INSERT INTO `tiki_stats` (`object`, `type`, `day`, `hits`) VALUES 
('HomePage', 'wiki', 1268794800, 11),
('0?', 'file gallery', 1268794800, 13),
('HomePage', 'wiki', 1268881200, 48),
('7?osorno', 'file', 1268881200, 1),
('0?', 'file gallery', 1268881200, 4),
('http:tiki-list_file_gallery.php', 'wiki', 1268881200, 1),
('11?P-A1u2_copy.doc', 'file', 1268881200, 1),
('11?21.zip', 'file', 1268881200, 1),
('HomePage', 'wiki', 1268967600, 47),
('http:tiki-list_file_gallery.php', 'wiki', 1268967600, 2),
('0?', 'file gallery', 1268967600, 2),
('HomePage', 'wiki', 1269054000, 17),
('0?', 'file gallery', 1269054000, 6),
('http:tiki-list_file_gallery.php', 'wiki', 1269054000, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_structure_versions`
-- 

CREATE TABLE `tiki_structure_versions` (
  `structure_id` int(14) NOT NULL auto_increment,
  `version` int(14) default NULL,
  PRIMARY KEY  (`structure_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_structure_versions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_structures`
-- 

CREATE TABLE `tiki_structures` (
  `page_ref_id` int(14) NOT NULL auto_increment,
  `structure_id` int(14) NOT NULL,
  `parent_id` int(14) default NULL,
  `page_id` int(14) NOT NULL,
  `page_version` int(8) default NULL,
  `page_alias` varchar(240) NOT NULL default '',
  `pos` int(4) default NULL,
  PRIMARY KEY  (`page_ref_id`),
  KEY `pidpaid` (`page_id`,`parent_id`),
  KEY `page_id` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_structures`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_submissions`
-- 

CREATE TABLE `tiki_submissions` (
  `subId` int(8) NOT NULL auto_increment,
  `topline` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `subtitle` varchar(255) default NULL,
  `linkto` varchar(255) default NULL,
  `lang` varchar(16) default NULL,
  `authorName` varchar(60) default NULL,
  `topicId` int(14) default NULL,
  `topicName` varchar(40) default NULL,
  `size` int(12) default NULL,
  `useImage` char(1) default NULL,
  `image_name` varchar(80) default NULL,
  `image_caption` text,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_x` int(4) default NULL,
  `image_y` int(4) default NULL,
  `image_data` longblob,
  `publishDate` int(14) default NULL,
  `expireDate` int(14) default NULL,
  `created` int(14) default NULL,
  `bibliographical_references` text,
  `resume` text,
  `heading` text,
  `body` text,
  `hash` varchar(32) default NULL,
  `author` varchar(200) NOT NULL default '',
  `nbreads` int(14) default NULL,
  `votes` int(8) default NULL,
  `points` int(14) default NULL,
  `type` varchar(50) default NULL,
  `rating` decimal(3,2) default NULL,
  `isfloat` char(1) default NULL,
  PRIMARY KEY  (`subId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_submissions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_suggested_faq_questions`
-- 

CREATE TABLE `tiki_suggested_faq_questions` (
  `sfqId` int(10) NOT NULL auto_increment,
  `faqId` int(10) NOT NULL default '0',
  `question` text,
  `answer` text,
  `created` int(14) default NULL,
  `user` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`sfqId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_suggested_faq_questions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_survey_question_options`
-- 

CREATE TABLE `tiki_survey_question_options` (
  `optionId` int(12) NOT NULL auto_increment,
  `questionId` int(12) NOT NULL default '0',
  `qoption` text,
  `votes` int(10) default NULL,
  PRIMARY KEY  (`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_survey_question_options`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_survey_questions`
-- 

CREATE TABLE `tiki_survey_questions` (
  `questionId` int(12) NOT NULL auto_increment,
  `surveyId` int(12) NOT NULL default '0',
  `question` text,
  `options` text,
  `type` char(1) default NULL,
  `position` int(5) default NULL,
  `votes` int(10) default NULL,
  `value` int(10) default NULL,
  `average` decimal(4,2) default NULL,
  `mandatory` char(1) NOT NULL default 'n',
  `max_answers` int(5) NOT NULL default '0',
  `min_answers` int(5) NOT NULL default '0',
  PRIMARY KEY  (`questionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_survey_questions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_surveys`
-- 

CREATE TABLE `tiki_surveys` (
  `surveyId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `description` text,
  `taken` int(10) default NULL,
  `lastTaken` int(14) default NULL,
  `created` int(14) default NULL,
  `status` char(1) default NULL,
  PRIMARY KEY  (`surveyId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_surveys`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tags`
-- 

CREATE TABLE `tiki_tags` (
  `tagName` varchar(80) NOT NULL default '',
  `pageName` varchar(160) NOT NULL default '',
  `hits` int(8) default NULL,
  `description` varchar(200) default NULL,
  `data` longblob,
  `lastModif` int(14) default NULL,
  `comment` varchar(200) default NULL,
  `version` int(8) NOT NULL default '0',
  `user` varchar(200) NOT NULL default '',
  `ip` varchar(15) default NULL,
  `flag` char(1) default NULL,
  PRIMARY KEY  (`tagName`,`pageName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_tags`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_theme_control_categs`
-- 

CREATE TABLE `tiki_theme_control_categs` (
  `categId` int(12) NOT NULL default '0',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`categId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_theme_control_categs`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_theme_control_objects`
-- 

CREATE TABLE `tiki_theme_control_objects` (
  `objId` varchar(250) NOT NULL default '',
  `type` varchar(250) NOT NULL default '',
  `name` varchar(250) NOT NULL default '',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`objId`(100),`type`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_theme_control_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_theme_control_sections`
-- 

CREATE TABLE `tiki_theme_control_sections` (
  `section` varchar(250) NOT NULL default '',
  `theme` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`section`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_theme_control_sections`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_topics`
-- 

CREATE TABLE `tiki_topics` (
  `topicId` int(14) NOT NULL auto_increment,
  `name` varchar(40) default NULL,
  `image_name` varchar(80) default NULL,
  `image_type` varchar(80) default NULL,
  `image_size` int(14) default NULL,
  `image_data` longblob,
  `active` char(1) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`topicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_topics`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tracker_fields`
-- 

CREATE TABLE `tiki_tracker_fields` (
  `fieldId` int(12) NOT NULL auto_increment,
  `trackerId` int(12) NOT NULL default '0',
  `name` varchar(255) default NULL,
  `options` text,
  `type` varchar(15) default NULL,
  `isMain` char(1) default NULL,
  `isTblVisible` char(1) default NULL,
  `position` int(4) default NULL,
  `isSearchable` char(1) NOT NULL default 'y',
  `isPublic` char(1) NOT NULL default 'n',
  `isHidden` char(1) NOT NULL default 'n',
  `isMandatory` char(1) NOT NULL default 'n',
  `description` text,
  `isMultilingual` char(1) default 'n',
  `itemChoices` text,
  `errorMsg` text,
  `visibleBy` text,
  `editableBy` text,
  `descriptionIsParsed` char(1) default 'n',
  PRIMARY KEY  (`fieldId`),
  KEY `trackerId` (`trackerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_tracker_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tracker_item_attachments`
-- 

CREATE TABLE `tiki_tracker_item_attachments` (
  `attId` int(12) NOT NULL auto_increment,
  `itemId` int(12) NOT NULL default '0',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `user` varchar(200) default NULL,
  `data` longblob,
  `path` varchar(255) default NULL,
  `hits` int(10) default NULL,
  `created` int(14) default NULL,
  `comment` varchar(250) default NULL,
  `longdesc` blob,
  `version` varchar(40) default NULL,
  PRIMARY KEY  (`attId`),
  KEY `itemId` (`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_tracker_item_attachments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tracker_item_comments`
-- 

CREATE TABLE `tiki_tracker_item_comments` (
  `commentId` int(12) NOT NULL auto_increment,
  `itemId` int(12) NOT NULL default '0',
  `user` varchar(200) default NULL,
  `data` text,
  `title` varchar(200) default NULL,
  `posted` int(14) default NULL,
  PRIMARY KEY  (`commentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_tracker_item_comments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tracker_item_fields`
-- 

CREATE TABLE `tiki_tracker_item_fields` (
  `itemId` int(12) NOT NULL default '0',
  `fieldId` int(12) NOT NULL default '0',
  `value` text,
  `lang` char(16) NOT NULL default '',
  PRIMARY KEY  (`itemId`,`fieldId`,`lang`),
  KEY `fieldId` (`fieldId`),
  KEY `value` (`value`(250)),
  KEY `lang` (`lang`),
  FULLTEXT KEY `ft` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_tracker_item_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tracker_items`
-- 

CREATE TABLE `tiki_tracker_items` (
  `itemId` int(12) NOT NULL auto_increment,
  `trackerId` int(12) NOT NULL default '0',
  `created` int(14) default NULL,
  `createdBy` varchar(200) default NULL,
  `status` char(1) default NULL,
  `lastModif` int(14) default NULL,
  `lastModifBy` varchar(200) default NULL,
  PRIMARY KEY  (`itemId`),
  KEY `trackerId` (`trackerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_tracker_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_tracker_options`
-- 

CREATE TABLE `tiki_tracker_options` (
  `trackerId` int(12) NOT NULL default '0',
  `name` varchar(80) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`trackerId`,`name`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_tracker_options`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_trackers`
-- 

CREATE TABLE `tiki_trackers` (
  `trackerId` int(12) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `descriptionIsParsed` varchar(1) default '0',
  `created` int(14) default NULL,
  `lastModif` int(14) default NULL,
  `showCreated` char(1) default NULL,
  `showStatus` char(1) default NULL,
  `showLastModif` char(1) default NULL,
  `useComments` char(1) default NULL,
  `useAttachments` char(1) default NULL,
  `showAttachments` char(1) default NULL,
  `items` int(10) default NULL,
  `showComments` char(1) default NULL,
  `orderAttachments` varchar(255) NOT NULL default 'filename,created,filesize,hits,desc',
  PRIMARY KEY  (`trackerId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_trackers`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_transitions`
-- 

CREATE TABLE `tiki_transitions` (
  `transitionId` int(11) NOT NULL auto_increment,
  `preserve` int(1) NOT NULL default '0',
  `name` varchar(50) default NULL,
  `type` varchar(20) NOT NULL,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `guards` text,
  PRIMARY KEY  (`transitionId`),
  KEY `transition_lookup` (`type`,`from`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_transitions`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_translated_objects`
-- 

CREATE TABLE `tiki_translated_objects` (
  `traId` int(14) NOT NULL auto_increment,
  `type` varchar(50) NOT NULL,
  `objId` varchar(255) NOT NULL,
  `lang` varchar(16) default NULL,
  PRIMARY KEY  (`type`,`objId`),
  KEY `traId` (`traId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_translated_objects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_untranslated`
-- 

CREATE TABLE `tiki_untranslated` (
  `id` int(14) NOT NULL auto_increment,
  `source` tinyblob NOT NULL,
  `lang` char(16) NOT NULL default '',
  PRIMARY KEY  (`source`(255),`lang`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_untranslated`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_answers`
-- 

CREATE TABLE `tiki_user_answers` (
  `userResultId` int(10) NOT NULL default '0',
  `quizId` int(10) NOT NULL default '0',
  `questionId` int(10) NOT NULL default '0',
  `optionId` int(10) NOT NULL default '0',
  PRIMARY KEY  (`userResultId`,`quizId`,`questionId`,`optionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_answers`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_answers_uploads`
-- 

CREATE TABLE `tiki_user_answers_uploads` (
  `answerUploadId` int(4) NOT NULL auto_increment,
  `userResultId` int(11) NOT NULL default '0',
  `questionId` int(11) NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filetype` varchar(64) NOT NULL default '',
  `filesize` varchar(255) NOT NULL default '',
  `filecontent` longblob NOT NULL,
  PRIMARY KEY  (`answerUploadId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_answers_uploads`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_assigned_modules`
-- 

CREATE TABLE `tiki_user_assigned_modules` (
  `moduleId` int(8) NOT NULL,
  `name` varchar(200) NOT NULL default '',
  `position` char(1) NOT NULL default '',
  `ord` int(4) NOT NULL default '0',
  `type` char(1) default NULL,
  `user` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`name`(30),`user`,`position`,`ord`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_assigned_modules`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_bookmarks_folders`
-- 

CREATE TABLE `tiki_user_bookmarks_folders` (
  `folderId` int(12) NOT NULL auto_increment,
  `parentId` int(12) default NULL,
  `user` varchar(200) NOT NULL default '',
  `name` varchar(30) default NULL,
  PRIMARY KEY  (`user`,`folderId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_bookmarks_folders`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_bookmarks_urls`
-- 

CREATE TABLE `tiki_user_bookmarks_urls` (
  `urlId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `url` varchar(250) default NULL,
  `data` longblob,
  `lastUpdated` int(14) default NULL,
  `folderId` int(12) NOT NULL default '0',
  `user` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`urlId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_bookmarks_urls`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_mail_accounts`
-- 

CREATE TABLE `tiki_user_mail_accounts` (
  `accountId` int(12) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL default '',
  `account` varchar(50) NOT NULL default '',
  `pop` varchar(255) default NULL,
  `current` char(1) default NULL,
  `port` int(4) default NULL,
  `username` varchar(100) default NULL,
  `pass` varchar(100) default NULL,
  `msgs` int(4) default NULL,
  `smtp` varchar(255) default NULL,
  `useAuth` char(1) default NULL,
  `smtpPort` int(4) default NULL,
  `flagsPublic` char(1) default 'n',
  `autoRefresh` int(4) NOT NULL default '0',
  `imap` varchar(255) default NULL,
  `mbox` varchar(255) default NULL,
  `maildir` varchar(255) default NULL,
  `useSSL` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`accountId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_mail_accounts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_menus`
-- 

CREATE TABLE `tiki_user_menus` (
  `user` varchar(200) NOT NULL default '',
  `menuId` int(12) NOT NULL auto_increment,
  `url` varchar(250) default NULL,
  `name` varchar(40) default NULL,
  `position` int(4) default NULL,
  `mode` char(1) default NULL,
  PRIMARY KEY  (`menuId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_menus`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_modules`
-- 

CREATE TABLE `tiki_user_modules` (
  `name` varchar(200) NOT NULL default '',
  `title` varchar(40) default NULL,
  `data` longblob,
  `parse` char(1) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_modules`
-- 

INSERT INTO `tiki_user_modules` (`name`, `title`, `data`, `parse`) VALUES 
('Menu', 'Menu', 0x7b6d656e752069643d34337d, NULL),
('Application Menu', 'Menu admin', 0x7b6d656e752069643d34327d, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_notes`
-- 

CREATE TABLE `tiki_user_notes` (
  `user` varchar(200) NOT NULL default '',
  `noteId` int(12) NOT NULL auto_increment,
  `created` int(14) default NULL,
  `name` varchar(255) default NULL,
  `lastModif` int(14) default NULL,
  `data` text,
  `size` int(14) default NULL,
  `parse_mode` varchar(20) default NULL,
  PRIMARY KEY  (`noteId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_notes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_postings`
-- 

CREATE TABLE `tiki_user_postings` (
  `user` varchar(200) NOT NULL default '',
  `posts` int(12) default NULL,
  `last` int(14) default NULL,
  `first` int(14) default NULL,
  `level` int(8) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_postings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_preferences`
-- 

CREATE TABLE `tiki_user_preferences` (
  `user` varchar(200) NOT NULL default '',
  `prefName` varchar(40) NOT NULL default '',
  `value` text,
  PRIMARY KEY  (`user`,`prefName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_preferences`
-- 

INSERT INTO `tiki_user_preferences` (`user`, `prefName`, `value`) VALUES 
('admin', 'realName', 'System Administrator'),
('admin', 'ticket', '65e5dd3a36c658ff5b1a38d3833de446'),
('admin', 'objectperm_admin_features', 'a:1:{i:0;s:14:"file galleries";}'),
('rodrigo@utopia.org.br', 'allowMsgs', 'y'),
('rodrigo@utopia.org.br', 'country', ''),
('rodrigo@utopia.org.br', 'diff_versions', 'n'),
('rodrigo@utopia.org.br', 'display_timezone', 'Local'),
('rodrigo@utopia.org.br', 'email is public', 'n'),
('rodrigo@utopia.org.br', 'homePage', ''),
('rodrigo@utopia.org.br', 'lat', '0'),
('rodrigo@utopia.org.br', 'lon', '0'),
('rodrigo@utopia.org.br', 'mess_archiveAfter', '0'),
('rodrigo@utopia.org.br', 'mess_maxRecords', '10'),
('rodrigo@utopia.org.br', 'mess_sendReadStatus', 'n'),
('rodrigo@utopia.org.br', 'minPrio', '3'),
('rodrigo@utopia.org.br', 'mytiki_blogs', 'y'),
('rodrigo@utopia.org.br', 'mytiki_articles', 'y'),
('rodrigo@utopia.org.br', 'mytiki_gals', 'y'),
('rodrigo@utopia.org.br', 'mytiki_items', 'y'),
('rodrigo@utopia.org.br', 'mytiki_msgs', 'y'),
('rodrigo@utopia.org.br', 'mytiki_pages', 'y'),
('rodrigo@utopia.org.br', 'mytiki_tasks', 'y'),
('rodrigo@utopia.org.br', 'mytiki_forum_topics', 'y'),
('rodrigo@utopia.org.br', 'mytiki_forum_replies', 'y'),
('rodrigo@utopia.org.br', 'realName', ''),
('rodrigo@utopia.org.br', 'gender', ''),
('rodrigo@utopia.org.br', 'show_mouseover_user_info', 'n'),
('rodrigo@utopia.org.br', 'tasks_maxRecords', '10'),
('rodrigo@utopia.org.br', 'user_dbl', 'n'),
('rodrigo@utopia.org.br', 'user_information', 'private'),
('rodrigo@utopia.org.br', 'userbreadCrumb', '4'),
('rodrigo@utopia.org.br', 'mailCharset', 'utf-8'),
('rodrigo@utopia.org.br', 'mailCurrentAccount', '0'),
('rodrigo@utopia.org.br', 'theme', ''),
('carlosseabra@tvcultura.com.br', 'allowMsgs', 'y'),
('carlosseabra@tvcultura.com.br', 'country', ''),
('carlosseabra@tvcultura.com.br', 'diff_versions', 'n'),
('carlosseabra@tvcultura.com.br', 'display_timezone', 'Local'),
('carlosseabra@tvcultura.com.br', 'email is public', 'n'),
('carlosseabra@tvcultura.com.br', 'homePage', ''),
('carlosseabra@tvcultura.com.br', 'lat', '0'),
('carlosseabra@tvcultura.com.br', 'lon', '0'),
('carlosseabra@tvcultura.com.br', 'mess_archiveAfter', '0'),
('carlosseabra@tvcultura.com.br', 'mess_maxRecords', '10'),
('carlosseabra@tvcultura.com.br', 'mess_sendReadStatus', 'n'),
('carlosseabra@tvcultura.com.br', 'minPrio', '3'),
('carlosseabra@tvcultura.com.br', 'mytiki_blogs', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_articles', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_gals', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_items', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_msgs', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_pages', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_tasks', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_forum_topics', 'y'),
('carlosseabra@tvcultura.com.br', 'mytiki_forum_replies', 'y'),
('carlosseabra@tvcultura.com.br', 'realName', ''),
('carlosseabra@tvcultura.com.br', 'gender', ''),
('carlosseabra@tvcultura.com.br', 'show_mouseover_user_info', 'n'),
('carlosseabra@tvcultura.com.br', 'tasks_maxRecords', '10'),
('carlosseabra@tvcultura.com.br', 'user_dbl', 'n'),
('carlosseabra@tvcultura.com.br', 'user_information', 'private'),
('carlosseabra@tvcultura.com.br', 'userbreadCrumb', '4'),
('carlosseabra@tvcultura.com.br', 'mailCharset', 'utf-8'),
('carlosseabra@tvcultura.com.br', 'mailCurrentAccount', '0'),
('carlosseabra@tvcultura.com.br', 'theme', ''),
('carlos@seabra.com', 'allowMsgs', 'y'),
('carlos@seabra.com', 'country', ''),
('carlos@seabra.com', 'diff_versions', 'n'),
('carlos@seabra.com', 'display_timezone', 'Local'),
('carlos@seabra.com', 'email is public', 'n'),
('carlos@seabra.com', 'homePage', ''),
('carlos@seabra.com', 'lat', '0'),
('carlos@seabra.com', 'lon', '0'),
('carlos@seabra.com', 'mess_archiveAfter', '0'),
('carlos@seabra.com', 'mess_maxRecords', '10'),
('carlos@seabra.com', 'mess_sendReadStatus', 'n'),
('carlos@seabra.com', 'minPrio', '3'),
('carlos@seabra.com', 'mytiki_blogs', 'y'),
('carlos@seabra.com', 'mytiki_articles', 'y'),
('carlos@seabra.com', 'mytiki_gals', 'y'),
('carlos@seabra.com', 'mytiki_items', 'y'),
('carlos@seabra.com', 'mytiki_msgs', 'y'),
('carlos@seabra.com', 'mytiki_pages', 'y'),
('carlos@seabra.com', 'mytiki_tasks', 'y'),
('carlos@seabra.com', 'mytiki_forum_topics', 'y'),
('carlos@seabra.com', 'mytiki_forum_replies', 'y'),
('carlos@seabra.com', 'realName', ''),
('carlos@seabra.com', 'gender', ''),
('carlos@seabra.com', 'show_mouseover_user_info', 'n'),
('carlos@seabra.com', 'tasks_maxRecords', '10'),
('carlos@seabra.com', 'user_dbl', 'n'),
('carlos@seabra.com', 'user_information', 'private'),
('carlos@seabra.com', 'userbreadCrumb', '4'),
('carlos@seabra.com', 'mailCharset', 'utf-8'),
('carlos@seabra.com', 'mailCurrentAccount', '0'),
('carlos@seabra.com', 'theme', ''),
('janainacardoso@tvcultura.com.br', 'allowMsgs', 'y'),
('janainacardoso@tvcultura.com.br', 'country', ''),
('janainacardoso@tvcultura.com.br', 'diff_versions', 'n'),
('janainacardoso@tvcultura.com.br', 'display_timezone', 'Local'),
('janainacardoso@tvcultura.com.br', 'email is public', 'n'),
('janainacardoso@tvcultura.com.br', 'homePage', ''),
('janainacardoso@tvcultura.com.br', 'lat', '0'),
('janainacardoso@tvcultura.com.br', 'lon', '0'),
('janainacardoso@tvcultura.com.br', 'mess_archiveAfter', '0'),
('janainacardoso@tvcultura.com.br', 'mess_maxRecords', '10'),
('janainacardoso@tvcultura.com.br', 'mess_sendReadStatus', 'n'),
('janainacardoso@tvcultura.com.br', 'minPrio', '3'),
('janainacardoso@tvcultura.com.br', 'mytiki_blogs', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_articles', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_gals', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_items', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_msgs', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_pages', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_tasks', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_forum_topics', 'y'),
('janainacardoso@tvcultura.com.br', 'mytiki_forum_replies', 'y'),
('janainacardoso@tvcultura.com.br', 'realName', ''),
('janainacardoso@tvcultura.com.br', 'gender', ''),
('janainacardoso@tvcultura.com.br', 'show_mouseover_user_info', 'n'),
('janainacardoso@tvcultura.com.br', 'tasks_maxRecords', '10'),
('janainacardoso@tvcultura.com.br', 'user_dbl', 'n'),
('janainacardoso@tvcultura.com.br', 'user_information', 'private'),
('janainacardoso@tvcultura.com.br', 'userbreadCrumb', '4'),
('janainacardoso@tvcultura.com.br', 'mailCharset', 'utf-8'),
('janainacardoso@tvcultura.com.br', 'mailCurrentAccount', '0'),
('janainacardoso@tvcultura.com.br', 'theme', ''),
('rodrigosprimo@gmail.com', 'user_dbl', 'n'),
('rodrigosprimo@gmail.com', 'tasks_maxRecords', '10'),
('rodrigosprimo@gmail.com', 'gender', ''),
('rodrigosprimo@gmail.com', 'show_mouseover_user_info', 'n'),
('rodrigosprimo@gmail.com', 'realName', ''),
('rodrigosprimo@gmail.com', 'mytiki_forum_replies', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_forum_topics', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_pages', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_tasks', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_msgs', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_gals', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_items', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_articles', 'y'),
('rodrigosprimo@gmail.com', 'mytiki_blogs', 'y'),
('rodrigosprimo@gmail.com', 'minPrio', '3'),
('rodrigosprimo@gmail.com', 'mess_maxRecords', '10'),
('rodrigosprimo@gmail.com', 'mess_sendReadStatus', 'n'),
('rodrigosprimo@gmail.com', 'mess_archiveAfter', '0'),
('rodrigosprimo@gmail.com', 'lon', '0'),
('rodrigosprimo@gmail.com', 'homePage', ''),
('rodrigosprimo@gmail.com', 'lat', '0'),
('rodrigosprimo@gmail.com', 'email is public', 'n'),
('rodrigosprimo@gmail.com', 'display_timezone', 'Local'),
('rodrigosprimo@gmail.com', 'diff_versions', 'n'),
('rodrigosprimo@gmail.com', 'country', ''),
('rodrigosprimo@gmail.com', 'allowMsgs', 'y'),
('rodrigosprimo@gmail.com', 'user_information', 'private'),
('rodrigosprimo@gmail.com', 'userbreadCrumb', '4'),
('rodrigosprimo@gmail.com', 'mailCharset', 'utf-8'),
('rodrigosprimo@gmail.com', 'mailCurrentAccount', '0'),
('rodrigosprimo@gmail.com', 'theme', ''),
('marciasavioli@tvcultura.com.br', 'allowMsgs', 'y'),
('marciasavioli@tvcultura.com.br', 'country', ''),
('marciasavioli@tvcultura.com.br', 'diff_versions', 'n'),
('marciasavioli@tvcultura.com.br', 'display_timezone', 'Local'),
('marciasavioli@tvcultura.com.br', 'email is public', 'n'),
('marciasavioli@tvcultura.com.br', 'homePage', ''),
('marciasavioli@tvcultura.com.br', 'lat', '0'),
('marciasavioli@tvcultura.com.br', 'lon', '0'),
('marciasavioli@tvcultura.com.br', 'mess_archiveAfter', '0'),
('marciasavioli@tvcultura.com.br', 'mess_maxRecords', '10'),
('marciasavioli@tvcultura.com.br', 'mess_sendReadStatus', 'n'),
('marciasavioli@tvcultura.com.br', 'minPrio', '3'),
('marciasavioli@tvcultura.com.br', 'mytiki_blogs', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_articles', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_gals', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_items', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_msgs', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_pages', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_tasks', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_forum_topics', 'y'),
('marciasavioli@tvcultura.com.br', 'mytiki_forum_replies', 'y'),
('marciasavioli@tvcultura.com.br', 'realName', ''),
('marciasavioli@tvcultura.com.br', 'gender', ''),
('marciasavioli@tvcultura.com.br', 'show_mouseover_user_info', 'n'),
('marciasavioli@tvcultura.com.br', 'tasks_maxRecords', '10'),
('marciasavioli@tvcultura.com.br', 'user_dbl', 'n'),
('marciasavioli@tvcultura.com.br', 'user_information', 'private'),
('marciasavioli@tvcultura.com.br', 'userbreadCrumb', '4'),
('marciasavioli@tvcultura.com.br', 'mailCharset', 'utf-8'),
('marciasavioli@tvcultura.com.br', 'mailCurrentAccount', '0'),
('marciasavioli@tvcultura.com.br', 'theme', ''),
('carlosseabra@tvcultura.com.br', 'ticket', '955a2da9dd2894dd4a998a27d3991935'),
('jchervezan@gmail.com', 'allowMsgs', 'y'),
('jchervezan@gmail.com', 'country', ''),
('jchervezan@gmail.com', 'diff_versions', 'n'),
('jchervezan@gmail.com', 'display_timezone', 'Local'),
('jchervezan@gmail.com', 'email is public', 'n'),
('jchervezan@gmail.com', 'homePage', ''),
('jchervezan@gmail.com', 'lat', '0'),
('jchervezan@gmail.com', 'lon', '0'),
('jchervezan@gmail.com', 'mess_archiveAfter', '0'),
('jchervezan@gmail.com', 'mess_maxRecords', '10'),
('jchervezan@gmail.com', 'mess_sendReadStatus', 'n'),
('jchervezan@gmail.com', 'minPrio', '3'),
('jchervezan@gmail.com', 'mytiki_blogs', 'y'),
('jchervezan@gmail.com', 'mytiki_articles', 'y'),
('jchervezan@gmail.com', 'mytiki_gals', 'y'),
('jchervezan@gmail.com', 'mytiki_items', 'y'),
('jchervezan@gmail.com', 'mytiki_msgs', 'y'),
('jchervezan@gmail.com', 'mytiki_pages', 'y'),
('jchervezan@gmail.com', 'mytiki_tasks', 'y'),
('jchervezan@gmail.com', 'mytiki_forum_topics', 'y'),
('jchervezan@gmail.com', 'mytiki_forum_replies', 'y'),
('jchervezan@gmail.com', 'realName', ''),
('jchervezan@gmail.com', 'gender', ''),
('jchervezan@gmail.com', 'show_mouseover_user_info', 'n'),
('jchervezan@gmail.com', 'tasks_maxRecords', '10'),
('jchervezan@gmail.com', 'user_dbl', 'n'),
('jchervezan@gmail.com', 'user_information', 'private'),
('jchervezan@gmail.com', 'userbreadCrumb', '4'),
('jchervezan@gmail.com', 'mailCharset', 'utf-8'),
('jchervezan@gmail.com', 'mailCurrentAccount', '0'),
('jchervezan@gmail.com', 'theme', ''),
('janachervezan@yahoo.com.br', 'allowMsgs', 'y'),
('janachervezan@yahoo.com.br', 'country', ''),
('janachervezan@yahoo.com.br', 'diff_versions', 'n'),
('janachervezan@yahoo.com.br', 'display_timezone', 'Local'),
('janachervezan@yahoo.com.br', 'email is public', 'n'),
('janachervezan@yahoo.com.br', 'homePage', ''),
('janachervezan@yahoo.com.br', 'lat', '0'),
('janachervezan@yahoo.com.br', 'lon', '0'),
('janachervezan@yahoo.com.br', 'mess_archiveAfter', '0'),
('janachervezan@yahoo.com.br', 'mess_maxRecords', '10'),
('janachervezan@yahoo.com.br', 'mess_sendReadStatus', 'n'),
('janachervezan@yahoo.com.br', 'minPrio', '3'),
('janachervezan@yahoo.com.br', 'mytiki_blogs', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_articles', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_gals', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_items', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_msgs', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_pages', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_tasks', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_forum_topics', 'y'),
('janachervezan@yahoo.com.br', 'mytiki_forum_replies', 'y'),
('janachervezan@yahoo.com.br', 'realName', ''),
('janachervezan@yahoo.com.br', 'gender', ''),
('janachervezan@yahoo.com.br', 'show_mouseover_user_info', 'n'),
('janachervezan@yahoo.com.br', 'tasks_maxRecords', '10'),
('janachervezan@yahoo.com.br', 'user_dbl', 'n'),
('janachervezan@yahoo.com.br', 'user_information', 'private'),
('janachervezan@yahoo.com.br', 'userbreadCrumb', '4'),
('janachervezan@yahoo.com.br', 'mailCharset', 'utf-8'),
('janachervezan@yahoo.com.br', 'mailCurrentAccount', '0'),
('janachervezan@yahoo.com.br', 'theme', ''),
('carlosseabra@tvcultura.com.br', 'objectperm_admin_groups', 'a:2:{i:0;s:1:"7";i:1;s:1:"8";}'),
('admin', 'objectperm_admin_groups', 'a:3:{i:0;s:1:"7";i:1;s:1:"8";i:2;s:1:"9";}'),
('g.fantin@uol.com.br', 'allowMsgs', 'y'),
('g.fantin@uol.com.br', 'country', ''),
('g.fantin@uol.com.br', 'diff_versions', 'n'),
('g.fantin@uol.com.br', 'display_timezone', 'Local'),
('g.fantin@uol.com.br', 'email is public', 'n'),
('g.fantin@uol.com.br', 'homePage', ''),
('g.fantin@uol.com.br', 'lat', '0'),
('g.fantin@uol.com.br', 'lon', '0'),
('g.fantin@uol.com.br', 'mess_archiveAfter', '0'),
('g.fantin@uol.com.br', 'mess_maxRecords', '10'),
('g.fantin@uol.com.br', 'mess_sendReadStatus', 'n'),
('g.fantin@uol.com.br', 'minPrio', '3'),
('g.fantin@uol.com.br', 'mytiki_blogs', 'y'),
('g.fantin@uol.com.br', 'mytiki_articles', 'y'),
('g.fantin@uol.com.br', 'mytiki_gals', 'y'),
('g.fantin@uol.com.br', 'mytiki_items', 'y'),
('g.fantin@uol.com.br', 'mytiki_msgs', 'y'),
('g.fantin@uol.com.br', 'mytiki_pages', 'y'),
('g.fantin@uol.com.br', 'mytiki_tasks', 'y'),
('g.fantin@uol.com.br', 'mytiki_forum_topics', 'y'),
('g.fantin@uol.com.br', 'mytiki_forum_replies', 'y'),
('g.fantin@uol.com.br', 'realName', ''),
('g.fantin@uol.com.br', 'gender', ''),
('g.fantin@uol.com.br', 'show_mouseover_user_info', 'n'),
('g.fantin@uol.com.br', 'tasks_maxRecords', '10'),
('g.fantin@uol.com.br', 'user_dbl', 'n'),
('g.fantin@uol.com.br', 'user_information', 'private'),
('g.fantin@uol.com.br', 'userbreadCrumb', '4'),
('g.fantin@uol.com.br', 'mailCharset', 'utf-8'),
('g.fantin@uol.com.br', 'mailCurrentAccount', '0'),
('g.fantin@uol.com.br', 'theme', ''),
('inesnocite@uol.com.br', 'allowMsgs', 'y'),
('inesnocite@uol.com.br', 'country', ''),
('inesnocite@uol.com.br', 'diff_versions', 'n'),
('inesnocite@uol.com.br', 'display_timezone', 'Local'),
('inesnocite@uol.com.br', 'email is public', 'n'),
('inesnocite@uol.com.br', 'homePage', ''),
('inesnocite@uol.com.br', 'lat', '0'),
('inesnocite@uol.com.br', 'lon', '0'),
('inesnocite@uol.com.br', 'mess_archiveAfter', '0'),
('inesnocite@uol.com.br', 'mess_maxRecords', '10'),
('inesnocite@uol.com.br', 'mess_sendReadStatus', 'n'),
('inesnocite@uol.com.br', 'minPrio', '3'),
('inesnocite@uol.com.br', 'mytiki_blogs', 'y'),
('inesnocite@uol.com.br', 'mytiki_articles', 'y'),
('inesnocite@uol.com.br', 'mytiki_gals', 'y'),
('inesnocite@uol.com.br', 'mytiki_items', 'y'),
('inesnocite@uol.com.br', 'mytiki_msgs', 'y'),
('inesnocite@uol.com.br', 'mytiki_pages', 'y'),
('inesnocite@uol.com.br', 'mytiki_tasks', 'y'),
('inesnocite@uol.com.br', 'mytiki_forum_topics', 'y'),
('inesnocite@uol.com.br', 'mytiki_forum_replies', 'y'),
('inesnocite@uol.com.br', 'realName', ''),
('inesnocite@uol.com.br', 'gender', ''),
('inesnocite@uol.com.br', 'show_mouseover_user_info', 'n'),
('inesnocite@uol.com.br', 'tasks_maxRecords', '10'),
('inesnocite@uol.com.br', 'user_dbl', 'n'),
('inesnocite@uol.com.br', 'user_information', 'private'),
('inesnocite@uol.com.br', 'userbreadCrumb', '4'),
('inesnocite@uol.com.br', 'mailCharset', 'utf-8'),
('inesnocite@uol.com.br', 'mailCurrentAccount', '0'),
('inesnocite@uol.com.br', 'theme', ''),
('viscopac@hotmail.com', 'allowMsgs', 'y'),
('viscopac@hotmail.com', 'country', ''),
('viscopac@hotmail.com', 'diff_versions', 'n'),
('viscopac@hotmail.com', 'display_timezone', 'Local'),
('viscopac@hotmail.com', 'email is public', 'n'),
('viscopac@hotmail.com', 'homePage', ''),
('viscopac@hotmail.com', 'lat', '0'),
('viscopac@hotmail.com', 'lon', '0'),
('viscopac@hotmail.com', 'mess_archiveAfter', '0'),
('viscopac@hotmail.com', 'mess_maxRecords', '10'),
('viscopac@hotmail.com', 'mess_sendReadStatus', 'n'),
('viscopac@hotmail.com', 'minPrio', '3'),
('viscopac@hotmail.com', 'mytiki_blogs', 'y'),
('viscopac@hotmail.com', 'mytiki_articles', 'y'),
('viscopac@hotmail.com', 'mytiki_gals', 'y'),
('viscopac@hotmail.com', 'mytiki_items', 'y'),
('viscopac@hotmail.com', 'mytiki_msgs', 'y'),
('viscopac@hotmail.com', 'mytiki_pages', 'y'),
('viscopac@hotmail.com', 'mytiki_tasks', 'y'),
('viscopac@hotmail.com', 'mytiki_forum_topics', 'y'),
('viscopac@hotmail.com', 'mytiki_forum_replies', 'y'),
('viscopac@hotmail.com', 'realName', ''),
('viscopac@hotmail.com', 'gender', ''),
('viscopac@hotmail.com', 'show_mouseover_user_info', 'n'),
('viscopac@hotmail.com', 'tasks_maxRecords', '10'),
('viscopac@hotmail.com', 'user_dbl', 'n'),
('viscopac@hotmail.com', 'user_information', 'private'),
('viscopac@hotmail.com', 'userbreadCrumb', '4'),
('viscopac@hotmail.com', 'mailCharset', 'utf-8'),
('viscopac@hotmail.com', 'mailCurrentAccount', '0'),
('viscopac@hotmail.com', 'theme', ''),
('titacaricati@yahoo.com.br', 'allowMsgs', 'y'),
('titacaricati@yahoo.com.br', 'country', ''),
('titacaricati@yahoo.com.br', 'diff_versions', 'n'),
('titacaricati@yahoo.com.br', 'display_timezone', 'Local'),
('titacaricati@yahoo.com.br', 'email is public', 'n'),
('titacaricati@yahoo.com.br', 'homePage', ''),
('titacaricati@yahoo.com.br', 'lat', '0'),
('titacaricati@yahoo.com.br', 'lon', '0'),
('titacaricati@yahoo.com.br', 'mess_archiveAfter', '0'),
('titacaricati@yahoo.com.br', 'mess_maxRecords', '10'),
('titacaricati@yahoo.com.br', 'mess_sendReadStatus', 'n'),
('titacaricati@yahoo.com.br', 'minPrio', '3'),
('titacaricati@yahoo.com.br', 'mytiki_blogs', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_articles', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_gals', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_items', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_msgs', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_pages', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_tasks', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_forum_topics', 'y'),
('titacaricati@yahoo.com.br', 'mytiki_forum_replies', 'y'),
('titacaricati@yahoo.com.br', 'realName', ''),
('titacaricati@yahoo.com.br', 'gender', ''),
('titacaricati@yahoo.com.br', 'show_mouseover_user_info', 'n'),
('titacaricati@yahoo.com.br', 'tasks_maxRecords', '10'),
('titacaricati@yahoo.com.br', 'user_dbl', 'n'),
('titacaricati@yahoo.com.br', 'user_information', 'private'),
('titacaricati@yahoo.com.br', 'userbreadCrumb', '4'),
('titacaricati@yahoo.com.br', 'mailCharset', 'utf-8'),
('titacaricati@yahoo.com.br', 'mailCurrentAccount', '0'),
('titacaricati@yahoo.com.br', 'theme', ''),
('americamarinho@terra.com.br', 'allowMsgs', 'y'),
('americamarinho@terra.com.br', 'country', ''),
('americamarinho@terra.com.br', 'diff_versions', 'n'),
('americamarinho@terra.com.br', 'display_timezone', 'Local'),
('americamarinho@terra.com.br', 'email is public', 'n'),
('americamarinho@terra.com.br', 'homePage', ''),
('americamarinho@terra.com.br', 'lat', '0'),
('americamarinho@terra.com.br', 'lon', '0'),
('americamarinho@terra.com.br', 'mess_archiveAfter', '0'),
('americamarinho@terra.com.br', 'mess_maxRecords', '10'),
('americamarinho@terra.com.br', 'mess_sendReadStatus', 'n'),
('americamarinho@terra.com.br', 'minPrio', '3'),
('americamarinho@terra.com.br', 'mytiki_blogs', 'y'),
('americamarinho@terra.com.br', 'mytiki_articles', 'y'),
('americamarinho@terra.com.br', 'mytiki_gals', 'y'),
('americamarinho@terra.com.br', 'mytiki_items', 'y'),
('americamarinho@terra.com.br', 'mytiki_msgs', 'y'),
('americamarinho@terra.com.br', 'mytiki_pages', 'y'),
('americamarinho@terra.com.br', 'mytiki_tasks', 'y'),
('americamarinho@terra.com.br', 'mytiki_forum_topics', 'y'),
('americamarinho@terra.com.br', 'mytiki_forum_replies', 'y'),
('americamarinho@terra.com.br', 'realName', ''),
('americamarinho@terra.com.br', 'gender', ''),
('americamarinho@terra.com.br', 'show_mouseover_user_info', 'n'),
('americamarinho@terra.com.br', 'tasks_maxRecords', '10'),
('americamarinho@terra.com.br', 'user_dbl', 'n'),
('americamarinho@terra.com.br', 'user_information', 'private'),
('americamarinho@terra.com.br', 'userbreadCrumb', '4'),
('americamarinho@terra.com.br', 'mailCharset', 'utf-8'),
('americamarinho@terra.com.br', 'mailCurrentAccount', '0'),
('americamarinho@terra.com.br', 'theme', ''),
('celina_diaf@yahoo.com.br', 'allowMsgs', 'y'),
('celina_diaf@yahoo.com.br', 'country', ''),
('celina_diaf@yahoo.com.br', 'diff_versions', 'n'),
('celina_diaf@yahoo.com.br', 'display_timezone', 'Local'),
('celina_diaf@yahoo.com.br', 'email is public', 'n'),
('celina_diaf@yahoo.com.br', 'homePage', ''),
('celina_diaf@yahoo.com.br', 'lat', '0'),
('celina_diaf@yahoo.com.br', 'lon', '0'),
('celina_diaf@yahoo.com.br', 'mess_archiveAfter', '0'),
('celina_diaf@yahoo.com.br', 'mess_maxRecords', '10'),
('celina_diaf@yahoo.com.br', 'mess_sendReadStatus', 'n'),
('celina_diaf@yahoo.com.br', 'minPrio', '3'),
('celina_diaf@yahoo.com.br', 'mytiki_blogs', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_articles', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_gals', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_items', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_msgs', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_pages', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_tasks', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_forum_topics', 'y'),
('celina_diaf@yahoo.com.br', 'mytiki_forum_replies', 'y'),
('celina_diaf@yahoo.com.br', 'realName', ''),
('celina_diaf@yahoo.com.br', 'gender', ''),
('celina_diaf@yahoo.com.br', 'show_mouseover_user_info', 'n'),
('celina_diaf@yahoo.com.br', 'tasks_maxRecords', '10'),
('celina_diaf@yahoo.com.br', 'user_dbl', 'n'),
('celina_diaf@yahoo.com.br', 'user_information', 'private'),
('celina_diaf@yahoo.com.br', 'userbreadCrumb', '4'),
('celina_diaf@yahoo.com.br', 'mailCharset', 'utf-8'),
('celina_diaf@yahoo.com.br', 'mailCurrentAccount', '0'),
('celina_diaf@yahoo.com.br', 'theme', ''),
('lena.costa@uol.com.br', 'allowMsgs', 'y'),
('lena.costa@uol.com.br', 'country', ''),
('lena.costa@uol.com.br', 'diff_versions', 'n'),
('lena.costa@uol.com.br', 'display_timezone', 'Local'),
('lena.costa@uol.com.br', 'email is public', 'n'),
('lena.costa@uol.com.br', 'homePage', ''),
('lena.costa@uol.com.br', 'lat', '0'),
('lena.costa@uol.com.br', 'lon', '0'),
('lena.costa@uol.com.br', 'mess_archiveAfter', '0'),
('lena.costa@uol.com.br', 'mess_maxRecords', '10'),
('lena.costa@uol.com.br', 'mess_sendReadStatus', 'n'),
('lena.costa@uol.com.br', 'minPrio', '3'),
('lena.costa@uol.com.br', 'mytiki_blogs', 'y'),
('lena.costa@uol.com.br', 'mytiki_articles', 'y'),
('lena.costa@uol.com.br', 'mytiki_gals', 'y'),
('lena.costa@uol.com.br', 'mytiki_items', 'y'),
('lena.costa@uol.com.br', 'mytiki_msgs', 'y'),
('lena.costa@uol.com.br', 'mytiki_pages', 'y'),
('lena.costa@uol.com.br', 'mytiki_tasks', 'y'),
('lena.costa@uol.com.br', 'mytiki_forum_topics', 'y'),
('lena.costa@uol.com.br', 'mytiki_forum_replies', 'y'),
('lena.costa@uol.com.br', 'realName', ''),
('lena.costa@uol.com.br', 'gender', ''),
('lena.costa@uol.com.br', 'show_mouseover_user_info', 'n'),
('lena.costa@uol.com.br', 'tasks_maxRecords', '10'),
('lena.costa@uol.com.br', 'user_dbl', 'n'),
('lena.costa@uol.com.br', 'user_information', 'private'),
('lena.costa@uol.com.br', 'userbreadCrumb', '4'),
('lena.costa@uol.com.br', 'mailCharset', 'utf-8'),
('lena.costa@uol.com.br', 'mailCurrentAccount', '0'),
('lena.costa@uol.com.br', 'theme', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_quizzes`
-- 

CREATE TABLE `tiki_user_quizzes` (
  `user` varchar(200) default '',
  `quizId` int(10) default NULL,
  `timestamp` int(14) default NULL,
  `timeTaken` int(14) default NULL,
  `points` int(12) default NULL,
  `maxPoints` int(12) default NULL,
  `resultId` int(10) default NULL,
  `userResultId` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`userResultId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_quizzes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_reports`
-- 

CREATE TABLE `tiki_user_reports` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL,
  `interval` varchar(20) NOT NULL,
  `view` varchar(8) NOT NULL,
  `type` varchar(5) NOT NULL,
  `time_to_send` datetime default '0000-00-00 00:00:00',
  `always_email` tinyint(1) NOT NULL,
  `last_report` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_reports`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_reports_cache`
-- 

CREATE TABLE `tiki_user_reports_cache` (
  `id` int(11) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL,
  `event` varchar(200) NOT NULL,
  `data` text NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_reports_cache`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_taken_quizzes`
-- 

CREATE TABLE `tiki_user_taken_quizzes` (
  `user` varchar(200) NOT NULL default '',
  `quizId` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`user`,`quizId`(50))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_taken_quizzes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_tasks`
-- 

CREATE TABLE `tiki_user_tasks` (
  `taskId` int(14) NOT NULL auto_increment,
  `last_version` int(4) NOT NULL default '0',
  `user` varchar(200) NOT NULL default '',
  `creator` varchar(200) NOT NULL,
  `public_for_group` varchar(30) default NULL,
  `rights_by_creator` char(1) default NULL,
  `created` int(14) NOT NULL,
  `status` char(1) default NULL,
  `priority` int(2) default NULL,
  `completed` int(14) default NULL,
  `percentage` int(4) default NULL,
  PRIMARY KEY  (`taskId`),
  UNIQUE KEY `creator` (`creator`,`created`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_tasks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_tasks_history`
-- 

CREATE TABLE `tiki_user_tasks_history` (
  `belongs_to` int(14) NOT NULL,
  `task_version` int(4) NOT NULL default '0',
  `title` varchar(250) NOT NULL,
  `description` text,
  `start` int(14) default NULL,
  `end` int(14) default NULL,
  `lasteditor` varchar(200) NOT NULL,
  `lastchanges` int(14) NOT NULL,
  `priority` int(2) NOT NULL default '3',
  `completed` int(14) default NULL,
  `deleted` int(14) default NULL,
  `status` char(1) default NULL,
  `percentage` int(4) default NULL,
  `accepted_creator` char(1) default NULL,
  `accepted_user` char(1) default NULL,
  PRIMARY KEY  (`belongs_to`,`task_version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_tasks_history`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_votings`
-- 

CREATE TABLE `tiki_user_votings` (
  `user` varchar(200) default '',
  `ip` varchar(15) default NULL,
  `id` varchar(255) NOT NULL default '',
  `optionId` int(10) NOT NULL default '0',
  `time` int(14) NOT NULL default '0',
  KEY `user` (`user`(100),`id`(100)),
  KEY `ip` (`ip`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_user_votings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_user_watches`
-- 

CREATE TABLE `tiki_user_watches` (
  `watchId` int(12) NOT NULL auto_increment,
  `user` varchar(200) NOT NULL default '',
  `event` varchar(40) NOT NULL default '',
  `object` varchar(200) NOT NULL default '',
  `title` varchar(250) default NULL,
  `type` varchar(200) default NULL,
  `url` varchar(250) default NULL,
  `email` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`user`(50),`event`,`object`(100),`email`(50)),
  KEY `watchId` (`watchId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_user_watches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_userfiles`
-- 

CREATE TABLE `tiki_userfiles` (
  `user` varchar(200) NOT NULL default '',
  `fileId` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `filename` varchar(200) default NULL,
  `filetype` varchar(200) default NULL,
  `filesize` varchar(200) default NULL,
  `data` longblob,
  `hits` int(8) default NULL,
  `isFile` char(1) default NULL,
  `path` varchar(255) default NULL,
  `created` int(14) default NULL,
  PRIMARY KEY  (`fileId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_userfiles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_userpoints`
-- 

CREATE TABLE `tiki_userpoints` (
  `user` varchar(200) NOT NULL default '',
  `points` decimal(8,2) default NULL,
  `voted` int(8) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_userpoints`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_users`
-- 

CREATE TABLE `tiki_users` (
  `user` varchar(200) NOT NULL default '',
  `password` varchar(40) default NULL,
  `email` varchar(200) default NULL,
  `lastLogin` int(14) default NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_users`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_users_score`
-- 

CREATE TABLE `tiki_users_score` (
  `user` char(200) NOT NULL default '',
  `event_id` char(200) NOT NULL default '',
  `expire` int(14) NOT NULL default '0',
  `tstamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user`(110),`event_id`(110)),
  KEY `user` (`user`(110),`event_id`(110),`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_users_score`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webmail_contacts`
-- 

CREATE TABLE `tiki_webmail_contacts` (
  `contactId` int(12) NOT NULL auto_increment,
  `firstName` varchar(80) default NULL,
  `lastName` varchar(80) default NULL,
  `email` varchar(250) default NULL,
  `nickname` varchar(200) default NULL,
  `user` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_webmail_contacts`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webmail_contacts_ext`
-- 

CREATE TABLE `tiki_webmail_contacts_ext` (
  `contactId` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `fieldId` int(10) unsigned NOT NULL,
  KEY `contactId` (`contactId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_webmail_contacts_ext`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webmail_contacts_fields`
-- 

CREATE TABLE `tiki_webmail_contacts_fields` (
  `user` varchar(200) NOT NULL,
  `fieldname` varchar(255) NOT NULL,
  `order` int(2) NOT NULL default '0',
  `show` char(1) NOT NULL default 'n',
  `fieldId` int(10) unsigned NOT NULL auto_increment,
  `flagsPublic` char(1) NOT NULL default 'n',
  PRIMARY KEY  (`fieldId`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_webmail_contacts_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webmail_contacts_groups`
-- 

CREATE TABLE `tiki_webmail_contacts_groups` (
  `contactId` int(12) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  PRIMARY KEY  (`contactId`,`groupName`(200))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_webmail_contacts_groups`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webmail_messages`
-- 

CREATE TABLE `tiki_webmail_messages` (
  `accountId` int(12) NOT NULL default '0',
  `mailId` varchar(255) NOT NULL default '',
  `user` varchar(200) NOT NULL default '',
  `isRead` char(1) default NULL,
  `isReplied` char(1) default NULL,
  `isFlagged` char(1) default NULL,
  `flaggedMsg` varchar(50) default '',
  PRIMARY KEY  (`accountId`,`mailId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_webmail_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webservice`
-- 

CREATE TABLE `tiki_webservice` (
  `service` varchar(25) NOT NULL,
  `url` varchar(250) default NULL,
  `body` text,
  `schema_version` varchar(5) default NULL,
  `schema_documentation` varchar(250) default NULL,
  PRIMARY KEY  (`service`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_webservice`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_webservice_template`
-- 

CREATE TABLE `tiki_webservice_template` (
  `service` varchar(25) NOT NULL,
  `template` varchar(25) NOT NULL,
  `engine` varchar(15) NOT NULL,
  `output` varchar(15) NOT NULL,
  `content` text NOT NULL,
  `last_modif` int(11) default NULL,
  PRIMARY KEY  (`service`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_webservice_template`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_wiki_attachments`
-- 

CREATE TABLE `tiki_wiki_attachments` (
  `attId` int(12) NOT NULL auto_increment,
  `page` varchar(200) NOT NULL default '',
  `filename` varchar(80) default NULL,
  `filetype` varchar(80) default NULL,
  `filesize` int(14) default NULL,
  `user` varchar(200) NOT NULL default '',
  `data` longblob,
  `path` varchar(255) default NULL,
  `hits` int(10) default NULL,
  `created` int(14) default NULL,
  `comment` varchar(250) default NULL,
  PRIMARY KEY  (`attId`),
  KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `tiki_wiki_attachments`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `tiki_zones`
-- 

CREATE TABLE `tiki_zones` (
  `zone` varchar(40) NOT NULL default '',
  PRIMARY KEY  (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `tiki_zones`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users_grouppermissions`
-- 

CREATE TABLE `users_grouppermissions` (
  `groupName` varchar(255) NOT NULL default '',
  `permName` varchar(40) NOT NULL default '',
  `value` char(1) default '',
  PRIMARY KEY  (`groupName`(30),`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `users_grouppermissions`
-- 

INSERT INTO `users_grouppermissions` (`groupName`, `permName`, `value`) VALUES 
('Editores', 'tiki_p_assign_perm_file_gallery', ''),
('Admins', 'tiki_p_admin', ''),
('Editores', 'tiki_p_upload_files', ''),
('Editores', 'tiki_p_create_file_galleries', ''),
('Editores', 'tiki_p_download_files', ''),
('Editores', 'tiki_p_list_file_galleries', ''),
('Editores', 'tiki_p_edit_gallery_file', ''),
('Editores', 'tiki_p_view_fgal_explorer', ''),
('Editores', 'tiki_p_admin_file_galleries', ''),
('Editores', 'tiki_p_view_file_gallery', ''),
('Editores', 'tiki_p_view_fgal_path', ''),
('Editores', 'tiki_p_group_view_members', ''),
('Editores', 'tiki_p_group_remove_member', ''),
('Editores', 'tiki_p_group_view', ''),
('Editores', 'tiki_p_group_add_member', ''),
('Editores', 'tiki_p_group_join', ''),
('Editores', 'tiki_p_search', ''),
('Editores', 'tiki_p_admin_objects', ''),
('Editores', 'tiki_p_admin_users', ''),
('Autores', 'tiki_p_upload_files', ''),
('Autores', 'tiki_p_download_files', ''),
('Autores', 'tiki_p_list_file_galleries', ''),
('Autores', 'tiki_p_view_fgal_explorer', ''),
('Autores', 'tiki_p_view_file_gallery', ''),
('Autores', 'tiki_p_view_fgal_path', ''),
('Autores', 'tiki_p_search', ''),
('Leitores', 'tiki_p_download_files', ''),
('Leitores', 'tiki_p_list_file_galleries', ''),
('Leitores', 'tiki_p_view_fgal_explorer', ''),
('Leitores', 'tiki_p_view_file_gallery', ''),
('Leitores', 'tiki_p_view_fgal_path', ''),
('Leitores', 'tiki_p_search', ''),
('Autor (SMESP/LP)', 'tiki_p_upload_files', ''),
('Editor (SMESP)', 'tiki_p_upload_files', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_groups`
-- 

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL auto_increment,
  `groupName` varchar(255) NOT NULL default '',
  `groupDesc` varchar(255) default NULL,
  `groupHome` varchar(255) default NULL,
  `usersTrackerId` int(11) default NULL,
  `groupTrackerId` int(11) default NULL,
  `usersFieldId` int(11) default NULL,
  `groupFieldId` int(11) default NULL,
  `registrationChoice` char(1) default NULL,
  `registrationUsersFieldIds` text,
  `userChoice` char(1) default NULL,
  `groupDefCat` int(12) default '0',
  `groupTheme` varchar(255) default '',
  `isExternal` char(1) default 'n',
  `expireAfter` int(14) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `groupName` (`groupName`),
  KEY `expireAfter` (`expireAfter`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `users_groups`
-- 

INSERT INTO `users_groups` (`id`, `groupName`, `groupDesc`, `groupHome`, `usersTrackerId`, `groupTrackerId`, `usersFieldId`, `groupFieldId`, `registrationChoice`, `registrationUsersFieldIds`, `userChoice`, `groupDefCat`, `groupTheme`, `isExternal`, `expireAfter`) VALUES 
(1, 'Anonymous', 'Public users not logged', 'HomePage', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(2, 'Registered', 'Users logged into the system', 'http:tiki-list_file_gallery.php', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(3, 'Admins', 'Administrator and accounts managers.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 'n', 0),
(4, 'Leitores', 'Podem apenas ler os arquivos enviados para o site.', '', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(5, 'Editores', '', '', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(6, 'Autores', '', '', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(7, 'Autor (SMESP/LP)', '', 'http:file24', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(8, 'Editor (SMESP)', '', 'http:file21', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(9, 'Leitor (SMESP/LP)', '', 'http:file24', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0),
(10, 'Autor (SMESP/MAT)', '', 'http:file23', 0, 0, 0, 0, NULL, '', '', 0, '', 'n', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `users_objectpermissions`
-- 

CREATE TABLE `users_objectpermissions` (
  `groupName` varchar(255) NOT NULL default '',
  `permName` varchar(40) NOT NULL default '',
  `objectType` varchar(20) NOT NULL default '',
  `objectId` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`objectId`,`objectType`,`groupName`(30),`permName`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `users_objectpermissions`
-- 

INSERT INTO `users_objectpermissions` (`groupName`, `permName`, `objectType`, `objectId`) VALUES 
('Anonymous', 'tiki_p_view', 'wiki page', '4aa58106a05cca61ca3bece74810fa08'),
('Editor (SMESP)', 'tiki_p_upload_files', 'file gallery', '107341bbb8e80b80ead84a8b6d15ed2c'),
('Editor (SMESP)', 'tiki_p_list_file_galleries', 'file gallery', '107341bbb8e80b80ead84a8b6d15ed2c'),
('Editor (SMESP)', 'tiki_p_view_file_gallery', 'file gallery', '107341bbb8e80b80ead84a8b6d15ed2c'),
('Editor (SMESP)', 'tiki_p_download_files', 'file gallery', '107341bbb8e80b80ead84a8b6d15ed2c'),
('Autor (SMESP/LP)', 'tiki_p_upload_files', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Autor (SMESP/LP)', 'tiki_p_list_file_galleries', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Autor (SMESP/LP)', 'tiki_p_view_file_gallery', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Autor (SMESP/LP)', 'tiki_p_download_files', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Editor (SMESP)', 'tiki_p_upload_files', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Editor (SMESP)', 'tiki_p_list_file_galleries', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Editor (SMESP)', 'tiki_p_view_file_gallery', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Editor (SMESP)', 'tiki_p_download_files', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Editor (SMESP)', 'tiki_p_upload_files', 'file gallery', 'b683e0842efcc702ceb84662bea12000'),
('Editor (SMESP)', 'tiki_p_list_file_galleries', 'file gallery', 'b683e0842efcc702ceb84662bea12000'),
('Editor (SMESP)', 'tiki_p_view_file_gallery', 'file gallery', 'b683e0842efcc702ceb84662bea12000'),
('Editor (SMESP)', 'tiki_p_download_files', 'file gallery', 'b683e0842efcc702ceb84662bea12000'),
('Leitor (SMESP/LP)', 'tiki_p_list_file_galleries', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Leitor (SMESP/LP)', 'tiki_p_view_file_gallery', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Leitor (SMESP/LP)', 'tiki_p_download_files', 'file gallery', 'c567dbe1102f1ec40154163315bd520c'),
('Leitor (SMESP/LP)', 'tiki_p_upload_files', 'file gallery', 'c567dbe1102f1ec40154163315bd520c');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_permissions`
-- 

CREATE TABLE `users_permissions` (
  `permName` varchar(40) NOT NULL default '',
  `permDesc` varchar(250) default NULL,
  `level` varchar(80) default NULL,
  `type` varchar(20) default NULL,
  `admin` varchar(1) default NULL,
  `feature_check` varchar(255) default NULL,
  PRIMARY KEY  (`permName`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `users_permissions`
-- 

INSERT INTO `users_permissions` (`permName`, `permDesc`, `level`, `type`, `admin`, `feature_check`) VALUES 
('tiki_p_admin_calendar', 'Can create/admin calendars', 'admin', 'calendar', 'y', 'feature_calendar'),
('tiki_p_add_events', 'Can add events in the calendar', 'registered', 'calendar', NULL, 'feature_calendar'),
('tiki_p_change_events', 'Can change events in the calendar', 'registered', 'calendar', NULL, 'feature_calendar'),
('tiki_p_view_calendar', 'Can browse the calendar', 'basic', 'calendar', NULL, 'feature_calendar'),
('tiki_p_view_events', 'Can view events details', 'registered', 'calendar', NULL, 'feature_calendar'),
('tiki_p_view_tiki_calendar', 'Can view Tikiwiki tools calendar', 'basic', 'calendar', NULL, 'feature_calendar'),
('tiki_p_admin_chat', 'Administrator, can create channels remove channels etc', 'editors', 'chat', 'y', 'feature_minichat,feature_live_support'),
('tiki_p_chat', 'Can use the chat system', 'registered', 'chat', NULL, 'feature_minichat,feature_live_support'),
('tiki_p_admin_cms', 'Can admin the cms', 'editors', 'cms', 'y', 'feature_articles'),
('tiki_p_approve_submission', 'Can approve submissions', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_articles_admin_topics', 'Can admin article topics', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_articles_admin_types', 'Can admin article types', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_articles_read_heading', 'Can read article headings', 'basic', 'cms', NULL, 'feature_articles'),
('tiki_p_autoapprove_submission', 'Submited articles automatically approved', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_edit_article', 'Can edit articles', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_edit_submission', 'Can edit submissions', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_read_article', 'Can read articles', 'basic', 'cms', NULL, 'feature_articles'),
('tiki_p_remove_article', 'Can remove articles', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_remove_submission', 'Can remove submissions', 'editors', 'cms', NULL, 'feature_articles'),
('tiki_p_submit_article', 'Can submit articles', 'basic', 'cms', NULL, 'feature_articles'),
('tiki_p_topic_read', 'Can read a topic (Applies only to individual topic perms)', 'basic', 'cms', NULL, 'feature_articles'),
('tiki_p_admin_contribution', 'Can admin contributions', 'admin', 'contribution', 'y', 'feature_contribution'),
('tiki_p_admin_directory', 'Can admin the directory', 'editors', 'directory', 'y', 'feature_directory'),
('tiki_p_admin_directory_cats', 'Can admin directory categories', 'editors', 'directory', NULL, 'feature_directory'),
('tiki_p_admin_directory_sites', 'Can admin directory sites', 'editors', 'directory', NULL, 'feature_directory'),
('tiki_p_autosubmit_link', 'Submited links are valid', 'editors', 'directory', NULL, 'feature_directory'),
('tiki_p_submit_link', 'Can submit sites to the directory', 'basic', 'directory', NULL, 'feature_directory'),
('tiki_p_validate_links', 'Can validate submited links', 'editors', 'directory', NULL, 'feature_directory'),
('tiki_p_view_directory', 'Can use the directory', 'basic', 'directory', NULL, 'feature_directory'),
('tiki_p_admin_faqs', 'Can admin faqs', 'editors', 'faqs', 'y', 'feature_faqs'),
('tiki_p_suggest_faq', 'Can suggest faq questions', 'basic', 'faqs', NULL, 'feature_faqs'),
('tiki_p_view_faqs', 'Can view faqs', 'basic', 'faqs', NULL, 'feature_faqs'),
('tiki_p_admin', 'Administrator, can manage users groups and permissions, Hotwords and all the weblog features', 'admin', 'tiki', 'y', NULL),
('tiki_p_admin_users', 'Can admin users', 'admin', 'tiki', NULL, NULL),
('tiki_p_access_closed_site', 'Can access site when closed', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_banners', 'Administrator, can admin banners', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_banning', 'Can ban users or ips', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_dynamic', 'Can admin the dynamic content system', 'editors', 'tiki', NULL, NULL),
('tiki_p_admin_integrator', 'Can admin integrator repositories and rules', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_mailin', 'Can admin mail-in accounts', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_objects', 'Can edit object permissions', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_rssmodules', 'Can admin external feeds', 'admin', 'tiki', NULL, NULL),
('tiki_p_clean_cache', 'Can clean cache', 'editors', 'tiki', NULL, NULL),
('tiki_p_create_css', 'Can create new css suffixed with -user', 'registered', 'tiki', NULL, NULL),
('tiki_p_detach_translation', 'Can remove association between two pages in a translation set', 'registered', 'tiki', NULL, NULL),
('tiki_p_edit_cookies', 'Can admin cookies', 'editors', 'tiki', NULL, NULL),
('tiki_p_edit_languages', 'Can edit translations and create new languages', 'editors', 'tiki', NULL, NULL),
('tiki_p_edit_menu', 'Can edit menu', 'admin', 'tiki', NULL, NULL),
('tiki_p_edit_menu_option', 'Can edit menu option', 'admin', 'tiki', NULL, NULL),
('tiki_p_edit_templates', 'Can edit site templates', 'admin', 'tiki', NULL, NULL),
('tiki_p_search', 'Can search', 'basic', 'tiki', NULL, NULL),
('tiki_p_site_report', 'Can report a link to the webmaster', 'basic', 'tiki', NULL, NULL),
('tiki_p_subscribe_groups', 'Can subscribe to groups', 'registered', 'tiki', NULL, NULL),
('tiki_p_tell_a_friend', 'Can send a link to a friend', 'Basic', 'tiki', NULL, NULL),
('tiki_p_use_HTML', 'Can use HTML in pages', 'editors', 'tiki', NULL, NULL),
('tiki_p_view_actionlog', 'Can view action log', 'registered', 'tiki', NULL, NULL),
('tiki_p_view_actionlog_owngroups', 'Can view action log for users of his own groups', 'registered', 'tiki', NULL, NULL),
('tiki_p_view_integrator', 'Can view integrated repositories', 'basic', 'tiki', NULL, NULL),
('tiki_p_view_referer_stats', 'Can view referer stats', 'editors', 'tiki', NULL, NULL),
('tiki_p_view_stats', 'Can view site stats', 'basic', 'tiki', NULL, NULL),
('tiki_p_view_templates', 'Can view site templates', 'admin', 'tiki', NULL, NULL),
('tiki_p_blog_admin', 'Can admin blogs', 'editors', 'blogs', 'y', 'feature_blogs'),
('tiki_p_assign_perm_blog', 'Can assign perms to blog', 'admin', 'blogs', NULL, 'feature_blogs'),
('tiki_p_blog_post', 'Can post to a blog', 'registered', 'blogs', NULL, 'feature_blogs'),
('tiki_p_create_blogs', 'Can create a blog', 'editors', 'blogs', NULL, 'feature_blogs'),
('tiki_p_read_blog', 'Can read blogs', 'basic', 'blogs', NULL, 'feature_blogs'),
('tiki_p_admin_file_galleries', 'Can admin file galleries', 'editors', 'file galleries', 'y', 'feature_file_galleries'),
('tiki_p_assign_perm_file_gallery', 'Can assign perms to file gallery', 'admin', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_batch_upload_file_dir', 'Can use Directory Batch Load', 'editors', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_batch_upload_files', 'Can upload zip files with files', 'editors', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_create_file_galleries', 'Can create file galleries', 'editors', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_download_files', 'Can download files', 'basic', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_edit_gallery_file', 'Can edit a gallery file', 'editors', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_list_file_galleries', 'Can list file galleries', 'basic', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_upload_files', 'Can upload files', 'registered', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_view_fgal_explorer', 'Can view file galleries explorer', 'basic', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_view_fgal_path', 'Can view file galleries path', 'basic', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_view_file_gallery', 'Can view file galleries', 'basic', 'file galleries', NULL, 'feature_file_galleries'),
('tiki_p_admin_forum', 'Can admin forums', 'editors', 'forums', 'y', 'feature_forums'),
('tiki_p_forum_attach', 'Can attach to forum posts', 'registered', 'forums', NULL, 'feature_forums'),
('tiki_p_forum_autoapp', 'Auto approve forum posts', 'editors', 'forums', NULL, 'feature_forums'),
('tiki_p_forum_edit_own_posts', 'Can edit own forum posts', 'registered', 'forums', NULL, 'feature_forums'),
('tiki_p_forum_post', 'Can post in forums', 'registered', 'forums', NULL, 'feature_forums'),
('tiki_p_forum_post_topic', 'Can start threads in forums', 'registered', 'forums', NULL, 'feature_forums'),
('tiki_p_forum_read', 'Can read forums', 'basic', 'forums', NULL, 'feature_forums'),
('tiki_p_forums_report', 'Can report msgs to moderator', 'registered', 'forums', NULL, 'feature_forums'),
('tiki_p_forum_vote', 'Can vote comments in forums', 'registered', 'forums', NULL, 'feature_forums'),
('tiki_p_admin_freetags', 'Can admin freetags', 'admin', 'freetags', 'y', 'feature_freetags'),
('tiki_p_admin_galleries', 'Can admin Image Galleries', 'editors', 'image galleries', 'y', 'feature_galleries'),
('tiki_p_assign_perm_image_gallery', 'Can assign perms to image gallery', 'admin', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_batch_upload_image_dir', 'Can use Directory Batch Load', 'editors', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_batch_upload_images', 'Can upload zip files with images', 'editors', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_create_galleries', 'Can create image galleries', 'editors', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_freetags_tag', 'Can tag objects', 'registered', 'freetags', NULL, 'feature_freetags'),
('tiki_p_list_image_galleries', 'Can list image galleries', 'basic', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_unassign_freetags', 'Can unassign tags from an object', 'basic', 'freetags', NULL, 'feature_freetags'),
('tiki_p_upload_images', 'Can upload images', 'registered', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_view_freetags', 'Can browse freetags', 'basic', 'freetags', NULL, 'feature_freetags'),
('tiki_p_view_image_gallery', 'Can view image galleries', 'basic', 'image galleries', NULL, 'feature_galleries'),
('tiki_p_admin_newsletters', 'Can admin newsletters', 'admin', 'newsletters', 'y', 'feature_newsletters'),
('tiki_p_batch_subscribe_email', 'Can subscribe many e-mails at once (requires tiki_p_subscribe email)', 'editors', 'newsletters', NULL, 'feature_newsletters'),
('tiki_p_send_newsletters', 'Can send newsletters', 'editors', 'newsletters', NULL, 'feature_newsletters'),
('tiki_p_subscribe_email', 'Can subscribe any email to newsletters', 'editors', 'newsletters', NULL, 'feature_newsletters'),
('tiki_p_subscribe_newsletters', 'Can subscribe to newsletters', 'basic', 'newsletters', NULL, 'feature_newsletters'),
('tiki_p_list_newsletters', 'Can list newsletters', 'basic', 'newsletters', NULL, 'feature_newsletters'),
('tiki_p_admin_polls', 'Can admin polls', 'admin', 'polls', 'y', 'feature_polls'),
('tiki_p_view_poll_results', 'Can view poll results', 'basic', 'polls', NULL, 'feature_polls'),
('tiki_p_vote_poll', 'Can vote polls', 'basic', 'polls', NULL, 'feature_polls'),
('tiki_p_view_poll_voters', 'Can view poll voters', 'basic', 'polls', NULL, 'feature_polls'),
('tiki_p_admin_toolbars', 'Can admin toolbars', 'admin', 'tiki', 'y', NULL),
('tiki_p_admin_quizzes', 'Can admin quizzes', 'editors', 'quizzes', 'y', 'feature_quizzes'),
('tiki_p_take_quiz', 'Can take quizzes', 'basic', 'quizzes', NULL, 'feature_quizzes'),
('tiki_p_view_quiz_stats', 'Can view quiz stats', 'basic', 'quizzes', NULL, 'feature_quizzes'),
('tiki_p_view_user_results', 'Can view user quiz results', 'editors', 'quizzes', NULL, 'feature_quizzes'),
('tiki_p_admin_sheet', 'Can admin sheet', 'admin', 'sheet', 'y', 'feature_sheet'),
('tiki_p_edit_sheet', 'Can create and edit sheets', 'editors', 'sheet', NULL, 'feature_sheet'),
('tiki_p_view_sheet', 'Can view sheet', 'basic', 'sheet', NULL, 'feature_sheet'),
('tiki_p_view_sheet_history', 'Can view sheet history', 'admin', 'sheet', NULL, 'feature_sheet'),
('tiki_p_admin_shoutbox', 'Can admin shoutbox (Edit/remove msgs)', 'editors', 'shoutbox', 'y', 'feature_shoutbox'),
('tiki_p_post_shoutbox', 'Can post messages in shoutbox', 'basic', 'shoutbox', NULL, 'feature_shoutbox'),
('tiki_p_view_shoutbox', 'Can view shoutbox', 'basic', 'shoutbox', NULL, 'feature_shoutbox'),
('tiki_p_admin_surveys', 'Can admin surveys', 'editors', 'surveys', 'y', 'feature_surveys'),
('tiki_p_take_survey', 'Can take surveys', 'basic', 'surveys', NULL, 'feature_surveys'),
('tiki_p_view_survey_stats', 'Can view survey stats', 'basic', 'surveys', NULL, 'feature_surveys'),
('tiki_p_admin_trackers', 'Can admin trackers', 'editors', 'trackers', 'y', 'feature_trackers'),
('tiki_p_attach_trackers', 'Can attach files to tracker items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_comment_tracker_items', 'Can insert comments for tracker items', 'basic', 'trackers', NULL, 'feature_trackers'),
('tiki_p_tracker_view_comments', 'Can view tracker items comments', 'basic', 'trackers', NULL, 'feature_trackers'),
('tiki_p_create_tracker_items', 'Can create new items for trackers', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_list_trackers', 'Can list trackers', 'basic', 'trackers', NULL, 'feature_trackers'),
('tiki_p_modify_tracker_items', 'Can change tracker items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_modify_tracker_items_pending', 'Can change tracker pending items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_modify_tracker_items_closed', 'Can change tracker closed items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_tracker_view_ratings', 'Can view rating result for tracker items', 'basic', 'trackers', NULL, 'feature_trackers'),
('tiki_p_tracker_vote_ratings', 'Can vote a rating for tracker items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_view_trackers', 'Can view trackers', 'basic', 'trackers', NULL, 'feature_trackers'),
('tiki_p_view_trackers_closed', 'Can view trackers closed items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_view_trackers_pending', 'Can view trackers pending items', 'editors', 'trackers', NULL, 'feature_trackers'),
('tiki_p_watch_trackers', 'Can watch tracker', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_export_tracker', 'Can export tracker items', 'registered', 'trackers', NULL, 'feature_trackers'),
('tiki_p_admin_wiki', 'Can admin the wiki', 'editors', 'wiki', 'y', 'feature_wiki'),
('tiki_p_assign_perm_wiki_page', 'Can assign perms to wiki pages', 'admin', 'wiki', NULL, 'feature_wiki'),
('tiki_p_edit', 'Can edit pages', 'registered', 'wiki', NULL, 'feature_wiki'),
('tiki_p_edit_copyrights', 'Can edit copyright notices', 'editors', 'wiki', NULL, 'wiki_feature_copyrights'),
('tiki_p_edit_dynvar', 'Can edit dynamic variables', 'editors', 'wiki', NULL, 'feature_wiki'),
('tiki_p_edit_structures', 'Can create and edit structures', 'editors', 'wiki', NULL, 'feature_wiki_structure'),
('tiki_p_export_wiki', 'Can export wiki pages using the export feature', 'admin', 'wiki', NULL, 'feature_wiki_export'),
('tiki_p_lock', 'Can lock pages', 'editors', 'wiki', NULL, 'feature_wiki'),
('tiki_p_minor', 'Can save as minor edit', 'registered', 'wiki', NULL, 'feature_wiki'),
('tiki_p_remove', 'Can remove', 'editors', 'wiki', NULL, 'feature_wiki'),
('tiki_p_rename', 'Can rename pages', 'editors', 'wiki', NULL, 'feature_wiki'),
('tiki_p_rollback', 'Can rollback pages', 'editors', 'wiki', NULL, 'feature_wiki'),
('tiki_p_upload_picture', 'Can upload pictures to wiki pages', 'registered', 'wiki', NULL, 'feature_wiki_pictures'),
('tiki_p_use_as_template', 'Can use the page as a tracker template', 'basic', 'wiki', NULL, 'feature_wiki'),
('tiki_p_view', 'Can view page/pages', 'basic', 'wiki', NULL, 'feature_wiki'),
('tiki_p_watch_structure', 'Can watch structure', 'registered', 'wiki', NULL, 'feature_wiki_structure'),
('tiki_p_wiki_admin_attachments', 'Can admin attachments to wiki pages', 'editors', 'wiki', NULL, 'feature_wiki_attachments'),
('tiki_p_wiki_admin_ratings', 'Can add and change ratings on wiki pages', 'admin', 'wiki', NULL, 'feature_wiki_ratings'),
('tiki_p_wiki_attach_files', 'Can attach files to wiki pages', 'registered', 'wiki', NULL, 'feature_wiki_attachments'),
('tiki_p_wiki_view_attachments', 'Can view wiki attachments and download', 'registered', 'wiki', NULL, 'feature_wiki_attachments'),
('tiki_p_wiki_view_comments', 'Can view wiki comments', 'basic', 'wiki', NULL, 'feature_wiki_comments'),
('tiki_p_wiki_view_history', 'Can view wiki history', 'basic', 'wiki', NULL, 'feature_history'),
('tiki_p_wiki_view_ratings', 'Can view rating of wiki pages', 'basic', 'wiki', NULL, 'feature_wiki_ratings'),
('tiki_p_wiki_view_source', 'Can view source of wiki pages', 'basic', 'wiki', NULL, 'feature_source'),
('tiki_p_wiki_vote_ratings', 'Can participate to rating of wiki pages', 'registered', 'wiki', NULL, 'feature_wiki_ratings'),
('tiki_p_wiki_view_similar', 'Can view similar wiki pages', 'registered', 'wiki', NULL, 'feature_wiki'),
('tiki_p_admin_received_articles', 'Can admin received articles', 'editors', 'comm', NULL, 'feature_comm'),
('tiki_p_admin_received_pages', 'Can admin received pages', 'editors', 'comm', NULL, 'feature_comm'),
('tiki_p_send_articles', 'Can send articles to other sites', 'editors', 'comm', NULL, 'feature_comm'),
('tiki_p_sendme_articles', 'Can send articles to this site', 'registered', 'comm', NULL, 'feature_comm'),
('tiki_p_sendme_pages', 'Can send pages to this site', 'registered', 'comm', NULL, 'feature_comm'),
('tiki_p_send_pages', 'Can send pages to other sites', 'registered', 'comm', NULL, 'feature_comm'),
('tiki_p_admin_tikitests', 'Can admin the TikiTests', 'admin', 'tikitests', NULL, 'feature_tikitests'),
('tiki_p_edit_tikitests', 'Can edit TikiTests', 'editors', 'tikitests', NULL, 'feature_tikitests'),
('tiki_p_play_tikitests', 'Can replay the TikiTests', 'registered', 'tikitests', NULL, 'feature_tikitests'),
('tiki_p_cache_bookmarks', 'Can cache user bookmarks', 'admin', 'user', NULL, 'feature_user_bookmarks'),
('tiki_p_configure_modules', 'Can configure modules', 'registered', 'user', NULL, 'feature_modulecontrols'),
('tiki_p_create_bookmarks', 'Can create user bookmarks', 'registered', 'user', NULL, 'feature_user_bookmarks'),
('tiki_p_minical', 'Can use the mini event calendar', 'registered', 'user', NULL, 'feature_minical'),
('tiki_p_notepad', 'Can use the notepad', 'registered', 'user', NULL, 'feature_notepad'),
('tiki_p_tasks_admin', 'Can admin public tasks', 'admin', 'user', NULL, 'feature_tasks'),
('tiki_p_tasks', 'Can use tasks', 'registered', 'user', NULL, 'feature_tasks'),
('tiki_p_tasks_receive', 'Can receive tasks from other users', 'registered', 'user', NULL, 'feature_tasks'),
('tiki_p_tasks_send', 'Can send tasks to other users', 'registered', 'user', NULL, 'feature_tasks'),
('tiki_p_userfiles', 'Can upload personal files', 'registered', 'user', NULL, 'feature_userfiles'),
('tiki_p_usermenu', 'Can create items in personal menu', 'registered', 'user', NULL, 'feature_usermenu'),
('tiki_p_broadcast_all', 'Can broadcast messages to all user', 'admin', 'messu', NULL, 'feature_messages'),
('tiki_p_broadcast', 'Can broadcast messages to groups', 'admin', 'messu', NULL, 'feature_messages'),
('tiki_p_messages', 'Can use the messaging system', 'registered', 'messu', NULL, 'feature_messages'),
('tiki_p_admin_comments', 'Can admin comments', 'admin', 'comments', 'y', 'feature_wiki_comments,feature_blog_comments,feature_blogposts_comments,feature_file_galleries_comments,feature_image_galleries_comments,feature_article_comments,feature_faq_comments,feature_poll_comments,map_comments'),
('tiki_p_edit_comments', 'Can edit all comments', 'editors', 'comments', NULL, 'feature_wiki_comments,feature_blog_comments,feature_blogposts_comments,feature_file_galleries_comments,feature_image_galleries_comments,feature_article_comments,feature_faq_comments,feature_poll_comments,map_comments'),
('tiki_p_post_comments', 'Can post new comments', 'registered', 'comments', NULL, 'feature_wiki_comments,feature_blog_comments,feature_blogposts_comments,feature_file_galleries_comments,feature_image_galleries_comments,feature_article_comments,feature_faq_comments,feature_poll_comments,map_comments'),
('tiki_p_read_comments', 'Can read comments', 'basic', 'comments', NULL, 'feature_wiki_comments,feature_blog_comments,feature_blogposts_comments,feature_file_galleries_comments,feature_image_galleries_comments,feature_article_comments,feature_faq_comments,feature_poll_comments,map_comments'),
('tiki_p_remove_comments', 'Can delete comments', 'editors', 'comments', NULL, 'feature_wiki_comments,feature_blog_comments,feature_blogposts_comments,feature_file_galleries_comments,feature_image_galleries_comments,feature_article_comments,feature_faq_comments,feature_poll_comments,map_comments'),
('tiki_p_vote_comments', 'Can vote comments', 'registered', 'comments', NULL, 'feature_wiki_comments,feature_blog_comments,feature_blogposts_comments,feature_file_galleries_comments,feature_image_galleries_comments,feature_article_comments,feature_faq_comments,feature_poll_comments,map_comments'),
('tiki_p_admin_content_templates', 'Can admin content templates', 'admin', 'content templates', 'y', 'feature_wiki_templates,feature_cms_templates'),
('tiki_p_edit_content_templates', 'Can edit content templates', 'editors', 'content templates', NULL, 'feature_wiki_templates,feature_cms_templates'),
('tiki_p_use_content_templates', 'Can use content templates', 'registered', 'content templates', NULL, 'feature_wiki_templates,feature_cms_templates'),
('tiki_p_edit_html_pages', 'Can edit HTML pages', 'editors', 'html pages', NULL, 'feature_html_pages'),
('tiki_p_view_html_pages', 'Can view HTML pages', 'basic', 'html pages', NULL, 'feature_html_pages'),
('tiki_p_list_users', 'Can list registered users', 'registered', 'user', NULL, 'feature_friends'),
('tiki_p_live_support_admin', 'Admin live support system', 'admin', 'support', 'y', 'feature_live_support'),
('tiki_p_live_support', 'Can use live support system', 'basic', 'support', NULL, 'feature_live_support'),
('tiki_p_map_create', 'Can create new mapfile', 'admin', 'maps', NULL, 'feature_maps'),
('tiki_p_map_delete', 'Can delete mapfiles', 'admin', 'maps', NULL, 'feature_maps'),
('tiki_p_map_edit', 'Can edit mapfiles', 'editors', 'maps', NULL, 'feature_maps'),
('tiki_p_map_view', 'Can view mapfiles', 'basic', 'maps', NULL, 'feature_maps'),
('tiki_p_map_view_mapfiles', 'Can view contents of mapfiles', 'registered', 'maps', NULL, 'feature_maps'),
('tiki_p_use_webmail', 'Can use webmail', 'registered', 'webmail', NULL, 'feature_webmail,feature_contacts'),
('tiki_p_use_group_webmail', 'Can use group webmail', 'registered', 'webmail', NULL, 'feature_webmail,feature_contacts'),
('tiki_p_admin_group_webmail', 'Can administrate group webmail accounts', 'registered', 'webmail', NULL, 'feature_webmail,feature_contacts'),
('tiki_p_use_personal_webmail', 'Can use personal webmail accounts', 'registered', 'webmail', NULL, 'feature_webmail,feature_contacts'),
('tiki_p_admin_personal_webmail', 'Can administrate personal webmail accounts', 'registered', 'webmail', NULL, 'feature_webmail,feature_contacts'),
('tiki_p_plugin_viewdetail', 'Can view unapproved plugin details', 'registered', 'wiki', NULL, 'feature_wiki'),
('tiki_p_plugin_preview', 'Can execute unapproved plugin', 'registered', 'wiki', NULL, 'feature_wiki'),
('tiki_p_plugin_approve', 'Can approve plugin execution', 'editors', 'wiki', NULL, 'feature_wiki'),
('tiki_p_trust_input', 'Trust all user inputs (no security checks)', 'admin', 'tiki', NULL, NULL),
('tiki_p_view_backlink', 'View page backlinks', 'basic', 'wiki', NULL, 'feature_wiki'),
('tiki_p_admin_notifications', 'Can admin mail notifications', 'editors', 'tiki', NULL, NULL),
('tiki_p_invite', 'Can invite user in groups', 'editors', 'tiki', NULL, NULL),
('tiki_p_delete_account', 'Can delete his own account', 'admin', 'tiki', NULL, NULL),
('tiki_p_admin_importer', 'Can use the Tiki Importer', 'admin', 'tiki', 'y', NULL),
('tiki_p_admin_categories', 'Can admin categories', 'editors', 'category', 'y', 'feature_categories'),
('tiki_p_view_category', 'Can see the category in a listing', 'basic', 'category', NULL, 'feature_categories'),
('tiki_p_modify_object_categories', 'Can change the categories on the object', 'editors', 'tiki', NULL, NULL),
('tiki_p_add_object', 'Can add objects in the category', 'editors', 'category', NULL, 'feature_categories'),
('tiki_p_remove_object', 'Can remove objects from the category', 'editors', 'category', NULL, 'feature_categories'),
('tiki_p_create_category', 'Can create new categories', 'admin', 'category', NULL, 'feature_categories'),
('tiki_p_perspective_view', 'Can view the perspective', 'basic', 'perspective', NULL, 'feature_perspective'),
('tiki_p_group_view', 'Can view the group', 'basic', 'group', NULL, NULL),
('tiki_p_group_view_members', 'Can view the group members', 'basic', 'group', NULL, NULL),
('tiki_p_group_add_member', 'Can add group members', 'admin', 'group', NULL, NULL),
('tiki_p_group_remove_member', 'Can remove group members', 'admin', 'group', NULL, NULL),
('tiki_p_group_join', 'Can join or leave the group', 'admin', 'group', NULL, NULL),
('tiki_p_trigger_transition', 'Can trigger the transition between two states', 'admin', 'transition', NULL, 'feature_group_transition,feature_category_transition'),
('tiki_p_admin_kaltura', 'Can admin kaltura feature', 'admin', 'kaltura', 'y', 'feature_kaltura'),
('tiki_p_upload_videos', 'Can upload video on kaltura server', 'editors', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_edit_videos', 'Can edit information of kaltura entry', 'editors', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_remix_videos', 'Can create kaltura remix video', 'editors', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_delete_videos', 'Can delete kaltura entry', 'editors', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_download_videos', 'Can download kaltura entry', 'registered', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_list_videos', 'Can list kaltura entries', 'basic', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_view_videos', 'Can view kaltura entry', 'basic', 'kaltura', NULL, 'feature_kaltura'),
('tiki_p_upload_screencast', 'Can upload screencasts to wiki pages', 'basic', 'registered', NULL, 'feature_wiki_screencasts');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_usergroups`
-- 

CREATE TABLE `users_usergroups` (
  `userId` int(8) NOT NULL default '0',
  `groupName` varchar(255) NOT NULL default '',
  `created` int(14) default NULL,
  PRIMARY KEY  (`userId`,`groupName`(30))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `users_usergroups`
-- 

INSERT INTO `users_usergroups` (`userId`, `groupName`, `created`) VALUES 
(1, 'Admins', NULL),
(2, 'Registered', 1268856241),
(2, 'Leitor (SMESP/LP)', 1269013518),
(3, 'Registered', 1268934408),
(3, 'Admins', 1268934434),
(4, 'Registered', 1268946102),
(4, 'Leitores', 1268946123),
(5, 'Registered', 1268947631),
(5, 'Admins', 1268947671),
(8, 'Registered', 1268977677),
(9, 'Registered', 1269011052),
(10, 'Registered', 1269011215),
(10, 'Autor (SMESP/LP)', 1269011227),
(11, 'Registered', 1269011372),
(11, 'Editor (SMESP)', 1269011384),
(12, 'Registered', 1269023537),
(12, 'Autor (SMESP/LP)', 1269023547),
(13, 'Registered', 1269023584),
(13, 'Autor (SMESP/LP)', 1269023591),
(14, 'Registered', 1269023627),
(14, 'Autor (SMESP/LP)', 1269023633),
(15, 'Registered', 1269023661),
(15, 'Autor (SMESP/LP)', 1269023670),
(16, 'Registered', 1269023698),
(16, 'Autor (SMESP/LP)', 1269023705),
(17, 'Registered', 1269023741),
(17, 'Autor (SMESP/LP)', 1269023747),
(18, 'Registered', 1269023773),
(18, 'Autor (SMESP/LP)', 1269023780),
(8, 'Autor (SMESP/LP)', 1269094755);

-- --------------------------------------------------------

-- 
-- Table structure for table `users_users`
-- 

CREATE TABLE `users_users` (
  `userId` int(8) NOT NULL auto_increment,
  `email` varchar(200) default NULL,
  `login` varchar(200) NOT NULL default '',
  `password` varchar(30) default '',
  `provpass` varchar(30) default NULL,
  `default_group` varchar(255) default NULL,
  `lastLogin` int(14) default NULL,
  `currentLogin` int(14) default NULL,
  `registrationDate` int(14) default NULL,
  `challenge` varchar(32) default NULL,
  `pass_confirm` int(14) default NULL,
  `email_confirm` int(14) default NULL,
  `hash` varchar(34) default NULL,
  `created` int(14) default NULL,
  `avatarName` varchar(80) default NULL,
  `avatarSize` int(14) default NULL,
  `avatarFileType` varchar(250) default NULL,
  `avatarData` longblob,
  `avatarLibName` varchar(200) default NULL,
  `avatarType` char(1) default NULL,
  `score` int(11) NOT NULL default '0',
  `valid` varchar(32) default NULL,
  `unsuccessful_logins` int(14) default '0',
  `openid_url` varchar(255) default NULL,
  `waiting` char(1) default NULL,
  PRIMARY KEY  (`userId`),
  KEY `score` (`score`),
  KEY `login` (`login`),
  KEY `registrationDate` (`registrationDate`),
  KEY `openid_url` (`openid_url`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- 
-- Dumping data for table `users_users`
-- 

INSERT INTO `users_users` (`userId`, `email`, `login`, `password`, `provpass`, `default_group`, `lastLogin`, `currentLogin`, `registrationDate`, `challenge`, `pass_confirm`, `email_confirm`, `hash`, `created`, `avatarName`, `avatarSize`, `avatarFileType`, `avatarData`, `avatarLibName`, `avatarType`, `score`, `valid`, `unsuccessful_logins`, `openid_url`, `waiting`) VALUES 
(1, 'admin', 'admin', '', '', NULL, 1269094642, 1269122675, NULL, NULL, 1268932769, NULL, '$1$sbH6i4Id$tYphube5bdG/bhU/2S1ub1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(2, 'rodrigo@utopia.org.br', 'rodrigo@utopia.org.br', '', 'P3NOH', NULL, 1269013553, 1269122583, 1268856241, NULL, 1268973035, 1268856241, '$1$a.j3ZZgA$QhMMXbJr3Jr7OyqKTgYPY/', 1268856241, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(3, 'carlosseabra@tvcultura.com.br', 'carlosseabra@tvcultura.com.br', '', '', NULL, 1269010073, 1269127795, 1268934408, NULL, 1268934408, 1268934408, '$1$e6G1WaKp$BLO9k4R4tN7rS2CoObdsv1', 1268934408, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(4, 'carlos@seabra.com', 'carlos@seabra.com', '', '', NULL, 1269008642, 1269008656, 1268946102, NULL, 1269008656, 1268946102, '$1$HM4VhE5P$f0lYltT1FtUOGQ4.SzfOL1', 1268946102, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(5, 'janainacardoso@tvcultura.com.br', 'janainacardoso@tvcultura.com.br', '', '', NULL, 1269012171, 1269023443, 1268947631, NULL, 1269012171, 1268947631, '$1$To8iXzTJ$6eF.bmfAaZkRi14D7cvcM/', 1268947631, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(8, 'rodrigosprimo@gmail.com', 'rodrigosprimo@gmail.com', '', '', NULL, 1269094768, 1269122647, 1268977677, NULL, 1269094714, 1268977677, '$1$TtMIorxN$1re1rsEENwpQtDvtLn1cv0', 1268977677, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(9, 'marciasavioli@tvcultura.com.br', 'marciasavioli@tvcultura.com.br', '', '12345', NULL, NULL, NULL, 1269011052, NULL, 0, 1269011052, '$1$Mw2aZzYN$wLmns0cGmQCI4Msj2UuzY.', 1269011052, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(10, 'jchervezan@gmail.com', 'jchervezan@gmail.com', '', '', NULL, 1269012482, 1269012727, 1269011215, NULL, 1269011943, 1269011215, '$1$zGQYR5Mn$aLApKPagTHttdMC.Mteay0', 1269011215, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(11, 'janachervezan@yahoo.com.br', 'janachervezan@yahoo.com.br', '', '', NULL, 1269012876, 1269012876, 1269011372, NULL, 1269011372, 1269011372, '$1$bh5XDxHY$eTsBVCdLGagun.s.5W0kC0', 1269011372, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(12, 'g.fantin@uol.com.br', 'g.fantin@uol.com.br', '', '12345', NULL, NULL, NULL, 1269023537, NULL, 0, 1269023537, '$1$Jhg7dAfA$nfDmzIp5/uW/bER4BrtOW1', 1269023537, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(13, 'inesnocite@uol.com.br', 'inesnocite@uol.com.br', '', '12345', NULL, NULL, NULL, 1269023584, NULL, 0, 1269023584, '$1$f/ZNz2rj$lrYqT3kSaGwlVbSMr60RR1', 1269023584, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(14, 'viscopac@hotmail.com', 'viscopac@hotmail.com', '', '12345', NULL, NULL, NULL, 1269023627, NULL, 0, 1269023627, '$1$C6IDITkE$Uh2NkGrwpS1pjwChk./J3/', 1269023627, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(15, 'titacaricati@yahoo.com.br', 'titacaricati@yahoo.com.br', '', '12345', NULL, NULL, NULL, 1269023661, NULL, 0, 1269023661, '$1$WcnMyvxG$JJNiIH07ZczqzRS1gCfJw/', 1269023661, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(16, 'americamarinho@terra.com.br', 'americamarinho@terra.com.br', '', '12345', NULL, NULL, NULL, 1269023698, NULL, 0, 1269023698, '$1$D48lsbZv$/d4MDuflZ5fL8uf7BVpY.0', 1269023698, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(17, 'celina_diaf@yahoo.com.br', 'celina_diaf@yahoo.com.br', '', '12345', NULL, NULL, NULL, 1269023741, NULL, 0, 1269023741, '$1$nr07oYza$7gAJDn1vzO.X5CVavymB3/', 1269023741, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL),
(18, 'lena.costa@uol.com.br', 'lena.costa@uol.com.br', '', '12345', NULL, NULL, NULL, 1269023773, NULL, 0, 1269023773, '$1$juxXBAPF$AtTE583deMZGPREQSWfVx.', 1269023773, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL);

