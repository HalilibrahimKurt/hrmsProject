package com.hrms.hrmsProject.business.abstracts;

import java.util.List;

import com.hrms.hrmsProject.core.utilities.result.DataResult;
import com.hrms.hrmsProject.core.utilities.result.Result;
import com.hrms.hrmsProject.entities.concretes.JobSeeker;

public interface IJobSeekerService {
	Result add(JobSeeker jobseeker);
	DataResult<List<JobSeeker>> getAll();
}
