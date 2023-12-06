package com.project.audiovibe.controller;


import com.project.audiovibe.dao.PlaylistRepository;
import com.project.audiovibe.data.Songs;
import com.project.audiovibe.dto.request.PlaylistDTO;
import com.project.audiovibe.dto.request.songToAdd;
import com.project.audiovibe.service.PlaylistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/playlist")
public class PlaylistController {

    @Autowired
    private PlaylistRepository dao;

    @Autowired
    private PlaylistService service;
    @PostMapping("/create")
    public String createPlaylist(@RequestBody PlaylistDTO dto){
        try {
            dao.createPlaylist(dto.getUser_id(),dto.getPlaylist_name());
            return  "Success";
        }
        catch (Exception e)
        {
            return "Failed, "+e.getCause().toString();
        }
    }

    @PostMapping("/addSongInPlayList")
    public String addSongInPlaylist(@RequestBody songToAdd dto)
    {
        return service.addSongInPlaylist(dto);
    }

    @PostMapping("/removeSongInPlayList")
    public String removeSongInPlayList(@RequestBody songToAdd dto)
    {
        return service.removeSongInPlayList(dto);
    }

    @GetMapping("/")
    public List<Songs> viewSongInPlaylist(@RequestParam("playlistId") Integer playlistId)
    {
        return service.getSongsInPlaylist(playlistId);
    }

    @GetMapping("/playSong")
    public Object playSong(@RequestParam("user_id") Integer userId, @RequestParam("playlist_id") Integer playlistId)
    {
        return service.playSong(userId,playlistId);

    }

}
