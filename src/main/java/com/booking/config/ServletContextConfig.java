package com.booking.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.booking.controller" })
public class ServletContextConfig extends WebMvcConfigurerAdapter {
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}
	
//    @Bean
//    public UrlBasedViewResolver urlBasedViewResolver() {
//       UrlBasedViewResolver resolver = new UrlBasedViewResolver();
//       resolver.setViewClass(TilesView.class);
//       resolver.setOrder(1);     
//       return resolver;
//    }
	
	@Bean
    public TilesViewResolver tilesViewResolver() {
		TilesViewResolver resolver = new TilesViewResolver();
        resolver.setViewClass(TilesView.class);
        resolver.setOrder(1);     
        return resolver;
    }
    
    @Bean
    public TilesConfigurer tilesConfigurer() {
       TilesConfigurer tilesConfigurer = new TilesConfigurer();
       tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/tiles.xml"});    
       return tilesConfigurer;
    }

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("//static/");
		// registry.addResourceHandler("/views/**").addResourceLocations("/WEB-INF/view/");
		// // webapp/resources 경로를 의미

	}

//	@Bean
//	public MultipartResolver multipartResolver() {
//		org.springframework.web.multipart.commons.CommonsMultipartResolver multipartResolver = new org.springframework.web.multipart.commons.CommonsMultipartResolver();
//		multipartResolver.setMaxUploadSize(10485760); // 1024 * 1024 * 10
//		return multipartResolver;
//	}
}
