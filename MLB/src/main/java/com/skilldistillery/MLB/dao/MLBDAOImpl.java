package com.skilldistillery.MLB.dao;

import java.util.ArrayList;
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
	public List<Players> findByKey(String key) {
		String query = "select p from Players p where p.team = :key1 or p.firstName = :key2 or p.lastName = :key3";
		List<Players> results = em.createQuery(query, Players.class).setParameter("key1", key).setParameter("key2", key)
				.setParameter("key3", key).getResultList();

		return results;
	}

	@Override
	public List<Players> findAll() {
		String query = "select p from Players p";
		List<Players> results = em.createQuery(query, Players.class).getResultList();
		return results;
	}

	@Override
	public Players createPlayer(Players player) {
		Players p = player;
		em.persist(p);
		return p;
	}

	@Override
	public boolean updatePlayer(Players player) {
		Players p = em.find(Players.class, player.getId());
		p.setFirstName(player.getFirstName());
		p.setLastName(player.getLastName());
		p.setHomeruns(player.getHomeruns());
		p.setRbi(player.getRbi());
		p.setBattingAverage(player.getBattingAverage());
		p.setPosition(player.getPosition());
		p.setTeam(player.getTeam());
		p.setAge(player.getAge());
		p.setUniformNumber(player.getUniformNumber());
		return true;
	}

	@Override
	public boolean deletePlayer(int id) {
		Players p = em.find(Players.class, id);
		em.remove(p);
		return true;
	}

}
