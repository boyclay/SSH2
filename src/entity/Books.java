package entity;

public class Books {
	private int id;// 图书编号
	private String title;// 图书标题
	private String anthor;// 图书作者
	private Publishers publishers; //book关联
//	private String publisherId;// 出版社编号

	public Books() {
	}

	public Books(int id, String title, String anthor, String publisherId) {
		this.id = id;
		this.title = title;
		this.anthor = anthor;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAnthor() {
		return anthor;
	}

	public void setAnthor(String anthor) {
		this.anthor = anthor;
	}

	public Publishers getPublishers() {
		return publishers;
	}

	public void setPublishers(Publishers publishers) {
		this.publishers = publishers;
	}
}
