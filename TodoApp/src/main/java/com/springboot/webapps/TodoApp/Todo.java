package com.springboot.webapps.TodoApp;

import java.time.LocalDate;

import jakarta.validation.constraints.FutureOrPresent;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class Todo {

	private String goalErrorMsg;
	private String dateErrorMsg;
	public String getGoalErrorMsg() {
		return goalErrorMsg;
	}
	public void setGoalErrorMsg(String goalErrorMsg) {
		this.goalErrorMsg = goalErrorMsg;
	}
	public String getDateErrorMsg() {
		return dateErrorMsg;
	}
	public void setDateErrorMsg(String dateErrorMsg) {
		this.dateErrorMsg = dateErrorMsg;
	}
	private int id;
	
	@NotNull(message="Goal should not be blank")
	@Size(min=10, message="Enter atleast 10 characters")
	private String description;
	
	@NotNull(message="Please select your target Date")
	@FutureOrPresent(message="Date cannot be in past")
	private LocalDate targetDate;
	private String username;
	private boolean done;
	public Todo(int id,String username,String description, LocalDate targetDate, boolean done) {
		super();
		this.id = id;
		this.username=username;
		this.description = description;
		this.targetDate = targetDate;
		this.done = done;
	}
	public int getId() {
		return id;
	}
	@Override
	public String toString() {
		return "Todo [id=" + id + ", description=" + description + ", targetDate=" + targetDate + ", username="
				+ username + ", done=" + done + "]";
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public LocalDate getTargetDate() {
		return targetDate;
	}
	public void setTargetDate(LocalDate targetDate) {
		this.targetDate = targetDate;
	}
	public boolean isDone() {
		return done;
	}
	public void setDone(boolean done) {
		this.done = done;
	}
	
	
	
}
