package com.fstech.yzedudbs.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fstech.yzedudbs.vo.Course;
import com.fstech.yzedudbs.vo.CourseDetail;
import com.fstech.yzedudbs.vo.CourseMaterial;
import com.fstech.yzedudbs.vo.Knowledge;
import com.fstech.yzedudbs.vo.Lesson;

public interface CourseDao extends BaseDao<Course>{
	
	//通过classification_own,page,pageSize查询课表
	public List<Course> findByCondition(@Param("classification_own")Integer classification_own,
			@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//通过key搜索课程，并进行分页处理
	public List<Course> findByKeyWord(@Param("keyword")String keyword,@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//通过时间排序，筛选出最新课程表
	public List<Course> findByTime(@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//通过学习人数排序
	public List<Course> findByLearnNum(@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//通过course_id查看课程信息和选课情况
	public CourseDetail findByCourseId(@Param("course_id") Integer course_id);
	
	//通过course_id 查看课程目录
	public List<Lesson> findLessonByCourseId(@Param("course_id") Integer course_id);
	
	//通过course_id 查看课程资料列表
	public List<CourseMaterial> findMaterialByCourseId(@Param("course_id") Integer course_id);
	
	//通过lesson_id 查看课程资料列表
	public List<Knowledge> findKnowledgesByLessonId(@Param("lesson_id") Integer lesson_id);

}
