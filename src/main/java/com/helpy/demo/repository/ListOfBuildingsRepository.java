package com.helpy.demo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.helpy.demo.dao.Building;

public interface ListOfBuildingsRepository extends CrudRepository<Building,Integer> {

}
