package com.helpy.demo.repository;


import org.springframework.data.repository.CrudRepository;
import com.helpy.demo.dao.server_job_request;

public interface JobRequest extends CrudRepository<server_job_request,Integer>{
	
}
