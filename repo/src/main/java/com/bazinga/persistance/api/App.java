package com.bazinga.persistance.api;

import com.bazinga.persistance.entities.AppUser;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class App {

    public static void main(String[] args) throws Exception {

        SessionFactory sessionFactory = getSessionFactory();
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        AppUser user = new AppUser("bazinga", AppUser.Role.ADMIN);
        session.save(user);
        //session.getTransaction().commit();

        session.close();

    }

    private static final SessionFactory sessionFactory;
    //private static final ServiceRegistry serviceRegistry;
    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            Configuration configuration = new Configuration();
            configuration.configure();
//            serviceRegistry = new ServiceRegistryBuilder().applySettings(
//                    configuration.getProperties()).buildServiceRegistry();
            sessionFactory = configuration.buildSessionFactory();
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static void closeSessionFactory() {
        if (sessionFactory != null)
            sessionFactory.close();
    }
}
