package com.etc.admin.models;


public class CarType {
    private Integer typeId;

    private String typeName;

    private String typeDes;

    private String typeOder;

    
    
    
    
    public CarType() {
	
	}
    public CarType(Integer typeId) {
		super();
		this.typeId = typeId;

	}
    
    
    public CarType(Integer typeId, String typeName, String typeDes, String typeOder) {
		super();
		this.typeId = typeId;
		this.typeName = typeName;
		this.typeDes = typeDes;
		this.typeOder = typeOder;
	}

	public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public String getTypeDes() {
        return typeDes;
    }

    public void setTypeDes(String typeDes) {
        this.typeDes = typeDes == null ? null : typeDes.trim();
    }

    public String getTypeOder() {
        return typeOder;
    }

    public void setTypeOder(String typeOder) {
        this.typeOder = typeOder == null ? null : typeOder.trim();
    }
}