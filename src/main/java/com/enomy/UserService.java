package com.enomy;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.enomy.entity.Role;
import com.enomy.entity.User;
import com.enomy.repo.RoleRepository;
import com.enomy.repo.UserRepository;

import java.util.HashSet;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {		
		System.out.println("----------------------------------"+roleRepository.findAll());
		 // user.setRoles(new HashSet<>(Arrays.asList(new Role("Users"))));
		 // user.setRoles(new HashSet<>(roleRepository.findAll()));
		 System.out.println("Before Set user role "+roleRepository.findBySpecificRoles("Client"));
		 user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Client")));
		 System.out.println("Set user role done");
        repo.save(user);	
	}

	
	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public User getUserByName(String username) {
		return repo.findByUserName(username);
	}
	
	
}