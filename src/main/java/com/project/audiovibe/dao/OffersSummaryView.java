package com.project.audiovibe.dao;

import com.project.audiovibe.data.Offers;
import com.project.audiovibe.data.view.OffersSummary;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface OffersSummaryView extends JpaRepository<OffersSummary,Integer> {


    @Query(value = "call GetBestOffers();", nativeQuery = true)
    List<OffersSummary> GetBestOffers();
}
