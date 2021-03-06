package kr.signal.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonObject;

import kr.signal.Service.loginService;
import kr.signal.domain.t_qna;
import kr.signal.domain.t_user;

@Controller
public class page_test_Controller {
	
	// 수정 제바아알
	// kr.signal.service 패키지 - loginService.java 불러오기
	@Autowired
	loginService service;
	
	@GetMapping("/")
	public String main() { // Http://127.0.0.1:8081/web/
		return "main";
	}
	@RequestMapping("/login_test")
	public String login_test(){
		return "login_test";
	}
	
	@PostMapping("/loginGO")
	public String login(t_user vo, HttpSession session) {
		t_user t_user = service.login_test(vo);
		if(t_user != null) { // 회원인증 성공
			session.setAttribute("t_user", t_user);
		}
		return "redirect:/";
	}
	
	
	@GetMapping("/logoutdo")
	public String logoutdo(HttpSession session) {
		// HttpSession session=request.getSession()
		session.invalidate(); // 세션무효화, 로그아웃
		return "redirect:/";
	}
	

	@GetMapping("/detailpage")
	public String detailpage() {
		return "detailpage";
	}
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@GetMapping("/java_page")
	public String java_page() {
		return "java_page";
	}
	@GetMapping("/main")
	public String index() {
		return "main";
	}
	@GetMapping("/js_page")
	public String js_page() {
		return "js_page";
	}
	
	@GetMapping("/userpage")
	public String userpage() {
		return "userpage";
	}

//	@PostMapping("/t_userqna")
//	public @ResponseBody List<t_qna> t_userqna(String u_id){
//		System.out.println("controller");
//		System.out.println(u_id);
//		List<t_qna> list = service.t_userqna(u_id);
//		return list;
//	}
	
	@PostMapping(value="/signup")
	public String userlist(t_user vo) {
		service.joinInsert(vo);
		return "redirect:/";
	}
	
	@RequestMapping("/userUpdatedo")
	public String userUpdatedo(@ModelAttribute t_user vo, HttpSession session) {
		System.out.println("가져와져");
		System.out.println(vo.getU_id());
		service.userUpdatedo(vo);
		if(service.userUpdatedo(vo)==1) { // 회원인증 성공
			System.out.println("=============================");
			session.setAttribute("t_user", vo);	
		}
		return "redirect:/";
	}
	
	@RequestMapping("/userUpdate")
	public String userUpdate() {
		return "userUpdate";
	}
	
	@GetMapping("/urlPage")
	public String urlPage() {
		return "urlPage";
	}
	@GetMapping("/qnaInsert")
	public String qnaInsert(t_qna vo) {
		System.out.println(vo.getU_id());
		service.qnaInsert(vo);
		return "redirect:/";
	}



}