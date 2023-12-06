package com.project.audiovibe.dao;

import com.project.audiovibe.data.Songs;
import com.project.audiovibe.data.advertisement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SongsRepository extends JpaRepository<Songs,Integer> {


    @Procedure(name = "GetSongsInPlaylist")
    List<Songs> GetSongsInPlaylist(@Param("p_playlist_id") Integer p_playlist_id);

    @Procedure(name = "PickRandomSongForUser")
    Songs PickRandomSongForUser(@Param("p_playlist_id") Integer p_playlist_id);


}
