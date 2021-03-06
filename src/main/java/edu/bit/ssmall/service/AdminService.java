
package edu.bit.ssmall.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bit.ssmall.mapper.AdminMapper;
import edu.bit.ssmall.vo.BoardVO;

import edu.bit.ssmall.vo.Board_MemberVO;
import edu.bit.ssmall.vo.BuyVO;
import edu.bit.ssmall.vo.MemberVO;

import edu.bit.ssmall.vo.ProductVO;
import edu.bit.ssmall.vo.RefundVO;

@Service
public class AdminService {
	
	@Autowired
	AdminMapper adminMapper;
	
	
	public int getP_num(String m_id) throws Exception {

		return adminMapper.getP_num(m_id);
	}
	
	public String getP_name(String m_id) throws Exception {

		return adminMapper.getP_name(m_id);
	}
	
	public void insertProduct(String p_name,String p_category, String p_brand,String p_price,String p_stock, String p_description, String p_image)  {
		adminMapper.insertProduct(p_name,p_category,p_brand,p_price,p_stock,p_description,p_image);
	}

/*===========================페이징을 위한 카운트 ========================================================*/
	public int countMember() {
		
		return adminMapper.countMember();
	}
	public int countProduct() {
		
		return adminMapper.countProduct();
	}
	
	public int countBuy(String m_number) {
		
		return adminMapper.countBuy(m_number);
	}
	
	public int countRefund(String m_number) {
		
		return adminMapper.countRefund(m_number);
	}
	
	public int countSearchMember(String search) {
		
		return adminMapper.countSearchMember(search);
	}
	public int countNotice() {
		
		return adminMapper.countNotice();
	}

/*===========================페이징처리 ========================================================*/	
	
	public ArrayList<ProductVO> productList(int startNum , int endNum) {
		System.out.println("상품 전체리스트");
		return adminMapper.productList(startNum,endNum);
	}
		
	public ArrayList<MemberVO> memberList(int startNum , int endNum) {
		System.out.println("회원 전체리스트");
		
		return adminMapper.memberList(startNum,endNum);
	}
	
	public ArrayList<BuyVO> buyInfo(String m_number, int startNum , int endNum) {
		System.out.println("회원의 구매 리스트");
		
		return adminMapper.buyInfo(m_number,startNum, endNum);
	}
	public ArrayList<RefundVO> refundInfo(String m_number, int startNum, int endNum) {
		System.out.println("회원의 환불 리스트");
		return adminMapper.refundInfo(m_number,startNum, endNum);
	}
	
	public List<MemberVO> searchMemberList(int startNum, int endNum, String search) {
		System.out.println("회원의 검색 후  리스트");
		return adminMapper.searchMemberList(startNum,endNum, search);
	}
	
	public List<BoardVO> noticeList(int startNum, int endNum) {
		System.out.println("공지사항 리스트");
		return adminMapper.noticeList(startNum, endNum);
	}
	
/*===========================회원관리========================================================*/	
	
	public MemberVO memberInfo(String m_number) {
		System.out.println("해당회원 정보");
		return adminMapper.memberInfo(m_number);
	}
	
	public ArrayList<BuyVO> buyList(String m_number) {
		System.out.println("해당회원 구매내역");
		return adminMapper.buyList(m_number);
	}
	public ArrayList<RefundVO> refundList(String m_number) {
		
		System.out.println("해당회원 환불내역");
		
		return adminMapper.refundList(m_number);
	}
	public ArrayList<BoardVO> requestList(String m_number) {
		
		System.out.println("해당회원 1:1문의내역");
		
		return adminMapper.requestList(m_number);
	}
	
	public ArrayList<BoardVO> asList(String m_number) {
		
		System.out.println("해당회원 AS문의내역");
		
		return adminMapper.asList(m_number);
	}
	
	public ArrayList<MemberVO> adminList() {
		System.out.println("관리자리스트");
		return adminMapper.adminList();
	}
	
	public void updateAuthority(String m_number, String m_authority) {
		String m_enabled = null;
		
		
		if(m_authority.equals("BC")){
			
			m_enabled = "0";			
			adminMapper.updateAuthority(m_number, m_authority, m_enabled);
		
		}else{
		
			m_enabled = "1";			
			adminMapper.updateAuthority(m_number, m_authority, m_enabled);	
	
		}	
		
	}
/*===========================검색했을때 처리========================================================*/		
	
	public ArrayList<MemberVO> memberSearch(String search) {
		
		return adminMapper.memberSearch(search);
	}
	
	public ArrayList<ProductVO> productSearch(String search) {
		// TODO Auto-generated method stub
		return adminMapper.productSearch(search);
	}
	

	
/*===========================상품 수정 처리========================================================*/	
	public ProductVO productOne(String p_number) {
		
		return adminMapper.productOne(p_number);
	}
	


	public void updateProduct(String p_number, String p_name, String p_brand, String p_price, String p_stock,String p_description, String originFileName, int p_enabled) {
		adminMapper.updateProduct(p_number, p_name, p_brand, p_price, p_stock,p_description, originFileName, p_enabled);		
	}
	

	public void updateImage(String p_number, String originFileName, int i_type) {

		adminMapper.updateImage(p_number, originFileName,i_type);			
	}
	
	public void updateOnlyProduct(String p_number, String p_name, String p_brand, String p_price, String p_stock,String p_description, int p_enabled) {
		adminMapper.updateOnlyProduct(p_number, p_name, p_brand, p_price, p_stock,p_description, p_enabled);
		
	}

/*===========================상품 수정 처리========================================================*/	
	

	public List<Board_MemberVO> getAllAskRequest() throws Exception {
		return adminMapper.getAllAskRequest();	
	}
	
	public int selectAskCountBoard() throws Exception {
		return adminMapper.selectAskCountBoard();	
	}
	
	public List<Board_MemberVO> selectUnAnsweredAskBoardListPage(int startNum, int endNum) throws Exception {
		return adminMapper.selectUnAnsweredAskBoardListPage(startNum, endNum);	
	}
	
	public List<Board_MemberVO> selectAnsweredAskBoardListPage(int startNum, int endNum) throws Exception {
		return adminMapper.selectAnsweredAskBoardListPage(startNum, endNum);	
	}
	
	public List<Board_MemberVO> getAllASRequest() throws Exception {
		return adminMapper.getAllASRequest();	
	}
	
	public int selectASCountBoard() throws Exception {
		return adminMapper.selectASCountBoard();	
	}
	
	public List<Board_MemberVO> selectUnAnsweredASBoardListPage(int startNum, int endNum) throws Exception {
		return adminMapper.selectUnAnsweredASBoardListPage(startNum, endNum);	
	}
	
	public List<Board_MemberVO> selectAnsweredASBoardListPage(int startNum, int endNum) throws Exception {
		return adminMapper.selectAnsweredASBoardListPage(startNum, endNum);	
	}

	//글 타입 검색(as요청인지 1:1문의인지...)
	public String selectBtype(String bId) throws Exception {
		return adminMapper.selectBtype(bId);
	}
	
	//답변 insert 하기
	public void insertAnswer(String bName, String bTitle, String bContent, int m_number, String bId ) throws Exception{
		adminMapper.insertAnswer(bName, bTitle, bContent, m_number, bId);
	}

	
	//인서트된 답변 수정하기
	public void updateAnswer(String bTitle, String bContent, String bId ) throws Exception{
		adminMapper.updateAnswer(bTitle, bContent, bId);
	}
	
	//답변미완료 글 답변완료로 수정하기
	public void updateBanswered(String bId) throws Exception{
		adminMapper.updateBanswered(bId);
	}

	
/*====================================통계================================================*/
	public int getWeeklySales() {
		
		if (adminMapper.getWeeklySales() == null) {
			return 0;
		}
		return Integer.parseInt(adminMapper.getWeeklySales());
		
	}
	public int getMonthlySales() {
		
		if (adminMapper.getMonthlySales() == null) {
			return 0;
		}
		return Integer.parseInt(adminMapper.getMonthlySales());
	}
	public int getYearlySales() {
		
		if (adminMapper.getYearlySales() == null) {
			return 0;
		}
		return Integer.parseInt(adminMapper.getYearlySales());
	}
	public int getTotalSales() {
		
		if (adminMapper.getTotalSales() == null) {
			return 0;
		}
		return Integer.parseInt(adminMapper.getTotalSales());
	}
/*==================================== 그래프 ================================================*/
	public HashMap<String, Integer> getBrand() {
		
		String[] p_brand = adminMapper.getBrand(); // 중복없는 전체브랜드
		//iwc 고야드 구찌 롤렉스 루이비통 에르메스 오메가 태그호이어 파텍필립 프라다 순으로 들어옴
		int result = 0;
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		
		for (int i = 0; i < p_brand.length; i++) {
			result = adminMapper.getBrandMonthSales(p_brand[i]); //브랜드별 판매량
			map.put(p_brand[i], result);	
		}
		
		System.out.println(map);
		
		return map;
	}
	
/*==================================== 공지사항 ================================================*/	
	public BoardVO noticeView(String bid) {
		
		return adminMapper.noticeView(bid);
	}
	public void noticeUpdate(String btype, String bid, String btitle, String bcontent) {
		
		adminMapper.noticeUpdate(btype,bid,btitle,bcontent);
		
	}
	public void noticeWrite(String btype, String btitle, String bcontent) {
		adminMapper.noticeWrite(btype,btitle,bcontent);
		
	}
	
	public void noticeDelete(String bid) {
		adminMapper.noticeDelete(bid);
		
	}


	public void productImageUpload(int p_number, String originFileName, int i_type) {
		adminMapper.productImageUpload(p_number, originFileName, i_type);
		
	}

	public int getP_number(String p_image) {
	
		return adminMapper.getP_number(p_image);
	}

	public void updateStatus(String b_number, String b_status) {
		adminMapper.updateStatus(b_number, b_status);
		
	}


}

