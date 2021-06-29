package bb.project.dao;


import java.util.ArrayList;

import bb.project.dto.CsDTO;
import bb.project.dto.MemberDTO;
import bb.project.dto.MemberDetailDTO;
import bb.project.dto.TrinfoDTO;

public interface TrinfoDAO {
	

	// Trinfo 값 받아오는 DAO
	public void selectOne(int bno);
	public void insertOne(TrinfoDTO dto);
	public void updateOne(TrinfoDTO dto);
	public void deleteOne(int bno);
	public ArrayList<TrinfoDTO> selectAll(int bno);
	public void updatehits(int bno);
	
	
	
}
