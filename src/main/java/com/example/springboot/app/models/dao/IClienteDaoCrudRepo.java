package com.example.springboot.app.models.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.example.springboot.app.models.entity.Cliente;

public interface IClienteDaoCrudRepo extends PagingAndSortingRepository<Cliente, Long>{


}
