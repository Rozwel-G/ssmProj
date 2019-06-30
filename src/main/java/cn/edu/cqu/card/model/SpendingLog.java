package cn.edu.cqu.card.model;

import java.util.Date;

public class SpendingLog {
    private Integer spendingLogId;

    private Integer shopId;

    private Integer comId;

    private Integer scoreLogId;

    private String userPhone;

    private Date time;

    private Float money;

    public Integer getSpendingLogId() {
        return spendingLogId;
    }

    public void setSpendingLogId(Integer spendingLogId) {
        this.spendingLogId = spendingLogId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getScoreLogId() {
        return scoreLogId;
    }

    public void setScoreLogId(Integer scoreLogId) {
        this.scoreLogId = scoreLogId;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Float getMoney() {
        return money;
    }

    public void setMoney(Float money) {
        this.money = money;
    }
}