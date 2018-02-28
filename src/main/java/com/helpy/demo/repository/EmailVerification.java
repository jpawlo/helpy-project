package com.helpy.demo.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.helpy.demo.dao.*;
public interface EmailVerification extends CrudRepository<verificationCode, String>{
}
