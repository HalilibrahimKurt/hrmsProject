package com.hrms.hrmsProject.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hrms.hrmsProject.business.abstracts.IJobPositionService;
import com.hrms.hrmsProject.entities.concretes.JobPosition;

@RestController
@RequestMapping("api/jobpositions")
public class JobPositionController {
	
	private IJobPositionService jobPositionService;

	@Autowired
	public JobPositionController(IJobPositionService jobPositionService) {
		this.jobPositionService = jobPositionService;
	}
	
	@GetMapping("/getall")
	public List<JobPosition> getAll(){
		return this.jobPositionService.getAll();
	}

}
