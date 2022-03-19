package com.setmapping;  
  
import java.util.*;

import javax.persistence.TypedQuery;

import org.hibernate.*;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
  
public class FetchData {  
public static void main(String[] args) {  
      
	 StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
		
		SessionFactory factory=meta.getSessionFactoryBuilder().build();
		Session session=factory.openSession();
	 
 Transaction t=session.beginTransaction();  
      
    TypedQuery query=session.createQuery("from Question");  
    List<Question> list=query.getResultList();  
      
    Iterator<Question> itr=list.iterator();  
    while(itr.hasNext()){  
        Question q=itr.next();  
        System.out.println("Question Name: "+q.getQname());  
          
        //printing answers  
        Set<String> set=q.getAnswers();  
        Iterator<String> itr2=set.iterator();  
        while(itr2.hasNext()){  
            System.out.println(itr2.next());  
        }  
          
    }  
    session.close();  
    System.out.println("success");  
      
}  
}  