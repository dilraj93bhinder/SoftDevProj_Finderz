package com.finderz.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "finderz_address_mst")
public class Address {

	@Id
	@Column(name = "address_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer address_id;
	private Integer user_id;
	private String street_no;
	private String streetname1;
	private String streetname2;
	private String city;
	private String province;
	private String country;
	private String postal_code;

	public Integer getAddress_id() {
		return address_id;
	}

	public void setAddress_id(Integer address_id) {
		this.address_id = address_id;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getStreet_no() {
		return street_no;
	}

	public void setStreet_no(String street_no) {
		this.street_no = street_no;
	}

	public String getStreetname1() {
		return streetname1;
	}

	public void setStreetname1(String streetname1) {
		this.streetname1 = streetname1;
	}

	public String getStreetname2() {
		return streetname2;
	}

	public void setStreetname2(String streetname2) {
		this.streetname2 = streetname2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	@Override
	public String toString() {
		return "Address [address_id=" + address_id + ", user_id=" + user_id + ", street_no=" + street_no
				+ ", streetname1=" + streetname1 + ", streetname2=" + streetname2 + ", city=" + city + ", province="
				+ province + ", country=" + country + ", postal_code=" + postal_code + "]";
	}

}
