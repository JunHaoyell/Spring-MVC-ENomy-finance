package com.enomy.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.enomy.auth.UserDetailsServiceImpl;
import com.enomy.config.*;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	  @Bean
	    public UserDetailsService userDetailsService() {
	       return new UserDetailsServiceImpl();
	    }

	    @Bean
	    public PasswordEncoder passwordEncoder() {
	        return new BCryptPasswordEncoder();
	    }
	    
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Configure class Authentication");
		//super.configure(auth);
		 auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("Configure class HttpSecurity");
		
		System.out.println("At Security configure");
        http
        		
                .formLogin()
                    .loginPage("/login")
                    .loginProcessingUrl("/login")
                    .failureUrl("/login_error")
                    .permitAll()
                    .defaultSuccessUrl("/save_invest_plan", true)
                .and()
                .csrf()
                .and()
                .authorizeRequests()
                    .antMatchers("/").permitAll()
                    .antMatchers("/css/**").permitAll()
                    .antMatchers("/images/**").permitAll()
                    .antMatchers("/js/**").permitAll()
                    .antMatchers(HttpMethod.GET, "/favicon.*").permitAll()
                    .antMatchers(HttpMethod.GET, "/login").permitAll()
                    .antMatchers(HttpMethod.GET,"/users").hasRole("Staff")
                    .antMatchers(HttpMethod.GET,"/user_delete").hasRole("Staff")
                    .antMatchers(HttpMethod.GET,"/user_edit").hasRole("Staff")
                    .antMatchers(HttpMethod.GET,"/converter").hasAnyRole("Client","Staff")
                    .antMatchers(HttpMethod.POST,"/converter").hasAnyRole("Client","Staff")
                    .antMatchers(HttpMethod.GET,"/save_invest_plan").hasAnyRole("Client","Staff")
                .and()
                .logout()
                    .logoutSuccessUrl("/login")
                    .invalidateHttpSession(true)
                    .deleteCookies("SESSIONID");
	}
}


