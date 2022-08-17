CREATE TABLE `images_page` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `title` varchar(255) NOT NULL DEFAULT '' COMMENT '图片标题',
    `first_img` varchar(255) NOT NULL DEFAULT '' COMMENT '预览图片',
    `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 0-已失效 1-已发布',
    `expire_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '过期时间',
    `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
    `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新时间'
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图片页面预览页';


CREATE TABLE `images_image`  (
    `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
    `page_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '图片id',
    `image_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
    `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态 0-已失效 1-已发布',
    `expire_time` bigint(20) NOT NULL DEFAULT '0' COMMENT '过期时间',
    `gmt_create` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建时间',
    `gmt_modified` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新时间'
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='图片';
