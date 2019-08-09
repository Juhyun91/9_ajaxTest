package global.sesoc.ajaxtest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String ajaxView(){
		
		return "index";
	}
	
	@RequestMapping("/next")
	public String next(){
		
		return "example2";
	}
}
