package GG2021.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import GG2021.dao.GameDao;

@Controller
public class GameService {
	@Autowired
	private GameDao dao;
}
