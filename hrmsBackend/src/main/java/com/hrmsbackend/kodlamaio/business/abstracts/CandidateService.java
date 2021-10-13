package com.hrmsbackend.kodlamaio.business.abstracts;

import java.util.List;

import com.hrmsbackend.kodlamaio.core.utilities.results.DataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.Result;
import com.hrmsbackend.kodlamaio.entites.concretes.Candidate;

public interface CandidateService {
	DataResult<List<Candidate>> getAll();
	
	DataResult<List<Candidate>> getAll(int pageNo, int pageSize);
	
	DataResult<List<Candidate>> getAllSorted();
	
	Result add(Candidate candidate);

	DataResult<Candidate> getByFirstName(String firstName);

	DataResult<Candidate> getByFirstNameAndUser_UserId(String firstName, int userId);

	DataResult<List<Candidate>> getByFirstNameOrUser_UserId(String firstName, int userId);

	DataResult<List<Candidate>> getByUser_UserIdIn(List<Integer> users);

	DataResult<List<Candidate>> getByFirstNameContains(String firstName);

	DataResult<List<Candidate>> getByFirstNameStartsWith(String firstName);

//	DataResult<List<Candidate>> getByNameAndUser(String firstName, int userId);
}
