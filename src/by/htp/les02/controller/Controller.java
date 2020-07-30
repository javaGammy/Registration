package by.htp.les02.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import by.htp.les02.entity.Registration;
import by.htp.les02.entity.User;


public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Controller() {
        super();
        
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		
		Registration registrationInfo = new Registration();
		
		registrationInfo.setName(request.getParameter("name"));
		registrationInfo.setSurname(request.getParameter("surname"));
		
		registrationInfo.setPatronymic(request.getParameter("patronymic"));
		registrationInfo.setYearBirthday(request.getParameter("yearBirthday"));
		
		registrationInfo.setMail(request.getParameter("e-mail"));
		registrationInfo.setPhoneNumber(request.getParameter("tel"));
		
		request.setAttribute("registrationInfo", registrationInfo);
		
		
		/*User user = new User();
		user.setName("Misha");
		user.setYearBirthday(1996);
		
		request.setAttribute("user", user);*/
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
		requestDispatcher.forward(request, response);
		
	}

}
