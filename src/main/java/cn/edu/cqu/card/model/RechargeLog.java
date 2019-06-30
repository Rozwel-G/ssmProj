package cn.edu.cqu.card.model;

import java.util.Date;

public class RechargeLog {
    private Integer rechargeLogId;

    private String userPhone;

    private Date rechargeLogTime;

    private Float rechargeLogMoney;

    public Integer getRechargeLogId() {
        return rechargeLogId;
    }

    public void setRechargeLogId(Integer rechargeLogId) {
        this.rechargeLogId = rechargeLogId;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone == null ? null : userPhone.trim();
    }

    public Date getRechargeLogTime() {
        return rechargeLogTime;
    }

    public void setRechargeLogTime(Date rechargeLogTime) {
        this.rechargeLogTime = rechargeLogTime;
    }

    public Float getRechargeLogMoney() {
        return rechargeLogMoney;
    }

    public void setRechargeLogMoney(Float rechargeLogMoney) {
        this.rechargeLogMoney = rechargeLogMoney;
    }
}