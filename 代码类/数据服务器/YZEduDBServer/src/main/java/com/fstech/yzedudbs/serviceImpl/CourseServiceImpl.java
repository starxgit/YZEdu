package com.fstech.yzedudbs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fstech.yzedudbs.dao.CourseDao;
import com.fstech.yzedudbs.po.Course;
import com.fstech.yzedudbs.service.CourseService;
import com.fstech.yzedudbs.vo.CourseDetail;
import com.fstech.yzedudbs.vo.CourseMaterial;
import com.fstech.yzedudbs.vo.Knowledge;
import com.fstech.yzedudbs.vo.Lesson;

@Service
public class CourseServiceImpl implements CourseService{
	private static final Logger logger=Logger.getLogger(CourseServiceImpl.class);
	@Resource
	CourseDao courseDao;

	public int add(com.fstech.yzedudbs.vo.Course t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(com.fstech.yzedudbs.vo.Course t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(com.fstech.yzedudbs.vo.Course t) {
		// TODO Auto-generated method stub
		return 0;
	}

	public com.fstech.yzedudbs.vo.Course findOne(com.fstech.yzedudbs.vo.Course t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<com.fstech.yzedudbs.vo.Course> findAll() {
		// TODO Auto-generated method stub
		return courseDao.findAll();
	}

	public List<com.fstech.yzedudbs.vo.Course> findAllByCondition(
			com.fstech.yzedudbs.vo.Course t) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<com.fstech.yzedudbs.vo.Course> findByCondition(
			Integer classification_own, Integer page, Integer pageSize) {
		// TODO Auto-generated method stub
		return courseDao.findByCondition(classification_own, page, pageSize);
		
	}

	public List<com.fstech.yzedudbs.vo.Course> findByKeyWord(String keyword,
			Integer page, Integer pageSize) {
		// TODO Auto-generated method stub
		return courseDao.findByKeyWord(keyword, page, pageSize);
	}

	public List<com.fstech.yzedudbs.vo.Course> findByTime(Integer page,
			Integer pageSize) {
		// TODO Auto-generated method stub
		return courseDao.findByTime(page, pageSize);
	}

	public List<com.fstech.yzedudbs.vo.Course> findByLearnNum(Integer page,
			Integer pageSize) {
		// TODO Auto-generated method stub
		return courseDao.findByLearnNum(page, pageSize);
	}

	public CourseDetail findByCourseId(Integer course_id) {
		// TODO Auto-generated method stub
		return courseDao.findByCourseId(course_id);
	}

	public List<Lesson> findLessonByCourseId(Integer course_id) {
		// TODO Auto-generated method stub
		return courseDao.findLessonByCourseId(course_id);
	}

	public List<CourseMaterial> findMaterialByCourseId(Integer course_id) {
		// TODO Auto-generated method stub
		return courseDao.findMaterialByCourseId(course_id);
	}

	public List<Knowledge> findKnowledgesByLessonId(Integer lesson_id) {
		// TODO Auto-generated method stub
		return courseDao.findKnowledgesByLessonId(lesson_id);
	}
	
	
	

}
