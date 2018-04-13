package com.fstech.yzedudbs.dao;

import java.util.List;


import com.fstech.yzedudbs.vo.Course;
import com.fstech.yzedudbs.vo.CourseDetail;
import com.fstech.yzedudbs.vo.CourseMaterial;
import com.fstech.yzedudbs.vo.Knowledge;
import com.fstech.yzedudbs.vo.Lesson;

public interface CourseDao extends BaseDao<Course>{
	
	//ͨ��classification_own,page,pageSize��ѯ�α�
	public List<Course> findByCondition(@Param("classification_own")Integer classification_own,
			@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//ͨ��key�����γ̣������з�ҳ����
	public List<Course> findByKeyWord(@Param("keyword")String keyword,@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//ͨ��ʱ������ɸѡ�����¿γ̱�
	public List<Course> findByTime(@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//ͨ��ѧϰ��������
	public List<Course> findByLearnNum(@Param("page") Integer page,@Param("pageSize")Integer pageSize);
	
	//ͨ��course_id�鿴�γ���Ϣ��ѡ�����
	public CourseDetail findByCourseId(@Param("course_id") Integer course_id);
	
	//ͨ��course_id �鿴�γ�Ŀ¼
	public List<Lesson> findLessonByCourseId(@Param("course_id") Integer course_id);
	
	//ͨ��course_id �鿴�γ������б�
	public List<CourseMaterial> findMaterialByCourseId(@Param("course_id") Integer course_id);
	
	//ͨ��lesson_id �鿴�γ������б�
	public List<Knowledge> findKnowledgesByLessonId(@Param("lesson_id") Integer lesson_id);

}
