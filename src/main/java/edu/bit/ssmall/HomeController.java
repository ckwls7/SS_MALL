package edu.bit.ssmall;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "home";

	}	
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage(Model model) {

		return "myPage";
	}
	
	@RequestMapping(value = "/homeview", method = RequestMethod.GET)
	public String home2(Model model) {

		return "home";


	}
	@RequestMapping(value = "/AccessDenine", method = RequestMethod.GET)
	public String AccessDenine(Model model) {

		return "AccessDenine";

	}
	
}
