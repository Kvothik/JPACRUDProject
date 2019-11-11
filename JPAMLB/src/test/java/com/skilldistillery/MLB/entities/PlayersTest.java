package com.skilldistillery.MLB.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PlayersTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Players p;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("MLB");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		p = em.find(Players.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		p = null;
	}

	@Test
	void testEntityFirstName() {
		assertEquals("Carlos", p.getFirstName());
	}

	@Test
	void testEntityLastName() {
		assertEquals("Correa", p.getLastName());
	}

	@Test
	void testEntityHomeruns() {
		assertEquals(21, p.getHomeruns());
	}

	@Test
	void testEntityRbi() {
		assertEquals(59, p.getRbi());
	}
	@Test
	void testEntityBattingAverage() {
		assertEquals(0.279, p.getBattingAverage());
	}

	@Test
	void testEntityPosition() {
		assertEquals("short stop", p.getPosition());
	}

	@Test
	void testEntityTeam() {
		assertEquals("Astros", p.getTeam());
	}

	@Test
	void testEntityAge() {
		assertEquals(25, p.getAge());
	}

	@Test
	void testEntityUniformNumber() {
		assertEquals(1, p.getUniformNumber());
	}

}
