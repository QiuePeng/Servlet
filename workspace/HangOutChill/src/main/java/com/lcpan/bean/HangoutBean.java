package com.lcpan.bean;

public class HangoutBean implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private String ArticleID;
	private String ArticleName;
	private String NormalAccount;
	private String PlaceID;
	private String Content;
	private String Theme;
	private String WriteDate;
	private String EditDate;

	public String getArticleID() {
		return ArticleID;
	}
	public void setArticleID(String articleID) {
		this.ArticleID = articleID;
	}
	public String getArticleName() {
		return ArticleName;
	}
	public void setArticleName(String articleName) {
		ArticleName = articleName;
	}
	public String getNormalAccount() {
		return NormalAccount;
	}
	public void setNormalAccount(String normalAccount) {
		this.NormalAccount = normalAccount;
	}
	public String getPlaceID() {
		return PlaceID;
	}
	public void setPlaceID(String placeID) {
		this.PlaceID = placeID;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		this.Content = content;
	}
	public String getTheme() {
		return Theme;
	}
	public void setTheme(String theme) {
		this.Theme = theme;
	}
	public String getWriteDate() {
		return WriteDate;
	}
	public void setWriteDate(String writeDate) {
		this.WriteDate = writeDate;
	}
	public String getEditDate() {
		return EditDate;
	}
	public void setEditDate(String editDate) {
		this.EditDate = editDate;
	}

}