package com.zikgu.example.config;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.zikgu.example.service.UserService;

import lombok.RequiredArgsConstructor;
@RequiredArgsConstructor
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
 
   /* 로그인 실패 핸들러 의존성 주입 */
	private final AuthenticationFailureHandler customFailureHandler;
	
	
   @Autowired
   private UserService userService;
   
   @Autowired
   private DataSource dataSource;
   
   @Bean
   public PasswordEncoder passwordEncoder() {
      return new BCryptPasswordEncoder();
   }
   
   
   @Override
   protected void configure(HttpSecurity http) throws Exception {

//      인증과 권한
      http
      .authorizeRequests()
            .antMatchers("/user/**").authenticated()
            .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
            .antMatchers("/shopinsert/**").authenticated()
            .anyRequest().permitAll()
            .and()
//      폼 로그인 설정
      .formLogin()
            .loginPage("/signin")
            .loginProcessingUrl("/loginPro")
            .failureHandler(customFailureHandler) // 로그인 실패 핸들러
            .defaultSuccessUrl("/", true)
            .permitAll()
            .and()
          
            
       
//      로그아웃 설정
      .logout()
         .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
         .logoutSuccessUrl("/")
         .invalidateHttpSession(true)
         .deleteCookies("JSESSIONID", "remember-me")
         .and()
         
//      remember me 설정
      .rememberMe()
         .key("myWeb")
         .rememberMeParameter("remember-me")
         .tokenValiditySeconds(86400)//1day
         .and()
//      exceptionHandling
      .exceptionHandling()
         .accessDeniedPage("/denied")
         .and()
//      session 관리
      .sessionManagement()
         .sessionCreationPolicy(SessionCreationPolicy.NEVER)   
         .invalidSessionUrl("/")
         .and()
//      csrf      
      .csrf().disable();       
   }
   @Bean
   public PersistentTokenRepository persistentTokenRepository() {
      JdbcTokenRepositoryImpl db = new JdbcTokenRepositoryImpl();
      db.setDataSource(dataSource);
      return db;
   }
   //security 기본설정
   @Override
   public void configure(AuthenticationManagerBuilder auth) throws Exception {
      auth.userDetailsService(userService).passwordEncoder(passwordEncoder());
   }
   
   
   
   
  /* @Configuration
   public class WebConfig implements WebMvcConfigurer{
	   
	   
	   @Value("&{resourece.path}")
	   private String resourcePath;
	   
	   @Value("${upload.path}")
	   private String uploadPath;
	   
	   @Override
	   public void addResourceHandlers(ResourceHandlerRegistry registry) {
		   registry.addResourceHandler(uploadPath)
		   			.addResourceLocations(resourcePath);
	   }
   }*/
   
   
   
   
   
}