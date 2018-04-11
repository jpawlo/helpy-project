package com.helpy.demo.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.helpy.demo.dao.*;


public interface JobRequestRepository extends JpaRepository<server_job_request,Integer>{

	@Query(value = "SELECT * FROM server_job_request WHERE server_job_id = ?1 AND status = ?2", nativeQuery = true)
	List<server_job_request> findByServerJobId(String email,String status);
	
	@Query(value = "SELECT * FROM server_job_request WHERE server_job_id = ?1",nativeQuery = true)
	List<server_job_request> populateTransactionTable(String user_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE server_job_request SET status = ?1 WHERE job_id = ?2",nativeQuery = true)
	void updateByJobRequestServerJobId(String status,String job_id);
	
	@Query(value = "SELECT * FROM server_job_request WHERE job_id = ?1", nativeQuery = true)
	List<server_job_request> getJobReqquestByJobId(String job_id);
	
	@Query(value = "SELECT * FROM server_job_request WHERE status = ?1 ORDER BY `delivery_fee` DESC", nativeQuery = true)
	List<server_job_request> findByStatus(String status);
	
	@Query(value = "SELECT * FROM server_job_request WHERE status = ?1 OR status = ?2 ORDER BY `delivery_fee` DESC", nativeQuery = true)
	List<server_job_request> findByDoubleStatus(String status,String status1);
	
	@Query(value = "SELECT * FROM server_job_request WHERE status = ?1 OR status = ?2 OR status = ?3 ORDER BY `delivery_fee` DESC", nativeQuery = true)
	List<server_job_request> findByTripleStatus(String status,String status1,String status2);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE server_job_request SET status = 'Expired' WHERE  status = 'Active' AND `date_created` < DATE(NOW())", nativeQuery = true)
	void updateExpiredJobRequest();
}
