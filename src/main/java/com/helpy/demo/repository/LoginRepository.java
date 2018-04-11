package com.helpy.demo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.helpy.demo.dao.User;


public interface LoginRepository extends CrudRepository<User,Integer>{
	List<User> getByEmail(String email);
}
