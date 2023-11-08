package com.superussystems.hms.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.superussystems.hms.entity.Content;

public interface ContentRepo extends JpaRepository<Content, Integer> {

}
