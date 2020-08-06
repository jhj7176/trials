package com.bit.attendance.controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.attendance.model.AttendanceDao;
import com.bit.attendance.model.AttendanceDto;

@WebServlet("/result.bit")
public class ResultController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			AttendanceDao dao=new AttendanceDao();
			ArrayList<AttendanceDto> list=dao.selectAll();
			request.setAttribute("list", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/result.jsp").forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String tempdate =req.getParameter("nalja").trim() ;
		Date nalja =Date.valueOf(tempdate) ;
		int num=Integer.parseInt(req.getParameter("num"));
		System.out.println("resultControl"+num);
		System.out.println();
		String state=req.getParameter("state").trim();
		try {
			AttendanceDao dao=new AttendanceDao();
			dao.insertAll(nalja, num, state);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		resp.sendRedirect("result.bit");	
	}

}