package com.zikgu.example.service;

import java.util.List;
import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;
import com.zikgu.example.domain.TrainerProfile;

public interface BoardService {
	public List<Board> selectBoardList();

	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber);

	public int nameCheck(String sm_name);

	public int idCheck(String sm_id);

	public int phoneCheck(String phone);

	public void trainerProfileinsert(TrainerProfile trainerprofile);

	public int gettf_id(TrainerProfile trainerprofile);

	public void fileUpload(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id);

	public TrainerProfile trainerprofileDetail(int u_key);

	public String getU_name(String u_id);

	public void centerinsertprocess(Center center);

	public int getc_id();

	public void centerfileUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int c_id);

	public List<Center> getcenterDetail(int c_id);

	
	public void fileUpload2(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id);
	
	public void fileUpload3(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id);

	public List<FileDto> getcenterFileList(int c_id);

	public List<FileDto> gettf_FileList(int tf_id,  int FILE_GROUP);

	public int gettf_id2(String u_id);

	public int getu_key(String u_id);

	public String getU_name2(int u_key);

	public void fileUpload2_1(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id,
			String tf_certificatetitle2);

	public List<Center> getcenterListALL();

	public void centerConfirm(int c_id);

	public void centerConfirmCancel(int c_id);




	
}

