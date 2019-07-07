package cn.edu.cqu.card.service.Impl;

import cn.edu.cqu.card.service.SmsService;

import org.springframework.stereotype.Service;

import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.google.gson.JsonObject;

@Service
public class SmsServiceImpl implements SmsService{
    static final String accessKeyId = "LTAIOgaQIHGGC4Lc";
    static final String accessKeySecret = "3Fh3rkurvvwWpYAfLsodh5zZ5e4dWR";
    
    //验证码短信签名与模板号
    static final String verificationCode_signName = "好吃街登录验证";
    static final String verificationCode_templateCode = "SMS_169865275";
    
    //审核通知短信的短信签名与模板号
    static final String passNotice_signName = "好吃街登录验证";
    static final String passNotice_templateCode = "SMS_169900823";
    
    @Override
    public boolean sendVerificationCode(String code, String phoneNumber) {
    	
    	JsonObject jo = new JsonObject();
    	jo.addProperty("code", code);
    	String codeJson = jo.toString();
    	
    	return sendSms(phoneNumber, verificationCode_signName, verificationCode_templateCode, codeJson);
    }
    
    @Override
    public boolean sendPassNotice(String code, String phoneNumber) {
    	JsonObject jo = new JsonObject();
    	jo.addProperty("code", code);
    	String codeJson = jo.toString();
    	
    	return sendSms(phoneNumber, passNotice_signName, passNotice_templateCode, codeJson);
    }
    
    public boolean sendSms(String phoneNumber, String signName, String templateCode, String templateParam) {
    	DefaultProfile profile = DefaultProfile.getProfile("default", accessKeyId, accessKeySecret);
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("PhoneNumbers", phoneNumber);
        request.putQueryParameter("SignName", signName);
        request.putQueryParameter("TemplateCode", templateCode);
        request.putQueryParameter("TemplateParam", templateParam);
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
            return true;
        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return false;
    }

}
