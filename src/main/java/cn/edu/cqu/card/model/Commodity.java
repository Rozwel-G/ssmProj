package cn.edu.cqu.card.model;

public class Commodity {
    private Integer comId;

    private Integer shopId;

    private String comName;

    private String comType;

    private Float comPrice;

    private String comPic;

    private String comIntro;

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName == null ? null : comName.trim();
    }

    public String getComType() {
        return comType;
    }

    public void setComType(String comType) {
        this.comType = comType == null ? null : comType.trim();
    }

    public Float getComPrice() {
        return comPrice;
    }

    public void setComPrice(Float comPrice) {
        this.comPrice = comPrice;
    }

    public String getComPic() {
        return comPic;
    }

    public void setComPic(String comPic) {
        this.comPic = comPic == null ? null : comPic.trim();
    }

    public String getComIntro() {
        return comIntro;
    }

    public void setComIntro(String comIntro) {
        this.comIntro = comIntro == null ? null : comIntro.trim();
    }
}