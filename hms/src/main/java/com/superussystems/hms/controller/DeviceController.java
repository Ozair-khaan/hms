package com.superussystems.hms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.superussystems.hms.entity.Device;
import com.superussystems.hms.service.DeviceService;

@RestController
@RequestMapping("/hms")
public class DeviceController {
	
	@Autowired
	private DeviceService deviceService;

	@PostMapping("/addDevice")
	public Device saveDevice(@RequestBody Device device) {
		return deviceService.addDevice(device);
	}
	
	//get all device
	@GetMapping("/getAllDevice")
	public List<Device> fetchDevices(){
		return deviceService.getAllDevices();
	}	
}
