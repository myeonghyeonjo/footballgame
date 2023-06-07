package com.zikgu.example.service;

import java.util.Date;
import java.util.List;
import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;
import com.zikgu.example.domain.MemberProfile;
import com.zikgu.example.domain.PT;
import com.zikgu.example.domain.Pagination;
import com.zikgu.example.domain.Review;
import com.zikgu.example.domain.SelectedPT;
import com.zikgu.example.domain.TrainerProfile;
import com.zikgu.example.domain.User;

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
			int c_id,int u_key, String c_loadaddress);

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

	public List<Center> getcenterListALL(Pagination pagination);

	

	public void centerConfirmCancel(int c_id);

	public List<TrainerProfile> search_All(String string);

	public Center getcenterDetail2(String tf_loadaddress);

	public void centerConfirm(Center center);

	public void memberProfileinsert(MemberProfile memberprofile);

	public List<Center> getcenterListOne(Pagination pagination);

	

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

	public void PTfileUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int trainer_u_key, int pt_id);

	public List<PT> getPTdetail(int u_key);

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

	public void filemodifyUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int tf_id, int file_group);

	public void tfProgramFileDelete(FileDto filedto);

	public void updatept_title(PT pt);

	public void createTrainerProfile(int u_key);

	public void fileprogrammodifyUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			int pt_id,int u_key);

	public void fileUploadtest(String originalfileName, String saveFileName, long fileSize, String savePath);

	public void ReviewfileUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			String r_content, int r_starR, int r_opencheck, String memberprofile_u_key, String trainerprofile_u_key, String memberprofile_name, int review_r_id);

	public List<Review> gettf_reviewlist(String trainerprofile_u_key);

	public List<Review> gettf_reviewfilelist(String trainerprofile_u_key);
	
	public void ReviewInsert(Review review);

	public List<Review> gettf_reviewstarhighlist(String trainerprofile_u_key);

	public List<Review> gettf_reviewstarhighfilelist(String trainerprofile_u_key);

	public List<Review> gettf_reviewstarlowlist(String trainerprofile_u_key);

	public List<Review> gettf_reviewstarlowfilelist(String trainerprofile_u_key);

	public int getReviewrid();

	public void reviewDelete(int r_id);

	public void reviewfiledelete(int r_id);

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

	public void signupptInsert(int u_key);

	public void trainerprofileaddressupdate(TrainerProfile trainerprofile);

	public void reviewReject(Review review);

	public int getreviewrejectCount();

	public List<Review> gettreviewrejectListALL(Pagination pagination);

	public int getreviewSearchrejectCount(String keyword);

	public List<MemberProfile> getreviewsearchwrejectList(Pagination pagination);

	public void centerReject(Center center);

	public int getcenterrejectCount();

	public List<Center> getcenterrejectList(Pagination pagination);

	public int getcenterSearchrejectCount(String keyword);

	public List<Center> getcentersearchrejectList(Pagination pagination);

	public void clickcenterprofileDelete(Center center);

	public int getcenterListcount(int u_key);

	public void trainerprofilereject(TrainerProfile trainerprofile);

	public int gettrainerprofileCountreject();

	public List<TrainerProfile> gettrainerprofileListreject(Pagination pagination);

	public int gettrainerprofileSearchrejectCount(String keyword);

	public List<TrainerProfile> gettrainerprofilesearchrejectList(Pagination pagination);

	public void memberProfilemodifyinsert(MemberProfile memberprofile);

	public void memberProfiledelete(MemberProfile memberprofile);

	public int getmemberprofileU_key(MemberProfile memberprofile);

	public int gettrainerprofileconsultingcompleteCount(int u_key);

	public List<TrainerProfile> trainerprofileconsultingcomplete(int u_key);

	public int gettrainerprofileconsultingCount(int u_key);

	public int gettrainerprofileconsultingwaiteCount(int u_key);

	public List<TrainerProfile> trainerprofileconsultingwaite(int u_key);

	public int getconsultingSearchCount(Pagination pagination);

	public List<TrainerProfile> gettconsultingsearchList(Pagination pagination);

	public int getconsultingSearchcompleteCount(Pagination pagination);

	public List<TrainerProfile> gettconsultingcompletesearchList(Pagination pagination);

	public int getconsultingSearchwaiteCount(Pagination pagination);

	public List<TrainerProfile> gettconsultingwaitesearchList(Pagination pagination);

	public int getmemberprofilecountcheck(int memberprofile_u_key);

	public void updatept_programsub(PT pt);

	public void filePTUpload(String originalfileName, String saveFileName, long fileSize, String savePath,
			FileDto filedto);

	public int getcenterListOneCount(int trainerprofile_u_key);

	public int getcentercompleteListcount(int u_key);

	public List<Center> getcentercompleteListOne(Pagination pagination);

	public int getcenterwaiteListcount(int u_key);

	public List<Center> getcenterwaiteListOne(Pagination pagination);

	public int getcenterrejectListcount(int u_key);

	public List<Center> getcenterrejectListOne(Pagination pagination);

	public int getcenterinsertSearchCount(Pagination pagination);

	public List<Center> getcenterinsertsearchList(Pagination pagination);

	

	
	




	
}

