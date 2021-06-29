package bb.project.service;

import java.util.ArrayList;

import bb.project.dto.TrinfoDTO;
import lombok.Setter;


public interface TrinfoService {
	
	
	public ArrayList<TrinfoDTO> readAll(int bno);
	public void update(TrinfoDTO dto);
	public void insert(TrinfoDTO dto);
	public void delete(int bno);
	public void uphits(int bno);
	
}
