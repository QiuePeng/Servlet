package com.lcapn.hangout;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.lcpan.bean.HangoutBean;


@WebServlet("/GetHgbData")
public class GetHgbData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

	Connection conn;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String sql = "SELECT [ArticleID],[ArticleName],[NormalAccount],"
				+"[PlaceID],[Content],[Theme],[WriteDate],[EditDate]"
				+"FROM [dbo].[Article] where ArticleID=?";
		
		String ArticleID = request.getParameter("ArticleID");

			
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context
					.lookup("java:/comp/env/jdbc/hangout");
			conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, ArticleID);
			ResultSet rs = stmt.executeQuery();
			HangoutBean emp = new HangoutBean();
			if (rs.next()) {
				emp.setArticleID(rs.getString("ArticleID"));
				emp.setArticleName(rs.getString("ArticleName"));
				emp.setNormalAccount (rs.getString("NormalAccount"));
				emp.setPlaceID(rs.getString("PlaceID"));
				emp.setContent(rs.getString("Content"));
				emp.setTheme(rs.getString("Theme"));
				emp.setWriteDate(rs.getString("WriteDate"));
				emp.setEditDate(rs.getString("EditDate"));
			}
			request.setAttribute("emp", emp);
			stmt.close();
			request.getRequestDispatcher("./hangout/gethgb.jsp").forward(request, response);
			
		}
		catch (NamingException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}

	
		
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		doGet(request, response);
	}

}
