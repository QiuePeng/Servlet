package com.lcpan.m11;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

import com.lcpan.bean.EmpBean;


@WebServlet("/EmpInsert")
public class EmpInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection conn;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String sql = "insert into employee values(?,?,?,?,?,?)";
		
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String hiredate = request.getParameter("hiredate");
		String salary = request.getParameter("salary");
		String deptno = request.getParameter("deptno");
		String title = request.getParameter("title");
		
		
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context
					.lookup("java:/comp/env/jdbc/servdb");
			conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			EmpBean emp = new EmpBean();
			stmt.setString(1,empno);
			stmt.setString(2,ename);
			stmt.setString (3,hiredate);
			stmt.setString(4,salary);
			stmt.setString(5,deptno);
			stmt.setString(6,title);
			
			stmt.executeUpdate();
			stmt.close();
			request.getRequestDispatcher("/m11/EmpInsert.jsp").forward(request, response);
			
			
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
