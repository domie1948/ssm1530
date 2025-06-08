package cn.com.project.user.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.com.project.user.domain.Admin;
@Repository("adminMapper")
public interface AdminMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    public Admin login(Map<String , String> map) throws Exception;

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}