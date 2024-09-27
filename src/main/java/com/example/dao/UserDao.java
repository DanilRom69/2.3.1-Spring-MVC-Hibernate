package com.example.dao;

import com.example.model.User;
import java.util.List;

public interface UserDao {
    void addUser(User user);
    List<User> listUsers();
    User findById(int id);
    void deleteUser(int id);
}
