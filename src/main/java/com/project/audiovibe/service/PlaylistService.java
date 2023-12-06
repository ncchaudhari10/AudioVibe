package com.project.audiovibe.service;

import com.project.audiovibe.dao.AdRepo;
import com.project.audiovibe.dao.LoginRepository;
import com.project.audiovibe.dao.PlaylistRepository;
import com.project.audiovibe.dao.SongsRepository;
import com.project.audiovibe.data.Songs;
import com.project.audiovibe.data.User;
import com.project.audiovibe.dto.request.songToAdd;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

import static java.lang.Math.random;

@Service
@Transactional
public class PlaylistService
{

    @Autowired
    private PlaylistRepository dao;

    @Autowired
    private AdRepo adRepo;
    @Autowired
    private LoginRepository loginRepository;
    @Autowired
    private SongsRepository songsRepository;
    public List<Songs> getSongsInPlaylist(Integer playlistName) {

        return songsRepository.GetSongsInPlaylist(playlistName);

    }

    public String addSongInPlaylist(songToAdd dto) {
        dao.AddSongToPlaylist(dto.getUser_id(), dto.getPlaylist_name(), dto.getSong_id());
            return "song added";

    }

    public String removeSongInPlayList(songToAdd dto) {
        Boolean res = dao.RemoveSongFromPlaylist(dto.getUser_id(), dto.getPlaylist_name(), dto.getSong_id());
        if(res) {
            return "song removed";
        }
        else{
            return "error";
        }
    }


    public Object playSong(Integer userId, Integer playlistId) {
        Songs song = songsRepository.PickRandomSongForUser( playlistId);
        System.out.println(song.getSong_id());

        User user = loginRepository.GetByUserID(userId);
        if(user.getPlan_id() == 1 && Math.random() <0.2)
        {
            return adRepo.GetAd();
        }
        else
        {
            int i = song.getPlayCounts() + 1;
            song.setPlayCounts(i);
            songsRepository.save(song);
            return songsRepository.findById(song.getSong_id());
        }
    }
}
