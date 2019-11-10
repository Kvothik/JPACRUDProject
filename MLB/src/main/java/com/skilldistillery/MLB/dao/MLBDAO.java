package com.skilldistillery.MLB.dao;

import java.util.List;

import com.skilldistillery.MLB.entities.Players;

public interface MLBDAO {
	Players findById(int id);
	List<Players> findByKey(String key);
	List<Players> findAll();
	Players createPlayer(Players player);
	boolean updatePlayer(Players player);
	boolean deletePlayer(int id);
	
}
