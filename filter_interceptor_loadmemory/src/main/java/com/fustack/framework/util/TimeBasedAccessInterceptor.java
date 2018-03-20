package com.fustack.framework.util;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class TimeBasedAccessInterceptor implements HandlerInterceptor {
	
	private int openingTime; 
	private int closingTime;
			
	public void setOpeningTime(int openingTime) {
		this.openingTime = openingTime;
	}

	public void setClosingTime(int closingTime) {
		this.closingTime = closingTime;
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub

		System.out.println("openingTime = " + openingTime);
		System.out.println("closingTime = " + closingTime);
		
		
		String path1 = request.getServletPath();
		System.out.println("request.getServletPath() = " + path1);
		
		String path2 = request.getContextPath();
		System.out.println("request.getContextPath() = " + path2);
		
		 String urlString = request.getRequestURI();
		 System.out.println("urlString = " + urlString);

		 
		Calendar cal = Calendar.getInstance();
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		
		System.out.println("hour = " + hour);
		if(hour >= openingTime && hour <= closingTime) {
			return true;
		}
		
		response.sendRedirect(path2 +"/outsideOfficeHours");
		 
		// request.getRequestDispatcher("outsideOfficeHours?openingTime="+openingTime+"&closingTime="+closingTime).forward(request, response);
		
		
		return false;
	}

}
