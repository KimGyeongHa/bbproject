package bb.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bb.project.dao.MemberDAO;
import bb.project.dto.MemberDTO;
import lombok.Setter;

@Service
@Setter
public class MemberServiceImple implements MemberService{

	@Autowired
	MemberDAO dao;
	
	@Override
	public void addmember(MemberDTO dto) {
		dao.insertOne(dto);
		
	}

	@Override
	public void deletemember(int mno) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatemember(MemberDTO dto) {
		// TODO Auto-generated method stub
		
	}

}
