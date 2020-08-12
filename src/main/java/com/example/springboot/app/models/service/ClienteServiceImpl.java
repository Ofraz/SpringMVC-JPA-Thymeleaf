package com.example.springboot.app.models.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.springboot.app.models.dao.IClienteDaoCrudRepo;
import com.example.springboot.app.models.entity.Cliente;

@Service
public class ClienteServiceImpl implements IClienteService {

	@Autowired
	private IClienteDaoCrudRepo clienteDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Cliente> findAll() {
		//return clienteDao.findAll(); 		CON CRUD CREADO
		return (List<Cliente>) clienteDao.findAll();		//Con CrudRepository
	}

	@Override
	@Transactional
	public void save(Cliente cliente) {
		clienteDao.save(cliente);		
	}

	@Override
	@Transactional(readOnly = true)
	public Cliente findOne(Long id) {
		//return clienteDao.findOne(id); 		CON CRUD CREADO
		return clienteDao.findById(id).orElse(null); 		//Con CrudRepository
	}

	@Override
	@Transactional
	public void delete(Long id) {
		//clienteDao.delete(id); 				CON CRUD CREADO
		clienteDao.deleteById(id); 						//Con CrudRepository
	}

	@Override
	@Transactional(readOnly = true)
	public Page<Cliente> findAll(Pageable pageable) {
		return clienteDao.findAll(pageable);
	}

}
