package com.cinema.booking;

import java.util.Date;

public class Screening {
    private int id;
    private String title;
    private String description;
    private String director;
    private String actors;
    private int availableSeats;
    private Date time;

    public Screening(int id, String title, String description, String director, String actors, int availableSeats, Date time) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.director = director;
        this.actors = actors;
        this.availableSeats = availableSeats;
        this.time = time;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public int getAvailableSeats() {
        return availableSeats;
    }

    public void setAvailableSeats(int availableSeats) {
        this.availableSeats = availableSeats;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
