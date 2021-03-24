package com.model;

public class ContractDTO {
	
	private String apt;
	private String gu; // ����
	private String dong; //������
	private String type; // �Ÿ� ���� ����
	private String price; //����
	private String manage; //�����񿹽�
	private double area; //����
	private int room; //�� ����
	private int bath; // ��� ����
	private String moveIn; //���ְ��ɽñ�
	private int buildYear; //�ذ��⵵
	private String households; //�����
	
	
	public ContractDTO(String apt, String gu, String dong) {
		super();
		this.apt = apt;
		this.gu = gu;
		this.dong = dong;
	}
	
	public ContractDTO(String apt, String type, String price, String manage, double area, int room, int bath,
			String moveIn, int buildYear, String households) {
		super();
		this.apt = apt;
		this.type = type;
		this.price = price;
		this.manage = manage;
		this.area = area;
		this.room = room;
		this.bath = bath;
		this.moveIn = moveIn;
		this.buildYear = buildYear;
		this.households = households;
	}



	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getManage() {
		return manage;
	}

	public void setManage(String manage) {
		this.manage = manage;
	}

	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public int getRoom() {
		return room;
	}

	public void setRoom(int room) {
		this.room = room;
	}

	public int getBath() {
		return bath;
	}

	public void setBath(int bath) {
		this.bath = bath;
	}

	public String getMoveIn() {
		return moveIn;
	}

	public void setMoveIn(String moveIn) {
		this.moveIn = moveIn;
	}

	public int getBuildYear() {
		return buildYear;
	}

	public void setBuildYear(int buildYear) {
		this.buildYear = buildYear;
	}

	public String getHouseholds() {
		return households;
	}

	public void setHouseholds(String households) {
		this.households = households;
	}

	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getApt() {
		return apt;
	}
	public void setApt(String apt) {
		this.apt = apt;
	}
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	
}
