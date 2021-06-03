package GG2021.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import GG2021.model.All_Game;

@Repository
public class GameDao {
	@Autowired
	private SqlSession session;
	
	public List<All_Game> getGameList(String state){
		return session.selectList("getGameList",state);
	}
	

	public List<All_Game> getGameListz()	{
		return session.selectList("game_list");
	}
}
