package edu.bit.ssmall.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bit.ssmall.service.ProductService;
import edu.bit.ssmall.vo.BoardVO;
import edu.bit.ssmall.vo.ProductImageVO;
import edu.bit.ssmall.vo.ProductReplyVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductRestController {
	
	@Autowired
	ProductService productService;
	
	@ResponseBody
	@RequestMapping("/productView2")
	public List<ProductImageVO> productview(HttpServletRequest request,Model model) {
		
		model.addAttribute("product", productService.selectProductList());
		
		return productService.selectProductList();
	}
	
	@ResponseBody
	@RequestMapping("/product_replyAjax")
	public List<ProductImageVO> product_replyAjax(ProductReplyVO productReplyVO, HttpServletRequest request,Model model) {
		System.out.println("product_replyAjax����");
		String p_number = request.getParameter("p_number");
		//model.addAttribute("productDetail", productService.selectProductOne(p_number));
		//model.addAttribute("productReply", productService.productReply(p_number));
		//model.addAttribute("productNum", productService.productOne(p_number));
		System.out.println("product_replyAjax��");
		
		
		return productService.selectProductOne(p_number);
	}
	
	@ResponseBody
	@RequestMapping("/product_replyAjax2")
	public List<ProductReplyVO> product_replyAjax2(ProductReplyVO productReplyVO, HttpServletRequest request,Model model) {
		System.out.println("product_replyAjax2����");
		String p_number = request.getParameter("p_number");
		//model.addAttribute("productDetail", productService.selectProductOne(p_number));
		//model.addAttribute("productReply", productService.productReply(p_number));
		//model.addAttribute("productNum", productService.productOne(p_number));
		System.out.println("product_replyAjax2��");
		
		
		return productService.productReply(p_number);
	}
	
	@RequestMapping("/productDetail2")
	public String product_detail(ProductReplyVO productReplyVO, HttpServletRequest request,Model model) {
		System.out.println("productDetail2����");
		String p_number = request.getParameter("p_number");
//		ProductImageVO productImage  = productService.selectProductOne(p_number);
		model.addAttribute("productDetail", productService.selectProductOne(p_number));//��������,����1,2 ����. �� �� 3�� ����Ʈ�ι޾���
		model.addAttribute("productAmount", productService.selectProductListAmount());
		model.addAttribute("productReply", productService.productReply(p_number));
		//model.addAttribute("product1", productService.selectProductOne2(p_number));//����1��. �� �� 1�� �Ϲ����� ����.
		model.addAttribute("productNum", productService.productOne(p_number));
		//productService.productReplyWrite(productReplyVO);
		System.out.println("productDetail2��");
		
		
		return "productDetail2";
	}
	@RequestMapping("/Child")
	public String Child(HttpServletRequest request,Model model) {
		
		model.addAttribute("product", productService.selectProductList());
		
		return "Child";
	}
	@RequestMapping("/modifyReply2")
	public void modifyReply2(BoardVO boardVO,Model model,HttpServletRequest request) {
		System.out.println("modifyReply2 Ÿ����Ȯ��");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bid = request.getParameter("bid");
		
		System.out.println(btitle);
		System.out.println(bcontent);
		System.out.println(bid);
		
		productService.updateBoard(btitle,bcontent,bid);
		

	}
}
