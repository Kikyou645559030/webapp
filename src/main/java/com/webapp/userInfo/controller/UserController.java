package com.webapp.userInfo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.DocumentHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webapp.userInfo.entity.User;
import com.webapp.userInfo.service.UserService;

@Controller
@RequestMapping("/userInfo")
public class UserController {

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	@RequestMapping(value = "/add",method = {RequestMethod.GET,RequestMethod.POST})
	public String add(){
		return "userInfo/add";
	}
	
	@RequestMapping(value = "/save",method = {RequestMethod.GET,RequestMethod.POST})
	public String save(Model model, HttpServletRequest request) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		userService.save(user);
		List<User> list = userService.findAll();
		model.addAttribute("list", list);
		return "userInfo/list";
	}
	
	@RequestMapping(value = "/index",method = {RequestMethod.GET,RequestMethod.POST})
	public String index(){
		return "login";
	}
	
	@RequestMapping(value = "/list" ,method = RequestMethod.GET)
	public String findAll(Model model){
		List<User> list = userService.findAll();
		model.addAttribute("list", list);
		return "userInfo/list";
	}
	
	@RequestMapping(value = "/login" ,method = {RequestMethod.GET,RequestMethod.POST})
	public String login(HttpServletRequest request,Model model,HttpSession session){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
        System.out.println("用户名：" + username + "----用户密码：" + password);
		String usernameSession = (String) session.getAttribute("username");
        String path;
        if("".equals(usernameSession) || usernameSession == null){
            User user = userService.findUserByUsernameAndPassword(username, password);
            if(user == null){
                model.addAttribute("info", "你输入的信息有误，请重新输入");
                model.addAttribute("username", username);
                path =  "login";
            }else{
                session.setAttribute("username", username);
                path = "index";
            }
        }else {
            path = "index";
        }
        return path;
	}

    @RequestMapping(value = "/androidLogin",method = {RequestMethod.POST,RequestMethod.GET})
    public void androidLogin(HttpServletRequest request,HttpServletResponse response){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = userService.findUserByUsernameAndPassword(username, password);
        Document document = DocumentHelper.createDocument();
        Element root = document.addElement("data");
        Element userEleInfo = root.addElement("userInfo");
        Element sysInfo = root.addElement("systemInfo");
        System.out.print("进来了");
        try {
            if(user != null){
                Element eUser = userEleInfo.addElement("user");
                eUser.addElement("username").addCDATA(user.getUsername());
                eUser.addElement("password").addCDATA(user.getPassword());
                eUser.addElement("id").addCDATA(user.getId());
                sysInfo.addElement("result").addCDATA("1000");
                sysInfo.addElement("resultInfo").addCDATA("查询成功");
            }else{
                sysInfo.addElement("result").addCDATA("1000");
                sysInfo.addElement("resultInfo").addCDATA("查询成功");
            }
            response.getOutputStream().write(document.asXML().getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
