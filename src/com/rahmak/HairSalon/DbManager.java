/**
 * 
 */
package com.rahmak.HairSalon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author rahmak
 *
 */
public class DbManager {
	
	public Connection getConnection() {
		String connectionUrl = "jdbc:mysql://localhost:3306/HairSalon";
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			connection = DriverManager.getConnection(connectionUrl, "phpmyadmin", "rahma");
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;	
	}
	
	public void closeConnection(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// create a new client
	public void create(Client client) {
		String sql = "insert into client(name, email) values(?, ?)";
		
		// get connection
		Connection connection = getConnection();
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, client.getName());
			statement.setString(2, client.getEmail());
			statement.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection);
		}
	}
	
	// create a new Stylist
	public void createStylist(Stylist stylist) {
		String sql = "insert into stylist(username, userpassword) values(?, ?)";
		
		// get connection
		Connection connection = getConnection();
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, stylist.getUsername());
			statement.setString(2, stylist.getUserpassword());
			statement.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(connection);
		}
	}
	
	// create a List Stylist Array
	public List<Stylist> selectAll(){
		List<Stylist> stylists = new ArrayList<Stylist>();
		
		String sql = "select * from stylist";
		Connection conn = getConnection();
		try {
			PreparedStatement statement = conn.prepareStatement(sql);
			ResultSet results = statement.executeQuery();
			while(results.next()) {
				int id = results.getInt("id");
				String username = results.getString("username");
				Stylist stylist = new Stylist(id, username);
				stylists.add(stylist);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConnection(conn);
		}
		return stylists;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		DbManager db = new DbManager();
		Connection connection = db.getConnection();
		System.out.println(connection);
		db.closeConnection(connection);
	}

}
