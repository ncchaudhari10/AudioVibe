package com.project.audiovibe.dao;

import com.project.audiovibe.data.Playlists;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface PlaylistRepository extends JpaRepository<Playlists, String> {

    @Query(value = "select InsertPlaylist(:user_id,:playlist_name)",nativeQuery = true)
    void  createPlaylist(@Param("user_id") String user_id, @Param("playlist_name") String playlist_name);

//    @Procedure("GetSongsInPlaylist")
//    Object getSongsInPlaylist(String playlistName);


    @Procedure(name = "AddSongToPlaylist")
    void AddSongToPlaylist(@Param("p_user_id") Integer p_user_id,
                           @Param("p_playlist_name") String p_playlist_name,
                           @Param("p_song_id") Integer p_song_id);



    @Procedure(name = "RemoveSongFromPlaylist",outputParameterName = "p_result")
    boolean RemoveSongFromPlaylist(@Param("p_user_id") Integer p_user_id, @Param("p_playlist_name") String p_playlist_name, @Param("p_song_id") Integer p_song_id);


}
