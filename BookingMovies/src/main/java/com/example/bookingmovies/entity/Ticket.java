package com.example.bookingmovies.entity;

import org.hibernate.annotations.Cascade;

import javax.persistence.*;

@Entity
@Table(name = "ticket")
public class Ticket {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ticketID", nullable = false)
    private Long ticketID;

    @Column(nullable = false)
    private String time;
    @Column(nullable = false)
    private String date;
    @Column(nullable = false)
    private String seat;
    @Column(nullable = false)
    private double price;
    @Column(nullable = false, columnDefinition = "varchar(10) default 'Empty'")
    private String status;

    @ManyToOne(cascade = CascadeType.REMOVE)
    @JoinColumn(foreignKey=@ForeignKey(name="fk_movie"))
    private Movie movie;

    public Movie getMovie() {
        return movie;
    }

    public Long getTicketID() {
        return ticketID;
    }

    public void setTicketID(Long ticketID) {
        this.ticketID = ticketID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSeat() {
        return seat;
    }

    public void setSeat(String seat) {
        this.seat = seat;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
