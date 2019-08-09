package global.sesoc.ajaxtest;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import global.sesoc.vo.Career;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
public class Ajax2Controller {
	@RequestMapping("/hana")
	public String hana(String name, int age){
		log.info(name + ", " + age);
		
		return "OK";
	}
	
	@RequestMapping(value = "/dool", method=RequestMethod.POST)
	public Career dool(Career career, int age){
		log.info(career.toString());
		log.info(age);
		return career;
	}
	
	@RequestMapping(value = "/sett", method=RequestMethod.POST)
	public ArrayList<Career> sett(@RequestBody ArrayList<Career> careers){
		log.info(careers.toString());
		return careers;
	}
	
	
}
