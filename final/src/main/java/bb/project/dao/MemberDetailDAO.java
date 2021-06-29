package bb.project.dao;

import java.util.ArrayList;

import bb.project.dto.MemberDetailDTO;

public interface MemberDetailDAO {
	
	// MemberDetail 받아오는 dao
		public void intsertOne(int mno);
		public ArrayList<MemberDetailDTO> selectAll(int bno);
		public void updateOne(int mno);

}
