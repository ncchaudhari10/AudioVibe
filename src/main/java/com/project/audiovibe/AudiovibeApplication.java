package com.project.audiovibe;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


@SpringBootApplication
@EnableJpaRepositories
@EntityScan("com.project.audiovibe.data")
public class AudiovibeApplication {

	public static void main(String[] args) {
		SpringApplication.run(AudiovibeApplication.class, args);
	}

}
