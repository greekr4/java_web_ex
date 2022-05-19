package com.company.common;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class LoginWrapper extends HttpServletRequestWrapper {
	public LoginWrapper(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String key) {
		String value="";
		if(key!=null && key.equals("userPwd")) {
			value = getSha512(super.getParameter("userPwd"));
		} else {
			value=super.getParameter(key);
		}
		return value;
	}
	private static String getSha512(String pwd) {
		String encPwd = "";
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("SHA-512");
			byte[] bytes = pwd.getBytes(Charset.forName("UTF-8"));
			md.update(bytes);
			encPwd = Base64.getEncoder().encodeToString(md.digest());
			System.out.println("암호화된 비밀번호 : "+encPwd);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return encPwd;
	}
	
}
