package cn.com.zlqf.springmvc.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SimplePropertyPreFilter;

import cn.com.zlqf.springmvc.entity.User;

@Controller
public class HelloController {
	
	@RequestMapping("/test")
	public void hello(HttpServletResponse response) throws IOException {
		User user = new User();
		user.setId("123");
		user.setUsername("测试");
		user.setPassword("12345");
		user.setEmail("123@163.com");
		SimplePropertyPreFilter filter = new SimplePropertyPreFilter(User.class, "id","username","email");  
		String jsonString = JSON.toJSONString(user, filter);
		String jsonString2 = JSON.toJSONString(user);
		System.out.println(jsonString);
		System.out.println(jsonString2);
		
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(jsonString);
	}
	
	@RequestMapping("/uploadPage")
	public String uploadPage() {
		return "upload";
	}
	
	@RequestMapping("/upload")
	public String upload(MultipartFile file) throws Exception {
		file.transferTo(new File("d:/",file.getOriginalFilename()));
	
		return "upload";
	}
}
