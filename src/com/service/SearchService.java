package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.Main_filterDAO;
import com.model.Main_filterDTO;

public class SearchService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String search = request.getParameter("search");		
		
		
		Main_filterDAO dao = new Main_filterDAO();
		ArrayList<Main_filterDTO> searchDTO = dao.search(search);
		for(int i = 0; i<searchDTO.size(); i++) {
			System.out.println(searchDTO.get(i).getApt_name());
		}
		
		
		
		
		
		if(searchDTO != null) {
			System.out.println("�˻� ����");
			
			HttpSession session = request.getSession();
			session.setAttribute("aptinfo", searchDTO);
			
		}
		else {
			System.out.println("�˻� ����");
		}
		
		response.sendRedirect("index.jsp");
	}

}
