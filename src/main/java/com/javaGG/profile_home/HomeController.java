package com.javaGG.profile_home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaGG.profile_home.dao.IDao;
import com.javaGG.profile_home.dto.ContentDto;
import com.javaGG.profile_home.dto.MemberDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String index() {		
		
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String indexGo() {		
		
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public String login() {		
		
		return "login";
	}
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		MemberDto memberDto =  dao.loginOkDao(request.getParameter("id"));
		
		int checkId = dao.checkIdDao(request.getParameter("id"));
		int checkPw = dao.checkPwDao(request.getParameter("id"), request.getParameter("pw"));
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);
		
		HttpSession session = request.getSession();
		
		if(checkPw == 1) {
			session.setAttribute("id", memberDto.getmId());
	        session.setAttribute("name", memberDto.getmName());
	        model.addAttribute("mId", memberDto.getmId());
	        model.addAttribute("mName", memberDto.getmName());
		}
		
		return "loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout() {		
		
		return "logout";
	}
	
	@RequestMapping(value = "/join")
	public String join() {		
		
		return "join";
	}
	
	@RequestMapping(value = "/question")
	public String question() {
		
		return "question";
	}
	
	@RequestMapping(value = "/list")
	public String list(Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.listDao());
		
		return "list";
	}
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("qview", dao.qviewDao(request.getParameter("qNum")));
		
		return "qview";
	}
	
	@RequestMapping(value = "/write")
	public String write(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeDao(request.getParameter("qId"), request.getParameter("qName"), request.getParameter("qContent"), request.getParameter("qEmail"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("qNum"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/modify")
	public String modify(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyDao(request.getParameter("qName"), request.getParameter("qContent"), request.getParameter("qEmail"), request.getParameter("qNum"));		
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {		
		
		IDao dao = sqlSession.getMapper(IDao.class);
		int checkId = dao.checkIdDao(request.getParameter("id"));
		
		model.addAttribute("checkId", checkId);
		
		if(checkId != 1) {
			dao.joinDao(request.getParameter("id"), request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"));		
			
			model.addAttribute("checkId", checkId);
			
			HttpSession session = request.getSession();
			session.setAttribute("id", request.getParameter("id"));
			
			model.addAttribute("mName", request.getParameter("name"));
		}
		
		return "joinOk";
	}
	
	@RequestMapping(value = "/infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String sid = (String)session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		MemberDto memberDto = dao.loginOkDao(sid);
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModify";
	}
	
	@RequestMapping(value = "/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.infoModifyOkDao(request.getParameter("pw"), request.getParameter("name"), request.getParameter("email"), request.getParameter("id"));
		
		MemberDto memberDto = dao.loginOkDao(request.getParameter("id"));
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModifyOk";
	}
	
	@RequestMapping(value = "/infoModifyCancle")
	public String infoModifyCancle(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String sid = (String)session.getAttribute("id");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		MemberDto memberDto = dao.loginOkDao(sid);
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModifyCancle";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {
		
		return "contact";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		
		return "profile";
	}
	
}
