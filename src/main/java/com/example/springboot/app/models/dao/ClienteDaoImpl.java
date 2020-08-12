package com.example.springboot.app.models.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.example.springboot.app.models.entity.Cliente;

@Repository
public class ClienteDaoImpl implements IClienteDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Cliente> findAll() {
		return entityManager.createQuery("from Cliente").getResultList();
	}
	
	@Override
	public Cliente findOne(Long id) {
		
		return entityManager.find(Cliente.class, id);
	}

	@Override
	public void save(Cliente cliente) {
		if (cliente.getId() != null && cliente.getId() > 0) {
			entityManager.merge(cliente); //Editar
			
		}else {
			entityManager.persist(cliente); //Crear
		}		
	}

	@Override
	public void delete(Long id) {
		entityManager.remove(findOne(id));
	}

}
