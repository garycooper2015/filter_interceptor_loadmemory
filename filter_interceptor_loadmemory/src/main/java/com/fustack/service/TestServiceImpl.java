package com.fustack.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl implements TestService {

	public static Map<String,String> map1;

	public Map<String, String> getMap1() {
		return map1;
	}

	@PostConstruct
	public  Map f1() {
		// TODO Auto-generated method stub
		map1 = new HashMap<String,String>();
		map1.put("user1", "张三");
		map1.put("user2", "李四");
		map1.put("user3", "王五");
		
		System.out.println("在项目启动时，加载运行map");
		
		return map1;
	}

}
