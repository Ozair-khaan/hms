package com.superussystems.hms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.superussystems.hms.entity.Device;
import com.superussystems.hms.repo.DeviceRepo;

@Service
public class DeviceServiceImpl implements DeviceService{

	@Autowired
	private DeviceRepo deviceRepo;

	@Override
	public Device addDevice(Device device) {
		return deviceRepo.save(device);
	}

	@Override
	public List<Device> getAllDevices() {
		return deviceRepo.findAll();
	}

	@Override
	public List<Device> getAllDevicesInfo() {
		// TODO Auto-generated method stub
		return deviceRepo.findAll();
	}


}
