package com.fstech.yzedudbs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fstech.yzedudbs.dao.AnnouncementDao;
import com.fstech.yzedudbs.service.AnnouncementService;
import com.fstech.yzedudbs.po.Announcements;

@Service
public class AnnouncementServiceImpl implements AnnouncementService{
	@Resource
	AnnouncementDao announcementDao;
	
	
	public int add(Announcements t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(Announcements t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(Announcements t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Announcements findOne(Announcements t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Announcements> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Announcements> findAllByCondition(Announcements t) {
		// TODO Auto-generated method stub
		return announcementDao.findAllByCondition(t);
	}

}
