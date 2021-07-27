package com.example.springdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@SpringBootApplication(exclude=DataSourceAutoConfiguration.class)
public class SpringMvcDemoApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SpringMvcDemoApplication.class);
    }

    // Step 5: Define Spring MVC view resolver
    @Bean
    public ViewResolver internalResourceViewResolver() {
        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/view/");
        bean.setSuffix(".jsp");
        return bean;
    }

    // load custom message resources
    @Bean(name="messageSource")
    public ReloadableResourceBundleMessageSource messageSource() {
        String messageURL = "file:src/main/resources/messages";
        ReloadableResourceBundleMessageSource bean = new ReloadableResourceBundleMessageSource();
        bean.addBasenames(messageURL);
        return bean;
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringMvcDemoApplication.class, args);
    }

}
