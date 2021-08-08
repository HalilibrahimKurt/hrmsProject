package com.hrms.hrmsProject.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hrms.hrmsProject.business.abstracts.IJobSeekerService;
import com.hrms.hrmsProject.core.utilities.result.Result;
import com.hrms.hrmsProject.entities.concretes.JobSeeker;

@RestController
@RequestMapping("api/jobseeker")
public class JobSeekerController {
	private IJobSeekerService jobSeekerService;

	@Autowired
	public JobSeekerController(IJobSeekerService jobSeekerService) {
		super();
		this.jobSeekerService = jobSeekerService;
	}
	
	@PostMapping("/add/jobseeker")
	public Result add(@RequestBody JobSeeker jobseeker) {
		return this.jobSeekerService.add(jobseeker);
	}
}