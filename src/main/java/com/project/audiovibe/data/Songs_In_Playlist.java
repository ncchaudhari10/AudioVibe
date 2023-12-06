package com.project.audiovibe.data;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Songs_In_Playlist")
public class Songs_In_Playlist {

    @Id
    @Column(name = "playlist_id")
    private Integer playlistId;

    @Column(name = "song_id")
    private Integer songId;

    public Integer getPlaylistId() {
        return playlistId;
    }

    public void setPlaylistId(Integer playlistId) {
        this.playlistId = playlistId;
    }


    public Integer getSongId() {
        return songId;
    }

    public void setSongId(Integer songId) {
        this.songId = songId;
    }
}


