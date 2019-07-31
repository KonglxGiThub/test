package com.etc.admin.models;


import java.util.Date;

public class CarGoods extends CarGoodsKey {
    private Integer typeId;

    private Integer brandId;

    private String carName;

    private String carparam1;

    private String carparam2;

    private String carparam3;

    private String carparam4;

    private String carparam5;

    private String carparam6;

    private String goodsDel;

    private Integer price;

    private Date lastdate;

    private String gorder;

    private String carDes;

    //=====
    private CarBrand carBrand;
    //=====
    private CarType carType;
    //=====
    private CarImg carImg;
    
    
    
    
    
    public CarBrand getCarBrand() {
		return carBrand;
	}

	public void setCarBrand(CarBrand carBrand) {
		this.carBrand = carBrand;
	}

	public CarType getCarType() {
		return carType;
	}

	public void setCarType(CarType carType) {
		this.carType = carType;
	}

	public CarImg getCarImg() {
		return carImg;
	}

	public void setCarImg(CarImg carImg) {
		this.carImg = carImg;
	}

	public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName == null ? null : carName.trim();
    }

    public String getCarparam1() {
        return carparam1;
    }

    public void setCarparam1(String carparam1) {
        this.carparam1 = carparam1 == null ? null : carparam1.trim();
    }

    public String getCarparam2() {
        return carparam2;
    }

    public void setCarparam2(String carparam2) {
        this.carparam2 = carparam2 == null ? null : carparam2.trim();
    }

    public String getCarparam3() {
        return carparam3;
    }

    public void setCarparam3(String carparam3) {
        this.carparam3 = carparam3 == null ? null : carparam3.trim();
    }

    public String getCarparam4() {
        return carparam4;
    }

    public void setCarparam4(String carparam4) {
        this.carparam4 = carparam4 == null ? null : carparam4.trim();
    }

    public String getCarparam5() {
        return carparam5;
    }

    public void setCarparam5(String carparam5) {
        this.carparam5 = carparam5 == null ? null : carparam5.trim();
    }

    public String getCarparam6() {
        return carparam6;
    }

    public void setCarparam6(String carparam6) {
        this.carparam6 = carparam6 == null ? null : carparam6.trim();
    }

    public String getGoodsDel() {
        return goodsDel;
    }

    public void setGoodsDel(String goodsDel) {
        this.goodsDel = goodsDel == null ? null : goodsDel.trim();
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Date getLastdate() {
        return lastdate;
    }

    public void setLastdate(Date lastdate) {
        this.lastdate = lastdate;
    }

    public String getGorder() {
        return gorder;
    }

    public void setGorder(String gorder) {
        this.gorder = gorder == null ? null : gorder.trim();
    }

    public String getCarDes() {
        return carDes;
    }

    public void setCarDes(String carDes) {
        this.carDes = carDes == null ? null : carDes.trim();
    }
}