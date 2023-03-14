package com.zikgu.example.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zikgu.example.domain.Player;
import com.zikgu.example.mapper.PlayerMapper;

@Service("PlayerServiceImpl")
public class PlayerServiceImpl implements PlayerService{

	@Autowired PlayerMapper playermapper;
	@Override
	public List<Player> selectPlayerList() {
		return playermapper.selectplayerList();
	}
	
	public Player selectPlayerListOne(Player player) {
		return playermapper.selectPlayerListOne(player);
	}
	
	public Player selectPlayerListAnswer(int random){
		return playermapper.selectPlayerListAnswer(random);
	}
}
