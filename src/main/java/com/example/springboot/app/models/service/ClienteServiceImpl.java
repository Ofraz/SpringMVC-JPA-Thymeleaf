package com.example.springboot.app.models.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.springboot.app.models.dao.IClienteDaoCrudRepo;
import com.example.springboot.app.models.dao.IFacturaDao;
import com.example.springboot.app.models.dao.IProductoDao;
import com.example.springboot.app.models.entity.Cliente;
import com.example.springboot.app.models.entity.Factura;
import com.example.springboot.app.models.entity.Producto;

@Service
public class ClienteServiceImpl implements IClienteService {

	@Autowired
	private IClienteDaoCrudRepo clienteDao;
	
	@Autowired
	private IProductoDao productoDao;
	
	@Autowired IFacturaDao facturaDao;
	
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
	public Cliente fetchByIdWithFacturas(Long id) {
		return clienteDao.fetchByIdWithFacturas(id);
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

	@Override
	@Transactional(readOnly = true)
	public List<Producto> findByNombre(String term) {
		return productoDao.findByNombreLikeIgnoreCase("%"+ term + "%");
	}

	@Override
	@Transactional
	public void saveFactura(Factura factura) {
		facturaDao.save(factura);		
	}

	@Override
	@Transactional(readOnly = true)
	public Producto findProductoById(Long id) {
		return productoDao.findById(id).orElse(null);
	}

	@Override
	@Transactional(readOnly = true)
	public Factura findFacturaById(Long id) {
		
		return facturaDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void deleteFactura(Long id) {
		facturaDao.deleteById(id);		
	}

	@Override
	@Transactional(readOnly = true)
	public Factura fetchByIdWithClienteWithItemFacturaWithProducto(Long id) {
		return facturaDao.fetchByIdWithClienteWithItemFacturaWithProducto(id);
	}
}
