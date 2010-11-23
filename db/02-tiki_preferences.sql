INSERT INTO `tiki_preferences` VALUES ('feature_custom_html_head_content','{literal}\r\n<style type=\"text/css\">\r\nform.findtable { padding-top: 10px; }\r\n.menuSection { padding: 0px; }\r\n</style>\r\n{/literal}')
	ON DUPLICATE KEY UPDATE value = '{literal}\r\n<style type=\"text/css\">\r\nform.findtable { padding-top: 10px; }\r\n.menuSection { padding: 0px; }\r\n</style>\r\n{/literal}';
INSERT INTO `tiki_preferences` VALUES ('feature_fixed_width', 'n')
	ON DUPLICATE KEY UPDATE value = 'n';
