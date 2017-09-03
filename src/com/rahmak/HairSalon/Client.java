/**
 * 
 */
package com.rahmak.HairSalon;

/**
 * @author rahmak
 *
 */
public class Client {
	
	private int id;
	private String name;
	private String email;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @param id
	 * @param name
	 * @param email
	 */
	public Client(int id, String name, String email) {
		this.id = id;
		this.name = name;
		this.email = email;
	}
	/**
	 * @param name
	 * @param email
	 */
	public Client(String name, String email) {
		this.name = name;
		this.email = email;
	}
	/**
	 * 
	 */
	public Client() {
	}
}
