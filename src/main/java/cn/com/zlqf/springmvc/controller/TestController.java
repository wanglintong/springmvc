package cn.com.zlqf.springmvc.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.zlqf.springmvc.entity.User;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@RequestMapping("/getUserList")
	public @ResponseBody List<User> getUserList(String id,String name) {
		System.out.println("id = " + id + " name = " + name);
		
		List<User> list = Arrays.asList(new User("1","wanglintong","123","wanglintong@163.com"),new User("2","huyue","123456","huyue@163.com"));
		//return list;
		throw new RuntimeException("出现错误了");
	}
	
	@RequestMapping("/findUsersByUsername")
	public @ResponseBody List<User> findUsersByUsername(String username) {
		System.out.println("username = " + username);
		
		//相关查询操作...
		
		List<User> list = Arrays.asList(new User("1","wanglintong","123","wanglintong@163.com"),new User("2","huyue","123456","huyue@163.com"));
		return list;
	}

}
