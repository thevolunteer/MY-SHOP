package com.dxc.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.dxc.entity.Order;
@RepositoryRestResource
public interface OrderRepository extends CrudRepository<Order,Long> { 
	
}
