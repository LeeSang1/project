package service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.MemberDao;
import model.Member;

public class Join implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Member member = new Member();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String birthdate = request.getParameter("birthdate");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		member.setId(id);
		member.setPassword(password);
		member.setName(name);
		member.setNickname(nickname);
		member.setBirthdate(birthdate);
		member.setAddress(address);
		member.setTel(tel);
		MemberDao md = MemberDao.getInstance();
		int result = md.insert(member);
		request.setAttribute("result", result);
		return "join";
	}

}
