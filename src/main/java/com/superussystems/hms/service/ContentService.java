package com.superussystems.hms.service;

import java.util.List;

import com.superussystems.hms.entity.Content;

public interface ContentService {

	public Content addContent(Content content);

	public List<Content> getAllDevicesInfo();

}
