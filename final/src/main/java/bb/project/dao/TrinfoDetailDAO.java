package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.TrinfoDTO;

public interface TrinfoDetailDAO {
	
	// TrinfoDetail 받아오는 dao
		public void intsertOne(int bno);
		public void updateOne(TrinfoDTO dto);
		public void deleteOne(int bno);
		public ArrayList<TrinfoDTO> selectAll(int bno); 

}
