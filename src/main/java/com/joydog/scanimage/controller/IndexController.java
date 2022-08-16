/*
 * tuya.com Inc.
 * Copyright (c) 2018-2022 All Rights Reserved.
 */
package com.joydog.scanimage.controller;

import com.google.common.collect.Lists;
import com.joydog.scanimage.controller.vo.ImageVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author marvinyu
 * @version : IndexController.java
 * @date 2022-08-16 2:05 PM
 */
@Slf4j
@Controller
@RequestMapping("/image")
public class IndexController {
    /**
     * 图片列表
     */
    @RequestMapping("/list")
    public String imageList(ModelMap map) {
        List<ImageVO> imageVOList = Lists.newArrayList();
        ImageVO imageVO_01 = new ImageVO();
        imageVO_01.setType("1");
        imageVO_01.setPath("https://image.kirindog.cn/blogNote/2020-02-24-122547.png");
        imageVO_01.setOrder(1);

        imageVOList.add(imageVO_01);
        map.addAttribute("imageVOList", imageVOList);
        // return 模板文件的名称-->对应src/main/resources/templates/index.html
        return "index";
    }
}