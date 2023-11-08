package com.superussystems.hms.entity;

import java.security.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Content_master")
public class Content {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int contentId; // take unique
	private int deviceId;
	private Timestamp createdOn;
	private String createdBy;
	private String status;
	private String contentPath;

}
