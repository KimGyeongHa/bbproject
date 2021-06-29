package bb.project.oracledao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import bb.project.dao.CsDAO;
import bb.project.dto.CsDTO;
import lombok.Setter;

@Repository
@Setter
public class CsOracleDAO implements CsDAO {


	@Override
	public void insertOne(int csno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateOne(CsDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int csno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<CsDTO> csselectAll(int csno) {
		// TODO Auto-generated method stub
		return null;
	}

}
