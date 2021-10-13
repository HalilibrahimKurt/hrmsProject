package com.hrmsbackend.kodlamaio.dataAccess.abstracts;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.hrmsbackend.kodlamaio.entites.concretes.Candidate;

public interface CandidateDao extends JpaRepository<Candidate, Integer>{
	Candidate getByFirstName(String firstName);
	
	Candidate getByFirstNameAndUser_UserId(String firstName,int userId);
	
	List<Candidate> getByFirstNameOrUser_UserId(String firstName,int userId);
	
	List<Candidate> getByUser_UserIdIn(List<Integer> users);
	
	List<Candidate> getByFirstNameContains(String firstName);
	
	List<Candidate> getByFirstNameStartsWith(String firstName);
	
//	@Query("From Candidate where first_name=:firstName and user.user_id=:userId")
//	List<Candidate> getByNameAndUser(String firstName, int userId);
	
}
