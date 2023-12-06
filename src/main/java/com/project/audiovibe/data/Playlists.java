package com.project.audiovibe.data;

import jakarta.persistence.*;
import java.util.Date;


@Entity
@Table(name = "Playlists")
public class Playlists {

    @Id
    private String playlist_id;

    private String user_id;

    private Date timeCreated;

    private String playlist_name;

    public String getPlaylist_id() {
        return playlist_id;
    }

    public void setPlaylist_id(String playlist_id) {
        this.playlist_id = playlist_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Date getTimeCreated() {
        return timeCreated;
    }

    public void setTimeCreated(Date timeCreated) {
        this.timeCreated = timeCreated;
    }

    public String getPlaylist_name() {
        return playlist_name;
    }

    public void setPlaylist_name(String playlist_name) {
        this.playlist_name = playlist_name;
    }
}
