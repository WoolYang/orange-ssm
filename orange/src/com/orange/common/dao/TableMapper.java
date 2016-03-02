package com.orange.common.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;



@Repository(value="TableMapper")
public interface TableMapper {

		public List<Map<String,String>> selectTableDao() throws Exception;

}