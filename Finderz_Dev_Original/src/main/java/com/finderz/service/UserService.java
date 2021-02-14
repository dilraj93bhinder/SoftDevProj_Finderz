package com.finderz.service;

import java.util.List;

import com.finderz.model.User;

public interface UserService {

	public void addUser(User p);

	public void updateUser(User p);

	public List<User> listUsers();

	public User getUserById(int id);

	public void removeUser(int id);

	public User loginUser(User p);
}
