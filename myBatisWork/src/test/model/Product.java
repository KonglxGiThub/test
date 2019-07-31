package test.model;

public class Product {
    private Integer did;

    private String productname;

    private Integer uid;
    
    private User user;

    public Product(Integer did, String productname, Integer uid) {
		super();
		this.did = did;
		this.productname = productname;
		this.uid = uid;
		
	}


    public Product(Integer did, String productname, Integer uid, User user) {
		super();
		this.did = did;
		this.productname = productname;
		this.uid = uid;
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}