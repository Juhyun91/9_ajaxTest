package global.sesoc.ajaxtest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import global.sesoc.vo.Career;

@RestController //Ajax 처리하는 것들로만 이루어졌을때 사용 (리턴값이 데이터), ResponseBody를 각각 줄 필요없다
public class AjaxController {
	
	@RequestMapping("/ajaxone")
	public String ajaxone(){
		
		return "OK";
	}
	
	@RequestMapping("/ajaxtwo")
	public Career ajaxtwo(){
		Career career = new Career("(주)모모", "직원");
		return career;
	}
	
	@RequestMapping("/ajaxthree")
	public List<Career> ajaxthree(){
		List<Career> list = new ArrayList<>();
		list.add(new Career("(주)모모", "직원"));
		list.add(new Career("(주)태평양", "주임"));
		list.add(new Career("(주)대서양", "대리"));
		list.add(new Career("(주)인도양", "과장"));
		
		return list;
	}
	
	@RequestMapping("/ajaxfour")
	public Map<String, Career> ajaxfour(){
		Map<String, Career> map = new HashMap<>();
		
		map.put("one", new Career("(주)한라", "부장"));
		map.put("two", new Career("(주)백두", "이사"));
		
		return map;
	}
}
