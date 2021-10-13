package com.hrmsbackend.kodlamaio.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hrmsbackend.kodlamaio.business.abstracts.UserService;
import com.hrmsbackend.kodlamaio.core.utilities.results.DataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.Result;
import com.hrmsbackend.kodlamaio.core.utilities.results.SuccessDataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.SuccessResult;
import com.hrmsbackend.kodlamaio.dataAccess.abstracts.UserDao;
import com.hrmsbackend.kodlamaio.entites.concretes.User;


@Service
public class UserManager implements UserService{
	private UserDao userDao;
	
	@Autowired
	public UserManager(UserDao userDao) {
		super();
		this.userDao = userDao;
	}

	@Override
	public DataResult<List<User>> getAll() {
		return new SuccessDataResult<List<User>>(this.userDao.findAll(),"Data Listelendi");	
	}

	@Override
	public Result add(User user) {
		this.userDao.save(user);
		return new SuccessResult("Kullanıcı Eklendi");
	}

}
