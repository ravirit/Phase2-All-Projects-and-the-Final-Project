package com.bag;  
  
import java.util.ArrayList;  

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
  
public class StoreData {  
 public static void main(String[] args) {  
    
	 StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
	 Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
	 
	 SessionFactory factory=meta.buildSessionFactory();
	 Session session=factory.openSession();
	 
    Transaction t=session.beginTransaction();  
      
    ArrayList<String> list1=new ArrayList<String>();  
    list1.add("hyderabad");  
    list1.add("india");  
      
    ArrayList<String> list2=new ArrayList<String>();  
    list2.add("its a framework");  
    list2.add("its set of apis");  
      
    Question question1=new Question();  
    question1.setQname("What is your native place?");  
    question1.setAnswers(list1);  
      
    Question question2=new Question();  
    question2.setQname("What is Hibernate?");  
    question2.setAnswers(list2);  
      
    session.persist(question1);  
    session.persist(question2);  
      
    t.commit();  
    session.close();  
    System.out.println("success");  
 }  
}  