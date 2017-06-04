package fr.epita.iam.services;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import fr.epita.iam.models.Identity;

public class Authenticate {

	@Autowired
	SessionFactory sFactory;
	
	private static final Logger LOGGER = LogManager.getLogger(Authenticate.class);
	
	private static Authenticate instance = null;
	
	protected Authenticate(){
		//default constructor
	}
	
	public static Authenticate getInstance(){
		if(instance == null){
			instance = new Authenticate();
		}
		return instance;
	}
	
	public Identity authenticate(String user, String password) throws SQLException{
		
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
		LOGGER.info("authenticating with username: {} ", user);
		
		Session session = sFactory.openSession();
		String queryString = "from Identity as identity where identity.password = :password and identity.displayname = :displayname";
		Query query = session.createQuery(queryString);
		query.setParameter("displayname", user);
		query.setParameter("password",  password);
		List<Identity> identityList = query.list();
		session.close();
		
		if(identityList.isEmpty()){
			return null;
		}else{
			return identityList.get(0);
		}
	}
}
