package cn.com.project.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;

import cn.com.project.shangpin.domain.LeiBie;
import cn.com.project.shangpin.service.ShangpinService;
import cn.com.project.user.domain.Admin;
import cn.com.project.user.service.LoginService;

/**
 * 
 * @描述:登陆操作
 * @作者:
 * @时间 2018年3月14日 下午1:42:56
 * @获取一个: login
 * @返回值:ModelAndView
 */
@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	@Autowired
	private ShangpinService shangpinService;
	/**
	 * 
	 * @描述:后台管理员登陆
	 * @作者:
	 * @时间 2018年3月14日 下午1:42:56
	 * @获取一个: login
	 * @返回值:ModelAndView
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(String account,String password,HttpServletRequest request)throws Exception{
		ModelAndView mav = new ModelAndView();
		Admin admin = loginService.login(account, password);
		//获取session
		HttpSession session = request.getSession();
		if(admin == null){//登陆失败
			mav.addObject("message","用户名或密码错误");
			mav.setViewName("admin/login");
		}else if("1".equals(admin.getRole())){//系统管理员
			session.setAttribute("id",admin.getId());
			session.setAttribute("account", admin.getAccount());
			mav.setViewName("admin/index");
		}
		return mav;
	}
	/**
	 * 
	 * @throws Exception 
	 * @描述:跳转到前台页面
	 * @作者:
	 * @时间 2018年3月14日 下午1:42:56
	 * @获取一个: login
	 * @返回值:ModelAndView
	 */
	@RequestMapping("/adminZx")
	public ModelAndView adminZx(String account,String password,LeiBie lb,HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("account", null);
		
		//分页		
		PageHelper.startPage(1,7,true);
		List<LeiBie> lbList = shangpinService.selectLb(lb);
		mav.setViewName("temp/main");
		mav.addObject("lbList", lbList);
		return mav;
	}
	
	/*
	@RequestMapping("/userZx")
	public ModelAndView userZx(String account,String password,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("account", null);
		mav.setViewName("temp/index");
		return mav;
	}
	*/
}