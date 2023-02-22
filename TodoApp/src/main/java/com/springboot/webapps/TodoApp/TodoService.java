package com.springboot.webapps.TodoApp;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;


@Service
public class TodoService {


	
	public static int cnt=0;
	public static List<Todo> todos = new ArrayList<Todo>();
	static {
		
		todos.add(new Todo(++cnt,"nagi","Learn spring-boot",LocalDate.now(),false));
		todos.add(new Todo(++cnt,"nagi","Learn AWS",LocalDate.now(),true));
		
	}
	
	public List<Todo> findByUserName(String userName) {
		Predicate<Todo> pre = todo -> todo.getUsername().equalsIgnoreCase(userName);
		
		return todos.stream().filter(pre).toList();
	}
	
	public void addTodo(String username, String goal, LocalDate date, boolean done) {
		todos.add(new Todo(++cnt, username, goal, date, done));
	}

	public void deleteTodo(int id) {
		Predicate<Todo> predicate = todo -> todo.getId()==id;
		todos.removeIf(predicate);
		
	}

	public Todo findById(int id) {
		Predicate<Todo> predicate = todo -> todo.getId()==id;
		Todo todo = todos.stream().filter(predicate).findFirst().get();
		return todo;
	}

	public void updateTodo(Todo todo) {
		
		deleteTodo(todo.getId());
		todos.add(todo);
		
	}
	
	
}
