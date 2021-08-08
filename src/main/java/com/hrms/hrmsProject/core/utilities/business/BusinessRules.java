package com.hrms.hrmsProject.core.utilities.business;

import com.hrms.hrmsProject.core.utilities.result.Result;

public class BusinessRules {
	public static Result run(Result... logics) {
		for (Result logic : logics) {
			if (logic != null && !logic.isSuccess()) {
				return logic;
			}
		}
		return null;
	}
}
