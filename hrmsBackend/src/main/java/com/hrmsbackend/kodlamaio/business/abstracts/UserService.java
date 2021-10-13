package com.hrmsbackend.kodlamaio.business.abstracts;

import java.util.List;

import com.hrmsbackend.kodlamaio.core.utilities.results.DataResult;
import com.hrmsbackend.kodlamaio.core.utilities.results.Result;
import com.hrmsbackend.kodlamaio.entites.concretes.User;

public interface UserService {
	DataResult<List<User>> getAll();
	Result add(User user);
}
