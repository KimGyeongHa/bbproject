package bb.project.service;

import java.util.ArrayList;

import bb.project.dto.CsDTO;

public interface CsService {
	
	public void addCs(CsDTO dto);
	public void updateCs(CsDTO dto);
	public void deleteCs(int csno);
	public ArrayList<CsDTO> readAll(int csno);
}
