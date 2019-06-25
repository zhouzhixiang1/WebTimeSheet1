package com.timesheet.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
	
	//findOne dipendente
	@Transactional(readOnly = true)
	public Dipendente get(Integer idDipendente) {
		return dipendenteRepository.findOne(idDipendente);
	}
	
	
	//modifica dipendente
	@Transactional
	public void put(Dipendente dipendente) {
		dipendenteRepository.saveAndFlush(dipendente);
	}
	
	//controllo login
	public Dipendente dipendenteLogin(Integer idDipendente,String nomeDipendente,String passwordDipendente,String ruolo) {
		Dipendente dipendente = this.get(idDipendente);
		if(dipendente != null && dipendente.getNomeDipendente().equals(nomeDipendente)
				&& dipendente.getPasswordDipendente().equals(passwordDipendente)
				&& dipendente.getRuolo().equals(ruolo)){
			
			return dipendente;
		}
		return null;
	}
	//elimina dipendente
	@Transactional
	public void delete(Integer idDipendente) {
		dipendenteRepository.delete(idDipendente);
	}
	//modifica dipendente
	@Transactional
	public void save(Dipendente dipendente) {
		dipendenteRepository.saveAndFlush(dipendente);
	}
	
	//find all dipendente
	@Transactional
	public List<Dipendente> getAllD(){
		return dipendenteRepository.findAll();
	}
	
	
	//findAll dipendente PAGE
//	@Transactional(readOnly = true)
//	public Page<Dipendente> getPage(int PageNo,int PageSize){
//		PageRequest pageable = new PageRequest(PageNo - 1 , PageSize);
//		return dipendenteRepository.findAll(pageable);
//		
//	}


}
