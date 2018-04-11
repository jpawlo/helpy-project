package com.helpy.demo.repository;

import org.springframework.data.repository.CrudRepository;

import com.helpy.demo.dao.User;

	public interface HelpyRepository extends CrudRepository<User,Integer>{
		
		
	}

