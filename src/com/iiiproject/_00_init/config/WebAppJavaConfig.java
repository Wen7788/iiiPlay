package com.iiiproject._00_init.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.orm.hibernate5.support.OpenSessionInViewInterceptor;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.iiiproject.lab02.controller.LoginCheckInterceptor;

@Configuration
@EnableWebMvc
@ComponentScan("com.iiiproject")

public class WebAppJavaConfig implements WebMvcConfigurer {
	@Bean
	public InternalResourceViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setViewClass(JstlView.class);
		return resolver;
	}
/*
解決靜態資源的問題:
在組態檔中配置
<mvc:default-servlet-handler/>
 * 
 */
	@Bean
	public CommonsMultipartResolver multipartResolver() {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("UTF-8");
		resolver.setMaxUploadSize(81920000);
		return resolver;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}
	
	@Bean
	public MessageSource messageSource() {
		ResourceBundleMessageSource messageSource = new ResourceBundleMessageSource();
		messageSource.setBasenames("MemberMessage", "ValidationMessages");
		return messageSource; 
	}
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		LoginCheckInterceptor loginCheckInterceptor= new  LoginCheckInterceptor();
	    registry.addInterceptor(loginCheckInterceptor).addPathPatterns("");
	    
	    
//	    Register admin interceptor with multiple path patterns  
//	      registry.addInterceptor(loginCheckInterceptor)
//	              .addPathPatterns(new String[] { "/admin", "/admin/*" });
	    
	}
	
	
}
