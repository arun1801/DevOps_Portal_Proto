package com.accenture.devops.container;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.accenture.devops.business.UserManagerService;

import com.accenture.devops.bean.UserBean;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/UserManager")
public class UserManager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	UserManagerService service = null;
	UserBean user_bean = null;
	HttpSession session = null;

	public void init(ServletConfig config) throws ServletException {
		service = new UserManagerService();
		user_bean = new UserBean();
	}

	public UserManager() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String referer = request.getHeader("referer");
		System.out.println("Referer is:- "+referer);
		if(referer.contains("user_home.jsp") || referer.contains("project_wizard.jsp"))
		{
		String category = request.getParameter("category");
		System.out.println("Value of Category:- " + category);
		if (category.equalsIgnoreCase("logout")) {
			logout(request, response);
		}} else{
		String userOperation = request.getParameter("form_value");
		System.out.println("Value is:-" + request.getParameter("form_value"));
		if (userOperation.equalsIgnoreCase("log_in")) {
			logmeIn(request, response);
		} else if (userOperation.equalsIgnoreCase("sign_up")) {
			signmeUp(request, response);
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void logmeIn(HttpServletRequest request_login,
			HttpServletResponse response_login) {
		try {
			UserBean tempObj = new UserBean();
			HashMap<String, Object> results = new HashMap<String, Object>();
			response_login.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response_login.getWriter();
			String email = request_login.getParameter("form-username");
			String password = request_login.getParameter("form-password");

			if (email.isEmpty() || password.isEmpty()) {
				out.println("Username or password not entered. Please recheck.");
			} else {
				String output;
				session = request_login.getSession();
				UserBean tempuserObj = new UserBean();
				tempObj.setEmail(email.trim());
				tempObj.setPassword(password.trim());
				System.out.println("User values:- " + tempObj.getEmail() + " "
						+ tempObj.getPassword());
				results = service.logmeIn(tempObj);
				output = results.get("msg").toString();
				tempuserObj = (UserBean) results.get("userObj");
				session.setAttribute("first_name", tempuserObj.getFname());
				session.setAttribute("last_name", tempuserObj.getLname());
				out.print(output);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void logout(HttpServletRequest request,
			HttpServletResponse response) {

		try {
			response.setContentType("text/html;charset=UTF-8");

			PrintWriter out = response.getWriter();
			HttpSession tempSession = request.getSession(false);
			tempSession.invalidate();
			String output = "You have been logged out successfully. Redirecting to login page..";
			out.print(output);

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	protected void signmeUp(HttpServletRequest request_signup,
			HttpServletResponse response_signup) {
		try {
			response_signup.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response_signup.getWriter();
			String fname = request_signup.getParameter("form-first-name");
			String lname = request_signup.getParameter("form-last-name");
			String email = request_signup.getParameter("form-email");
			String pass = request_signup.getParameter("form-password");
			String info = request_signup.getParameter("form-about-yourself");
			System.out.println("values1==" + fname);
			System.out.println("values2==" + lname.trim());
			System.out.println("values3==" + email.trim());
			System.out.println("values4==" + pass.trim());
			System.out.println("values5==" + info.trim());
			if (fname.trim().isEmpty() || lname.trim().isEmpty()
					|| email.trim().isEmpty() || pass.trim().isEmpty()
					|| info.trim().isEmpty()) {
				out.println("Please correct above details and submit again. Sorry for inconvience.");
			} else {
				user_bean.setFname(fname);
				user_bean.setLname(lname);
				user_bean.setEmail(email);
				user_bean.setPassword(pass);
				user_bean.setInfo(info);
				String output;
				System.out.println("Values in Servlet :-" + user_bean);

				output = service.signup(user_bean);
				out.print(output);
			}
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
