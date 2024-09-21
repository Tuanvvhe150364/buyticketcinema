/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author pc
 */
public class Movie {
    private int movieId;
    private int cinemaId;
    private String movieName;
    private String dimension;
    private String description;
    private int directorId;
    private String actor;
    private String language;
    private String trailer;
    private String avatarImage;
    private String duration;
    private Date releaseDate;

    public Movie() {
    }

    public Movie(int movieId, int cinemaId, String movieName, String dimension, String description, int directorId, String actor, String language, String trailer, String avatarImage, String duration, Date releaseDate) {
        this.movieId = movieId;
        this.cinemaId = cinemaId;
        this.movieName = movieName;
        this.dimension = dimension;
        this.description = description;
        this.directorId = directorId;
        this.actor = actor;
        this.language = language;
        this.trailer = trailer;
        this.avatarImage = avatarImage;
        this.duration = duration;
        this.releaseDate = releaseDate;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getCinemaId() {
        return cinemaId;
    }

    public void setCinemaId(int cinemaId) {
        this.cinemaId = cinemaId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getDimension() {
        return dimension;
    }

    public void setDimension(String dimension) {
        this.dimension = dimension;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDirectorId() {
        return directorId;
    }

    public void setDirectorId(int directorId) {
        this.directorId = directorId;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public String getAvatarImage() {
        return avatarImage;
    }

    public void setAvatarImage(String avatarImage) {
        this.avatarImage = avatarImage;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    @Override
    public String toString() {
        return "Movie{" + "movieId=" + movieId + ", cinemaId=" + cinemaId + ", movieName=" + movieName + ", dimension=" + dimension + ", description=" + description + ", directorId=" + directorId + ", actor=" + actor + ", language=" + language + ", trailer=" + trailer + ", avatarImage=" + avatarImage + ", duration=" + duration + ", releaseDate=" + releaseDate + '}';
    }
    
    
}
