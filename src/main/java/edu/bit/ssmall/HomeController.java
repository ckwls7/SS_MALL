package edu.bit.ssmall;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import edu.bit.ssmall.service.CartService;
import edu.bit.ssmall.service.HomeService;
import edu.bit.ssmall.vo.CartViewVO;
import edu.bit.ssmall.vo.MemberVO;
import edu.bit.ssmall.vo.ProductVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@Autowired
	CartService cartService;
	
	@Autowired
	HomeService homeService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<ProductVO> recommendItem = homeService.recommendItem();
		model.addAttribute("recommendItem", recommendItem);
		
		List<ProductVO> hitWatchItem = homeService.hitWatchItem();
		List<ProductVO> hitWalletItem = homeService.hitWalletItem();
		model.addAttribute("hitWatchItem", hitWatchItem);
		model.addAttribute("hitWalletItem", hitWalletItem);
		return "home";
	}	
	
	 @RequestMapping(value = "/homeview", method = RequestMethod.GET) 
	 public String home2(Model model) {
		
		List<ProductVO> list = homeService.recommendItem();
		model.addAttribute("recommendItem", list);
		
		List<ProductVO> hitWatchItem = homeService.hitWatchItem();
		List<ProductVO> hitWalletItem = homeService.hitWalletItem();
		model.addAttribute("hitWatchItem", hitWatchItem);
		model.addAttribute("hitWalletItem", hitWalletItem);
		return "home";
 
	 }
	

	@RequestMapping(value = "/AccessDenine", method = RequestMethod.GET)
	public String AccessDenine(Model model) {

		return "accessDenine";

	}
	
	@RequestMapping(value="asView", method= {RequestMethod.GET, RequestMethod.POST})
	public String asView(Model model) {

		return "as";

	}
	
		
	@ResponseBody
	@RequestMapping("miniCart")
	public ArrayList<CartViewVO> miniCart(Principal principal){
		
		MemberVO memberVO = cartService.memberInfo(principal.getName());
		
		return cartService.miniCartInfo(memberVO.getM_number());
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
            String fileUrl = "/ssmall/mine/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName;  // 작성화면
            
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
