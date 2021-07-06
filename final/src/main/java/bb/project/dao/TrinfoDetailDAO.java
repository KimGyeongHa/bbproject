package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.TrinfoDTO;
import bb.project.dto.TrinfoDetailDTO;

public interface TrinfoDetailDAO {
	
	// TrinfoDetail 받아오는 dao
		public void insertOne(TrinfoDetailDTO dto);
		public void updateOne(TrinfoDetailDTO dto);
		public void deleteOne(int bno);
		public ArrayList<TrinfoDetailDTO> selectAll(int bno); 

}
