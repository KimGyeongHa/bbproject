package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.MemberDTO;

public interface MemberCommDAO {
	
	// Memcomm �޾ƿ��� Dao
		public void intsertOne(int bno);
		public void updateOne(MemberDTO dto);
		public void deleteOne(int bno);
		public ArrayList<MemberDTO> selectAll(int bno);
		public void updatehits(int bno);

}
