package com.timesheet.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.timesheet.entity.Manager;

public interface ManagerRepository extends JpaRepository<Manager, Integer>{

}
