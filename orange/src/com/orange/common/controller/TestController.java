/**
 * 2012-02-29
 */
package com.orange.common.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.orange.common.dao.TableMapper;


@Controller
@RequestMapping(value = "/test")


public class TestController {
	
	@Autowired
	private TableMapper tableMapper;
	
	
	// 日志
	private static Logger logger = LoggerFactory
			.getLogger(TestController.class);

	/**
	 * 正常登录处理方式
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/formSubmit", method = RequestMethod.POST)
	public String formSubmit(Model model,
			HttpServletRequest request, HttpServletResponse response) {
		String view = "frame/form";
		
		System.out.println("-----------表单提交测试------------");
		System.out.println("textfield2>>>>>>"+request.getParameter("textfield2"));
		System.out.println("textfield3>>>>>>"+request.getParameter("textfield3"));
		System.out.println("checkbox1>>>>>>"+request.getParameter("checkbox1"));
		System.out.println("checkbox2>>>>>>"+request.getParameter("checkbox2"));
		System.out.println("textarea1>>>>>>"+request.getParameter("textarea1"));
		System.out.println("sex>>>>>>"+request.getParameter("sex"));
		
		return view;
	}
	
	@RequestMapping(value = "/formAjax", method = RequestMethod.POST)
	public String formAjax(Model model,
			HttpServletRequest request, HttpServletResponse response) {
		String view = "frame/form";
			
		System.out.println("-----------表单Ajax测试------------");
		System.out.println("textfield1>>>>>>"+request.getParameter("textfield1"));
		System.out.println("textfield2>>>>>>"+request.getParameter("textfield2"));
		System.out.println("textfield3>>>>>>"+request.getParameter("textfield3"));
		System.out.println("checkbox1>>>>>>"+request.getParameter("checkbox1"));
		System.out.println("checkbox2>>>>>>"+request.getParameter("checkbox2"));
		System.out.println("textarea1>>>>>>"+request.getParameter("textarea1"));
		System.out.println("radio>>>>>>"+request.getParameter("radio"));
		
		return view;
	}
	
	@RequestMapping(value = "/select",method = RequestMethod.GET)
	public @ResponseBody
	Map<String, ? extends Object> select(Model model, Object cmd,
			HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>(3);
		try {
			System.out.println("-------------ajax下拉框连接成功-------------");
			List<Map<String, String>> listMap  = new ArrayList<Map<String,String>>();
			Map<String, String> map = new HashMap<String, String>();
			Map<String, String> map1 = new HashMap<String, String>();
			
			map.put("id", "1");
			map.put("text", "西安");
			map1.put("id", "2");
			map1.put("text", "北京");
			listMap.add(map);
			listMap.add(map1);
			
			modelMap.put("result", listMap);
			modelMap.put("totalCount", listMap.size());
			modelMap.put("success", true);
			
			System.out.println("-------------数据已成功返回-------------");
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("success", false);
		}
		return modelMap;
	}
	
	@RequestMapping(value = "/table",method = RequestMethod.POST)
	public @ResponseBody
	Map<String, ? extends Object> table(Model model, Object cmd,
			HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>(3);
		try {
			System.out.println("-------------表格加载中-------------");
			List<Map<String, String>> listMap  = new ArrayList<Map<String,String>>();
			Map<String, String> map = new HashMap<String, String>();
			Map<String, String> map1 = new HashMap<String, String>();
			Map<String, String> map2 = new HashMap<String, String>();
			
			map.put("name", "小明");
			map.put("sex", "男");
			map.put("age","20");
			
			map1.put("name", "小红");
			map1.put("sex", "女");
			map1.put("age","15");
			
			map2.put("name", "小张");
			map2.put("sex", "男");
			map2.put("age","17");
			

			listMap.add(map);
			listMap.add(map1);
			listMap.add(map2);
			
			modelMap.put("data", listMap);
			modelMap.put("count", listMap.size());
			modelMap.put("success", true);
			
			System.out.println("-------------数据已成功返回-------------");
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("success", false);
		}
		return modelMap;
	}
	
	@RequestMapping(value = "/table2",method = RequestMethod.POST)
	public @ResponseBody
	Map<String, ? extends Object> table2(Model model, Object cmd,
			HttpServletRequest request) {
		Map<String, Object> modelMap = new HashMap<String, Object>(3);
		try {
			System.out.println("-------------表格加载中-------------");
			List<Map<String, String>> listMap  = new ArrayList<Map<String,String>>();
			listMap=tableMapper.selectTableDao();
			System.out.println("listMap>>>"+listMap);
			modelMap.put("data", listMap);
			modelMap.put("count", listMap.size());
			modelMap.put("success", true);
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("success", false);
		}
		return modelMap;
	}
}
