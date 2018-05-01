package com.fstech.yzedudbs.web;

import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import io.swagger.annotations.ApiOperation;

import org.apache.log4j.Logger;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fstech.yzedudbs.dao.AnnouncementDao;
import com.fstech.yzedudbs.service.AnnouncementService;
import com.fstech.yzedudbs.service.BannerService;
import com.fstech.yzedudbs.service.PlatformService;
import com.fstech.yzedudbs.util.Constants;
import com.fstech.yzedudbs.vo.Announcement;
import com.fstech.yzedudbs.po.Announcements;
import com.fstech.yzedudbs.vo.Banner;
import com.fstech.yzedudbs.vo.Course;
import com.fstech.yzedudbs.vo.PlatformInformation;
import com.fstech.yzedudbs.vo.SchoolInformation;



@RestController
public class PlatformInformationsController {
	private static final Logger logger=Logger.getLogger(PlatformInformationsController.class);
	@Resource
	PlatformService platformService;
	@Resource
	BannerService bannerService;
	@Resource 
	AnnouncementService announcementService;
		
	@ApiOperation(value="查询平台资讯列表")
	@RequestMapping(value="/PlatformInformations",method=RequestMethod.GET)
	public Map<String,Object> PlatformInformations(ModelAndView modelAndView,@RequestParam(defaultValue="1") Integer page){
		 	//从第几条记录开始进行
			Integer fromResult=(page-1)*Constants.PLATFORM_INFOMATION_PAGE_SIZE;	
			List<PlatformInformation> platformInformationList=platformService.findPlatformInformations(fromResult, Constants.PLATFORM_INFOMATION_PAGE_SIZE);
			logger.info("返回数据"+platformInformationList);
	        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
	        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
	        modelAndView.addObject("return_data",platformInformationList);
		    return modelAndView.getModel(); 
	}
	@ApiOperation(value="查询平台Banner列表")
	@RequestMapping(value="/Banners",method=RequestMethod.GET)
	public Map<String,Object> banners(ModelAndView modelAndView, Integer school_id){
		
		List<Banner> bannnerList=bannerService.findAll();
		logger.info("返回数据"+bannnerList);
        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
        modelAndView.addObject("return_data",bannnerList);
        return modelAndView.getModel(); 
		
	}
	@ApiOperation(value="查询院校资讯列表")
	@RequestMapping(value="/SchoolInformations",method=RequestMethod.GET)
	public Map<String,Object> schoolInformations(ModelAndView modelAndView,
			@RequestParam Integer school_id,@RequestParam(defaultValue="1") Integer page){
		
		Integer fromResult=(page-1)*Constants.PLATFORM_INFOMATION_PAGE_SIZE;	
		List<SchoolInformation> schoolInformationList=platformService.findSchoolInformationById(school_id,fromResult, Constants.PLATFORM_INFOMATION_PAGE_SIZE);
		logger.info("返回数据"+schoolInformationList);
        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
        modelAndView.addObject("return_data",schoolInformationList);
        return modelAndView.getModel(); 
	}
	@ApiOperation(value="查询院校公告列表")
	@RequestMapping(value="/Announcement",method=RequestMethod.GET)
	public Map<String,Object> announcement(ModelAndView modelAndView,
			@RequestParam Integer school_id){
		Announcements t=new Announcements();
		t.setSchool_id(school_id);
		List<Announcements> announcementsList=announcementService.findAllByCondition(t);	
		logger.info("返回数据"+announcementsList);
        modelAndView.addObject("result_code",Constants.SUCCESS_CODE);
        modelAndView.addObject("message",Constants.SUCCESS_MESSAGE);
        modelAndView.addObject("return_data",announcementsList);
        return modelAndView.getModel(); 
		
	}
	

	
	
}
