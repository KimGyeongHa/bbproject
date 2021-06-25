package bb.project.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("/")
	public String test() {
		return "test";
	}
	@RequestMapping("/photos")
	public String photos() {
		return "photos";
	}
}
