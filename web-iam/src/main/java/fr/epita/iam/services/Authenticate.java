package fr.epita.iam.services;

import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import fr.epita.iam.models.Identity;

public class Authenticate {

	/*@Inject
	SessionFactory sFactory;
	*/
	private static final Logger LOGGER = LogManager.getLogger(Authenticate.class);
	
	public Authenticate(){
		//default
	}
	
	public Identity authenticate(String user, String password) throws SQLException{
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		SessionFactory sFactory = (SessionFactory) context.getBean("sessionFactory");

		LOGGER.info("retrieving identity : {} ", user);
		
		Session session = sFactory.openSession();
		String queryString = "from Identity as identity where identity.password = :password and identity.displayname = :displayname";
		Query query = session.createQuery(queryString);
		query.setParameter("displayname", user);
		query.setParameter("password",  password);
		List<Identity> identityList = query.list();
		session.close();
		
		if(identityList.size() == 0){
			return null;
		}else{
			return identityList.get(0);
		}
	}
}
