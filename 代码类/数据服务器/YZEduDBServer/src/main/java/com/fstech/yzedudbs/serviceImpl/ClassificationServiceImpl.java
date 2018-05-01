package com.fstech.yzedudbs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fstech.yzedudbs.dao.ClassificationDao;
import com.fstech.yzedudbs.vo.Classification;
import com.fstech.yzedudbs.service.ClassificationService;

@Service
public class ClassificationServiceImpl implements ClassificationService{
	@Resource
	ClassificationDao classificationDao;
		
	public int add(Classification t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(Classification t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(Classification t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Classification findOne(Classification t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Classification> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Classification> findAllByCondition(Classification t) {
		// TODO Auto-generated method stub
		return classificationDao.findAllByCondition(t);
	}

}
