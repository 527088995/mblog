package mblog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * @author ds
 */

@SpringBootApplication
//定时任务注解
@EnableScheduling
public class ApiServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ApiServerApplication.class, args);
        System.out.println("ApiServerApplication start success!");
    }

}
