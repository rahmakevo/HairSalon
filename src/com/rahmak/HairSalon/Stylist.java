/**
 * 
 */
package com.rahmak.HairSalon;

/**
 * @author rahmak
 *
 */
public class Stylist {
	
	private int id;
	private String username;
	private String userpassword;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the userpassword
	 */
	public String getUserpassword() {
		return userpassword;
	}
	/**
	 * @param userpassword the userpassword to set
	 */
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	/**
	 * @param id
	 * @param username
	 * @param userpassword
	 */
	public Stylist(int id, String username, String userpassword) {
		this.id = id;
		this.username = username;
		this.userpassword = userpassword;
	}
	/**
	 * @param username
	 * @param userpassword
	 */
	public Stylist(String username, String userpassword) {
		this.username = username;
		this.userpassword = userpassword;
	}
	/**
	 * 
	 */
	public Stylist() {
	}
	/**
	 * @param id
	 * @param username
	 */
	public Stylist(int id, String username) {
		this.id = id;
		this.username = username;
	}
}
