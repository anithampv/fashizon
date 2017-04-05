package com.project1.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.project1.model.Userdetails1;
@Repository
public class UserdetailsDAOimpl implements UserdetailsDAO {

	@Autowired
	private SessionFactory sf;
	public String addUser(Userdetails1 ud) {
		Session ses = sf.openSession();
		Transaction tr = ses.beginTransaction();
		ud.setUserid(generateUserId());
		ud.setRole("ROLE_USER");
		ud.setEnabled(true);
		ses.save(ud);
		/*saveUserImage(ud);*/
		tr.commit();
		ses.close();
		
		return ud.getUserid();
	}	
	
	
	/*private void saveUserImage(Userdetails1 prd){
		
		System.out.print("\nprd img : " + prd.getImagefile());	
			
		try{				    	
			if (prd.getImagefile() != null ) {	
			
	           	Path path=Paths.get("C://bean wrkspace//fashizon//src//main//webapp//resources//images//user//"+prd.getUserid()+".jpg");	
	           	prd.getImagefile().transferTo(new File(path.toString()));                       	
	            System.out.print("\nUser Image saved");	            
	        }				
		}
		catch(Exception ex){
			System.out.print("\nProduct Image not saved...");
		}				*/	

		
	@Transactional
public Userdetails1 loginCheck(Userdetails1 ud) {
	
	Session ses = sf.openSession();
	//Query qr = ses.createQuery("from UserDetails where userid='" + ud.getUserid() + "' and password ='" + ud.getPassword());
	Query qr = ses.createQuery("from Userdetails1 where userid=? and password=? and enabled=true");
	qr.setParameter(0, ud.getUserid());
	qr.setParameter(1, ud.getPassword());
	// qr.list(); // return multiple records
	Userdetails1 temp = (Userdetails1)qr.uniqueResult(); // returns one record	
	ses.close();
	return temp;
}
	

	@Transactional
private String generateUserId(){	
	
		String newUid="";
		
		Session s = sf.openSession();
		Query qr = s.createQuery("from Userdetails1");
		List<Userdetails1> data = qr.list();
		s.close();
		if(data.size()==0){
			newUid="USR00001";
		}
		
		
		
		else {			
			Session ss = sf.openSession();		
			Query q = ss.createQuery("select max(userid) from Userdetails1");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(3));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newUid="USR0000"+id;
			else if(id<=99)
				newUid="USR000"+id;
			else if(id<=999)
				newUid="USR00"+id;
			else if(id<=9999)
				newUid="USR0"+id;
			else
				newUid="USR"+id;		
			System.out.print("\nGenerated : "+newUid);		
			ss.close();
		}
		return newUid;
	}

	@Transactional
	public Userdetails1 getUserById(String uid) {
		Session ses = sf.openSession();
		Userdetails1 ud = ses.get(Userdetails1.class, uid);
		ses.close();		
		return ud;
	}
		
	

@Transactional
	public void editUser(Userdetails1 ud) {
		Session ses = sf.openSession();
		Transaction tr = ses.beginTransaction();
		ud.setEnabled(true);
		ud.setRole("ROLE_USER");
		ses.update(ud);
		tr.commit();
		ses.close();		
	}

@Transactional
public void enableUser(String uid) {
	Session ses = sf.openSession();
	Userdetails1 user = ses.get(Userdetails1.class, uid);
	user.setEnabled(true);
	ses.update(user);
	ses.flush();
	ses.close();
	
}
	@Transactional
public void disableUser(String uid) {
	Session ses = sf.openSession();
	Userdetails1 user = ses.get(Userdetails1.class, uid);
	user.setEnabled(false);
	ses.update(user);
	ses.flush();
	ses.close();
	
}

@Transactional
public List<Userdetails1> getAllUsers() {
	
	Session ses = sf.openSession();
	Query qr = ses.createQuery("from Userdetails1 where userid like 'USR%'");
	/*Userdetails ud = ses.get(Userdetails.class, uid);*/
	List<Userdetails1> ud1 = qr.list();
	ses.close();		
	return  ud1;
}
		
	}




	

	


