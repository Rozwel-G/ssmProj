package cn.edu.cqu.card.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.cqu.card.mapper.UserMapper;
import cn.edu.cqu.card.model.User;

@Controller
public class FileUploadController {
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(value = "/test", method = RequestMethod.POST)

	public String fileUploadController(HttpServletRequest request, MultipartFile file)
			throws IllegalStateException, IOException {
		String path = request.getServletContext().getRealPath("touxiang/");
		String originalFileName = file.getOriginalFilename();
		// 新的图片名称
		String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
		// 新的图片
		File newFile = new File(path + newFileName);
		// 将内存中的数据写入磁盘
		file.transferTo(newFile);
		User us1 = new User();
		us1.setUserPic(newFileName);
		System.out.println(path);
		us1.setUserPhone("17712345678");
		userMapper.updateByPrimaryKey(us1);
		return "index";
	}
}
