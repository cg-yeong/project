package com.model;

public class Main_filterDTO {
	
	private int maemae_num;
	private String dong;
	private String price;
	private int build_year;
	private String apt_name;
	private int year;
	private int month;
	private int day;
	private int apt_size;
	private int floor;
	
	public Main_filterDTO(int maemae_num, String dong, String price, int build_year, String apt_name, int year,
			int month, int day, int apt_size, int floor) {
		super();
		this.maemae_num = maemae_num;
		this.dong = dong;
		this.price = price;
		this.build_year = build_year;
		this.apt_name = apt_name;
		this.year = year;
		this.month = month;
		this.day = day;
		this.apt_size = apt_size;
		this.floor = floor;
	}
	public int getApt_size() {
		return apt_size;
	}
	public void setApt_size(int apt_size) {
		this.apt_size = apt_size;
	}
	public int getMaemae_num() {
		return maemae_num;
	}
	public void setMaemae_num(int maemae_num) {
		this.maemae_num = maemae_num;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int searchlist() {
		return build_year;
	}
	public void setBuild_year(int build_year) {
		this.build_year = build_year;
	}
	public String getApt_name() {
		return apt_name;
	}
	public void setApt_name(String apt_name) {
		this.apt_name = apt_name;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}

}
