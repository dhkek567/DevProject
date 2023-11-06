package kr.or.ddit.controller.form.textarea;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.or.ddit.vo.Member;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/formtag/textarea")
public class JSPFormTextareaTagController {
	/*
	 * 6. 텍스트 영역 요소
	 * - HTML 텍스트 영역을 출력하려면 <fomr:textarea> 요소를 사용한다.
	 */
	
	@RequestMapping(value = "/registerForm01", method = RequestMethod.GET)
	public String registerForm01(Model model) {
		log.info("registerForm01() 실행...!");
		Member member =  new Member();
		member.setIntroduction("아버지를 아버지라 부르지 못하는 나는 개똥벌레");
		model.addAttribute("member",member);
		return "form/textarea/registerForm01";
	}
}
