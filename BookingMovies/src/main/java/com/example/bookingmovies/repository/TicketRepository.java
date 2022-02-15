package com.example.bookingmovies.repository;

import com.example.bookingmovies.entity.Movie;
import com.example.bookingmovies.entity.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface TicketRepository extends JpaRepository<Ticket,Long> {
    Boolean existsByTicketID(Long id);
    Ticket findByTicketID(Long id);
    List<Ticket> findTicketsByMovie_MovieNameLike(String name);
    List<Ticket> findTicketsByMovie_MovieID(Long movieID);

    List<Ticket> findTicketsByDate(String date);
    List<Ticket> findTicketsByDateAndTimeAndMovie_MovieID(String date, String time, Long movieID);
    Boolean existsByDate(String date);

    @Query("delete from Ticket t where t.movie.movieID = ?1")
    void queryBy(Long id);



}
