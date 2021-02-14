package com.finderz.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "finderz_advertisement")
public class Property {

	@Id
	@Column(name = "advertisement_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer advertisement_id;
	private Integer user_id;
	private String advertisement_title;
	private String advertisement_description;
	private Integer address_id;
	private Integer ad_no_of_bedrooms;
	private Integer ad_no_of_bathrooms;
	private Date advertisement_date;
	private String advertisement_image;
	private Double advertisement_price;
	private Integer advertisement_status;

	public int getAdvertisement_id() {
		return advertisement_id;
	}

	public void setAdvertisement_id(int advertisement_id) {
		this.advertisement_id = advertisement_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getAdvertisement_title() {
		return advertisement_title;
	}

	public void setAdvertisement_title(String advertisement_title) {
		this.advertisement_title = advertisement_title;
	}

	public String getAdvertisement_description() {
		return advertisement_description;
	}

	public void setAdvertisement_description(String advertisement_description) {
		this.advertisement_description = advertisement_description;
	}

	public Integer getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}

	public Integer getAd_no_of_bedrooms() {
		return ad_no_of_bedrooms;
	}

	public void setAd_no_of_bedrooms(Integer ad_no_of_bedrooms) {
		this.ad_no_of_bedrooms = ad_no_of_bedrooms;
	}

	public Integer getAd_no_of_bathrooms() {
		return ad_no_of_bathrooms;
	}

	public void setAd_no_of_bathrooms(Integer ad_no_of_bathrooms) {
		this.ad_no_of_bathrooms = ad_no_of_bathrooms;
	}

	public Date getAdvertisement_date() {
		return advertisement_date;
	}

	public void setAdvertisement_date(Date advertisement_date) {
		this.advertisement_date = advertisement_date;
	}

	public String getAdvertisement_image() {
		return advertisement_image;
	}

	public void setAdvertisement_image(String advertisement_image) {
		this.advertisement_image = advertisement_image;
	}

	public Double getAdvertisement_price() {
		return advertisement_price;
	}

	public void setAdvertisement_price(Double advertisement_price) {
		this.advertisement_price = advertisement_price;
	}

	public Integer getAdvertisement_status() {
		return advertisement_status;
	}

	public void setAdvertisement_status(Integer advertisement_status) {
		this.advertisement_status = advertisement_status;
	}

	@Override
	public String toString() {
		return "Property [advertisement_id=" + advertisement_id + ", user_id=" + user_id + ", advertisement_title="
				+ advertisement_title + ", advertisement_description=" + advertisement_description + ", address_id="
				+ address_id + ", ad_no_of_bedrooms=" + ad_no_of_bedrooms + ", ad_no_of_bathrooms=" + ad_no_of_bathrooms
				+ ", advertisement_date=" + advertisement_date + ", advertisement_image=" + advertisement_image
				+ ", advertisement_price=" + advertisement_price + ", advertisement_status=" + advertisement_status
				+ "]";
	}

}
