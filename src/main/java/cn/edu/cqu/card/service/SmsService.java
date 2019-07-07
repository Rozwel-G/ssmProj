package cn.edu.cqu.card.service;

public interface SmsService {

	/** 发送验证码
	 * @param code 验证码(6位数字)
	 * @param phoneNumber
	 * @return	是否成功
	 */
	boolean sendVerificationCode(String code, String phoneNumber);
	
	/** 使用场景：商家审核通过后，发送短信通知，并发送其初始密码
	 * @param code 商家账号的初始密码
	 * @param phoneNumber
	 * @return	是否成功
	 */
	boolean sendPassNotice(String code, String phoneNumber);
	
}
