package com.hrmsbackend.kodlamaio.api.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.hrmsbackend.kodlamaio.business.abstracts.CandidateService;
import com.hrmsbackend.kodlamaio.core.utilities.results.DataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.Result;
import com.hrmsbackend.kodlamaio.entites.concretes.Candidate;

@RestController
@RequestMapping("/api/candidates")
public class CandidatesController {
	private CandidateService candidateService;

	@Autowired
	public CandidatesController(CandidateService candidateService) {
		super();
		this.candidateService = candidateService;
	}
	
	@GetMapping("/getAll")
	public DataResult<List<Candidate>> getAll(){
		return this.candidateService.getAll();
	}
	
	@GetMapping("/getAllByPage")
	public DataResult<List<Candidate>> getAll(int pageNo, int pageSize){
		return this.candidateService.getAll(pageNo, pageSize);
	}
	
	@GetMapping("/getAllDesc")
	public DataResult<List<Candidate>> getAllSorted(){
		return this.candidateService.getAllSorted();
	}
	
	@PostMapping("/add")
	public Result add(@RequestBody Candidate candidate) {
		return this.candidateService.add(candidate);
	}
	
	@GetMapping("/getByFirstName")
	public DataResult<Candidate> getByFirstName(@RequestParam String firstName){
		return this.candidateService.getByFirstName(firstName);
	}
	
	@GetMapping("/getByFirstNameAndUserId")
	public DataResult<Candidate> getByFirstNameAndUser_UserId(@RequestParam("firstName") String firstName ,@RequestParam("userId") int userId){
		return this.candidateService.getByFirstNameAndUser_UserId(firstName,userId);
	}
	
	@GetMapping("/getByFirstNameOrUserId")
	public DataResult<List<Candidate>> getByFirstNameOrUserId(@RequestParam("firstName") String firstName ,@RequestParam("userId") int userId){
		return this.candidateService.getByFirstNameOrUser_UserId(firstName,userId);
	}
	
	@GetMapping("/getByUserIdIn")
	public DataResult<List<Candidate>> getByUserIdIn(@RequestParam List<Integer> userId){
		return this.candidateService.getByUser_UserIdIn(userId);
	}
	
	@GetMapping("/getByFirstNameContains")
	public DataResult<List<Candidate>> getByFirstNameContains(@RequestParam String firstName){
		return this.candidateService.getByFirstNameContains(firstName);
	}
	
	@GetMapping("/getByFirstNameStartsWith")
	public DataResult<List<Candidate>> getByFirstNameStartsWith(@RequestParam String firstName){
		return this.candidateService.getByFirstNameStartsWith(firstName);
	}
	
//	@GetMapping("/getByFirstNameStartsWith")
//	public DataResult<List<Candidate>> getByNameAndUser(@RequestParam String firstName, int userId){
//		return this.candidateService.getByNameAndUser(firstName,userId);
//	}
	
}
