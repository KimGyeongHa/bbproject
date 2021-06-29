package bb.project.service;

import bb.project.dto.MemberDTO;

public interface MemberService {
	
	public void addmember(MemberDTO dto);
	public void deletemember(int mno);
	public void updatemember(MemberDTO dto);
	
}
