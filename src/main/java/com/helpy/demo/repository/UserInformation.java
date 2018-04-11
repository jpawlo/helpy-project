package com.helpy.demo.repository;
import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.helpy.demo.dao.*;
public interface UserInformation extends CrudRepository<User,String>{
	List<User> getByUserId(String user_id);
	List<User> getByEmail(String email);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET remaining_balance = ?1 WHERE user_id = ?2",nativeQuery = true)
	void updateUserBalance(float remaining_balance,String user_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET name = ?1, email = ?2, phone_number = ?3, social_media_account = ?4 WHERE user_id = ?5",nativeQuery = true)
	void updateUserInformation(String name,String email,String phone, String social,String user_id);
	
	@Query(value = "SELECT * FROM user_client WHERE user_id=?1 AND password=?2",nativeQuery = true)
	List<User> getUsernameAndPassword(String user_id, String password);

	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET password = ?1 WHERE user_id = ?2",nativeQuery = true)
	void updateUserPassword(String password,String user_id);

	@Query(value = "SELECT * FROM user_client WHERE user_id = ?1",nativeQuery = true)
	List<User> getUserInformationByUserId(String user_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET remaining_balance = ?1 WHERE user_id = ?2",nativeQuery = true)
	void updateUserAddBalance(float balance, String user_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET `status` = ?1 WHERE `user_id` = ?2",nativeQuery = true)
	void updateUserStatus(String status, String user_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET status = ?1 WHERE email = ?2",nativeQuery = true)
	void updateUserStatusByEmail(String status, String email);
	
	@Query(value = "SELECT remaining_balance FROM user_client WHERE user_id = ?1",nativeQuery = true)
	float getUserRemainingBalance(String userId);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET admin_certified = ?1 WHERE user_id = ?2",nativeQuery = true)
	void updateUserCertification(boolean status, String user_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE user_client SET user_rate = ?1 WHERE user_id = ?2",nativeQuery = true)
	void updateUserPercentage(String userRate, String user_id);
	

}
