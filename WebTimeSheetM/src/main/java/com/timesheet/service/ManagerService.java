package com.timesheet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.timesheet.entity.Manager;
import com.timesheet.repository.ManagerRepository;

@Service
public class ManagerService {
	
	@Autowired
	private ManagerRepository managerRepository;

	//find manager
	public Manager findManager(Integer idManager) {
		return managerRepository.findOne(idManager);

	}
	//controllo login
	public Manager loginManager(Integer idManager, String managerName, String managerPassword) {
		Manager manager = this.findManager(idManager);
		if (manager != null && manager.getManagerName().equals(managerName)
				&& manager.getManagerPassword().equals(managerPassword)) {
			return manager;
		}
		return null;
	}
}
