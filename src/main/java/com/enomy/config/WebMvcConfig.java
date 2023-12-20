package com.enomy.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("com.enomy")
public class WebMvcConfig implements WebMvcConfigurer {
	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		System.out.println("IN resource handler");
		
        if (!registry.hasMappingForPattern("/static/**")) {
        	System.out.println("/////////////////// Resources Handlers 2 //////////////////");
        	registry.addResourceHandler(
                    "/images/**",
                    "/css/**",
                    "/js/**")
                    .addResourceLocations(
                            "classpath:/static/images/",
                            "classpath:/static/css/",
                            "classpath:/static/js/");
        	
        }
		
		
		
	    }
}