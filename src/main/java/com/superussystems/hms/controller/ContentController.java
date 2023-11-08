package com.superussystems.hms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.superussystems.hms.entity.Content;
import com.superussystems.hms.service.ContentService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/content")
@Slf4j
public class ContentController {

	@Autowired
	private ContentService contentService;

	@PostMapping("/addContent")
	public Content saveContent(@RequestBody Content content) {
		log.info("Saving content into the database");
		return contentService.addContent(content);
	}

}
