package bb.project.service;

import java.util.ArrayList;
import java.util.List;

import bb.project.dto.TrinfoDTO;
import lombok.Setter;


public interface TrinfoService {
	
	public int alldata();
	public void update(TrinfoDTO dto);
	public void insert(TrinfoDTO dto);
	public void delete(int bno);
	public void uphits(int bno);
	public TrinfoDTO selectone(String id);
	public List<TrinfoDTO> selectinfo(int StartNum,int EndNum);
	public List<TrinfoDTO> selectAll(int type);
}
