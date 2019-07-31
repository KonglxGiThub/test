package com.etc.admin.models;


public class CarImg {
    private Integer id;

    private String imgId;

    private String imgPath;

    private String imgName;

    
    


	public CarImg() {
		super();
	}

	public CarImg(Integer id, String imgId, String imgPath, String imgName) {
		super();
		this.id = id;
		this.imgId = imgId;
		this.imgPath = imgPath;
		this.imgName = imgName;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgId() {
        return imgId;
    }

    public void setImgId(String imgId) {
        this.imgId = imgId == null ? null : imgId.trim();
    }

    public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath == null ? null : imgPath.trim();
    }

    public String getImgName() {
        return imgName;
    }

    public void setImgName(String imgName) {
        this.imgName = imgName == null ? null : imgName.trim();
    }
}