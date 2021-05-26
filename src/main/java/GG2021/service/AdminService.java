package GG2021.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.AdminDao;

@Service
public class AdminService {
	@Autowired
	private AdminDao dao;
}
