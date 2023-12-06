package com.project.audiovibe.dao;

import com.project.audiovibe.data.advertisement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AdRepo extends JpaRepository<advertisement, Integer> {

    @Query(value = "select * from advertisement order by rand() limit 1",nativeQuery = true)
    advertisement GetAd();
}
