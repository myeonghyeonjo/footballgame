package com.zikgu.example.service;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;
import com.zikgu.example.domain.MemberProfile;
import com.zikgu.example.domain.PT;
import com.zikgu.example.domain.Review;
import com.zikgu.example.domain.SelectedPT;
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
	
	@Override
	public List<TrainerProfile> gettrainerprofileListALL(){
		return boardmapper.gettrainerprofileListALL();
	}
	
	@Override
	public void trainerprofilecheck(int u_key) {
		boardmapper.trainerprofilecheck(u_key);
	}
	
	@Override
	public void trainerprofilecheckcancel(int u_key) {
		boardmapper.trainerprofilecheckcancel(u_key);
	}
	
	@Override
	public String getphone(int u_key) {
		return boardmapper.getphone(u_key);
	}
	
	@Override
	public int getm_id(MemberProfile memberprofile) {
		return boardmapper.getm_id(memberprofile);
	}
	
	@Override
	public int getm_id2(int u_key) {
		return boardmapper.getm_id2(u_key);
	}
	
	@Override
	public void updateTf_consulting(TrainerProfile trainerprofile) {
		boardmapper.updateTf_consulting(trainerprofile);
	}
	
	@Override
	public MemberProfile getmemberprofiledetail2(int member_u_key) {
		return boardmapper.getmemberprofiledetail2(member_u_key);
	}
	
	@Override
	public void updateM_consulting(MemberProfile memberprofile) {
		boardmapper.updateM_consulting(memberprofile);
	}
	
	@Override
	public List<TrainerProfile> trainerprofileconsulting(int u_key){
		return boardmapper.trainerprofileconsulting(u_key);
	}
	
	@Override
	public void updateTf_consulting2(TrainerProfile trainerprofile) {
		boardmapper.updateTf_consulting2(trainerprofile);
	}
	
	@Override
	public void updateM_consulting2(MemberProfile memberprofile) {
		boardmapper.updateM_consulting2(memberprofile);
	}
	
	@Override
	public List<MemberProfile> memberprofileconsulting(int tf_id){
		return boardmapper.memberprofileconsulting(tf_id);
	}
	
	@Override
	public void updateTf_Consultingconfirm(TrainerProfile trainerprofile) {
		boardmapper.updateTf_Consultingconfirm(trainerprofile);
	}
	
	@Override
	public void updateM_consultingconfirm(MemberProfile memberprofile) {
		boardmapper.updateM_consultingconfirm(memberprofile);
	}
	@Override
	public void ptInsert(PT pt) {
		boardmapper.ptInsert(pt);
	}
	
	@Override
	public int getpt_id() {
		return boardmapper.getpt_id();
	}
	
	@Override
	public void PTfileUpload(String originalfileName, String saveFileName, long fileSize, String savePath, int trainer_u_key,int pt_id) {
		
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("trainer_u_key", trainer_u_key);
		hm.put("pt_id", pt_id);
		boardmapper.PTfileUpload(hm);
	}
	
	@Override
	public  List<PT> getPTdetail(int u_key) {
		return boardmapper.getPTdetail(u_key);
	}
	
	@Override
	public List<FileDto> getPT_FileList(int u_key){
		return boardmapper.getPT_FileList(u_key);
	}
	
	@Override
	public void insertselectedpt(SelectedPT selectedpt) {
		boardmapper.insertselectedpt(selectedpt);
	}
	
	@Override
	public void modifytf_name(TrainerProfile trainerprofile) {
		boardmapper.modifytf_name(trainerprofile);
	}
	
	@Override
	public void modifytf_hanjulintro(TrainerProfile trainerprofile) {
		boardmapper.modifytf_hanjulintro(trainerprofile);
	}
	
	@Override
	public void modifytf_intro(TrainerProfile trainerprofile) {
		boardmapper.modifytf_intro(trainerprofile);
	}
	
	@Override
	public void modifytf_schedule(TrainerProfile trainerprofile) {
		boardmapper.modifytf_schedule(trainerprofile);
	}
	
	@Override
	public void deletePt(PT pt) {
		boardmapper.deletePt(pt);
	}
	
	@Override
	public void updatept_programintro(PT pt) {
		boardmapper.updatept_programintro(pt);
	}
	
	@Override
	public void updatetf_lessonprice(TrainerProfile trainerprofile) {
		boardmapper.updatetf_lessonprice(trainerprofile);
	}
	
	@Override
	public void tfFile1Delete(FileDto filedto) {
		boardmapper.tfFile1Delete(filedto);
	}
	
	@Override
	public void filemodifyUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int tf_id, int file_group) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("tf_id", tf_id);
		hm.put("file_group", file_group);
		boardmapper.filemodifyUpload(hm);
	}
	
	@Override
	public void tfProgramFileDelete(FileDto filedto) {
		boardmapper.tfProgramFileDelete(filedto);
	}
	
	@Override
	public void updatept_title(PT pt) {
		boardmapper.updatept_title(pt);
	}
	
	@Override
	public void createTrainerProfile(int u_key) {
		boardmapper.createTrainerProfile(u_key);
	}
	
	@Override
	public void fileprogrammodifyUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int pt_id,int u_key) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("pt_id", pt_id);
		hm.put("u_key", u_key);
	
		boardmapper.fileprogrammodifyUpload(hm);
	}
	
	@Override
	public void fileUploadtest(String originalfileName, String saveFileName, long fileSize, String savePath) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
	
		boardmapper.fileUploadtest(hm);
	}
	
	@Override
	public void ReviewfileUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			String r_content, int r_starR, int r_opencheck,String memberprofile_u_key, String trainerprofile_u_key,
			String memberprofile_name,int review_r_id) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("originalfileName", originalfileName);
		hm.put("saveFileName", saveFileName);
		hm.put("fileSize", fileSize);
		hm.put("savePath", savePath);
		hm.put("r_content", r_content);
		hm.put("r_starR", r_starR);
		hm.put("r_opencheck", r_opencheck);
		hm.put("memberprofile_u_key", memberprofile_u_key);
		hm.put("trainerprofile_u_key", trainerprofile_u_key);
		hm.put("memberprofile_name", memberprofile_name);
		hm.put("review_r_id", review_r_id);
		
	
		boardmapper.ReviewfileUpload(hm);
	}
	
	@Override
	public List<Review> gettf_reviewlist(String trainerprofile_u_key){
		return boardmapper.gettf_reviewlist(trainerprofile_u_key);
	}
	
	@Override
	public List<Review> gettf_reviewfilelist(String trainerprofile_u_key){
		return boardmapper.gettf_reviewfilelist(trainerprofile_u_key);
	}
	
	@Override
	public void ReviewInsert(Review review) {
		boardmapper.ReviewInsert(review);
	}
	
	@Override
	public List<Review> gettf_reviewstarhighlist(String trainerprofile_u_key){
		return boardmapper.gettf_reviewstarhighlist(trainerprofile_u_key);
	}
	
	@Override
	public List<Review> gettf_reviewstarhighfilelist(String trainerprofile_u_key){
		return boardmapper.gettf_reviewstarhighfilelist(trainerprofile_u_key);
	}
	
	@Override
	public List<Review> gettf_reviewstarlowlist(String trainerprofile_u_key){
		return boardmapper.gettf_reviewstarlowlist(trainerprofile_u_key);
	}
	
	@Override
	public List<Review> gettf_reviewstarlowfilelist(String trainerprofile_u_key){
		return boardmapper.gettf_reviewstarlowfilelist(trainerprofile_u_key);
	}
	
	@Override
	public int getReviewrid() {
		return boardmapper.getReviewrid();
	}
	
	@Override
	public void reviewDelete(int r_id) {
		boardmapper.reviewDelete(r_id);
	}
	
	@Override
	public void reviewfiledelete(int r_id) {
		boardmapper.reviewfiledelete(r_id);
	}

	

	
	

}


