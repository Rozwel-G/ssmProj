package cn.edu.cqu.card.model;

import java.util.Date;

public class News {
	private Integer newsId;

	private String adminPhone;

	private String newsTitle;

	private Date newsTime;

	private String newsContent;

	private String newsPic;

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getAdminPhone() {
		return adminPhone;
	}

	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone == null ? null : adminPhone.trim();
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle == null ? null : newsTitle.trim();
	}

	public Date getNewsTime() {
		return newsTime;
	}

	public void setNewsTime(Date newsTime) {
		this.newsTime = newsTime;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent == null ? null : newsContent.trim();
	}

	public String getNewsPic() {
		return newsPic;
	}

	public void setNewsPic(String newsPic) {
		this.newsPic = newsPic == null ? null : newsPic.trim();
	}

	@Override
	public String toString() {
		return "News [newsId=" + newsId + ", newsTitle=" + newsTitle + ", newsTime=" + newsTime + ", newsContent="
				+ newsContent + "]";
	}

}