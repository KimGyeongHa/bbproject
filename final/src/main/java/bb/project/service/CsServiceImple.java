package bb.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.CsDAO;
import bb.project.dto.CsDTO;
import lombok.Setter;

@Setter
@Service
public class CsServiceImple implements CsService {

	@Autowired
	@Qualifier("cs")
	CsDAO dao;
	
	
	@Override
	public void addCs(CsDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void updateCs(CsDTO dto) {
		dao.updateOne(dto);
		
	}

	@Override
	public void deleteCs(int csno) {
		dao.deleteOne(csno);
		
	}

	@Override
	public ArrayList<CsDTO> readAll(int csno) {
		ArrayList<CsDTO> list = dao.csselectAll(csno);
		return list;
	}

}
