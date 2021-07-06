package bb.project.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dto.TrinfoDetailDTO;
import bb.project.oracledao.TrinfoDetailOracleDAO;
import lombok.Setter;


@Service
@Setter
public class TrinfoDetailServiceImple implements TrinfoDetailService {

	@Autowired
	@Qualifier("detaildao")
	TrinfoDetailOracleDAO dao;
	
	@Override
	public void addtrdetail(TrinfoDetailDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void updatedetail(TrinfoDetailDTO dto) {
		dao.updateOne(dto);
		
	}

	@Override
	public void deletedetail(int bno) {
		dao.deleteOne(bno);
		
	}

	@Override
	public ArrayList<TrinfoDetailDTO> readAll(int bno) {
		ArrayList<TrinfoDetailDTO> list = dao.selectAll(bno);
		return list;
	}

}
