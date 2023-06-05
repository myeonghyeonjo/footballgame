package com.zikgu.example.service;

import java.util.Collection;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.zikgu.example.domain.User;
import com.zikgu.example.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

   @Autowired
   UserMapper userMapper;
   
   @Override
   public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
      User user = userMapper.readUser(username);
      user.setAuthorities(getAuthorities(username));
      
      return user;
   }
   
   @Override
   public Collection<GrantedAuthority> getAuthorities(String username) {
      List<GrantedAuthority> authorities = userMapper.readAuthorities(username);
      return authorities;
   }
   
   @Override
   public void createUser(User user) {
      userMapper.createUser(user);
   }

   @Override
   public void createAuthorities(User user) {
      userMapper.createAuthority(user);
   }

   @Override
   public User readUser(String username) {
      return userMapper.readUser(username);
   }
   
   @Override
   public void createUserTrainer(User user)
   {
	   userMapper.createUserTrainer(user);
   }
   
   @Override
   public User getUserdetail(String u_key) {
	   return userMapper.getUserdetail(u_key);
   }
   
   @Override
   public void updateUser(User user) {
	   userMapper.updateUser(user);
   }
   
   @Override
   public void usernameModify(User user) {
	   userMapper.usernameModify(user);
   }
   
   @Override
   public void getUserdelete(int u_key) {
	   userMapper.getUserdelete(u_key);
   }
   
   @Override
   public void getUserdeleteAuth(String u_id) {
	   userMapper.getUserdeleteAuth(u_id);
   }
   
   @Override
   public User getUserdetail2() {
	   return userMapper.getUserdetail2();
   }
   
   @Override
   public void memberprofileinsertcheckupdate(int u_key) {
	   userMapper.memberprofileinsertcheckupdate(u_key);
   }

  

}
