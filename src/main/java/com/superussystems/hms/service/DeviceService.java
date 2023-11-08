package com.superussystems.hms.service;

import java.util.List;

import com.superussystems.hms.entity.Device;

public interface DeviceService {
	
	public Device addDevice(Device device);
	
	public List<Device> getAllDevices();
	
	public List<Device> getAllDevicesInfo();
	
}
