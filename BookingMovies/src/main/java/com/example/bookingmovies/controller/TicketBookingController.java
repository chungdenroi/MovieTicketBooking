package com.example.bookingmovies.controller;

import com.example.bookingmovies.entity.Customer;
import com.example.bookingmovies.entity.Invoices;
import com.example.bookingmovies.entity.Ticket;
import com.example.bookingmovies.repository.CustomerRepository;
import com.example.bookingmovies.repository.InvoiceRepository;
import com.example.bookingmovies.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TicketBookingController {
    @Autowired
    CustomerRepository customerRepository;

    @Autowired
    TicketRepository ticketRepository;

    @Autowired
    InvoiceRepository invoiceRepository;

    @RequestMapping("/booking")
    public String bookingTicket(@RequestParam(name = "ticketID") List<Long> ticketID, Model model, HttpSession session) {
        session.removeAttribute("movieID");
        List<Ticket> ticketList = getTicketList(model,ticketID);
        session.setAttribute("ticketList",ticketList);
        Invoices invoice = new Invoices();
        model.addAttribute("invoice",invoice);
        Customer customer = new Customer();
        model.addAttribute("customer",customer);
        return "bookingProcess";

    }
    @RequestMapping("booking/process")
    public String bookingProcess(@RequestParam(name = "totalPrice", required = true) double totalPrice,
                                 Customer customer,
                                 HttpSession session, Model model
                                 ) {

        try {
            if(customer.equals(null)) {
                return "redirect:/";
            } else {
                System.out.println("Total PriceL:  " + totalPrice);
                customerRepository.save(customer);
                List<Ticket> ticketList = (List<Ticket>) session.getAttribute("ticketList");
                System.out.println("get ticketList from session success " + ticketList.size());
                Invoices invoice = bookingProcess(ticketList,customer, totalPrice);
                setTicketStatus(ticketList);
                System.out.println("set status success");

                model.addAttribute("invoice",invoice);
                session.removeAttribute("ticketList");
                return "bookingSuccess";
            }
        } catch (Exception e) {
            System.out.println("error booking exception : "+ e.getMessage());
            customerRepository.delete(customer);
            return "redirect:/";
        }

    }
    public List<Ticket> getTicketList(Model model, List<Long> ticketID) {
        List<Ticket> ticketList = new ArrayList<>();
        double totalPrice = 0;
        for (Long t : ticketID) {
            if(ticketRepository.existsByTicketID(t)) {
                Ticket ticket = ticketRepository.findByTicketID(t);
                ticketList.add(ticket);
                totalPrice += ticket.getPrice();
                System.out.println(totalPrice);
            }
        }
        System.out.println("Total : " + totalPrice);
        model.addAttribute("totalPrice",totalPrice);
        return ticketList;

    }
    public Invoices bookingProcess(List<Ticket> ticketList, Customer customer, double totalPrice) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String cuDate = LocalDateTime.now().format(formatter);

        Invoices invoice = new Invoices();
        invoice.setTotalPrice(totalPrice);
        System.out.println("set total price");
        invoice.setTicket(ticketList);
        System.out.println("set ticket list");
        invoice.setCustomer(customer);
        System.out.println("set customer");

        invoice.setDate(cuDate);
        System.out.println("set date");
        invoiceRepository.save(invoice);
        System.out.println("booking process success");
        return invoice;
    }
    public void setTicketStatus(List<Ticket> ticketList) {
        for (Ticket ticket :  ticketList) {
            ticket.setStatus("Booked");
            ticketRepository.save(ticket);
        }
    }
}
