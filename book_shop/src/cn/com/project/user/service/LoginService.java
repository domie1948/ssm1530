package cn.com.project.user.service;

import org.springframework.stereotype.Service;

import cn.com.project.user.domain.Admin;


public interface LoginService {
   public Admin login(String account,String password) throws Exception;
}
