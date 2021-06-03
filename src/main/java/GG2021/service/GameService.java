package GG2021.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import GG2021.dao.GameDao;
import GG2021.model.All_Game;

@Controller
public class GameService {
	@Autowired
	private GameDao dao;
	
	public List<All_Game> getGameList(String state){
		return dao.getGameList(state);
		
	}

		public List<All_Game> getGameListz()	{
			return dao.getGameListz();

	}
	
}
