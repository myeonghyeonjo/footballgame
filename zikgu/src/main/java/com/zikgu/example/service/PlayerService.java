package com.zikgu.example.service;

import java.util.List;

import com.zikgu.example.domain.Player;

public interface PlayerService {

	List<Player> selectPlayerList();

	

	Player selectPlayerListAnswer(int random);

	Player selectPlayerListOne(Player player);

	

}
