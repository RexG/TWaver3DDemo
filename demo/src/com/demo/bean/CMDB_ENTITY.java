package com.demo.bean;

import java.io.Serializable;

public class CMDB_ENTITY implements Serializable{
	
	private static final long serialVersionUID = -8985130920226157465L;

	private String res_code;
	
	private String ci_code;

	public String getRes_code() {
		return res_code;
	}

	public void setRes_code(String res_code) {
		this.res_code = res_code;
	}

	public String getCi_code() {
		return ci_code;
	}

	public void setCi_code(String ci_code) {
		this.ci_code = ci_code;
	}
}
