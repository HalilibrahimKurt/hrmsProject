package com.hrmsbackend.kodlamaio.business.concretes;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import com.hrmsbackend.kodlamaio.business.abstracts.CandidateService;
import com.hrmsbackend.kodlamaio.core.utilities.results.DataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.Result;
import com.hrmsbackend.kodlamaio.core.utilities.results.SuccessDataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.SuccessResult;
import com.hrmsbackend.kodlamaio.dataAccess.abstracts.CandidateDao;
import com.hrmsbackend.kodlamaio.entites.concretes.Candidate;

@Service
public class CandidateManager implements CandidateService{
	private CandidateDao candidateDao;
	
	@Autowired
	public CandidateManager(CandidateDao candidateDao) {
		super();
		this.candidateDao = candidateDao;
	}

	@Override
	public DataResult<List<Candidate>> getAll() {
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.findAll(),"Data Listelendi");
	}
	
	@Override
	public DataResult<List<Candidate>> getAll(int pageNo, int pageSize) {
		Pageable pageable = PageRequest.of(pageNo-1, pageSize);
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.findAll(pageable).getContent());
	}
	
	@Override
	public DataResult<List<Candidate>> getAllSorted() {
		Sort sort = Sort.by(Sort.Direction.DESC,"User_UserId");
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.findAll(sort));
	}

	@Override
	public Result add(Candidate candidate) {
		this.candidateDao.save(candidate);
		return new SuccessResult("Kullanıcı Eklendi");
	}

	@Override
	public DataResult<Candidate> getByFirstName(String firstName) {
		return new SuccessDataResult<Candidate>
		(this.candidateDao.getByFirstName(firstName),"Data Listelendi");
	}

	@Override
	public DataResult<Candidate> getByFirstNameAndUser_UserId(String firstName, int userId) {
		//BUSINESS CODES
		return new SuccessDataResult<Candidate>
		(this.candidateDao.getByFirstNameAndUser_UserId(firstName,userId),"Data Listelendi");
	}

	@Override
	public DataResult<List<Candidate>> getByFirstNameOrUser_UserId(String firstName, int userId) {
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.getByFirstNameOrUser_UserId(firstName,userId),"Data Listelendi");
	}

	@Override
	public DataResult<List<Candidate>> getByUser_UserIdIn(List<Integer> users) {
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.getByUser_UserIdIn(users),"Data Listelendi");
	}

	@Override
	public DataResult<List<Candidate>> getByFirstNameContains(String firstName) {
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.getByFirstNameContains(firstName),"Data Listelendi");
	}

	@Override
	public DataResult<List<Candidate>> getByFirstNameStartsWith(String firstName) {
		return new SuccessDataResult<List<Candidate>>
		(this.candidateDao.getByFirstNameStartsWith(firstName),"Data Listelendi");
	}

//	@Override
//	public DataResult<List<Candidate>> getByNameAndUser(String firstName, int userId) {
//		return new SuccessDataResult<List<Candidate>>
//		(this.candidateDao.getByNameAndUser(firstName,userId),"Data Listelendi");
//	}

}
