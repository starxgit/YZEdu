package com.fstech.yzedudbs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fstech.yzedudbs.dao.BannerDao;
import com.fstech.yzedudbs.service.BannerService;
import com.fstech.yzedudbs.vo.Banner;

@Service
public class BannerServiceImpl implements BannerService{

	@Resource
	BannerDao bannerDao;
	
	public int add(Banner t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(Banner t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(Banner t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Banner findOne(Banner t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Banner> findAll() {
		// TODO Auto-generated method stub
		return bannerDao.findAll();
	}

	public List<Banner> findAllByCondition(Banner t) {
		// TODO Auto-generated method stub
		return null;
	}

}
