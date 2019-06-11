package com.timesheet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.timesheet.entity.Dipendente;

@Repository
public interface DipendenteRepository extends JpaRepository<Dipendente, Integer>{

}
