// BoardMapper.java
package com.zikgu.example.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.zikgu.example.domain.Board;

@Mapper
public interface BoardMapper {
	public List<Board> selectBoardList();
}

