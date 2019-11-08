package com.skilldistillery.MLB.dao;

import java.util.List;

import com.skilldistillery.MLB.entities.Players;

public interface MLBDAO {
	Players findById(int id);
	List<Players> findByTeam(String team);
	List<Players> findAll();
	Players createPlayer();
	Players updatePlayer();
	Players deletePlayer();
	
}
