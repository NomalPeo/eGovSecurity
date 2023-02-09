package egovframework.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SecurityController {

	@RequestMapping(value="/main.do")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value="/page.do")
	public String page() throws Exception {
		return "/page";
	}
	
	@RequestMapping(value="/user/page.do")
	public String userPage() throws Exception {
		return "/user/page";
	}
	
	@RequestMapping(value="/member/page.do")
	public String memberPage() throws Exception {
		return "/member/page";
	}
	
	@RequestMapping(value="/admin/page.do")
	public String adminPage() throws Exception {
		return "/admin/page";
	}
	 @RequestMapping(value="/secu/loginPage.do")
	 public String loginpage() throws Exception {
	    return "/secu/loginPage";
	 }
	 
	/* @RequestMapping(value="/login.do")
	 public String loing_ok() throws Exception {
		 return "main";
	 }*/
	 
	 @RequestMapping(value="/access_denied_page.do")
	    public String accessDeniedPage() throws Exception {
	        return "/access_denied_page";
	    }
	 
	 @RequestMapping(value="/access_denied.do")
	    public ModelAndView accessDenied() throws Exception {
	    	ModelAndView mv = new ModelAndView("/goIndex");
	    	mv.addObject("msg", "접근 권한이 없습니다.");
	    	mv.addObject("url", "/");
	    	return mv;
	    }


}
