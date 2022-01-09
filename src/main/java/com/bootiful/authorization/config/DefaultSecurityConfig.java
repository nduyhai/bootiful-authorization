package com.bootiful.authorization.config;

import static org.springframework.security.config.Customizer.withDefaults;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
public class DefaultSecurityConfig {
  protected static final String[] PUBLIC_ENDPOINTS = {
    "/v3/api-docs",
    "/v3/api-docs/**",
    "/swagger-ui.html",
    "/swagger-ui/**",
    "/actuator",
    "/actuator/**",
    "/oauth2/**"
  };

  @Bean
  SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
    http.authorizeRequests(
            authorizeRequests ->
                authorizeRequests
                    .antMatchers(PUBLIC_ENDPOINTS)
                    .permitAll()
                    .anyRequest()
                    .authenticated())
        .formLogin(withDefaults());
    return http.build();
  }
}
