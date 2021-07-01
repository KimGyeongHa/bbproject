package bb.project.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Logcontroller {
	@RequestMapping(value = "/Login")
	public void login(String error,String logout,Model model) {
		
		if(error != null) {
			model.addAttribute("error","로그인 중 에러 발생");
		}else if(logout != null) {
			model.addAttribute("logout","logout");
	}
		}
	@RequestMapping(value = "/fp/Logout")
	public void logoutGet() {
		System.out.println("커스텀 로그아웃");
	}
	
	
}
