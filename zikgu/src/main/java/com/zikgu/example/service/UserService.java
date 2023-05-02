package com.zikgu.example.service;

import java.util.Collection;
import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import com.zikgu.example.domain.User;

public interface UserService extends UserDetailsService{
	   //유저읽기
	   public User readUser(String username);
	      
	   //유저생성
	   public void createUser(User user);

	   // 권한 생성
	   public void createAuthorities(User user);
	   
	   // 시큐리티 권한 얻기
	   Collection<GrantedAuthority> getAuthorities(String username);

	   
	   public void createUserTrainer(User user);

	public User getUserdetail(String u_key);

	public void updateUser(User user);

	public void usernameModify(User user);

	public void getUserdelete(int u_key2);

	public void getUserdeleteAuth(String u_id);

	public User getUserdetail2();

	

	
	}
