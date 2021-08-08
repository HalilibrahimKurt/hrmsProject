package com.hrms.hrmsProject.business.abstracts;

import com.hrms.hrmsProject.core.utilities.result.Result;
import com.hrms.hrmsProject.entities.concretes.JobSeeker;

public interface IJobSeekerCheckService {
	
	Result checkFirstName(JobSeeker jobSeeker);

	Result checkLastName(JobSeeker jobSeeker);

	Result checkNationalityId(JobSeeker jobSeeker);

	Result checkBirthYear(JobSeeker jobSeeker);

	Result checkEmail(JobSeeker jobSeeker);

	Result checkPassword(JobSeeker jobSeeker);

	Result checkRepeatPassword(JobSeeker jobSeeker);

	Result uniqueEmail(JobSeeker jobSeeker);

	Result uniqueNationalityId(JobSeeker jobseeker);
}
