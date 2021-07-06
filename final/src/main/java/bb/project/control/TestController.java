package bb.project.control;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bb.project.dao.TrinfoDAO;
import bb.project.dto.MemberDTO;
import bb.project.dto.MemberDetailDTO;
import bb.project.dto.MemberAUTHDTO;
import bb.project.dto.TrinfoDTO;
import bb.project.dto.TrinfoDetailDTO;
import bb.project.service.MemberDetailService;
import bb.project.service.MemberService;
import bb.project.service.TrinfoDetailService;
import bb.project.service.MemberAUTHSERVICE;
import bb.project.service.TrinfoService;
import lombok.Setter;


@Setter
@Controller
public class TestController {
	
	BCryptPasswordEncoder pe = new BCryptPasswordEncoder();
	
	
	@Autowired
	MemberService ms;
	@Autowired
	MemberDetailService mds;
	@Autowired
	MemberAUTHSERVICE auth;
	@Autowired
	FileValidator fileValidator;
	@Autowired
	TrinfoService tfs;
	@Autowired
	TrinfoDetailService tfds;

	
	@GetMapping("/addmember")
	public String insert() {
		return "insertForm";
	}
	
	
	@GetMapping("/test")
	public String test1() {
		return "test";
	}
	
	@PostMapping("/addmember")
	public String insert(@ModelAttribute MemberDTO dto,MemberDetailDTO dto1,MemberAUTHDTO dto2){
			
		String pwd = dto.getPw();
		dto.setPw(pe.encode(pwd));
	
		ms.addmember(dto);
		mds.addetc(dto1);
		auth.addauto(dto2);
		
		
		return "redirect:/main";
	}
	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	

	  @RequestMapping("/Login") public String login() { 
		  return"Login";
		  }
	 
	  @RequestMapping("/Logout") public String logout() {
		  return "Logout";
	  }
	
	  @RequestMapping("/spring")public String spring() {
		  return "spring";
	  }

	 
	  @GetMapping("/trinfotest")
	  public String	trinfotestForm() {
			return "trinfotest";
		}
	  
	  @PostMapping("/trinfotest")
	  	public String trinfotest(@ModelAttribute TrinfoDTO dto,@ModelAttribute TrinfoDetailDTO dto1,
	  			@ModelAttribute("uploadfile")UploadFile file,
	  			HttpServletRequest req,BindingResult result) {
	
		  
			
			 fileValidator.validate(file, result);
			 if(result.hasErrors()) { 
				 return "trinfotest"; }
			 
		  HttpSession session = req.getSession();
		  
		  ServletContext application = session.getServletContext();
		  
		  MultipartFile mfile = file.getFile();
		  
		  
		  String filePath = application.getRealPath("/data");
		  String fileName = mfile.getOriginalFilename();
		  
		  File f = new File(filePath + "/"+fileName);
		  
		  dto.setTrimg(filePath+"/"+fileName);
		  
		  tfs.insert(dto);
		  tfds.addtrdetail(dto1);
		  
		  try {
				mfile.transferTo(f);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  
		  
		  return "redirect:/main"; 
	  }
	  
	
	  
	
	
}
	
	

