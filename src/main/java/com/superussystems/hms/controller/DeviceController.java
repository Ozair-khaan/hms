package com.superussystems.hms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.superussystems.hms.entity.Device;
import com.superussystems.hms.service.DeviceService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/device")
@Slf4j
public class DeviceController {

	@Autowired
	private DeviceService deviceService;

	@PostMapping("/addDevice")
	public Device saveDevice(@RequestBody Device device) {
		log.info("In adding devices into the database");
		return deviceService.addDevice(device);
	}

	// get all device
	@GetMapping("/getAllDevice")
	public List<Device> fetchDevices() {
		log.info("In fetching all devices from backend");
		return deviceService.getAllDevices();
	}

	@GetMapping("/dash")
	public String dashboard(Model model) {
		List<Device> devices = deviceService.getAllDevicesInfo();
		model.addAttribute("devices", devices);
		log.info("Retrieving data from db to dashboard and data in model in model is : "+model);
		return "Dashboard";
	}

}
