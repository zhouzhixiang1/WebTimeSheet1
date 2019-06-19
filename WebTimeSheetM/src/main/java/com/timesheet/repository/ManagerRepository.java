package com.timesheet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.timesheet.entity.Manager;
@Repository
public interface ManagerRepository extends JpaRepository<Manager, Integer>{
	
//	@Query("SELECT m FROM web_manager m WHERE m.id_manager = ?1, m.manager_name = ?2 AND m.manager_password")
//	Manager login(Integer idManager,String managerName,String managerPassword);
//	@Query("SELECT m FROM WEB_MANAGER m")
//	List<Manager> getAll();
//	

}
