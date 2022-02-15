package com.example.bookingmovies.entity;

import javax.persistence.*;

@Entity
@Table(name = "movie")
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movieID", nullable = false)
    private Long movieID;

    @Column(nullable = false, unique = true)
    private String movieName;

    private String description;

    private String image;

    @Column(nullable = false)
    private String director;
    @Column(nullable = false)
    private String actor;
    @Column(nullable = false)
    private String type;
    @Column(nullable = false)
    private String time;
    @Column(nullable = false)
    private String premiereDate;
    @Column(nullable = false)
    private int numberOfTickets;

    public Long getMovieID() {
        return movieID;
    }

    public void setMovieID(Long movieID) {
        this.movieID = movieID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getPremiereDate() {
        return premiereDate;
    }

    public void setPremiereDate(String premiereDate) {
        this.premiereDate = premiereDate;
    }

    public int getNumberOfTickets() {
        return numberOfTickets;
    }

    public void setNumberOfTickets(int numberOfTickets) {
        this.numberOfTickets = numberOfTickets;
    }
        public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
