package phamtiendat.com.Model;

public class Slider {

private int id ;
private String image;
private int status;
public Slider() {}
public Slider(int id,String image,int status) {
	this.id=id;
	this.image=image;
	this.status=status;
	
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}

}
