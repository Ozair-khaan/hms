package com.superussystems.hms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.superussystems.hms.entity.Content;
import com.superussystems.hms.repo.ContentRepo;

@Service
public class ContentServiceImpl implements ContentService {

	@Autowired
	private ContentRepo contentRepo;
	
	@Override
	public Content addContent(Content content) {
		return contentRepo.save(content);
	}

	@Override
	public List<Content> getAllDevicesInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	
	
	
}
