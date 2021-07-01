package bb.project.control;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.MemberDTO;
import bb.project.dto.TrinfoDTO;
import bb.project.service.MemberService;
import bb.project.service.TrinfoService;
import lombok.Setter;


@Setter
@Controller
public class TestController {
	
	
	@Autowired
	MemberService ms;
	

	
	@GetMapping("/addmember")
	public String insert() {
		return "insertForm";
	}
	
	
	@PostMapping("/addmember")
	public String insert(@ModelAttribute MemberDTO dto) {
		
		ms.addmember(dto);
		return "redirect:/photos";
	}
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/session")
	public String session() {
		return "session";
	}
	@RequestMapping("/spring")
	public String spring() {
		return "spring";
	}
	@RequestMapping("/summer")
	public String summer() {
		return "summer";
	}
	@RequestMapping("/fall")
	public String fall() {
		return "fall";
	}
	@RequestMapping("/winter")
	public String winter() {
		return "winter";
	}
	@RequestMapping("/recommended")
	public String recommended() {
		return "recommended";
	}
	@RequestMapping("/best10")
	public String best10() {
		return "best10";
	}
}
	
	

