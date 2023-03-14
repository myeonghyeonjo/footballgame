package com.zikgu.example.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.zikgu.example.domain.Board;
import com.zikgu.example.mapper.BoardMapper;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper boardmapper;
	@Override
	public List<Board> selectBoardList() {
		return boardmapper.selectBoardList();
	}

}
