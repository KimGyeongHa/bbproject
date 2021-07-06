package bb.project.service;

import java.util.ArrayList;

import bb.project.dto.TrinfoDTO;
import bb.project.dto.TrinfoDetailDTO;

public interface TrinfoDetailService {
	public void addtrdetail(TrinfoDetailDTO dto);
	public void updatedetail(TrinfoDetailDTO dto);
	public void deletedetail(int bno);
	public ArrayList<TrinfoDetailDTO> readAll(int bno);
 
}
