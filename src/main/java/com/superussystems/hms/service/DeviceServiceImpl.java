package com.superussystems.hms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.superussystems.hms.entity.Device;
import com.superussystems.hms.repo.DeviceRepo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DeviceServiceImpl implements DeviceService{

	@Autowired
	private DeviceRepo deviceRepo;

	@Override
	public Device addDevice(Device device) {
		log.info("In service to save device");
		return deviceRepo.save(device);
	}

	@Override
	public List<Device> getAllDevices() {
		log.info("In service to fetch all devices");
		return deviceRepo.findAll();
	}

	@Override
	public List<Device> getAllDevicesInfo() {
		log.info("In service to retrieve all device on dashboard");
		return deviceRepo.findAll();
	}


}
