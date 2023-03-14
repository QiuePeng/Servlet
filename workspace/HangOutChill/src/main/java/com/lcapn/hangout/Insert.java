package com.lcapn.hangout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lcpan.bean.HangoutBean;


@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String ArticleID = request.getParameter("ArticleID");
		String ArticleName = request.getParameter("ArticleName");
		String NormalAccount = request.getParameter("NormalAccount");
		String PlaceID = request.getParameter("PlaceID");
		String Content = request.getParameter("Content");
		String Theme = request.getParameter("Theme");
		String WriteDate = request.getParameter("WriteDate");
		String EditDate = request.getParameter("EditDate");
		
		HangoutBean HB = new  HangoutBean();
		HB.setArticleID(ArticleID);
		HB.setArticleName(ArticleName);
		HB.setNormalAccount(NormalAccount);
		HB.setPlaceID(PlaceID);
		HB.setContent(Content);
		HB.setTheme(Theme);
		HB.setWriteDate(WriteDate);
		HB.setEditDate(EditDate);
		
		request.setAttribute("emp", HB);
		
		HangoutDAO HD = new HangoutDAO();
		HD.insertArticle(HB);
		
		
		
		request.getRequestDispatcher("/hangout/Insert.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		doGet(request, response);
	}

}
