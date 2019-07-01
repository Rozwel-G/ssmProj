package cn.edu.cqu.card.model;

public class Staff {
    private String staffPhone;

    private Integer shopId;

    private String staffPassword;

    private String staffType;

    private String staffPic;

    public String getStaffPhone() {
        return staffPhone;
    }

    public void setStaffPhone(String staffPhone) {
        this.staffPhone = staffPhone == null ? null : staffPhone.trim();
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword == null ? null : staffPassword.trim();
    }

    public String getStaffType() {
        return staffType;
    }

    public void setStaffType(String staffType) {
        this.staffType = staffType == null ? null : staffType.trim();
    }

    public String getStaffPic() {
        return staffPic;
    }

    public void setStaffPic(String staffPic) {
        this.staffPic = staffPic == null ? null : staffPic.trim();
    }
}