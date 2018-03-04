package com.itheima.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HtmlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html;charset=UTF-8");
		PrintWriter writer=res.getWriter();
		//动态的响应html页面
		writer.write("<!DOCTYPE html>");
		writer.write("<html>");
		writer.write("<head>");
		writer.write("<meta charset='UTF-8'>");
		writer.write("<title>Insert title here</title>");
		writer.write("</head>");
		writer.write("<body>");
		writer.write("<h1>这个页面很麻烦</h1>");
		writer.write("</body>");
		writer.write("</html>");
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}
}