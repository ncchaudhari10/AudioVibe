package com.project.audiovibe.dao;

import com.project.audiovibe.data.view.user_view;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository

public interface userView extends JpaRepository<user_view, String> {

    user_view findByEmail(String email);
}
