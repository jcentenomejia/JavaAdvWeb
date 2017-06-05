package fr.epita.iam.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import fr.epita.iam.models.Identity;
import fr.epita.iam.services.Dao;

@WebServlet(name="UpdateOrDeleteServlet", urlPatterns={"/actionPerformed"})
public class UpdateOrDeleteServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Autowired
	Dao<Identity> dao;
	
	private static final Logger LOGGER = LogManager.getLogger(UpdateOrDeleteServlet.class);
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
		String actionReceived = req.getParameter("action");
		
		if("cancel".equals(actionReceived)){
			resp.sendRedirect("searchIdentity.jsp");
		}else{
		
			Identity identity = null;
			long id = 0;
			try {
				id = Long.valueOf(req.getParameter("selection"));
				identity = dao.getById(id);
			} catch (SQLException e) {
				LOGGER.error("Error retrieving identity with id: {} , {}", id,e);
			}
				
			switch(actionReceived){
			case "update":
				req.setAttribute("identity", identity);
				req.getRequestDispatcher("modifyIdentity.jsp").forward(req, resp);
				break;
					
			case "delete":
				try {
					dao.delete(identity);
					req.setAttribute("message", "Identity deleted successfully.");
					req.setAttribute("message_color", "green");
					req.getRequestDispatcher("welcome.jsp").forward(req, resp);
					
				} catch (SQLException e) {
					LOGGER.error("SQL error deleting identity: {}, {}", identity, e);
				}
				break;
			default:
				break;
			}
		}
	}
}
