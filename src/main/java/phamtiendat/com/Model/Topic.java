package phamtiendat.com.Model;

public class Topic {
	private int id;
	private String title;
	private String description;
	private String image;
	public Topic() {}
	public Topic(int id,String title,String description,String image) {
		this.id=id;
		this.title=title;
		this.description=description;
		this.image=image;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	

}
