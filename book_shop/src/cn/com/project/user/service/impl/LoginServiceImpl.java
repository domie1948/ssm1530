package cn.com.project.user.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.project.user.domain.Admin;
import cn.com.project.user.mapper.AdminMapper;
import cn.com.project.user.service.LoginService;
@Service("loginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private AdminMapper adminMapper;
	
	public Admin login(String account,String password)   {
		Map<String , String> map = new HashMap<String,String>();
		map.put("account", account);
		map.put("password", password);
		Admin admin = null;
		try {
			admin = adminMapper.login(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return admin;
	}
}
