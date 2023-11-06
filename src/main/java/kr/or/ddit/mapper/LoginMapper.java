package kr.or.ddit.mapper;

import kr.or.ddit.vo.DDITMemberVO;

public interface LoginMapper {
	public DDITMemberVO loginCheck(DDITMemberVO member);

	public DDITMemberVO idCheck(String memId);

	public int signup(DDITMemberVO memberVO);

	public String findId(DDITMemberVO member);

	public String findPw(DDITMemberVO member);

	public DDITMemberVO readByUserId(String username);

	public void signupAuth(int memNo);
}
