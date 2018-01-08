package com.fstech.yzedudbs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fstech.yzedudbs.dao.PlatformDao;
import com.fstech.yzedudbs.service.PlatformService;
import com.fstech.yzedudbs.vo.PlatformInformation;
import com.fstech.yzedudbs.vo.SchoolInformation;

@Service
public class PlatformServiceImpl implements PlatformService{
	@Resource
	PlatformDao platformDao;
	
	
	public int add(PlatformInformation t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(PlatformInformation t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(PlatformInformation t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public PlatformInformation findOne(PlatformInformation t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<PlatformInformation> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<PlatformInformation> findAllByCondition(PlatformInformation t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<PlatformInformation> findPlatformInformations(Integer page,
			Integer pageSize) {
		// TODO Auto-generated method stub
		return platformDao.findPlatformInformations(page, pageSize);
	}

	@Override
	public List<SchoolInformation> findSchoolInformationById(Integer school_id,
			Integer page, Integer pageSize) {
		// TODO Auto-generated method stub
		return platformDao.findSchoolInformationById(school_id, page, pageSize);
	}

}
