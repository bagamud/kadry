package peter.ic.kadry.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Класс веб-конфигурации с методом добавления простых автоматических контроллеров представлений
 */

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/main").setViewName("dashboard");
        registry.addViewController("/").setViewName("dashboard");
        registry.addViewController("/login").setViewName("auth");
        registry.addViewController("/auth").setViewName("auth");
        registry.addViewController("/logout").setViewName("auth");
    }
}