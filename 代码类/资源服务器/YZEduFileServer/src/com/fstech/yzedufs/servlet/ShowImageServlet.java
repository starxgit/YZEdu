package com.fstech.yzedufs.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fstech.yzedufs.util.Constant;

/**
 * Servlet implementation class ShowImageServlet
 */
@WebServlet("/showImg")
public class ShowImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowImageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * @param myfile
	 *            返回文件流，所以这里是无返回
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String myfile = request.getParameter("myfile");
		String path = Constant.SERVER_IMAGE_URL;// 这里是存放文件的文件夹地址
		FileInputStream fileIs = null;
		try {
			fileIs = new FileInputStream(path + "/" + myfile);
		} catch (Exception e) {
			System.out.println("系统找不到文件：" + path + "/" + myfile);
		}
		int i = fileIs.available(); // 得到文件大小
		byte data[] = new byte[i];
		fileIs.read(data); // 读数据
		response.setHeader("content-disposition", "attachment;filename="
				+ URLEncoder.encode(myfile, "UTF-8"));
		response.setContentType("image/png"); // 设置返回的文件类型
		OutputStream outStream = response.getOutputStream(); // 得到向客户端输出二进制数据的对象
		outStream.write(data); // 输出数据
		outStream.flush();
		outStream.close();
		fileIs.close();
	}

	/**
	 * 不适用post方法
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 无
	}

}
