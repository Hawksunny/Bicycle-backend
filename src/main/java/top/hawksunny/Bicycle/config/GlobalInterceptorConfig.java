package top.hawksunny.Bicycle.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import top.hawksunny.Bicycle.GlobalInterceptor;

@Configuration
public class GlobalInterceptorConfig implements WebMvcConfigurer {
    @Autowired
    private GlobalInterceptor globalInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration interceptorRegistration =  registry.addInterceptor(globalInterceptor);
        interceptorRegistration.addPathPatterns("/**").excludePathPatterns("/user/login", "/user/logout", "/user/auth", "/bike/list");
    }}
