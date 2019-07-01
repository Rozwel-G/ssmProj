package cn.edu.cqu.card.model;

public class Shop {
	private Integer shopId;

	private String shopName;

	private String shopType;

	private String shopIntro;

	private String shopPic;

	private String shopProvince;

	private String shopCity;

	private String shopCounty;

	private String shopDetail;

	private String shopPhone;

	private String ownerTitle;

	private String ownerName;

	private String ownerPhone;

	private String ownerEmail;

	public Integer getShopId() {
		return shopId;
	}

	public void setShopId(Integer shopId) {
		this.shopId = shopId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName == null ? null : shopName.trim();
	}

	public String getShopType() {
		return shopType;
	}

	public void setShopType(String shopType) {
		this.shopType = shopType == null ? null : shopType.trim();
	}

	public String getShopIntro() {
		return shopIntro;
	}

	public void setShopIntro(String shopIntro) {
		this.shopIntro = shopIntro == null ? null : shopIntro.trim();
	}

	public String getShopPic() {
		return shopPic;
	}

	public void setShopPic(String shopPic) {
		this.shopPic = shopPic == null ? null : shopPic.trim();
	}

	public String getShopProvince() {
		return shopProvince;
	}

	public void setShopProvince(String shopProvince) {
		this.shopProvince = shopProvince == null ? null : shopProvince.trim();
	}

	public String getShopCity() {
		return shopCity;
	}

	public void setShopCity(String shopCity) {
		this.shopCity = shopCity == null ? null : shopCity.trim();
	}

	public String getShopCounty() {
		return shopCounty;
	}

	public void setShopCounty(String shopCounty) {
		this.shopCounty = shopCounty == null ? null : shopCounty.trim();
	}

	public String getShopDetail() {
		return shopDetail;
	}

	public void setShopDetail(String shopDetail) {
		this.shopDetail = shopDetail == null ? null : shopDetail.trim();
	}

	public String getShopPhone() {
		return shopPhone;
	}

	public void setShopPhone(String shopPhone) {
		this.shopPhone = shopPhone == null ? null : shopPhone.trim();
	}

	public String getOwnerTitle() {
		return ownerTitle;
	}

	public void setOwnerTitle(String ownerTitle) {
		this.ownerTitle = ownerTitle == null ? null : ownerTitle.trim();
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName == null ? null : ownerName.trim();
	}

	public String getOwnerPhone() {
		return ownerPhone;
	}

	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone == null ? null : ownerPhone.trim();
	}

	public String getOwnerEmail() {
		return ownerEmail;
	}

	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail == null ? null : ownerEmail.trim();
	}

	@Override
	public String toString() {
		return "Shop [shopId=" + shopId + ", shopName=" + shopName + ", shopProvince=" + shopProvince + ", shopCity="
				+ shopCity + ", shopCounty=" + shopCounty + ", shopDetail=" + shopDetail + "]";
	}

}