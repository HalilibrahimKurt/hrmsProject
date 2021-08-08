package com.hrms.hrmsProject.business.abstracts;

import java.util.List;

import com.hrms.hrmsProject.entities.concretes.JobPosition;

public interface IJobPositionService {
	List<JobPosition> getAll();
}
