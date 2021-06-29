package bb.project.oracledao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.MemberDAO;
import bb.project.dto.MemberDTO;
import lombok.Setter;

@Repository
@Setter
public class MemberOracleDAO implements MemberDAO {

	@Autowired
	SqlSession ss;
	
	@Override
	public void insertOne(MemberDTO dto) {
		ss.insert("bb.project.dao.MemberDAO.insertOne",dto);
	}

	@Override
	public void updateOne(MemberDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int mno) {
		// TODO Auto-generated method stub
		
	}

}
