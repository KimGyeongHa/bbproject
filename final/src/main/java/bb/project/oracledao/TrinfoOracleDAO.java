package bb.project.oracledao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.TrinfoDTO;
import lombok.Setter;

@Repository("trinfo")
@Setter
public class TrinfoOracleDAO implements TrinfoDAO {

	@Autowired
	private SqlSession ss;
	
	@Override
	public void selectOne(int bno) {
		
		ss.selectOne("bb.project.dao.TrinfoDAO.selectOne",bno);
	}

	@Override
	public void insertOne(TrinfoDTO dto) {
		ss.insert("bb.project.dao.TrinfoDAO.insertOne", dto);
		
	}

	@Override
	public void updateOne(TrinfoDTO dto) {
		ss.update("bb.project.dao.TrinfoDAO.updateOne", dto);
		
	}

	@Override
	public void deleteOne(int bno) {
		ss.delete("bb.project.dao.TrinfoDAO.deleteOne",bno);
		
	}

	@Override
	public ArrayList<TrinfoDTO> selectAll(int bno) {
		ArrayList<TrinfoDTO> list = new ArrayList<TrinfoDTO>();
		ss.selectList("bb.project.dao.TrinfoDAO.selectAll", bno);
		return list;
	}

	@Override
	public void updatehits(int bno) {
		ss.update("bb.project.dao.TrinfoDAO.updatehits",bno);
		
	}

	
	

}
