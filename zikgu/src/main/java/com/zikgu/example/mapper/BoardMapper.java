// BoardMapper.java
package com.zikgu.example.mapper;

import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;
import com.zikgu.example.domain.MemberProfile;
import com.zikgu.example.domain.PT;
import com.zikgu.example.domain.Pagination;
import com.zikgu.example.domain.Review;
import com.zikgu.example.domain.SelectedPT;
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

	public List<Center> getcenterListALL(Pagination pagination);

	public void centerConfirm(Center center);

	public void centerConfirmCancel(int c_id);

	public List<TrainerProfile> search_All(String keyword);

	public Center getcenterDetail2(String tf_loadaddress);

	public void memberProfileinsert(MemberProfile memberprofile);

	public List<Center> getcenterListOne(int u_key);

	public List<FileDto> getcenterSearchFileList(String tfIdString);

	public List<FileDto> getcenterFileList2(String tf_loadaddress);

	public List<FileDto> getprofileFileList2(int tf_id);

	public List<TrainerProfile> trainerList();

	public List<MemberProfile> getmemberprofileListALL(Pagination pagination);

	public MemberProfile getmemberprofiledetail(String m_id);

	public List<TrainerProfile> gettrainerprofileListALL(Pagination pagination);

	public void trainerprofilecheck(int u_key);

	public void trainerprofilecheckcancel(int u_key);

	public String getphone(int u_key);

	public int getm_id(MemberProfile memberprofile);

	public int getm_id2(int u_key);

	public void updateTf_consulting(TrainerProfile trainerprofile);

	public MemberProfile getmemberprofiledetail2(int member_u_key);

	public void updateM_consulting(MemberProfile memberprofile);

	public List<TrainerProfile> trainerprofileconsulting(int u_key);

	public void updateTf_consulting2(TrainerProfile trainerprofile);

	public void updateM_consulting2(MemberProfile memberprofile);

	public List<MemberProfile> memberprofileconsulting(int tf_id);

	public void updateTf_Consultingconfirm(TrainerProfile trainerprofile);

	public void updateM_consultingconfirm(MemberProfile memberprofile);

	public void ptInsert(PT pt);

	public int getpt_id();

	public void PTfileUpload(HashMap<String, Object> hm);

	public  List<PT> getPTdetail(int u_key);

	public List<FileDto> getPT_FileList(int u_key);

	public void insertselectedpt(SelectedPT selectedpt);

	public void modifytf_name(TrainerProfile trainerprofile);

	public void modifytf_hanjulintro(TrainerProfile trainerprofile);

	public void modifytf_intro(TrainerProfile trainerprofile);

	public void modifytf_schedule(TrainerProfile trainerprofile);

	public void deletePt(PT pt);

	public void updatept_programintro(PT pt);

	public void updatetf_lessonprice(TrainerProfile trainerprofile);

	public void tfFile1Delete(FileDto filedto);

	public void filemodifyUpload(HashMap<String, Object> hm);

	public void tfProgramFileDelete(FileDto filedto);

	public void updatept_title(PT pt);

	public void createTrainerProfile(int u_key);

	public void fileprogrammodifyUpload(HashMap<String, Object> hm);

	public void fileUploadtest(HashMap<String, Object> hm);

	public void ReviewfileUpload(HashMap<String, Object> hm);

	public List<Review> gettf_reviewlist(String trainerprofile_u_key);

	public List<Review> gettf_reviewfilelist(String trainerprofile_u_key);

	public void ReviewInsert(Review review);

	public List<Review> gettf_reviewstarhighlist(String trainerprofile_u_key );

	public List<Review> gettf_reviewstarhighfilelist(String trainerprofile_u_key);

	public List<Review> gettf_reviewstarlowlist(String trainerprofile_u_key);

	public List<Review> gettf_reviewstarlowfilelist(String trainerprofile_u_key);

	public int getReviewrid();



	public void reviewfiledelete(int r_id);

	public void reviewDelete(int r_id);

	
	public void reviewfiledeletemodify(int file_r_id);

	public void ReviewmodifyInsert(Review review);

	public Review getreviewinsetcheck(String formattedDate);

	public List<Review> gettreviewListALL(Pagination pagination);

	public List<TrainerProfile> gettrainerprofilecompleteList();

	public List<TrainerProfile> gettrainerprofilewaiteList();

	public int gettrainerprofileCount();

	public List<TrainerProfile> gettrainerprofileListcomplete(Pagination pagination);

	public int gettrainerprofileCountcomplete();

	public int gettrainerprofileCountwaite();

	public List<TrainerProfile> gettrainerprofileListwaite(Pagination pagination);

	public List<TrainerProfile> gettrainerprofilesearchList(Pagination pagination);

	public int gettrainerprofileSearchCount(String keyword);

	public int getmemberprofilelistCount();

	public int getmemberprofileSearchCount(String keyword);

	public List<MemberProfile> getmemberprfilesearchList(Pagination pagination);

	public int getcenterCount();

	public int getcentercompelteCount();

	public List<Center> getcentercompleteList(Pagination pagination);

	public int getcenterwaiteCount();

	public List<Center> getcenterwaiteList(Pagination pagination);

	public Center getcenterDetail3(int c_id);

	public int getcenterSearchCount(String keyword);

	public List<Center> getcentersearchList(Pagination pagination);

	public int gettrainerprofileSearchcompelteCount(String keyword);

	public List<TrainerProfile> gettrainerprofilesearchcompleteList(Pagination pagination);

	public int gettrainerprofileSearchwaiteCount(String keyword);

	public List<TrainerProfile> gettrainerprofilesearchwaiteList(Pagination pagination);

	public int getcenterSearchcompleteCount(String keyword);

	public List<Center> getcentersearchcompelteList(Pagination pagination);

	public int getcenterSearchwaiteCount(String keyword);

	public List<Center> getcentersearchwaiteList(Pagination pagination);

	public int getreviewCount();

	public int getreviewcompleteCount();

	public List<Review> gettreviewcompleteListALL(Pagination pagination);

	public int getreviewwaiteCount();

	public List<Review> gettreviewwaiteListALL(Pagination pagination);

	public int getreviewSearchCount(String keyword);

	public List<MemberProfile> getreviewsearchList(Pagination pagination);

	public int getreviewSearchcompleteCount(String keyword);

	public List<MemberProfile> getreviewsearchcompleteList(Pagination pagination);

	public int getreviewSearchwaiteCount(String keyword);

	public List<MemberProfile> getreviewsearchwaiteList(Pagination pagination);

	public List<Review> getreviewDetail(int r_id);

	public List<FileDto> getreviewFileList(int r_id);

	public void reviewConfirm(Review review);

	public void reviewConfirmCancel(int r_id);

	



	
}

