package entity;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = 1L;//序列化
	
	private Integer id;//用户编号
	private String userName;//用户姓名
	private String passWord;//用户密码

	public User() {
		
	}
	
	public User(Integer id, String userName, String passWord) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
	}


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
}