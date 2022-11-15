package kr.go.ui4u.controller;

import java.io.IOException;

import javax.mail.Multipart;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.ui4u.model.TourDAO;

import com.oreilly.servlet.MultipartRequest;


@WebServlet("/ImgUploadCtrl.do")
public class ImgUploadCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int pos = Integer.parseInt(request.getParameter("pos"));
		String tourno = request.getParameter("tourno");
		String file1="", fileName1="";
		String pat = "./upload/";
		String realPat =  "D:\\PJW\\pro01\\pro03\\Webcontent\\upload";
		String saveDir = "upload";
		String encType = "UTF-8";
		int maxSize = 10*1024*1024;
		String pdata = request.getParameter("picname");
		
		TourDAO dao = new TourDAO();
		
		try{
			ServletContext context = request.getServletContext();
			realPath = context.getRealPath(saveDir);
			
			MultipartRequest multi = null;
			multi = new MultipartRequest(request, realPath, maxSize, encType);
			file1 = multi.getParameter("picname");
			fileName1 = multi.getParameter("picname");
			
			file2 = multi.getFilesystemName(file1);
			fileName2 = multi.getFilesystemName(fileName2);
			
		}	catch(Exception e){
			
		}
		
	}

}
