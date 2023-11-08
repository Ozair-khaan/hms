package com.superussystems.hms.entity;

import java.time.LocalDateTime;

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
@Table(name = "Device_master")
public class Device {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int device_id;
	private String name;
	private String desc;
	private String macAdd;
	private LocalDateTime createdOn;
	private String createdBy;
	private String status;
	private String deviceIp;
	private String RFUI1;
	private String RFUI2;
	private String RFUI3;
	
}
