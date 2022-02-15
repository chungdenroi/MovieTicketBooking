package com.example.bookingmovies.controller;

import com.example.bookingmovies.entity.Invoices;
import com.example.bookingmovies.repository.InvoiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class InvoicesController {
    @Autowired
    InvoiceRepository invoiceRepository;
    @RequestMapping("/invoices")
    public String invoicesList(Model model) {
        List<Invoices> invoicesList = invoiceRepository.findAll();
        model.addAttribute("invoicesList",invoicesList);
        return "invoices/invoicesList";

    }
}
