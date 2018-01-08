package com.fstech.yzedudbs.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fstech.yzedudbs.vo.Classification;
import com.fstech.yzedudbs.vo.Course;
import com.fstech.yzedudbs.vo.CourseDetail;
import com.fstech.yzedudbs.vo.CourseMaterial;
import com.fstech.yzedudbs.vo.Knowledge;
import com.fstech.yzedudbs.vo.Lesson;
import com.fstech.yzedudbs.service.ClassificationService;
import com.fstech.yzedudbs.service.CourseService;
import com.fstech.yzedudbs.util.Constants;
import com.fstech.yzedudbs.util.PageModel;
import com.sun.corba.se.impl.orbutil.closure.Constant;

@RestController
public class CourseController {
	private static final Logger logger=Logger.getLogger(CourseController.class);
	@Resource
	ClassificationService classificationService;
	@Resource
	CourseService courseService;
	
	
	@RequestMapping(value="/Classifications",method=RequestMethod.GET)
	@ApiOperation(value="查询课程分类类型列表")
	public Map<String,Object> classifications(ModelAndView modelAndView,@RequestParam Integer classification_own){
		Classification classification=new Classification();
		classification.setClassification_own(classification_own);
		List<Classification> return_data=classificationService.findAllByCondition(classification);
		modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
		modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
		modelAndView.addObject("return_data",return_data);
		return modelAndView.getModel();
		
	}
	@RequestMapping(value="/ClassificationCourse",method=RequestMethod.GET)
	@ApiOperation(value="查询分类课程列表")
	public Map<String,Object> classificationCourse(ModelAndView modelAndView,
			@RequestParam Integer classification_own,
			 Integer user_id,@RequestParam(defaultValue="1") Integer page) {
		       //从第几条记录开始进行
		       Integer fromResult=(page-1)*Constants.COURSE_PAGE_SIZE;	   
	           List<Course> return_data=courseService.findByCondition(classification_own, fromResult, Constants.COURSE_PAGE_SIZE);
	           logger.info("返回数据"+return_data);
	           modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
	           modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
	           modelAndView.addObject("return_data",return_data);
			   return modelAndView.getModel();
	}
	@RequestMapping(value="/SearchCourse",method=RequestMethod.GET)
	@ApiOperation("搜索课程列表列表")
	public Map<String,Object> searchCourse(ModelAndView modelAndView,@RequestParam String keyword,
			Integer user_id,@RequestParam(defaultValue="1")Integer page){
			//从第几条记录开始进行
		    Integer fromResult=(page-1)*Constants.COURSE_PAGE_SIZE;	   
	        List<Course> return_data=courseService.findByKeyWord(keyword,fromResult, Constants.COURSE_PAGE_SIZE);
	        logger.info("返回数据"+return_data);
	        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
	        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
	        modelAndView.addObject("return_data",return_data);
			return modelAndView.getModel();
		
	}
	@RequestMapping(value="/NewCourse",method=RequestMethod.GET)
	@ApiOperation("最新课程列表")
	public Map<String,Object> newCourse(ModelAndView modelAndView,Integer user_id,
			@RequestParam(defaultValue="1")Integer page){
		//从第几条记录开始进行
	    Integer fromResult=(page-1)*Constants.COURSE_PAGE_SIZE;	   
        List<Course> return_data=courseService.findByTime(fromResult, Constants.COURSE_PAGE_SIZE);
        logger.info("返回数据"+return_data);
        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
        modelAndView.addObject("return_data",return_data);
		return modelAndView.getModel();
	}
	@RequestMapping(value="/TopCourse",method=RequestMethod.GET)
	@ApiOperation("热门课程列表")
	public Map<String,Object> topCourse(ModelAndView modelAndView,Integer user_id,
			@RequestParam(defaultValue="1")Integer page){
		//从第几条记录开始进行
	    Integer fromResult=(page-1)*Constants.COURSE_PAGE_SIZE;	   
        List<Course> return_data=courseService.findByLearnNum(fromResult, Constants.COURSE_PAGE_SIZE);
        logger.info("返回数据"+return_data);
        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
        modelAndView.addObject("return_data",return_data);
		return modelAndView.getModel();
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value="SchoolCourse",method=RequestMethod.GET)
	@ApiOperation(value="院校推荐课程列表")
	public Map<String,Object> schoolCourse(ModelAndView modelAndView,
			Integer user_id,
			@RequestParam(defaultValue="1")Integer page){
		List<Course> return_data=courseService.findAll();
		List<Course> newList=new ArrayList<Course>();
		Random random=new Random();
		for(int i=0;i<return_data.size();i++){
			Integer r=random.nextInt(return_data.size());
			newList.add(return_data.get(r));
		}
		//使用工具类，对List进行分页处理
		PageModel pageModel=new PageModel(newList, Constants.COURSE_PAGE_SIZE);
		List<Course> sublist = pageModel.getObjects(page);  
		
		logger.info("返回数据"+return_data);
        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
        modelAndView.addObject("return_data",sublist);
        return modelAndView.getModel();		
		
		
	}
	@RequestMapping(value="CourseDetail",method=RequestMethod.GET)
	@ApiOperation(value="查看课程信息和选课情况")
	public Map<String,Object> courseDetail(ModelAndView modelAndView,
			Integer user_id,@RequestParam Integer course_id){
				CourseDetail courseDetail=courseService.findByCourseId(course_id);
				modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
			    modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
				modelAndView.addObject("return_data",courseDetail);
				return modelAndView.getModel();
		
	}
	@RequestMapping(value="/CourseCatalog",method=RequestMethod.GET)
	@ApiOperation(value="查看课程目录")
	public Map<String,Object> courseCatalog(ModelAndView modelAndView,@RequestParam Integer course_id){
		List<Lesson> lesson=courseService.findLessonByCourseId(course_id);
		modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
	    modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
		modelAndView.addObject("return_data",lesson);
		return modelAndView.getModel();
	}
	@RequestMapping(value="/CourseMaterial",method=RequestMethod.GET)
	@ApiOperation(value="查看课程资料列表")
	public Map<String,Object> courseMaterial(ModelAndView modelAndView,@RequestParam Integer course_id){
		List<CourseMaterial> material=courseService.findMaterialByCourseId(course_id);
		modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
	    modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
		modelAndView.addObject("return_data",material);
		return modelAndView.getModel();
	}
	@RequestMapping(value="/Knowledges",method=RequestMethod.GET)
	@ApiOperation(value="查看知识点列表")
	public Map<String,Object> knowledges(ModelAndView modelAndView,@RequestParam Integer lesson_id){
		List<Knowledge> knowledge=courseService.findKnowledgesByLessonId(lesson_id);
		modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
	    modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
		modelAndView.addObject("return_data",knowledge);
		return modelAndView.getModel();
	}
}
