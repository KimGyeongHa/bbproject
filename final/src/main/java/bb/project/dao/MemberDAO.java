package bb.project.dao;

import bb.project.dto.MemberDTO;

public interface MemberDAO {
	
	// MEMBER값 받아오는 DAO
		public void insertOne(MemberDTO dto);
		public void updateOne(MemberDTO dto);
		public void deleteOne(int mno);
	
	

}
