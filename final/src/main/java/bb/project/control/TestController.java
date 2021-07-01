package bb.project.control;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.MemberDTO;
import bb.project.dto.MemberDetailDTO;
import bb.project.dto.TrinfoDTO;
import bb.project.service.MemberDetailService;
import bb.project.service.MemberService;
import bb.project.service.TrinfoService;
import lombok.Setter;


@Setter
@Controller
public class TestController {
	
	
	@Autowired
	MemberService ms;
	@Autowired
	MemberDetailService mds;
	
	@RequestMapping("photos")
	public String test() {
		return "photos";
	}
	
	
	@GetMapping("/addmember")
	public String insert() {
		return "insertForm";
	}
	
	
	@PostMapping("/addmember")
	public String insert(@ModelAttribute MemberDTO dto,MemberDetailDTO dto1) {
		
		ms.addmember(dto);
		mds.addetc(dto1);
		
		
		return "redirect:/photos";
	}
	

	
	
}
