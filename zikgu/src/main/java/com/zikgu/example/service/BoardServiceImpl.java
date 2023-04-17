package com.zikgu.example.service;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;
import com.zikgu.example.domain.MemberProfile;
import com.zikgu.example.domain.TrainerProfile;
import com.zikgu.example.mapper.BoardMapper;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Service("BoardServiceImpl")
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper boardmapper;
	@Override
	public List<Board> selectBoardList() {
		return boardmapper.selectBoardList();
	}
	
	@Override
	public void certifiedPhoneNumber(String userPhoneNumber, int randomNumber) {
		String api_key = "NCSR8XIJNVJCA2T7";
	    String api_secret = "Q3MSASRSQ160X1VTCYHFTKSNR3VY8ROT";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    params.put("to", userPhoneNumber);    // 수신전화번호
	    params.put("from", "01030027241");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	    params.put("type", "SMS");
	    params.put("text", "[TEST] 인증번호는" + "["+randomNumber+"]" + "입니다."); // 문자 내용 입력
	    params.put("app_version", "test app 1.2"); // application name and version

	    try {
	        JSONObject obj = (JSONObject) coolsms.send(params);
	        System.out.println(obj.toString());
	      } catch (CoolsmsException e) {
	        System.out.println(e.getMessage());
	        System.out.println(e.getCode());
	      }
	    
	}
	
	@Override
	public int nameCheck(String sm_name) {
		return boardmapper.nameCheck(sm_name);
	}
	
	@Override
	public int idCheck(String sm_id) {
		return boardmapper.idCheck(sm_id);
	}
	
	@Override
	public int phoneCheck(String phone) {
		return boardmapper.phoneCheck(phone);
	}
	
	@Override
	public void trainerProfileinsert(TrainerProfile trainerprofile) {
		 boardmapper.trainerProfileinsert(trainerprofile);
	}
	
	@Override
	public int gettf_id(TrainerProfile trainerprofile) {
		return boardmapper.gettf_id(trainerprofile);
	}
	
	@Override
	public void fileUpload(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id) {
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("tf_id", tf_id);
		boardmapper.fileUpload(hm);
	}
	@Override
	public void fileUpload2(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id) {
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("tf_id", tf_id);
		boardmapper.fileUpload2(hm);
	}
	@Override
	public void fileUpload3(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id) {
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("tf_id", tf_id);
		boardmapper.fileUpload3(hm);
	}
	
	@Override
	public TrainerProfile trainerprofileDetail(int u_key) {
		return boardmapper.trainerprofileDetail(u_key);
	}
	
	@Override
	public String getU_name(String u_id) {
		return boardmapper.getU_name(u_id);
	}
	
	@Override
	public void centerinsertprocess(Center center) {
		boardmapper.centerinsertprocess(center);
	}
	
	@Override
	public int getc_id() {
		return boardmapper.getc_id();
	}
	
	@Override
	public void centerfileUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int c_id,int u_key,String c_loadaddress) {

		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("c_id", c_id);
		hm.put("u_key", u_key);
		hm.put("c_loadaddress", c_loadaddress);
		boardmapper.centerfileUpload(hm);
	}
	
	@Override
	public  List<Center> getcenterDetail(int c_id) {
		return boardmapper.getcenterDetail(c_id);
	}
	
	@Override
	public List<FileDto> getcenterFileList(int c_id){
		return boardmapper.getcenterFileList(c_id);
	}
	
	@Override
	public List<FileDto> gettf_FileList(int tf_id,  int FILE_GROUP){
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("tf_id", tf_id);
		hm.put("FILE_GROUP", FILE_GROUP);
		return boardmapper.gettf_FileList(hm);
	}
	
	@Override
	public int gettf_id2(String u_id) {
		return boardmapper.gettf_id2(u_id);
	}
	
	@Override
	public int getu_key(String u_id){
		return boardmapper.getu_key(u_id);
	}
	
	@Override
	public String getU_name2(int u_key) {
		return boardmapper.getU_name2(u_key);
	}
	
	@Override
	public void fileUpload2_1(String originalfileName, String saveFileName, long fileSize, String savePath, int tf_id,
			String tf_certificatetitle2) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("tf_id", tf_id);
		hm.put("tf_certificatetitle2",tf_certificatetitle2);
		boardmapper.fileUpload2_1(hm);
	}
	
	@Override
	public List<Center> getcenterListALL() {
		return boardmapper.getcenterListALL();
	}

	
	
	@Override
	public void centerConfirmCancel(int c_id) {
		boardmapper.centerConfirmCancel(c_id);
	}
	
	@Override
	public List<TrainerProfile> search_All(String keyword){
		return boardmapper.search_All(keyword);
	}
	
	@Override
	public Center getcenterDetail2(String tf_loadaddress){
		return boardmapper.getcenterDetail2(tf_loadaddress);
	}
	
	@Override
	public void centerConfirm(Center center) {
		boardmapper.centerConfirm(center);
	}
	
	@Override
	public void memberProfileinsert(MemberProfile memberprofile) {
		boardmapper.memberProfileinsert(memberprofile);
	}
	
	@Override
	public List<Center> getcenterListOne(int u_key){
		return boardmapper.getcenterListOne(u_key);
	}
	
	@Override
	public List<FileDto> getcenterSearchFileList(String tfIdString){
		return boardmapper.getcenterSearchFileList(tfIdString);
	}
	
	@Override
	public List<FileDto> getcenterFileList2(String tf_loadaddress) {
		return boardmapper.getcenterFileList2(tf_loadaddress);
	}
	
	@Override
	public List<FileDto> getprofileFileList2(int tf_id){
		return boardmapper.getprofileFileList2(tf_id);
	}
	
	@Override
	public List<TrainerProfile> trainerList(){
		return boardmapper.trainerList();
	}
	
	@Override
	public List<MemberProfile> getmemberprofileListALL(){
		return boardmapper.getmemberprofileListALL();
	}
	
	@Override
	public MemberProfile getmemberprofiledetail(String m_id) {
		return boardmapper.getmemberprofiledetail(m_id);
	}
}


