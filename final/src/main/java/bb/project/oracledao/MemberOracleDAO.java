package bb.project.oracledao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import bb.project.dao.MemberDAO;
import bb.project.dto.MemberDTO;
import lombok.Setter;

@Repository("mdao")
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
		ss.update("bb.project.dao.MemberDAO.updateOne",dto);
		
	}

	@Override
	public void deleteOne(String id) {
		ss.delete("bb.project.dao.MemberDAO.deleteOne",id);
		
		
		
	}


}
