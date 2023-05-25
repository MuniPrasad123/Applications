package com.java.src.helpcorner.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import com.java.src.helpcorner.model.User;

public interface UserRepository extends MongoRepository<User, String>{

    @Query("{location : ?0, userType : ?1}")
    List<User> findByLocationAndUserType(String location, String userType);

    @Query(value ="{'location' : ?0, 'userType' : ?1, 'phone' : ?2}")
    List<User> findByLocationAndUserTypeAndPhone(String location, String userType, String phone);

}
