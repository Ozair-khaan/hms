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

@Controller
@RequestMapping("/hms")
public class DeviceController {

	@Autowired
	private DeviceService deviceService;

	@PostMapping("/addDevice")
	public Device saveDevice(@RequestBody Device device) {
		return deviceService.addDevice(device);
	}

	// get all device
	@GetMapping("/getAllDevice")
	public List<Device> fetchDevices() {
		return deviceService.getAllDevices();
	}

	@GetMapping("/dash")
	public String dashboard(Model model) {
		List<Device> devices = deviceService.getAllDevicesInfo();
		model.addAttribute("devices", devices);
		System.out.println("Data in model : "+model);
		System.out.println("in dashboard value fetching method....");
		return "Dashboard";
	}

}
