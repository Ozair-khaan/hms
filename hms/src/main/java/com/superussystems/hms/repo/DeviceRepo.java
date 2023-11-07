package com.superussystems.hms.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.superussystems.hms.entity.Device;

@Repository
public interface DeviceRepo extends JpaRepository<Device, Integer> {

}
