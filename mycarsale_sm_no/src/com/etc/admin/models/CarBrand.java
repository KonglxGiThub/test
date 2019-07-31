package com.etc.admin.models;



public class CarBrand {
    private Integer brandId;

    private String brandName;

    private String brandDes;

    private String brandOder;

    
 
    public CarBrand() {
		super();
	}
	public CarBrand(Integer brandId) {
		super();
		this.brandId = brandId;

	}

	public CarBrand(Integer brandId, String brandName, String brandDes, String brandOder) {
		super();
		this.brandId = brandId;
		this.brandName = brandName;
		this.brandDes = brandDes;
		this.brandOder = brandOder;
	}

	public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName == null ? null : brandName.trim();
    }

    public String getBrandDes() {
        return brandDes;
    }

    public void setBrandDes(String brandDes) {
        this.brandDes = brandDes == null ? null : brandDes.trim();
    }

    public String getBrandOder() {
        return brandOder;
    }

    public void setBrandOder(String brandOder) {
        this.brandOder = brandOder == null ? null : brandOder.trim();
    }
}