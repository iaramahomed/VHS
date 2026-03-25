package pt.upskill.VHS.configuration;

import jakarta.servlet.DispatcherType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityWebConfig {

    @Autowired
    UserAuthenticationProvider userAuthenticationProvider;

    @Bean
    protected SecurityFilterChain filterChain(HttpSecurity httpSecurity) {
        httpSecurity.csrf(AbstractHttpConfigurer::disable);
        httpSecurity.authorizeHttpRequests(auth -> {
            auth.dispatcherTypeMatchers(DispatcherType.FORWARD);
            auth.requestMatchers("/", "/error", "/auth/**", "/styles/**", "/scripts/**", "/images/**", "/WEB-INF/**").permitAll();
            auth.requestMatchers("/homepage").authenticated();
            auth.requestMatchers("/contacts").authenticated();
            auth.requestMatchers("/digital").authenticated();
            auth.requestMatchers("/dvd").authenticated();
            auth.requestMatchers("/faq").authenticated();
            auth.requestMatchers("/search").authenticated();
            auth.requestMatchers("/shop").authenticated();
            auth.requestMatchers("/vhs").authenticated();
            auth.requestMatchers("/logout").authenticated();
            auth.anyRequest().authenticated();
        });
        httpSecurity.formLogin(login -> {
            login.loginPage("/auth/login");
            login.loginProcessingUrl("/auth/login");
            login.usernameParameter("email");
            login.defaultSuccessUrl("/homepage");
        });
        httpSecurity.logout(logout -> {
            logout.logoutUrl("/logout");
            logout.logoutSuccessUrl("/auth/logout");
            logout.permitAll();
        });

        httpSecurity.authenticationProvider(userAuthenticationProvider);
        return httpSecurity.build();
    }
}
