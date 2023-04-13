// BoardMapper.java
package com.zikgu.example.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;
import com.zikgu.example.domain.TrainerProfile;

@Mapper
public interface BoardMapper {
	public List<Board> selectBoardList();

	public int nameCheck(String sm_name);

	public int idCheck(String sm_id);

	public int phoneCheck(String phone);

	public void trainerProfileinsert(TrainerProfile trainerprofile);

	public int gettf_id(TrainerProfile trainerprofile);
	
	public void fileUpload(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id);

	public void fileUpload(HashMap<String, Object> hm);

	public TrainerProfile trainerprofileDetail(int u_key);

	public String getU_name(String u_id);

	public void centerinsertprocess(Center center);

	public int getc_id();

	public void centerfileUpload(HashMap<String, Object> hm);

	public  List<Center> getcenterDetail(int c_id);

	public List<FileDto> getcenterFileList(int c_id);

	public void fileUpload2(HashMap<String, Object> hm);
	
	public void fileUpload3(HashMap<String, Object> hm);

	public List<FileDto> gettf_FileList(HashMap<String, Object> hm);

	public int gettf_id2(String u_id);

	public int getu_key(String u_id);

	public String getU_name2(int u_key);

	public void fileUpload2_1(HashMap<String, Object> hm);

	public List<Center> getcenterListALL();

	public void centerConfirm(int c_id);

	public void centerConfirmCancel(int c_id);

	
}

