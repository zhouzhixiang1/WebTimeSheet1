package com.timesheet.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.timesheet.entity.DipendenteTicket;

@Repository
public interface DipendenteTicketRepository extends JpaRepository<DipendenteTicket, Integer>,JpaSpecificationExecutor<DipendenteTicket>{
	
//	@Query(value = "select * from dipendente_ticket where id_dipendente=?1", nativeQuery = true)
//    List<DipendenteTicket> getTicketByIdDipendente(Integer idDipendente);

}
