package com.example.bookingmovies.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "invoice")
public class Invoices {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "invoiceID", nullable = false)
    private Long invoiceID;

    @OneToMany(cascade = CascadeType.REMOVE)
//    @JoinColumn(foreignKey=@ForeignKey(name="fk_ticket"))
    private List<Ticket> ticket;


    @Column(nullable = false)
    private double totalPrice;

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(name = "customerID",foreignKey=@ForeignKey(name="fk_customer"))
    private Customer customer;

    private String date;



    public Customer getCustomer() {
        return customer;
    }

    public List<Ticket> getTicket() {
        return ticket;
    }

    public Long getInvoiceID() {
        return invoiceID;
    }

    public void setInvoiceID(Long invoiceID) {
        this.invoiceID = invoiceID;
    }

    public void setTicket(List<Ticket> ticket) {
        this.ticket = ticket;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }


    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Invoices(Long invoiceID, List<Ticket> ticket, double totalPrice, Customer customer, String date) {
        this.invoiceID = invoiceID;
        this.ticket = ticket;
        this.totalPrice = totalPrice;
        this.customer = customer;
        this.date = date;
    }
    public Invoices() {
    }
}
