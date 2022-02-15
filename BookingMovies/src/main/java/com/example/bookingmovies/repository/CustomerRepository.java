package com.example.bookingmovies.repository;

import com.example.bookingmovies.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer,Long> {
    Customer findCustomerByFullNameAndMobileNumber(String name, String mobie);
}
