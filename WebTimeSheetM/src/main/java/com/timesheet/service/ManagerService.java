package com.timesheet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
//	//find all manager
//	@Transactional(readOnly = true)
//	public List<Manager>getAll(){
//		return managerRepository.findAll();
//	}
}
