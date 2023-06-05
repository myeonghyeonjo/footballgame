package com.zikgu.example.domain;

import java.util.Collection;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class User implements UserDetails {
	

	private static final long serialVersionUID = 1L;
	
	private String username;	//u_id
	private String password;		//u_password
	private String uName;			//u_name
	private String uDateTime;	//u_datetime
	private String phone;
	private int u_key;
	private int u_trainercheck;
	//security 관련
	private Collection<? extends GrantedAuthority> authorities;
	
	private boolean isAccountNonExpired;
	private boolean isAccountNonLocked;
	private boolean isCredentialsNonExpired;
	private boolean isEnabled;
	private int u_memberprofileinsertcheck;
	

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuDateTime() {
		return uDateTime;
	}

	public void setuDateTime(String uDateTime) {
		this.uDateTime = uDateTime;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setAccountNonExpired(boolean isAccountNonExpired) {
		this.isAccountNonExpired = isAccountNonExpired;
	}

	public void setAccountNonLocked(boolean isAccountNonLocked) {
		this.isAccountNonLocked = isAccountNonLocked;
	}

	public void setCredentialsNonExpired(boolean isCredentialsNonExpired) {
		this.isCredentialsNonExpired = isCredentialsNonExpired;
	}

	public void setEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}
	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return authorities;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return isAccountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return isAccountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return isCredentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return isEnabled;
	}

	@Override 
	public String toString() {
		return "User [u_memberprofileinsertcheck=" + u_memberprofileinsertcheck + ", username=" + username + ",  password=" + password + ", u_trainercheck=" + u_trainercheck + ", u_key=" + u_key + ", uName=" + uName + ", uDateTime=" + uDateTime
				+ ", authorities=" + authorities + ", isAccountNonExpired=" + isAccountNonExpired
				+ ", isAccountNonLocked=" + isAccountNonLocked + ", isCredentialsNonExpired=" + isCredentialsNonExpired
				+ ", isEnabled=" + isEnabled + "]";
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getU_key() {
		return u_key;
	}

	public void setU_key(int u_key) {
		this.u_key = u_key;
	}

	public int getU_trainercheck() {
		return u_trainercheck;
	}

	public void setU_trainercheck(int u_trainercheck) {
		this.u_trainercheck = u_trainercheck;
	}

	public int getU_memberprofileinsertcheck() {
		return u_memberprofileinsertcheck;
	}

	public void setU_memberprofileinsertcheck(int u_memberprofileinsertcheck) {
		this.u_memberprofileinsertcheck = u_memberprofileinsertcheck;
	}

	


	


}

