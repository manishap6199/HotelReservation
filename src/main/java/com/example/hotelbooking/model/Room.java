package com.example.hotelbooking.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name="room")
public class Room {
	
	@Id
	@SequenceGenerator(name = "node_id_seq", sequenceName = "node_id_seq",allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "node_id_seq")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "catid",referencedColumnName = "id")
	private Category category;
	
	@Column
	private Long number;
	@Column(name="details", length = 500)
	private String details;
	@Column
	private Double charges;
	@Column
	private String status;
	
	public Room() {
		
	}
	
	public Room(Category category, Long number, String details, Double charges, String status) {
		super();
		this.category = category;
		this.number = number;
		this.details = details;
		this.charges = charges;
		this.status = status;
	}
	
	public Room(Long id,Category category, Long number, String details, Double charges, String status) {
		super();
		this.id = id;
		this.category = category;
		this.number = number;
		this.details = details;
		this.charges = charges;
		this.status = status;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", category=" + category + ", number=" + number + ", details=" + details
				+ ", charges=" + charges + ", status=" + status + "]";
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Long getNumber() {
		return number;
	}
	public void setNumber(Long number) {
		this.number = number;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Double getCharges() {
		return charges;
	}
	public void setCharges(Double charges) {
		this.charges = charges;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
