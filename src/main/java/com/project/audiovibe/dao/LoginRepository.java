package com.project.audiovibe.dao;

import com.project.audiovibe.data.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface LoginRepository extends JpaRepository<User,Integer> {

    @Procedure(name = "InsertUser")
    void insertUser(String name, String email, String password, String plan_id);

    @Procedure(value = "CheckUserCredentials",outputParameterName = "p_result")
    boolean checkCredentials(
            @Param("p_email") String email,
            @Param("p_password") String password
            );

    User findByEmail(String email);

    // SQL Function
    @Query(value = "SELECT UpdatePassword(:email, :old_pass, :new_pass)", nativeQuery = true)
    Boolean UpdatePassword(
            @Param("email") String email,
            @Param("old_pass") String old_pass,
            @Param("new_pass") String new_pass

    );

    @Query(value = "select * from users where users.user_id = :userId",nativeQuery = true)
    User GetByUserID(@Param("userId") Integer userId);
}
