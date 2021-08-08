package com.hrms.hrmsProject.business.concretes;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.hrms.hrmsProject.business.abstracts.IJobPositionService;
import com.hrms.hrmsProject.dataAccess.abstracts.JobPositionDao;
import com.hrms.hrmsProject.entities.concretes.JobPosition;

public class JobPositionManager implements IJobPositionService {
	private JobPositionDao jobPositionDao;

	@Autowired
	public JobPositionManager(JobPositionDao jobPositionDao) {
		this.jobPositionDao = jobPositionDao;
	}

	@Override
	public List<JobPosition> getAll() {
		return this.jobPositionDao.findAll();
	}

}
