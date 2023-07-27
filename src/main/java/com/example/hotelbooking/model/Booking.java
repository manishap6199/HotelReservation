package com.example.hotelbooking.model;

import java.util.Date;

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
@Table(name="booking")
public class Booking {
	@Id
	@SequenceGenerator(name = "node_id_seq", sequenceName = "node_id_seq",allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "node_id_seq")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "userid",referencedColumnName = "id")
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "roomid",referencedColumnName = "id")
	private Room room;
	
	@Column
	private Date fromDate;
	@Column
	private Date toDate;
	@Column
	private Date bookingDate;
	@Column
	private Double amount;
	@Column
	private String cardName;
	
	@Column
	private String cardNumber;

	@Column
	private String cardExpiry;

	public Booking() {
		
	}

	

	public Booking(User user, Room room, Date fromDate, Date toDate, Date bookingDate, Double amount, String cardName,
			String cardNumber, String cardExpiry) {
		super();
		this.user = user;
		this.room = room;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.bookingDate = bookingDate;
		this.amount = amount;
		this.cardName = cardName;
		this.cardNumber = cardNumber;
		this.cardExpiry = cardExpiry;
	}



	@Override
	public String toString() {
		return "Booking [id=" + id + ", user=" + user + ", room=" + room + ", fromDate=" + fromDate + ", toDate="
				+ toDate + ", bookingDate=" + bookingDate + ", amount=" + amount + ", cardName=" + cardName
				+ ", cardNumber=" + cardNumber + ", cardExpiry=" + cardExpiry + "]";
	}



	public String getCardName() {
		return cardName;
	}



	public void setCardName(String cardName) {
		this.cardName = cardName;
	}



	public String getCardNumber() {
		return cardNumber;
	}



	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}



	public String getCardExpiry() {
		return cardExpiry;
	}



	public void setCardExpiry(String cardExpiry) {
		this.cardExpiry = cardExpiry;
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Room getRoom() {
		return room;
	}

	public void setRoom(Room room) {
		this.room = room;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	
	
}
