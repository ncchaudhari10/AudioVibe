package com.project.audiovibe.dao;

import com.project.audiovibe.data.view.plans_summary;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

public interface PlansSummaryView extends JpaRepository<plans_summary, Object> {


    @Procedure(name = "GetAmountToBePaid")
    public plans_summary GetAmountToBePaid(
            @Param("in_plan_id") Integer in_plan_id,
            @Param("in_offer_id") Integer in_offer_id
    );



}
