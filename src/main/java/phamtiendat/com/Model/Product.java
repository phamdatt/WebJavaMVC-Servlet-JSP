package phamtiendat.com.Model;

import java.sql.Timestamp;

public class Product {

	 protected int id;
	    protected String title;
	    protected String description;
	    protected double price;
	    protected double price_net; 
	    protected int available;
	    protected int sold;
	    protected Timestamp deal_timer;
	    protected int discount;
	    protected String image;
	    protected boolean popular;
	    protected boolean hot_deal;
	    protected boolean hot_new;
	    protected int catid ;
	    protected String area;
	    protected boolean trend;
	    protected boolean electro;    
	    public Product() {  }
	    public Product(int id, String title, String description, double price,int discount, String image, boolean hot_deal, boolean hot_new,boolean trend,boolean electro) {
	    this.id = id;
	        this.title = title;
	        this.description = description;
	        this.price = price;
	        this.discount = discount;        
	        this.image= image;        
	        this.hot_deal = hot_deal;
	        this.hot_new = hot_new;
	        this.trend =trend;
	        this.electro = electro;        
	    }
	    public Product(int id, String title, String description, double price,double price_net, int available,int sold,Timestamp deal_timer,int discount , String image,int catid,String area) {
	    this.id = id;
	        this.title = title;
	        this.description = description;
	        this.price = price;
	        this.image= image;
	        this.price_net = price_net;
	        this.sold = sold;
	        this.deal_timer = deal_timer;
	        this.available = available;     
	        this.discount = discount ;
	        this.catid=catid;
	        this.area=area;
	    }
	    public String getArea() {
			return area;
		}
		public void setArea(String area) {
			this.area = area;
		}
		public int getCatid() {
			return catid;
		}
		public void setCatid(int catid) {
			this.catid = catid;
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
	    public double getPrice() {
	        return price;
	    }
	    public void setPrice(double price) {
	        this.price = price;
	    }
	    public double getPriceNet() {
	        return price_net;
	    }
	    public void setPriceNet(double price_net) {
	        this.price_net = price_net;
	    }
	    public int getAvailable() {
	        return available;
	    }
	    public void setAvailable(int available) {
	        this.available = available;
	    }
	    public int getSold() {
	        return sold;
	    }
	    public void getSold(int sold) {
	        this.sold = sold;
	    }
	    public int getDiscount() {
	        return discount;
	    }
	    public void setDiscount(int discount) {
	        this.discount = discount;
	    }
	    public String getImage() {
	        return image;
	    }
	    public void setImage(String image) {
	        this.image=image;
	    }
	    public boolean getHotDeal() {
	        return hot_new;
	    }
	    public void setHotDeal(boolean hot_deal) {
	        this.hot_deal=hot_deal;
	    }
	    public boolean getHotNew() {
	        return hot_new;
	    }
	    public void setHotNew(boolean hot_new) {
	        this.hot_new=hot_new;
	    }
	    public boolean getElectro() {
	        return electro;
	    }
	    public void setElectro(boolean electro) {
	        this.electro=electro;
	    }

	}


