package fr.epita.iam.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@WebServlet(name="UpdateServlet", urlPatterns={"/updateOrDelete"})
public class UpdateOrDeleteServlet extends HttpServlet{

private static final long serialVersionUID = 1L;
	
	private static final Logger LOGGER = LogManager.getLogger(UpdateOrDeleteServlet.class);
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("action");
		String id = req.getParameter("selection");
		LOGGER.info("Name of post: {} , id: {} ", name, id);
	}
}
