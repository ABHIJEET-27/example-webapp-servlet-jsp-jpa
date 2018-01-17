package com.example;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class BeverageListener implements ServletContextListener {
	
    public void contextInitialized(ServletContextEvent sce)  { 
    	EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistenceUnit");
    	sce.getServletContext().setAttribute("emf", emf);
    }
	
	public void contextDestroyed(ServletContextEvent sce)  {
		EntityManagerFactory emf = (EntityManagerFactory)sce.getServletContext().getAttribute("emf");
		emf.close();
    }
	
}
