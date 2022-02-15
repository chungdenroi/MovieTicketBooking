package com.example.bookingmovies.repository;

import com.example.bookingmovies.entity.Invoices;
import org.springframework.data.jpa.repository.JpaRepository;

public interface InvoiceRepository extends JpaRepository<Invoices, Long> {
}
