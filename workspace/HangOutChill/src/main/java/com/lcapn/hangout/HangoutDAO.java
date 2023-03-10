package com.lcapn.hangout;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.lcpan.bean.HangoutBean;



public class HangoutDAO {
	Connection conn;
	
	public void insertArticle(HangoutBean HB) {
		String sql = "INSERT INTO [dbo].[Article]"+
				"([ArticleID],[ArticleName],[NormalAccount],[PlaceID],[Content],[Theme],[WriteDate],[EditDate])"+
				" VALUES(?,?,?,?,?,?,?,?)";
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context
					.lookup("java:/comp/env/jdbc/hangout");
			conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, HB.getArticleID());
			stmt.setString(2, HB.getArticleName());
			stmt.setString(3, HB.getNormalAccount());
			stmt.setString (4, HB.getPlaceID());
			stmt.setString(5, HB.getContent());
			stmt.setString(6, HB.getTheme());
			stmt.setString(7, HB.getWriteDate());
			stmt.setString(8, HB.getEditDate());
			stmt.executeUpdate();
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteArticle(String ArticleName) {
		String sql = "DELETE FROM Article WHERE ArticleName=?";
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context
					.lookup("java:/comp/env/jdbc/hangout");
			conn = ds.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1,ArticleName);
			stmt.executeUpdate();
		}
		catch (NamingException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	
}
