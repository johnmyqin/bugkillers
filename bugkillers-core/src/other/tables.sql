#用户表
CREATE TABLE `bk_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` VARCHAR(50) NOT NULL COMMENT '用户名',
  `nick_name` VARCHAR(50) NOT NULL COMMENT '昵称',
  `password` VARCHAR(50) NOT NULL COMMENT '密码',
  `email` VARCHAR(50) NOT NULL COMMENT '邮箱',
  `head_pic` VARCHAR(50) NOT NULL COMMENT '头像路径',
  `regist_time` datetime NOT NULL,
  `login_time` datetime NOT NULL,
  `bk_create` datetime NOT NULL,
  `bk_modified` datetime NOT NULL,
  `dr` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '1=正常  2=删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET=utf8 COMMENT='用户表';
#问题表
CREATE TABLE `bk_question` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_id` int(10) NOT NULL COMMENT '标签主键',
  `user_id` int(10) NOT NULL COMMENT '问题所属者主键',
  `question_text` VARCHAR(500) NOT NULL COMMENT '问题正文',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `bk_create` datetime NOT NULL,
  `bk_modified` datetime NOT NULL,
  `dr` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '1=正常  2=删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET=utf8 COMMENT='问题表';
#标签表
CREATE TABLE `bk_tag` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_name` VARCHAR(50) NOT NULL COMMENT '标签名',
  `bk_create` datetime NOT NULL,
  `bk_modified` datetime NOT NULL,
  `dr` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '1=正常  2=删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET=utf8 COMMENT='标签表';
#评论表
CREATE TABLE `bk_comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `question_id` int(10) NOT NULL COMMENT '问题主键',
  `user_id` int(10) NOT NULL COMMENT '问题所属者主键',
  `comment_text` VARCHAR(500) NOT NULL COMMENT '评论正文',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `bk_create` datetime NOT NULL,
  `bk_modified` datetime NOT NULL,
  `dr` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '1=正常  2=删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET=utf8 COMMENT='评论表';