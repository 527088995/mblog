package mblog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * SprintBootApplication
 */
@SpringBootApplication
//@EnableScheduling
public class BootApplication {

    /**
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(BootApplication.class, args);
        System.out.println("BootApplication start success!");
    }

}