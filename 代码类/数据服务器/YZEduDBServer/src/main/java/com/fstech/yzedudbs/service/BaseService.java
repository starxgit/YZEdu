package com.fstech.yzedudbs.service;

import java.util.List;

public interface BaseService<T> {
public int add(T t);
	
	public int delete(T t);
	
	public int update(T t);
	
	public T findOne(T t);
	
	public List<T> findAll();
	
	public List<T> findAllByCondition(T t);

}
