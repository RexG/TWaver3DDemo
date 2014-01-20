package com.demo.action;

import com.demo.bean.CMDB_ENTITY;
import com.demo.service.IQueryService;
import com.demo.service.impl.QueryService;

public class CmdbAction {
	
	public String res_code;
	
	public IQueryService service = new QueryService();
	
	public CMDB_ENTITY query(String resCode){
		return service.queryCiCode(resCode);
	}

}
