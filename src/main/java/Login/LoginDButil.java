package Login;

import java.sql.ResultSet;
import java.util.*;
import java.sql.Connection;
import java.sql.Statement;

public class LoginDButil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName, String password){
		
		//validate
		
		try {
			
			con = DBconnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+userName+"' and password='"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
	
	public static List<User> getUser(String userName){
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBconnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				User user1 = new User(id,name,email,phone,username,password);
				user.add(user1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	public static boolean insertUser(String name, String email, String phone, String username, String password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBconnector.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into user values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateUser(String id,String name, String email, String phone, String username, String password) {
		
		try {
			
			con = DBconnector.getConnection();
			stmt = con.createStatement();
			String sql = "update user set name='"+name+"', email='"+email+"', phone='"+phone+"', username='"+username+"', password='"+password+"'"
							+"where idUser='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<User> getUserDetails(String id){
		
		int convertedID = Integer.parseInt(id);
		
		ArrayList<User> user = new ArrayList<>();
		
		try {
			
			con = DBconnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where idUser='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int idUser = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String uname = rs.getString(5);
				String psw = rs.getString(6);
				
				User c = new User(idUser,name,email,phone,uname,psw);
				user.add(c);
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		return user;
	}
	
	public static boolean deleteUser(String id) {
		
		int convertId = Integer.parseInt(id);
		
		try {
			
			con = DBconnector.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where idUser="+convertId+"";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
