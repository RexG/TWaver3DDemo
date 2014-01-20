package com.demo.service.impl;

import com.demo.bean.CMDB_ENTITY;
import com.demo.service.IQueryService;

public class QueryService implements IQueryService {

	@Override
	public CMDB_ENTITY queryCiCode(String res_code) {
		
		CMDB_ENTITY entity = new CMDB_ENTITY();
		
		if("a".equals(res_code)){
			entity.setRes_code("a");
			entity.setCi_code("abcdefg");
			return entity;
		}else{
			entity.setRes_code("不存在");
			entity.setCi_code("不存在");
			return entity;
		}
	}

}
