package com.project.audiovibe.service;

import com.project.audiovibe.dao.*;
import com.project.audiovibe.data.Payment_Options;
import com.project.audiovibe.data.User;
import com.project.audiovibe.data.view.OffersSummary;
import com.project.audiovibe.data.view.plans_summary;
import com.project.audiovibe.data.view.user_view;
import com.project.audiovibe.dto.request.DeletePayment_OptionsDTO;
import com.project.audiovibe.dto.request.Payment_OptionsDTO;
import com.project.audiovibe.dto.request.TransactionDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TransactionService {

    @Autowired
    private PlansSummaryView plansSummaryView;

    @Autowired
    private OffersSummaryView offersSummaryView;

    @Autowired
    private LoginRepository loginRepo;

    @Autowired
    private PaymentOptionsRepository paymentOptionsRepository;

    @Autowired
    private TransactionRepository transactionRepository;

    @Autowired
    private userView userview;

    public user_view purchasePlan(TransactionDto dto) {

        // get userid from email
        User user = loginRepo.findByEmail(dto.getEmail());

        // get amount_to_be_paid.
        plans_summary plansSummary = plansSummaryView.GetAmountToBePaid(dto.getPlan_id(), dto.getOffer_id());


        // write a stored procedure to insert a transaction in a table.
        transactionRepository.InsertTransaction(user.getUser_id(),dto.getPlan_id(),dto.getOption_id(),dto.getOffer_id(), Double.valueOf(plansSummary.getPrice()));
        // update user's premium level
        user.setPlan_id(dto.getPlan_id());
        loginRepo.save(user);

        // return user's premium level and plan name, duration and date

        return userview.findByEmail(dto.getEmail());

    }

    public List<Payment_Options> addPaymentOption(Payment_OptionsDTO dto) {

        // get id using email
        User user = loginRepo.findByEmail(dto.getEmail());

        //count of total transactions
        List<Payment_Options> records = paymentOptionsRepository.findAllByUserid(user.getUser_id());

        // stored procedure to insert record in the table
        Integer temp = paymentOptionsRepository.insertPaymentOption(user.getUser_id(), dto.getCard_type(), dto.getCompany_name(), dto.getCard_number(), records.size() + 1);

        return paymentOptionsRepository.findAllByUserid(user.getUser_id());
    }

    public List<plans_summary> getAllPlans() {
        return  plansSummaryView.findAll();
    }

    public List<OffersSummary> getAllOffers() {
        return offersSummaryView.findAll();
    }


    public String deletePaymentOption(DeletePayment_OptionsDTO dto) {
        User user = loginRepo.findByEmail(dto.getEmail());
        Boolean res = paymentOptionsRepository.DeletePaymentOption(user.getUser_id(), dto.getCard_number());

        if(res)
        {
            return "payment option deleted";
        }
        else return "invalid email or card number";

    }

    public List<OffersSummary> getBestOffers() {
        return offersSummaryView.GetBestOffers();
         }
}
