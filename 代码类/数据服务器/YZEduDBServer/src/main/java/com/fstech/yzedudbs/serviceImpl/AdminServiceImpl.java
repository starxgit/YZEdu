package com.fstech.yzedudbs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fstech.yzedudbs.dao.AdminDao;
import com.fstech.yzedudbs.po.Admin;
import com.fstech.yzedudbs.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{
	@Resource
	AdminDao adminDao;
	
	public int add(Admin t) {
		
		return 0;
	}

	public int delete(Admin t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(Admin t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Admin findOne(Admin t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Admin> findAll() {
		// TODO Auto-generated method stub
		return adminDao.findAll();
	}

	public int count() {
		// TODO Auto-generated method stub
		return adminDao.count();
	}

	public List<Admin> findAllByCondition(Admin t) {
		// TODO Auto-generated method stub
		return null;
	}

}
