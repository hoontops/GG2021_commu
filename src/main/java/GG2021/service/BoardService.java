package GG2021.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.BoardDao;

@Service
public class BoardService {
	@Autowired
	private BoardDao dao;
	
}
