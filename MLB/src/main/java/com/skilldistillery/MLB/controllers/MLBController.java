package com.skilldistillery.MLB.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.MLB.dao.MLBDAO;
import com.skilldistillery.MLB.entities.Players;

@Controller
public class MLBController {

	@Autowired
	private MLBDAO dao;

	@RequestMapping(path = "/")
	public ModelAndView welcomePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(path = "playerLookup.do")
	public ModelAndView playerLookup() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("playerLookup");
		return mv;
	}

	@RequestMapping(path = "lookupByID.do")
	public ModelAndView lookupByID() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lookupByID");
		return mv;
	}

	@RequestMapping(path = "playerByID.do", method = RequestMethod.GET)
	public ModelAndView resultByID(int id) {
		ModelAndView mv = new ModelAndView();
		List<Players> playerList = new ArrayList<Players>();
		Players playerResult = new Players();
		playerResult = dao.findById(id);
		if (playerResult != null) {
			playerList.add(playerResult);
		}
		mv.addObject("player", playerList);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		mv.setViewName("Results");
		return mv;
	}

	@RequestMapping(path = "lookupByKey.do")
	public ModelAndView LookupByKeyword() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("lookupByKey");
		return mv;
	}

	@RequestMapping(path = "playersByKey.do", params = "key", method = RequestMethod.GET)
	public ModelAndView resultByKeyword(String key) {
		ModelAndView mv = new ModelAndView();
		List<Players> playerList = dao.findByKey(key);
		mv.addObject("player", playerList);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		mv.setViewName("Results");
		return mv;
	}

	@RequestMapping(path = "playerCreate.do")
	public ModelAndView playerCreate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("playerCreate");
		return mv;
	}

	@RequestMapping(path = "playerCreate.do", method = RequestMethod.POST)
	public ModelAndView playerCreateResult(Players player) {
		ModelAndView mv = new ModelAndView();
		List<Players> p = new ArrayList<>();
		Players playerResult;
		playerResult = dao.createPlayer(player);
		if (!playerResult.equals(null)) {
			p.add(dao.findById(playerResult.getId()));
			mv.addObject("player", p);
			mv.addObject("createStatus", false);
			mv.setViewName("Results");
		} else {
			mv.addObject("createStatus", true);
			mv.setViewName("playerCreate");
		}
		return mv;
	}

	@RequestMapping(path = "playerUpdate.do", params = "id", method = RequestMethod.GET)
	public ModelAndView playerUpdate(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("player", dao.findById(id));
		mv.setViewName("playerUpdate");
		return mv;
	}

	@RequestMapping(path = "playerUpdate.do", method = RequestMethod.POST)
	public ModelAndView playerUpdateResult(Players player) {
		ModelAndView mv = new ModelAndView();
//		System.out.println(film.allDetails());
		List<Players> p = new ArrayList<>();
		if (dao.updatePlayer(player)) {
			p.add(dao.findById(player.getId()));
			mv.addObject("player", p);
			mv.addObject("updateStatus", true);
			mv.setViewName("Results");
		} else {
			mv.addObject("updateStatus", true);
			mv.setViewName("playerUpdate");
		}
		return mv;
	}

	@RequestMapping(path = "playerDelete.do", params = "id", method = RequestMethod.GET)
	public ModelAndView playerDelete(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("player", dao.findById(id));
		mv.setViewName("playerDelete");
		return mv;
	}

	@RequestMapping(path = "playerDelete.do", method = RequestMethod.POST)
	public ModelAndView playerDeleteResult(Players player) {
		ModelAndView mv = new ModelAndView();
//		System.out.println(film.allDetails());
		List<Players> p = new ArrayList<>();
		if (dao.deletePlayer(player.getId())) {
			mv.addObject("player", p);
			mv.addObject("deleteStatus", true);
			mv.setViewName("Results");
		} else {
			p.add(player);
			mv.addObject("player", player);
			mv.addObject("deleteStatus", true);
			mv.setViewName("Results");
		}
		return mv;
	}

}
