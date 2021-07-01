package bb.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import bb.project.dao.MemberDAO;
import bb.project.dto.MemberDTO;
import lombok.Setter;

@Service
@Setter
public class MemberServiceImple implements MemberService{

	@Autowired
	@Qualifier("mdao")
	MemberDAO dao;
	
	@Override
	public void addmember(MemberDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void deletemember(String id) {
		dao.deleteOne(id);
		
	}

	@Override
	public void updatemember(MemberDTO dto) {
		dao.updateOne(dto);
		
	}

}
