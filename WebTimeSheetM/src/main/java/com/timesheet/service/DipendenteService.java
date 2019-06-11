package com.timesheet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timesheet.entity.Dipendente;
import com.timesheet.repository.DipendenteRepository;

@Service
public class DipendenteService {
	
	@Autowired
	private DipendenteRepository dipendenteRepository;
	
//	@Transactional
//	public List<Dipendente> findAll(){
//		return dipendenteRepository.findAll();
//	}
	
	@Transactional(readOnly = true)
	public Dipendente get(Integer idDipendente) {
		return dipendenteRepository.findOne(idDipendente);
		
	}
	@Transactional
	public void put(Dipendente dipendente) {
		dipendenteRepository.saveAndFlush(dipendente);
	}
	
	@Transactional(readOnly = true)
	public Page<Dipendente> getPage(int PageNo,int PageSize){
		PageRequest pageable = new PageRequest(PageNo - 1 , PageSize);
		return dipendenteRepository.findAll(pageable);
		
	}


}
