package entity;

public class Books {
	private int id;// ͼ����
	private String title;// ͼ�����
	private String anthor;// ͼ������
	private Publishers publishers; //book����
//	private String publisherId;// ��������

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
