package com.hrms.hrmsProject.business.concretes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.hrms.hrmsProject.business.abstracts.IJobSeekerCheckService;
import com.hrms.hrmsProject.business.abstracts.IJobSeekerService;
import com.hrms.hrmsProject.core.utilities.business.BusinessRules;
import com.hrms.hrmsProject.core.utilities.result.DataResult;
import com.hrms.hrmsProject.core.utilities.result.Result;
import com.hrms.hrmsProject.core.utilities.result.SuccessDataResult;
import com.hrms.hrmsProject.core.utilities.result.SuccessResult;
import com.hrms.hrmsProject.dataAccess.abstracts.JobSeekerDao;
import com.hrms.hrmsProject.entities.concretes.JobSeeker;

public class JobSeekerManager implements IJobSeekerService{
	
	private IJobSeekerCheckService jobSeekerCheckService;
	private JobSeekerDao jobSeekerDao;

	
	@Autowired
	public JobSeekerManager(IJobSeekerCheckService jobSeekerCheckService, JobSeekerDao jobSeekerDao) {
		super();
		this.jobSeekerCheckService = jobSeekerCheckService;
		this.jobSeekerDao = jobSeekerDao;
	}


	@Override
	public Result add(JobSeeker jobseeker) {
		Result result = BusinessRules.run(jobSeekerCheckService.checkFirstName(jobseeker),
				jobSeekerCheckService.checkLastName(jobseeker), jobSeekerCheckService.checkNationalityId(jobseeker),
				jobSeekerCheckService.checkBirthYear(jobseeker), jobSeekerCheckService.checkEmail(jobseeker),
				jobSeekerCheckService.checkPassword(jobseeker), jobSeekerCheckService.checkRepeatPassword(jobseeker),
				jobSeekerCheckService.uniqueEmail(jobseeker), jobSeekerCheckService.uniqueNationalityId(jobseeker));

		if (result != null) {
			return result;
		}else {
			jobSeekerDao.save(jobseeker);
		}
		return new SuccessResult();
	}


	@Override
	public DataResult<List<JobSeeker>> getAll() {
		return new SuccessDataResult<List<JobSeeker>>( jobSeekerDao.findAll());
	}

	
}
