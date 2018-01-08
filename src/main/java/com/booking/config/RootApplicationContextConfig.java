package com.booking.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages ={
		"com.booking.service",
		"com.booking.dao"
})
//@Import({DBConfig.class})
public class RootApplicationContextConfig {
	
}
