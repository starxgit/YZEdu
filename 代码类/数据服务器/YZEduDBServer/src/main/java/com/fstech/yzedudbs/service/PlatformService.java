package com.fstech.yzedudbs.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fstech.yzedudbs.vo.PlatformInformation;
import com.fstech.yzedudbs.vo.SchoolInformation;

public interface PlatformService extends BaseService<PlatformInformation>{
	
		//查询平台资讯列表
		public List<PlatformInformation> findPlatformInformations(@Param("page") Integer page,@Param("pageSize")Integer pageSize);
		//查询院校资讯列表
		public List<SchoolInformation> findSchoolInformationById(@Param("school_id")Integer school_id,@Param("page") Integer page,@Param("pageSize")Integer pageSize);
}
