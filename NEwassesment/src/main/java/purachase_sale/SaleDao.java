package purachase_sale;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;





public class SaleDao {
	public static int purchase(Purchase u){    
		 int i=0;    
		  
		 StandardServiceRegistry sup = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
		 Metadata meta = new MetadataSources(sup).getMetadataBuilder().build();  
		  
		SessionFactory factory = meta.getSessionFactoryBuilder().build();  
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		
		
		
		  
		i=(Integer)session.save(u);    
		  
		t.commit();    
		session.close();    
		    
		return i;    
		   
		 } 
	
	public static List<Sale> getAllRecords(){  
	    List<Sale> list=new ArrayList<Sale>();  
	      
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from purchase");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Sale sale=new Sale();  
	        	sale.setPid(rs.getInt("pid"));;  
	        	sale.setName(rs.getString("name")); 
	        	sale.setPitem(rs.getString("pitem")); 
	        	sale.setAddress(rs.getString("address")); 

	        	sale.setPmdate(rs.getString("pmdate"));
	        	sale.setPedate(rs.getString("pedate"));
	        	sale.setPprice(rs.getString("pprice"));
	        	 sale.setPtax(rs.getString("ptax"));  
	             sale.setPdis(rs.getString("pdis"));
	             sale.setPtamount(rs.getString("ptamount"));
	             
	             sale.setPdate(rs.getString("pdate"));
	        	 

	            
	            list.add(sale);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	}
	
	private static Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}

	public static Sale getRecordById(int id){  
	    Sale u=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from purchase where pid=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            u=new Sale();  
	            u.setPid(rs.getInt("pid"));  
	            u.setName(rs.getString("name")); 
	            u.setPitem(rs.getString("pitem"));
	            u.setAddress(rs.getString("address"));
	            
	            u.setPmdate(rs.getString("pmdate"));
	            u.setPedate(rs.getString("pedate"));
	            u.setPprice(rs.getString("pprice"));
	            u.setPtax(rs.getString("ptax"));  
	             u.setPdis(rs.getString("pdis"));
	             u.setPdate(rs.getString("pdate"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return u;  
	    
	    
	    
	    
	    
	}  
	
	
	
	
	
	
	
	
	
	
	
	
}



