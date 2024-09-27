package com.example.service;

import com.example.model.User;
import java.util.List;

public interface UserService {
    void addUser(User user);
    List<User> listUsers();
    User findById(int id);
    void deleteUser(int id);
}
