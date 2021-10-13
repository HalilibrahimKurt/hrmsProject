package com.hrmsbackend.kodlamaio.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;
import com.hrmsbackend.kodlamaio.entites.concretes.User;

public interface UserDao extends JpaRepository<User, Integer>{
	
}
