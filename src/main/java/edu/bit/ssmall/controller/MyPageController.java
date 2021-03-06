
package edu.bit.ssmall.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Date;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

import edu.bit.ssmall.page.Criteria;
import edu.bit.ssmall.page.PageMaker;
import edu.bit.ssmall.service.MypageService;
import edu.bit.ssmall.service.PageService;
import edu.bit.ssmall.service.RefundService;
import edu.bit.ssmall.vo.BoardVO;
import edu.bit.ssmall.vo.BuyVO;
import edu.bit.ssmall.vo.MemberVO;
import edu.bit.ssmall.vo.Product_BuyVO;
import edu.bit.ssmall.vo.RefundVO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("mypage")
public class MyPageController {
	
	/*
	 * ============DB 수정사항============================= 
	 * 1BUY테이블에 주문배송완료여부(B_DONE) 추가
	 * 2BUY테이블에 주문수량(B_AMOUNT) 추가 
	 * 3PRODUCT 테이블에 P_IMAGE(대표사진) 추가 
	 * 4BANSWERNO BOARD테이블에 추가. 추가 어디에 답변했는지에 관한 것. 
	 * 5BANSWERED(답변완료여부) BOARD테이블에 추가.
	 * 6MEMBER(M_NUMBER)-BOARD(M_NUMBER)간에 주키-포린키 관계에서 ON DELETE CASCADE 추가 회.탈시 게시글있으면 삭제안되서 삭제
		7MEMBER(M_NUMBER)-BUY(M_NUMBER)간에 주키-포린키 관계에서 ON DELETE CASCADE 추가 회.탈시 구매내역있으면 삭제안되서 구매내역도 삭제
	 */
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	MypageService mypageService;
	
	@Autowired
	RefundService refundService;
	
	@Autowired
	PageService pageService;
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int m_point = mypageService.getMpoint(name);
			model.addAttribute("m_point", m_point);
			List<Product_BuyVO> p_b_vos = mypageService.getP_BVO(m_number);
			model.addAttribute("p_b_vos",p_b_vos);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "MyPage/myPage";

	}	
	
	@RequestMapping(value = "/myPage_shoppingList", method = RequestMethod.GET)
	public String myPage_shoppingList(Criteria criteria, Model model) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int m_point = mypageService.getMpoint(name);
			model.addAttribute("m_point", m_point);
			int startNum = criteria.getStartNum();
			int endNum = criteria.getEndNum();
			int totalCount = pageService.countShoppingList(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker",pageMaker);
			List<Product_BuyVO> p_b_vos = pageService.shoppingListPage(m_number, startNum, endNum);
			model.addAttribute("p_b_vos",p_b_vos);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_shoppingList";

	}	
	
	@RequestMapping(value = "/myPage_orderedList", method = RequestMethod.GET)
	public String myPage_orderedList(Criteria criteria, Model model) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
	    	
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int m_point = mypageService.getMpoint(name);
			model.addAttribute("m_point", m_point);
			int startNum = criteria.getStartNum();
			int endNum = criteria.getEndNum();
			int totalCount = pageService.countOrderedList(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker",pageMaker);
			List<Product_BuyVO> p_b_vos = pageService.orderedListPage(m_number, startNum, endNum);
			model.addAttribute("p_b_vos",p_b_vos);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_orderedList";

	}	
	
	@RequestMapping(value = "/myPage_askRequestView", method = RequestMethod.GET)//문의글들 띄워놓는 부분에 대한 컨트롤러
	public String myPage_askRequestView(Criteria criteria, Model model, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int totalCount = mypageService.selectAskCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> askRequestboards = mypageService.selectAskBoardListPage(m_number, startNum, endNum);
			model.addAttribute("askRequestboards", askRequestboards);
			List<BoardVO> askRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<askRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllAskRequestAnswer(askRequestboards.get(i).getBid());
				askRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("askRequestboardsAnswers", askRequestboardsAnswers);
			  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_askRequestView";

	}
	
	@RequestMapping(value = "/myPage_askRequestView2", method = RequestMethod.GET)//신경쓰지 마시고
	public String myPage_askRequestView2(Criteria criteria, Model model, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int totalCount = mypageService.selectAskCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> askRequestboards = mypageService.selectAskBoardListPage(m_number, startNum, endNum);
			model.addAttribute("askRequestboards", askRequestboards);
			List<BoardVO> askRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<askRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllAskRequestAnswer(askRequestboards.get(i).getBid());
				askRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("askRequestboardsAnswers", askRequestboardsAnswers);
			  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_askRequestView2";

	}
	
	@RequestMapping(value = "/myPage_aSRequestView", method = RequestMethod.GET)//신경X
	public String myPage_aSRequestView(Criteria criteria, Model model, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int totalCount = mypageService.selectASCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> aSRequestboards = mypageService.selectASBoardListPage(m_number, startNum, endNum);
			model.addAttribute("aSRequestboards", aSRequestboards);
			List<BoardVO> aSRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<aSRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllASRequestAnswer(aSRequestboards.get(i).getBid());
				aSRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("aSRequestboardsAnswers", aSRequestboardsAnswers);
			  
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_aSRequestView";

	}
	
	@RequestMapping(value = "/myPage_askRequest", method = RequestMethod.GET)//실제로 입력하는 창 에 대한 컨트롤러 밑에꺼랑 세트
	public String myPage_askRequest(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number); 
			String bName = mypageService.getMname(name);
			model.addAttribute("bName", bName);
			if(bTitle != null && bContent != null) {
				mypageService.insertAsk(bName, bTitle, bContent, m_number);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_askRequest";

	}	
	
	@RequestMapping(value = "/myPage_askRequest_back", method = RequestMethod.GET)//이것도 입력하는 창에 대한 컨트롤러인데 입력하는 창에 대한 컨트롤러가 두개인 이유는 위에꺼랑 쌍으로 구현해야 입력직후 게시글 목록으로 돌아오는 걸 구현할 수 있어서이다.
	public String myPage_askRequest_back(Criteria criteria, Model model, HttpServletRequest request, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			String bName = mypageService.getMname(name);
			model.addAttribute("bName", bName);
			
			if(bTitle != null && bContent != null) {
				mypageService.insertAsk(bName, bTitle, bContent, m_number);
			}
			int totalCount = mypageService.selectAskCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> askRequestboards = mypageService.selectAskBoardListPage(m_number, startNum, endNum);
			model.addAttribute("askRequestboards", askRequestboards);
			List<BoardVO> askRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<askRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllAskRequestAnswer(askRequestboards.get(i).getBid());
				askRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("askRequestboardsAnswers", askRequestboardsAnswers);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/myPage_askRequestView";

	}
	
	@RequestMapping(value = "/myPage_askAS", method = RequestMethod.GET)
	public String myPage_askAS(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			String bName = mypageService.getMname(name);
			model.addAttribute("bName", bName);
			
			if(bTitle != null && bContent != null) {
				mypageService.insertAS(bName, bTitle, bContent, m_number);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_askAS";

	}
	
	@RequestMapping(value = "/myPage_askAS_back", method = RequestMethod.GET)
	public String myPage_askAS_back(Model model, Criteria criteria, HttpServletRequest request, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			String bName = mypageService.getMname(name);
			model.addAttribute("bName", bName);
			
			if(bTitle != null && bContent != null) {
				mypageService.insertAS(bName, bTitle, bContent, m_number);
			}
			int totalCount = mypageService.selectASCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> aSRequestboards = mypageService.selectASBoardListPage(m_number, startNum, endNum);
			model.addAttribute("aSRequestboards", aSRequestboards);
			List<BoardVO> aSRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<aSRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllASRequestAnswer(aSRequestboards.get(i).getBid());
				aSRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("aSRequestboardsAnswers", aSRequestboardsAnswers);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/myPage_aSRequestView";

	}
	
	
	
	@RequestMapping(value = "/myPage_reviseInformation", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPage_reviseInformation(Model model,HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
		String pw = request.getParameter("m_password"); 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			String m_pw = mypageService.getMpw(name);
			String m_id = mypageService.getMid(name);
			String m_email = mypageService.getMemail(name);
			String m_naver = mypageService.getMnaver(name);
			String m_kakao = mypageService.getMkakao(name);
			model.addAttribute("m_email",m_email);
			model.addAttribute("m_id",m_id);
			model.addAttribute("m_number", m_number);
			model.addAttribute("m_pw", m_pw);
			String m_name2 = mypageService.getMname(name);
			model.addAttribute("m_name2",m_name2);
			int m_age3 = mypageService.getMage(name);
			model.addAttribute("m_age3",m_age3);
			String m_adress2 = mypageService.getMadress(name);
			model.addAttribute("m_adress2",m_adress2);
			String m_phonenum2 = mypageService.getMphonenum(name);
			model.addAttribute("m_phonenum2",m_phonenum2);
			
			 if(m_naver != null || m_kakao != null) {
				 return "MyPage/myPage_reviseInformation2-3";
			 }
			 
			 if(passwordEncoder.matches(pw, m_pw)) {
				 return "MyPage/myPage_reviseInformation2";
			 }else {
				 return "MyPage/checkPwError";
			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_reviseInformation";

	}
	
	@RequestMapping(value = "/myPage_reviseInformation2", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPage_reviseInformation2(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String m_password = request.getParameter("m_password");

	    String m_checkpassword = request.getParameter("m_checkpassword");
	    String m_name = request.getParameter("m_name");
	    String m_age = request.getParameter("m_age");
	    String m_adress = request.getParameter("m_adress");
	    String m_phonenum = request.getParameter("m_phonenum");
	    String m_receive_email = request.getParameter("m_receive_email");
	    if(m_name == "" && m_age == "" && m_adress == "" && m_phonenum == "" && m_password == "" && m_receive_email == null) {
	    	return "MyPage/checkPwError3";
	    }
	    
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			String m_id = mypageService.getMid(name);
			model.addAttribute("m_id",m_id);
			String m_email = mypageService.getMemail(name);
			model.addAttribute("m_email",m_email);
			String m_name2 = mypageService.getMname(name);
			model.addAttribute("m_name2",m_name2);
			int m_age3 = mypageService.getMage(name);
			model.addAttribute("m_age3",m_age3);
			String m_adress2 = mypageService.getMadress(name);
			model.addAttribute("m_adress2",m_adress2);
			String m_phonenum2 = mypageService.getMphonenum(name);
			model.addAttribute("m_phonenum2",m_phonenum2);
			
			if(m_password != "") {
				if(m_password.equals(m_checkpassword)) {
					String hashpw = passwordEncoder.encode(m_password); 
					mypageService.updateMpassword(hashpw, name);
				}
				else {
					return "MyPage/myPage_reviseInformation2";
				}
			}
			if(m_name != "") {
		    	mypageService.updateMname(m_name, name);
		    }
			if(m_age != "") {
				int m_age2 = Integer.parseInt(m_age);
		    	mypageService.updateMage(m_age2, name);
		    }
			if(m_adress != "") {
		    	mypageService.updateMadress(m_adress, name);
		    }
			if(m_phonenum != "") {
		    	mypageService.updateMphonenum(m_phonenum, name);
		    }
			if(m_receive_email.equals("0")) {
				mypageService.updateMreceiveToYes(name);
			}
			if(m_receive_email.equals("1")) {
				mypageService.updateMreceiveToNo(name);
			}
			return "redirect:/mypage/mypage_reviseInformation";

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/myPage_reviseInformation2_back";

	}
	
	@RequestMapping(value = "/myPage_reviseInformation2_back", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPage_reviseInformation2_back(Model model, HttpServletRequest request) {
		/*
		 * Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 * Object principal = auth.getPrincipal();
		 * 
		 * String m_password = request.getParameter("m_password"); String
		 * m_checkpassword = request.getParameter("m_checkpassword"); String m_name =
		 * request.getParameter("m_name"); String m_age = request.getParameter("m_age");
		 * String m_adress = request.getParameter("m_adress"); String m_phonenum =
		 * request.getParameter("m_phonenum"); String m_receive_email =
		 * request.getParameter("m_receive_email"); if(m_name == "" && m_age == "" &&
		 * m_adress == "" && m_phonenum == "" && m_password == "" && m_receive_email ==
		 * null) { return "MyPage/checkPwError3"; }
		 * 
		 * String name = ""; if(principal != null) { name = auth.getName(); }
		 * 
		 * 
		 * try { int m_number = mypageService.getMnum(name);
		 * model.addAttribute("m_number", m_number); String m_id =
		 * mypageService.getMid(name); model.addAttribute("m_id",m_id); String m_email =
		 * mypageService.getMemail(name); model.addAttribute("m_email",m_email); String
		 * m_name2 = mypageService.getMname(name);
		 * model.addAttribute("m_name2",m_name2); int m_age3 =
		 * mypageService.getMage(name); model.addAttribute("m_age3",m_age3); String
		 * m_adress2 = mypageService.getMadress(name);
		 * model.addAttribute("m_adress2",m_adress2); String m_phonenum2 =
		 * mypageService.getMphonenum(name);
		 * model.addAttribute("m_phonenum2",m_phonenum2);
		 * 
		 * if(m_password != "") { if(m_password.equals(m_checkpassword)) { String hashpw
		 * = passwordEncoder.encode(m_password); mypageService.updateMpassword(hashpw,
		 * name); } else { return "MyPage/myPage_reviseInformation2"; } } if(m_name !=
		 * "") { mypageService.updateMname(m_name, name); } if(m_age != "") { int m_age2
		 * = Integer.parseInt(m_age); mypageService.updateMage(m_age2, name); }
		 * if(m_adress != "") { mypageService.updateMadress(m_adress, name); }
		 * if(m_phonenum != "") { mypageService.updateMphonenum(m_phonenum, name); }
		 * if(m_receive_email.equals("0")) { mypageService.updateMreceiveToYes(name); }
		 * if(m_receive_email.equals("1")) { mypageService.updateMreceiveToNo(name); }
		 * 
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */

		return "redirect:/";

	}
	
	@RequestMapping(value = "/myPage_reviseInformation2_3")
	public String myPage_reviseInformation2_2(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String m_age = request.getParameter("m_age");
	    String m_adress = request.getParameter("m_adress");
	    String m_phonenum = request.getParameter("m_phonenum");
	    String m_receive_email = request.getParameter("m_receive_email");
	    if(m_age == "" && m_adress == "" && m_phonenum == ""  && m_receive_email == null) {
	    	return "MyPage/checkPwError3_2";
	    }
	    
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			String m_id = mypageService.getMid(name);
			model.addAttribute("m_id",m_id);
			String m_email = mypageService.getMemail(name);
			model.addAttribute("m_email",m_email);
			String m_name2 = mypageService.getMname(name);
			model.addAttribute("m_name2",m_name2);
			int m_age3 = mypageService.getMage(name);
			model.addAttribute("m_age3",m_age3);
			String m_adress2 = mypageService.getMadress(name);
			model.addAttribute("m_adress2",m_adress2);
			String m_phonenum2 = mypageService.getMphonenum(name);
			model.addAttribute("m_phonenum2",m_phonenum2);
			
			if(m_age != "") {
				int m_age2 = Integer.parseInt(m_age);
		    	mypageService.updateMage(m_age2, name);
		    }
			if(m_adress != "") {
		    	mypageService.updateMadress(m_adress, name);
		    }
			if(m_phonenum != "") {
		    	mypageService.updateMphonenum(m_phonenum, name);
		    }
			if(m_receive_email.equals("0")) {
				mypageService.updateMreceiveToYes(name);
			}
			if(m_receive_email.equals("1")) {
				mypageService.updateMreceiveToNo(name);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	    return "redirect:/mypage/myPage_reviseInformation2_3_back";

	}
	
	@RequestMapping(value = "/myPage_reviseInformation2_3_back")
	public String myPage_reviseInformation2_3_back(Model model, HttpServletRequest request) {
		/*
		 * Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 * Object principal = auth.getPrincipal();
		 * 
		 * String m_age = request.getParameter("m_age"); String m_adress =
		 * request.getParameter("m_adress"); String m_phonenum =
		 * request.getParameter("m_phonenum"); String m_receive_email =
		 * request.getParameter("m_receive_email"); if(m_age == "" && m_adress == "" &&
		 * m_phonenum == "" && m_receive_email == null) { return
		 * "MyPage/checkPwError3_2"; }
		 * 
		 * String name = ""; if(principal != null) { name = auth.getName(); }
		 * 
		 * 
		 * try { int m_number = mypageService.getMnum(name);
		 * model.addAttribute("m_number", m_number); String m_id =
		 * mypageService.getMid(name); model.addAttribute("m_id",m_id); String m_email =
		 * mypageService.getMemail(name); model.addAttribute("m_email",m_email); String
		 * m_name2 = mypageService.getMname(name);
		 * model.addAttribute("m_name2",m_name2); int m_age3 =
		 * mypageService.getMage(name); model.addAttribute("m_age3",m_age3); String
		 * m_adress2 = mypageService.getMadress(name);
		 * model.addAttribute("m_adress2",m_adress2); String m_phonenum2 =
		 * mypageService.getMphonenum(name);
		 * model.addAttribute("m_phonenum2",m_phonenum2);
		 * 
		 * if(m_age != "") { int m_age2 = Integer.parseInt(m_age);
		 * mypageService.updateMage(m_age2, name); } if(m_adress != "") {
		 * mypageService.updateMadress(m_adress, name); } if(m_phonenum != "") {
		 * mypageService.updateMphonenum(m_phonenum, name); }
		 * if(m_receive_email.equals("0")) { mypageService.updateMreceiveToYes(name); }
		 * if(m_receive_email.equals("1")) { mypageService.updateMreceiveToNo(name); }
		 * 
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */

		return "redirect:/";


	}
	
	@RequestMapping(value = "/myPage_reviseInformation3", method = RequestMethod.POST)
	public String myPage_reviseInformation3(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	 
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_reviseInformation3";

	}
	
	@RequestMapping("/pwChange")
	public String pwChange(HttpServletRequest request,MemberVO memberVO, Errors errors, Model model, HttpServletResponse response) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		
		String hashpw = passwordEncoder.encode(memberVO.getM_password());
		memberVO.setM_password(hashpw); // 암호화 해서 저장한다.
		
		return "MyPage/myPage_reviseInformation2";
	}
	
	@RequestMapping(value = "/withdrawal.do", method = RequestMethod.GET)
	public String withdraw(Model model) {
		System.out.println("GKGKGKGKGK!!!!!!!!");
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		    Object principal = auth.getPrincipal();
		 
		    String name = "";
		    if(principal != null) {
		        name = auth.getName();
		    }
		    
		    try {
				int m_number = mypageService.getMnum(name);
				model.addAttribute("m_number", m_number);
				mypageService.withdrawMember(name);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return "MyPage/myPage_reviseInformation4";
	}
	
	@RequestMapping(value = "/myPage_askRequest2", method = RequestMethod.GET) //글 수정하는 창에 대한 컨트롤러
	public String myPage_askRequest2(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String bId = request.getParameter("bId");
	    model.addAttribute("bId",bId);
	    
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			
			if(bTitle != null && bContent != null) {
				mypageService.updateAskAS(bTitle, bContent, bId);
			}
			String FbTitle = mypageService.selectFbTitle(bId);
		    String FbContent = mypageService.selectFbContent(bId);
			model.addAttribute("FbTitle",FbTitle);
		    model.addAttribute("FbContent",FbContent);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_askRequest2";

	}
	
	@RequestMapping(value = "/myPage_askRequest2_back", method = RequestMethod.GET)//위에꺼랑 세트 이것까지 구현시 수정직후 알아서 게시글로 돌아옴
	public String myPage_askRequest2_back(Criteria criteria, Model model, HttpServletRequest request, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	   
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String bId = request.getParameter("bId");
	    model.addAttribute("bId",bId);
	    
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			
			if(bTitle != null && bContent != null) {
				mypageService.updateAskAS(bTitle, bContent, bId);
			}
			int totalCount = mypageService.selectAskCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> askRequestboards = mypageService.selectAskBoardListPage(m_number, startNum, endNum);
			model.addAttribute("askRequestboards", askRequestboards);
			List<BoardVO> askRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<askRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllAskRequestAnswer(askRequestboards.get(i).getBid());
				askRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("askRequestboardsAnswers", askRequestboardsAnswers);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/myPage_askRequestView";

	}
	
	@RequestMapping(value = "/myPage_askAS2", method = RequestMethod.GET)
	public String myPage_askAS2(Model model, HttpServletRequest request) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String bId = request.getParameter("bId");
	    
	    model.addAttribute("bId",bId);
	    
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			
			if(bTitle != null && bContent != null) {
				mypageService.updateAskAS(bTitle, bContent, bId);
			}
			String FbTitle = mypageService.selectFbTitle(bId);
		    String FbContent = mypageService.selectFbContent(bId);
			model.addAttribute("FbTitle",FbTitle);
		    model.addAttribute("FbContent",FbContent);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "MyPage/myPage_askAS2";

	}
	
	@RequestMapping(value = "/myPage_askAS2_back", method = RequestMethod.GET)
	public String myPage_aSRequest2_back(Criteria criteria, Model model, HttpServletRequest request, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	   
	    String bTitle = request.getParameter("bTitle");
	    String bContent = request.getParameter("bContent");
	    String bId = request.getParameter("bId");
	    model.addAttribute("bId",bId);
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			
			if(bTitle != null && bContent != null) {
				mypageService.updateAskAS(bTitle, bContent, bId);
			}
			int totalCount = mypageService.selectASCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> aSRequestboards = mypageService.selectASBoardListPage(m_number, startNum, endNum);
			model.addAttribute("aSRequestboards", aSRequestboards);
			List<BoardVO> aSRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<aSRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllASRequestAnswer(aSRequestboards.get(i).getBid());
				aSRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("aSRequestboardsAnswers", aSRequestboardsAnswers);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/myPage_aSRequestView";

	}
	
	@RequestMapping(value = "/delete.do", method = RequestMethod.GET) //삭제는 딱히 UI가 없고 그냥 삭제 논리대로 철기하는 컨트롤러 삭제버튼 누르면 이 컨트롤러를 탄다.
	public String delete(Criteria criteria, Model model, HttpServletRequest request, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bId = request.getParameter("bId");
	    model.addAttribute("bId",bId);
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int totalCount = mypageService.selectAskCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> askRequestboards = mypageService.selectAskBoardListPage(m_number, startNum, endNum);
			model.addAttribute("askRequestboards", askRequestboards);
			List<BoardVO> askRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<askRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllAskRequestAnswer(askRequestboards.get(i).getBid());
				askRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("askRequestboardsAnswers", askRequestboardsAnswers);
			
				mypageService.deleteAskAS(bId);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    return "redirect:/mypage/myPage_askRequestView";


	}
	
	@RequestMapping(value = "/delete2.do", method = RequestMethod.GET)//일단 신경 X
	public String delete2(Criteria criteria, Model model, HttpServletRequest request, BoardVO boardVO) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    Object principal = auth.getPrincipal();
	    
	    String bId = request.getParameter("bId");
	    model.addAttribute("bId",bId);
	    String name = "";
	    if(principal != null) {
	        name = auth.getName();
	    }
	    
	    try {
			int m_number = mypageService.getMnum(name);
			model.addAttribute("m_number", m_number);
			int totalCount = mypageService.selectAskCountBoard(m_number);
			pageMaker.setTotalCount(totalCount);
			model.addAttribute("pageMaker", pageMaker);
			int startNum = criteria.getStartNum(); 
			int endNum = criteria.getEndNum();
			List<BoardVO> askRequestboards = mypageService.selectAskBoardListPage(m_number, startNum, endNum);
			model.addAttribute("askRequestboards", askRequestboards);
			List<BoardVO> askRequestboardsAnswers = new ArrayList<BoardVO>(); 
			for(int i=0; i<askRequestboards.size(); i++) { 
				BoardVO answer =mypageService.getAllAskRequestAnswer(askRequestboards.get(i).getBid());
				askRequestboardsAnswers.add(i, answer); 
				}
			  model.addAttribute("askRequestboardsAnswers", askRequestboardsAnswers);
			
				mypageService.deleteAskAS(bId);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/mypage/myPage_aSRequestView";
	}
	
	 @RequestMapping(value="/mine/imageUpload.do", method = RequestMethod.POST)
	    public void imageUpload(HttpServletRequest request,
	            HttpServletResponse response, MultipartHttpServletRequest multiFile
	            , @RequestParam MultipartFile upload) throws Exception{
	        // 랜덤 문자 생성
	        UUID uid = UUID.randomUUID();
	        
	        OutputStream out = null;
	        PrintWriter printWriter = null;
	        
	        //인코딩
	        response.setCharacterEncoding("utf-8");
	        response.setContentType("text/html;charset=utf-8");
	        
	        try{
	            
	            //파일 이름 가져오기
	            String fileName = upload.getOriginalFilename();
	            byte[] bytes = upload.getBytes();
	            
	            //이미지 경로 생성
	            String path = "C:\\Users\\user\\git\\SS_MALL\\src\\main\\webapp\\img\\"; //fileDir는 전역 변수라 그냥 이미지 경로 설정해주면 된다.
	            String ckUploadPath = path + uid + "_" + fileName;
	            File folder = new File(path);
	            
	            //해당 디렉토리 확인
	            if(!folder.exists()){
	                try{
	                    folder.mkdirs(); // 폴더 생성
	                }catch(Exception e){
	                    e.getStackTrace();
	                }
	            }
	            
	            out = new FileOutputStream(new File(ckUploadPath));
	            out.write(bytes);
	            out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화
	            
	            String callback = request.getParameter("CKEditorFuncNum");
	            printWriter = response.getWriter();
	            String fileUrl = "/ssmall/mypage/mine/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;  // 작성화면
	            
	        // 업로드시 메시지 출력
	          printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
	          printWriter.flush();
	            
	        }catch(IOException e){
	            e.printStackTrace();
	        } finally {
	          try {
	           if(out != null) { out.close(); }
	           if(printWriter != null) { printWriter.close(); }
	          } catch(IOException e) { e.printStackTrace(); }
	         }
	        
	        return;
	    }
	
	@RequestMapping(value="myPage_refundList", method= {RequestMethod.GET,RequestMethod.POST})
	public String myPage_refundList(Criteria criteria, HttpServletRequest request, HttpServletResponse response, Principal principal, Model model) throws Exception{		
		String m_id = principal.getName();
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		System.out.println("현재페이지 : "+criteria.getPage());
		System.out.println("화면에 보여질 페이지수 : "+criteria.getPerPageNum());

		int startNum = criteria.getStartNum();
		int endNum = criteria.getEndNum();

		int totalCount = pageService.countRefundList(m_id);
		System.out.println("환불내역 조회 : " + totalCount + "회");
		
		pageMaker.setTotalCount(totalCount);
		
		List<RefundVO> refundList = pageService.refundListPage(m_id, startNum, endNum);
		System.out.println(refundList);
		
		//ArrayList<RefundVO> refundVO = refundService.refundInfo(m_id);
		
			
		//model.addAttribute("list", refundList);
		model.addAttribute("pageMaker",pageMaker);
		model.addAttribute("refund", refundList);
		
		
		return "MyPage/myPage_refundList";
	}
	 @RequestMapping(value="/mine/ckImgSubmit.do")
	    public void ckSubmit(@RequestParam(value="uid") String uid
	                            , @RequestParam(value="fileName") String fileName
	                            , HttpServletRequest request, HttpServletResponse response)
	 throws ServletException, IOException{
	        
	        //서버에 저장된 이미지 경로
	        String path = "C:\\Users\\user\\git\\SS_MALL\\src\\main\\webapp\\img\\";
	    
	        String sDirPath = path + uid + "_" + fileName;
	    
	        File imgFile = new File(sDirPath);
	        
	        //사진 이미지 찾지 못하는 경우 예외처리로 빈 이미지 파일을 설정한다.
	        if(imgFile.isFile()){
	            byte[] buf = new byte[1024];
	            int readByte = 0;
	            int length = 0;
	            byte[] imgBuf = null;
	            
	            FileInputStream fileInputStream = null;
	            ByteArrayOutputStream outputStream = null;
	            ServletOutputStream out = null;
	            
	            try{
	                fileInputStream = new FileInputStream(imgFile);
	                outputStream = new ByteArrayOutputStream();
	                out = response.getOutputStream();
	                
	                while((readByte = fileInputStream.read(buf)) != -1){
	                    outputStream.write(buf, 0, readByte);
	                }
	                
	                imgBuf = outputStream.toByteArray();
	                length = imgBuf.length;
	                out.write(imgBuf, 0, length);
	                out.flush();
	                
	            }catch(IOException e){
	                e.printStackTrace();
	            }finally {
	                outputStream.close();
	                fileInputStream.close();
	                out.close();
	            }
	        }
	    }
	
}
