package com.zikgu.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.zikgu.example.domain.Player;

@Mapper
public interface PlayerMapper {
	public List<Player> selectplayerList();

	public Player selectPlayerListOne(String name,String team);

	public Player selectPlayerListAnswer(int random);

	public Player selectPlayerListOne(Player player);
}
