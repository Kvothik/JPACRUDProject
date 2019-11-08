package com.skilldistillery.MLB.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.MLB.entities.Players;

@Service
@Transactional
public class MLBDAOImpl implements MLBDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Players findById(int id) {
		return em.find(Players.class, id);
	}

	@Override
	public List<Players> findByTeam(String team) {
		String query = "select players from Players players where players.team = :team";
		List<Players> results = em.createQuery(query, Players.class).setParameter(1, team).getResultList();
		return results;
	}

	@Override
	public List<Players> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Players createPlayer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Players updatePlayer() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Players deletePlayer() {
		// TODO Auto-generated method stub
		return null;
	}

}
