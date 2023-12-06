package com.project.audiovibe.data;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Songs {

    private String title;

    private String genre;

    private Integer artist_id;


    @Id
    private Integer song_id;

    private Integer likes;

    @Column(name = "play_count")
    private Integer playCounts;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public Integer getArtist_id() {
        return artist_id;
    }

    public void setArtist_id(Integer artist_id) {
        this.artist_id = artist_id;
    }

    public Integer getSong_id() {
        return song_id;
    }

    public void setSong_id(Integer song_id) {
        this.song_id = song_id;
    }

    public Integer getLikes() {
        return likes;
    }

    public void setLikes(Integer likes) {
        this.likes = likes;
    }

    public Integer getPlayCounts() {
        return playCounts;
    }

    public void setPlayCounts(Integer playCounts) {
        this.playCounts = playCounts;
    }
}
