package edu.bit.ssmall.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import edu.bit.ssmall.vo.BoardVO;
import edu.bit.ssmall.vo.ProductImageVO;
import edu.bit.ssmall.vo.ProductReplyVO;
import edu.bit.ssmall.vo.ProductVO;


public interface ProductMapper {


	@Select("select m_number from member where m_id = #{m_id}")
	public int getPnum(@Param("m_id")String m_id);
	
	@Select("select m_name from member where m_id = #{m_id}")
	public String getPname(@Param("m_id")String m_id);
	
	@Select("select * from product p , image i where p.p_number = i.p_number and i.i_type = '1' order by p_name desc")
	public List<ProductImageVO> selectProductList();
	
	@Insert("insert into product (p_number,p_name,p_category,p_price,p_stock,p_description) values (board_seq.nextval,#{bName},#{bTitle},#{bContent},#{m_number},'상품등록',sysdate)")
	public void insertProduct(@Param("p_Number")String p_Number, @Param("p_Name")String p_Name, @Param("p_Category")String p_Category,
			@Param("p_Price") String p_Price, @Param("p_Stock") String p_Stock, @Param("p_Description") String p_Description);
	
	@Select("select * from boardVO")
	public List<BoardVO> boardVO();
	
	@Select("select * from product p , image i where p.p_number = i.p_number and i.i_type = '1' order by p_amount desc")
	public List<ProductImageVO> selectProductListAmount();
	
	@Select("select * from product p, image i where p.p_number = #{p_number} and i.p_number = p.p_number order by i_type asc")
	public List<ProductImageVO> selectProductOne(String p_number);
	  
	
	@Select("Select * from product where p_number = #{p_number}")
	public ProductVO productOne(String p_number);
	
	@Select("select * from board where bid = #{bid}")
	public BoardVO boardOne(String bid);
	
	@Select("update board set btitle = #{btitle}, bcontent = #{bcontent} where bid = #{bid}")
	public void updateBoard(@Param("btitle")String btitle, @Param("bcontent")String bcontent,@Param("bid")String bid);

	@Select("select * from board b, member m where m.m_number = b.m_number and b.p_number = #{p_number} order by bdate desc")	  		
	public List<ProductReplyVO> productReply(@Param("p_number")String p_number);

	@Insert("insert into board(bid, btitle, bname, bdate, bhit, bcontent, bstep, bindent, bgroup,  btype, btotalrepot, m_number,p_number)\r\n" + 
			"values (board_seq.nextval, #{btitle},1, sysdate, 0, #{bcontent}, 0, 0, 0, 1, 0, 1, 7)")
	public void productReplyWrite(ProductReplyVO productReplyVO);
	//��۾���. ȸ���� ���� �κ��� ���� �̼���

	@Select("update board set bdate = #{boardVO.bdate}, btitle = #{boardVO.btitle}, bContent = #{boardVO.bcontent} where bId = #{boardVO.bid}")
	public void updateReply(@Param("boardVO")BoardVO boardVO);
	
	@Delete("delete from board where bid = #{bid}")
	public void replyDelete(BoardVO boardVO);


}
