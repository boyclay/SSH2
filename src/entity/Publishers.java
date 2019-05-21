package entity;

import java.util.HashSet;
import java.util.Set;

public class Publishers {
	private String publisherId;// 出版社ID
	private String name;// 出版社名字
	private Set bks = new HashSet();
	
	public Publishers() {
	}

	public Publishers(String publisherId, String name) {
		this.publisherId = publisherId;
		this.name = name;
	}

	public String getPublisherId() {
		return publisherId;
	}

	public void setPublisherId(String publisherId) {
		this.publisherId = publisherId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getBks() {
		return bks;
	}

	public void setBks(Set bks) {
		this.bks = bks;
	}
	

}
