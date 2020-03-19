package edu.bit.ssmall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.bit.ssmall.page.Criteria;
import edu.bit.ssmall.page.PageMaker;
import edu.bit.ssmall.service.AdminService;
import edu.bit.ssmall.vo.ProductVO;

@Controller
@RequestMapping("admin")
public class AdminPageController {
	
	@Autowired
	AdminService adminSerivce;
	
	//관리자 게시판 첫 화면 여긴 통계같은거 나오면 좋을듯?
	@RequestMapping(value = "adminpage", method ={RequestMethod.GET,RequestMethod.POST})
	public String adminpage(Model model) {
		System.out.println("adminpage 시작");
		
		
		return "Admin/adminpage";

	}	
	
	//회원관리 누르면 시작
	@RequestMapping(value = "memberList",method = {RequestMethod.GET,RequestMethod.POST})
	public String memberList(Model model) {
		System.out.println("memberList 시작");
		
		return "Admin/admin_memberList";

	}	

	//상품 목록 누르면 시작
	@RequestMapping(value = "productList", method = {RequestMethod.GET,RequestMethod.POST})
	public String productList(Criteria criteria, Model model) {
		System.out.println("productList 시작");
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(criteria);
		
		System.out.println("현재페이지 : "+criteria.getPage());
		System.out.println("화면에 보여질 페이지수 : "+criteria.getPerPageNum());

		int startNum = criteria.getStartNum();
		int endNum = criteria.getEndNum();

		int totalCount = adminSerivce.countProduct();
		System.out.println("환불내역 조회 : " + totalCount + "회");
		
		pageMaker.setTotalCount(totalCount);
		
		List<ProductVO> list = adminSerivce.productList(startNum, endNum);
		System.out.println(list);

		model.addAttribute("pageMaker",pageMaker);
		model.addAttribute("list", list);
		
		
		return "Admin/admin_productList";

	}
	
	//공지사항 관리하는 컨트롤
	@RequestMapping(value = "noticeList", method = {RequestMethod.GET,RequestMethod.POST})
	public String noticeList(Model model) {
		
		System.out.println("noticeList 시작");
		
		
		return "Admin/admin_noticeList";
	}

	//1:1문의 관리하는 컨트롤
	@RequestMapping(value = "requestList", method = {RequestMethod.GET,RequestMethod.POST})
	public String requestList(Model model) {
		System.out.println("requestList 시작");
		
		return "Admin/admin_requestList";
	}
	
	//as요청 관리하는 컨트롤
	@RequestMapping(value = "asList", method = {RequestMethod.GET,RequestMethod.POST})
	public String asList(Model model) {
		System.out.println("asList 시작");
		
		return "Admin/admin_asList";
	}

	
	
	
	
}
