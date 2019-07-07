package cn.edu.cqu.card.model;

import java.util.Date;

public class ScoreLog {
    private Integer scoreLogId;

    private String userPhone;

    private Date scoreLogTime;

    private Integer scoreLogScore;
    
    private Float money;

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

    public Date getScoreLogTime() {
        return scoreLogTime;
    }

    public void setScoreLogTime(Date scoreLogTime) {
        this.scoreLogTime = scoreLogTime;
    }

    public Integer getScoreLogScore() {
        return scoreLogScore;
    }

    public void setScoreLogScore(Integer scoreLogScore) {
        this.scoreLogScore = scoreLogScore;
    }

    public Float getMoney() {
        return money;
    }
}