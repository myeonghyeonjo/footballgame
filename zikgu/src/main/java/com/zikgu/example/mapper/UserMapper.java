package com.zikgu.example.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.core.GrantedAuthority;
import com.zikgu.example.domain.User;

@Mapper
public interface UserMapper {
	   //유저읽기
	   public User readUser(String username);
	   
	   //유저생성
	   public void createUser(User user);

	   // 권한 읽기
	   public List<GrantedAuthority> readAuthorities(String username);

	   // 권한 생성
	   public void createAuthority(User user);

    	public void createUserTrainer(User user);

		public User getUserdetail(String u_key);

		public void updateUser(User user);

		public void usernameModify(User user);

		public void getUserdelete(int u_key);

		public void getUserdeleteAuth(String u_id);

	
}

