package com.iiiproject._00_backstage.model;

import java.io.Serializable;

import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

import com.google.protobuf.Timestamp;


@Component(value = "MemberSaleCount2")
@Entity
@Table(name = "MemberSaleCount2")
public class CountMemberSaleBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "pk")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer pk;
	
	@Column(name = "id")
	private String id;
	
	@Column(name = "orderDate")
	private Timestamp orderDate;
	
	@Column(name = "total")
	private Integer total;
	
	@Column(name = "gender")
	private String gender;
	
	
	
}
