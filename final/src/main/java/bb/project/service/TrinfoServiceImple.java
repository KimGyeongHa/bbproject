package bb.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.TrinfoDTO;

public class TrinfoServiceImple implements TrinfoService {

	@Autowired
	TrinfoDAO dao;
	
	@Override
	public ArrayList<TrinfoDTO> readAll(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(TrinfoDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(TrinfoDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void delete(int bno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void uphits(int bno) {
		// TODO Auto-generated method stub
		
	}

}
