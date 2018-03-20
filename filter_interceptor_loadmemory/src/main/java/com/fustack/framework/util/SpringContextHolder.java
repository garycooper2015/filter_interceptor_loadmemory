package com.fustack.framework.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SpringContextHolder implements ApplicationContextAware {

	private static ApplicationContext applicationContext;

	public SpringContextHolder() {
	}

	public void setApplicationContext(ApplicationContext applicationContext) {
		System.out.println("启动服务的时候，SpringContextHolder setApplicationContext 运行");
		this.applicationContext = applicationContext;
	}

	public static ApplicationContext getApplicationContext() {
		checkApplicationContext();
		return applicationContext;
	}

	public static <T> T getBean(String name) {
		checkApplicationContext();
		return (T) applicationContext.getBean(name);
	}

	public static <T> T getBean(Class clazz) {
		checkApplicationContext();
		return (T) applicationContext.getBean(clazz);
	}

	private static void checkApplicationContext() {
		if (applicationContext == null) {
			System.out.println("流经SpringContextHolder applicationContext == null");

			throw new IllegalStateException("applicaitonContext未注释，请在beans.xml中定义SpringContextHolder");
		}else {
			System.out.println("流经SpringContextHolder applicationContext != null");
			return;
		}
	}

}
