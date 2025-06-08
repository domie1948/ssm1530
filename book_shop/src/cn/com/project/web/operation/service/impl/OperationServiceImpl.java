package cn.com.project.web.operation.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.com.project.web.operation.domain.Gwc;
import cn.com.project.web.operation.mapper.GwcMapper;
import cn.com.project.web.operation.service.OperationService;
@Service("operationService")
public class OperationServiceImpl implements OperationService {
	@Autowired
	private GwcMapper gwcMapper;
	
	public void insert(Gwc gwc) throws Exception {
		gwcMapper.insert(gwc);
	}

	public  List<Gwc> selectByPrimaryKey(Integer id) throws Exception {
		 List<Gwc> gwcList = gwcMapper.selectByPrimaryKey(id);
		return gwcList;
	}

	public String selectCount(Integer id) throws Exception {
		String count = gwcMapper.selectCount(id);
		return count;
	}

	public void deleteByPrimaryKey(Integer id) throws Exception {
		gwcMapper.deleteByPrimaryKey(id);
	}

	public void emptyGwc(Integer id) throws Exception {
		gwcMapper.emptyGwc(id);		
	}

}
