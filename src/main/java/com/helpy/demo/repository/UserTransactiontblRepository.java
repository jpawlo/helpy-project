package com.helpy.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.helpy.demo.dao.UserTransactiontbl;

@Repository
public interface UserTransactiontblRepository extends JpaRepository<UserTransactiontbl, Integer>{
	
	@Query(value = "SELECT * FROM doer_job_acceptance WHERE request_id = ?1",nativeQuery = true)
	List<UserTransactiontbl> getJobRequestById(String requestId);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE doer_job_acceptance SET request_status = ?1 WHERE request_id = ?2",nativeQuery = true)
	void updateByJobRequestServerJobId(String status,String job_id);
	
	@Query(value = "SELECT * FROM doer_job_acceptance WHERE doer_job_id = ?1 AND request_status = ?2", nativeQuery = true)
	List<UserTransactiontbl> getJobRequestStatus(String id, String status);
	
}
