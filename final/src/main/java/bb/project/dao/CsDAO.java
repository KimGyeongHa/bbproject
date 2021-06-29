package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.CsDTO;

public interface CsDAO {
	
	//CS값 받아오는 DAO
		public void insertOne(int csno);
		public void updateOne(CsDTO dto);
		public void deleteOne(int csno);
		public ArrayList<CsDTO> csselectAll(int csno);
		

}
