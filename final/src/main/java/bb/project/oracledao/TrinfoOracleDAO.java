package bb.project.oracledao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.TrinfoDTO;
import lombok.Setter;

@Repository
@Setter
public class TrinfoOracleDAO implements TrinfoDAO {

	@Autowired
	SqlSession ss;
	
	@Override
	public void selectOne(int bno) {
		// TODO Auto-generated method stub
		ss.selectOne("bb.project.dao.TrinfoDAO.insertOne");
	}

	@Override
	public void insertOne(TrinfoDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(TrinfoDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int bno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<TrinfoDTO> selectAll(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updatehits(int bno) {
		// TODO Auto-generated method stub
		
	}

	
	

}
