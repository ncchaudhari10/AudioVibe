package com.project.audiovibe.controller;


import com.project.audiovibe.data.Payment_Options;
import com.project.audiovibe.data.view.OffersSummary;
import com.project.audiovibe.data.view.plans_summary;
import com.project.audiovibe.data.view.user_view;
import com.project.audiovibe.dto.request.DeletePayment_OptionsDTO;
import com.project.audiovibe.dto.request.Payment_OptionsDTO;
import com.project.audiovibe.dto.request.TransactionDto;
import com.project.audiovibe.service.TransactionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/transaction")
public class TransactionController {

    @Autowired
    private TransactionService service;

    @PostMapping("/addPaymentOption")
    public List<Payment_Options> addPaymentOption(@RequestBody Payment_OptionsDTO dto)
    {
        return service.addPaymentOption(dto);
    }
    @PostMapping("/deletePaymentOption")
    public String deletePaymentOption(@RequestBody DeletePayment_OptionsDTO dto)
    {
        return service.deletePaymentOption(dto);
    }

    @PostMapping("/purchasePlan")
    public user_view purchasePlan(@RequestBody TransactionDto dto)
    {
        return service.purchasePlan(dto);
    }

    @GetMapping("/allPlans")
    public List<plans_summary> allPlans()
    {
        return service.getAllPlans();
    }

    @GetMapping("/allOffers")
    public List<OffersSummary> allOffers()
    {
        return service.getAllOffers();
    }

    @GetMapping("/bestOffers")
    public List<OffersSummary> bestOffers()
    {
        return service.getBestOffers();
    }
}
