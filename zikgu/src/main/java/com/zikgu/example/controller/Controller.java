package com.zikgu.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;

import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import com.zikgu.example.domain.Center;
import com.zikgu.example.domain.FileDto;

import com.zikgu.example.domain.MemberProfile;
import com.zikgu.example.domain.News;
import com.zikgu.example.domain.Player;
import com.zikgu.example.domain.TrainerProfile;
import com.zikgu.example.domain.User;
import com.zikgu.example.service.AutoComService;
import com.zikgu.example.service.BoardService;
import com.zikgu.example.service.NewsService;
import com.zikgu.example.service.PlayerService;
import com.zikgu.example.service.UserService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@org.springframework.stereotype.Controller
public class Controller {
	 private final JavaMailSender mailSender;
	    private static final String ADMIN_ADDRESS = "ektour0914@naver.com";
	
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	UserService userservice;
	@Autowired
	BoardService boardservice;
	@Autowired
	PlayerService playerservice;
	@Autowired
	AutoComService service;
	@Autowired
	NewsService newsService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	Player insertPlayer = new Player();
	List<Player> answer = new ArrayList<Player>();
	int random = 0;
	int checkTeam = 0;
	String teamColor = "";
	int playCount = 0;
	int insertageYear=0;
	int randomageYear=0;
	List<Player> answerAll = new ArrayList<Player>();
	
	@RequestMapping("/")
	public String home(Model model) {

		
		
		
		
		
		// List<Board> list = boardservice.selectBoardList();
		// model.addAttribute("list", list);
		logger.debug("debug");
		logger.info("info");
		logger.error("error");
		List<TrainerProfile> list = boardservice.trainerList();
		List<String> centernameList = new ArrayList<>();
		
		for (int i = 0; i < list.size(); i++) {
		    TrainerProfile trainerProfile = list.get(i);
		    String loadaddress =  trainerProfile.getTf_loadaddress();
		    Center center = boardservice.getcenterDetail2(loadaddress);
		    String centername = center.getC_name();
		    centernameList.add(centername);
		    // trainerProfile 변수를 이용해 해당 요소의 필드에 접근하고 작업을 수행합니다.
		}
		System.out.println("list:"+list);
		List<FileDto> filelistAll = new ArrayList<>();
		List<FileDto> centerfilelistAll = new ArrayList<>();
		for (TrainerProfile profile : list) {
			  int tfId = profile.getTf_id();
			 
			  List<FileDto> filelist  = boardservice.getprofileFileList2(profile.getTf_id());
			  List<FileDto> centerfilelist  = boardservice.getcenterFileList2(profile.getTf_loadaddress());
			  filelistAll.addAll(filelist);
			  centerfilelistAll.addAll(centerfilelist);
			  //centerfilelistAll.addAll(centerfilelist);
			  //fileListMap2.put("filelistAll", filelistAll);
			  //fileListMap2.put("filelist", centerfilelist);
			  
			  model.addAttribute("list", list);
			  model.addAttribute("filelistAll", filelistAll);
			  model.addAttribute("centerfilelistAll", centerfilelistAll);
			  model.addAttribute("centernameList", centernameList);
		}
		
		
		return "/member/homepage2";
	}

	@RequestMapping("/beforeSignup")
	public String beforeSignUp() {
		return "/member/signup";
	}
	@RequestMapping("/beforeSignuptrainer")
	public String beforeSignuptrainer() {
		return "/member/trainersignup";
	}
	
	@RequestMapping("/beforeSignup2")
	public String beforeSignup2() {
		return "/signup";
	}
	
	@RequestMapping("/homepage")
	public String bootstrap() {
		return "/member/homepage2";
	}
	
	@RequestMapping("/signin")
	public String signin(@RequestParam(value = "error", required = false)String error,
@RequestParam(value = "exception", required = false)String exception,
Model model) {
model.addAttribute("error", error);
model.addAttribute("exception", exception);
		return "/member/signin";
	}

	@RequestMapping("/signup")
	public String signup(User user) {
		// 비밀번호 암호화
		String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());

		// 유저 데이터 세팅
		user.setPassword(encodedPassword);
		user.setAccountNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));

		// 유저 생성
		userservice.createUser(user);
		// 유저 권한 생성
		userservice.createAuthorities(user);

		return "/login";
	}
	
	@RequestMapping("/trainersignup")
	public String trainersignup(User user) {
		// 비밀번호 암호화
		String encodedPassword = new BCryptPasswordEncoder().encode(user.getPassword());

		// 유저 데이터 세팅
		user.setPassword(encodedPassword);
		user.setAccountNonExpired(true);
		user.setEnabled(true);
		user.setAccountNonLocked(true);
		user.setCredentialsNonExpired(true);
		user.setAuthorities(AuthorityUtils.createAuthorityList("ROLE_USER"));

		// 유저 생성
		userservice.createUserTrainer(user);
		// 유저 권한 생성
		userservice.createAuthorities(user);

		return "/login";
	}

	@RequestMapping(value = "/login")
	public String beforeLogin(Model model) {
		return "/login";
	}

	@Secured({ "ROLE_ADMIN" })
	@RequestMapping(value = "/admin")
	public String admin(Model model) {
		return "/admin";
	}

	@Secured({ "ROLE_USER" })
	@RequestMapping(value = "/user/info")
	public String userInfo(Model model,User user,@RequestParam("u_key") String u_key,MemberProfile memberprofile) {
		
		model.addAttribute("u_key", u_key);
		user = userservice.getUserdetail(u_key);
		model.addAttribute("user",user);
		return "/member/user_info";
	}

	@RequestMapping(value = "/denied")
	public String denied(Model model) {
		return "/denied";
	}

	@RequestMapping("/game")
	public String game(Player player, Model model, HttpServletRequest request) {
		playCount = 1;
		answerAll= new ArrayList();
		List<Player> list = playerservice.selectPlayerList();
		random = (int) (Math.random() * 912 + 1);
		player = playerservice.selectPlayerListAnswer(random);
		System.out.println(player.getName());
		System.out.println("유저리스트 데이터 가져오기 성공" + list);
		model.addAttribute("player", player);
		model.addAttribute("list", list);
		model.addAttribute("playCount",playCount);
		return "/game";
	}
	
	@RequestMapping("/hidePhotogame")
	public String hidePhotogame(Player player, Model model, HttpServletRequest request) {
		playCount = 1;
		answerAll= new ArrayList();
		List<Player> list = playerservice.selectPlayerList();
		random = (int) (Math.random() * 912 + 1);
		player = playerservice.selectPlayerListAnswer(random);
		System.out.println(player.getName());
		System.out.println("유저리스트 데이터 가져오기 성공" + list);
		model.addAttribute("player", player);
		model.addAttribute("list", list);
		model.addAttribute("playCount",playCount);
		return "/hidePhotogame";
	}
	
	@RequestMapping("/news")
	    public String news(Model model) throws Exception{
	        List<News> newsList = newsService.getNewsDatas();
	        model.addAttribute("news", newsList);
	        WebDriverUtil webDriverUtil = new WebDriverUtil();
	        webDriverUtil.useDriver("https://www.youtube.com/c/youtubekorea/videos");
	        return "/news";
	    }
	
	@RequestMapping("/test")
    public String test(Model model, Center center) throws Exception{
		System.out.println("tf_loadaddress:"+"경북 구미시 인동54길 32-36");
		String tf_loadaddress = "경북 구미시 인동54길 32-36";
		center = boardservice.getcenterDetail2(tf_loadaddress);
		int c_id = center.getC_id();
		
		String c_name = center.getC_name();
		List<FileDto> filelist = boardservice.getcenterFileList(c_id);
		model.addAttribute("center",center);
		model.addAttribute("filelist",filelist);
		model.addAttribute("c_id",c_id);
		model.addAttribute("c_name",c_name);
		int u_key = 7; 
		model.addAttribute("u_key",u_key);
		model.addAttribute("tf_loadaddress",tf_loadaddress);

		System.out.println("tf_loadaddress:"+tf_loadaddress);
		List<Center> list = boardservice.getcenterDetail(c_id);
		model.addAttribute("list",list);
        return "/center/centermap2";
    }

	@org.springframework.stereotype.Controller
	public class AutoComController {

		@RequestMapping(value = "/ajax/autocomplete.do")
		public @ResponseBody Map<String, Object> autocomplete(@RequestParam Map<String, Object> paramMap)
				throws Exception {
			System.out.println(paramMap);

			List<Map<String, Object>> resultList = service.autocomplete(paramMap);
			paramMap.put("resultList", resultList);

			return paramMap;
		}

		@RequestMapping("/aj-gameProcess")
		public String game(Player player, Model model, HttpServletRequest request, @RequestParam("name") String name,@RequestParam("team") String team) {
			
			
			System.out.println("선수명:"+name+"팀명:"+team);
			player = new Player();
			player.setName(name);
			player.setTeam(team);
			insertPlayer = playerservice.selectPlayerListOne(player);
			model.addAttribute("listOne", insertPlayer); // 응답자가 입력한 플레이어
			player = new Player();
			player = playerservice.selectPlayerListAnswer(random);
			model.addAttribute("answer", player);  //랜덤으로 뽑은 정답 플레이어
			
			if(insertPlayer.getTeam().equals(player.getTeam())) {
				System.out.println("팀이 같습니다.");
				checkTeam = 1;
				teamColor = "Green";
			} else{
				System.out.println("팀이 다릅니다.");
			}
			
			model.addAttribute("checkTeam", checkTeam); 
			model.addAttribute("teamColor", teamColor); 
			System.out.println("개인유저정보 가져오기 성공!" + insertPlayer);
			System.out.println("전체입력유저정보!" + answerAll);
			model.addAttribute("answerAll", answerAll); 
			if(insertPlayer.getShirt()< player.getShirt())
			{
				insertPlayer.setShirtcondition("&#8593");
			}else if(insertPlayer.getShirt()> player.getShirt()) {
				insertPlayer.setShirtcondition("&#8595");
			}
			
			insertageYear = Integer.parseInt(insertPlayer.getAge().substring(0, 4));
			randomageYear = Integer.parseInt(player.getAge().substring(0,4));
			if(insertageYear< randomageYear)
			{
				insertPlayer.setAgecondition("&#8595");
			}else if(insertageYear> randomageYear) {
				insertPlayer.setAgecondition("&#8593");
			} else if(insertageYear == randomageYear) {
				insertPlayer.setAgecondition("같음");
			}
			if(playCount>5)
			{
				System.out.println("playCount!" + playCount);
				model.addAttribute("playCount", playCount); 
				answerAll.add(insertPlayer);
				return "/solutionList";
				
			} else {
				answerAll.add(insertPlayer);
			} 
			
			if(insertPlayer.getShirt() == player.getShirt() && insertPlayer.getPos().equals(player.getPos()) && insertageYear== randomageYear && insertageYear == randomageYear && insertPlayer.getTeam().equals(player.getTeam()))
			{
				playCount = 6;
				System.out.println("playCount!" + playCount);
				model.addAttribute("playCount", playCount); 
				return "/solutionList";
			}
			playCount +=1;
			model.addAttribute("playCount", playCount); 
			return "/solutionList";
			
		}
		
		@RequestMapping("/hidePhoto-aj-gameProcess")
		public String hidePhotogameProcess(Player player, Model model, HttpServletRequest request, @RequestParam("name") String name,@RequestParam("team") String team) {
			
			
			System.out.println("선수명:"+name+"팀명:"+team);
			player = new Player();
			player.setName(name);
			player.setTeam(team);
			insertPlayer = playerservice.selectPlayerListOne(player);
			model.addAttribute("listOne", insertPlayer); // 응답자가 입력한 플레이어
			player = new Player();
			player = playerservice.selectPlayerListAnswer(random);
			model.addAttribute("answer", player);  //랜덤으로 뽑은 정답 플레이어
			
			if(insertPlayer.getTeam().equals(player.getTeam())) {
				System.out.println("팀이 같습니다.");
				checkTeam = 1;
				teamColor = "Green";
			} else{
				System.out.println("팀이 다릅니다.");
			}
			
			model.addAttribute("checkTeam", checkTeam); 
			model.addAttribute("teamColor", teamColor); 
			System.out.println("개인유저정보 가져오기 성공!" + insertPlayer);
			System.out.println("전체입력유저정보!" + answerAll);
			model.addAttribute("answerAll", answerAll); 
			if(insertPlayer.getShirt()< player.getShirt())
			{
				insertPlayer.setShirtcondition("&#8593");
			}else if(insertPlayer.getShirt()> player.getShirt()) {
				insertPlayer.setShirtcondition("&#8595");
			}
			
			insertageYear = Integer.parseInt(insertPlayer.getAge().substring(0, 4));
			randomageYear = Integer.parseInt(player.getAge().substring(0,4));
			if(insertageYear< randomageYear)
			{
				insertPlayer.setAgecondition("&#8595");
			}else if(insertageYear> randomageYear) {
				insertPlayer.setAgecondition("&#8593");
			} else if(insertageYear == randomageYear) {
				insertPlayer.setAgecondition("같음");
			}
			if(playCount>5)
			{
				System.out.println("playCount!" + playCount);
				model.addAttribute("playCount", playCount); 
				answerAll.add(insertPlayer);
				return "/hidePhotosolutionList";
				
			} else {
				answerAll.add(insertPlayer);
			} 
			
			if(insertPlayer.getShirt() == player.getShirt() && insertPlayer.getPos().equals(player.getPos()) && insertageYear== randomageYear && insertageYear == randomageYear && insertPlayer.getTeam().equals(player.getTeam()))
			{
				playCount = 6;
				System.out.println("playCount!" + playCount);
				model.addAttribute("playCount", playCount); 
				return "/hidePhotosolutionList";
			}
			playCount +=1;
			model.addAttribute("playCount", playCount); 
			return "/hidePhotosolutionList";
			
		}
		@RequestMapping(value = "/phoneCheck", method = RequestMethod.GET)
		@ResponseBody
		public String sendSMS(@RequestParam("phone") String userPhoneNumber) { // 휴대폰 문자보내기
			int randomNumber = (int)((Math.random()* (9999 - 1000 + 1)) + 1000);//난수 생성

			boardservice.certifiedPhoneNumber(userPhoneNumber,randomNumber);
			
			return Integer.toString(randomNumber);
		}
		
		
		@RequestMapping(value = "/nameCheck", method = RequestMethod.POST)
		@ResponseBody
		public int nameCheck(@RequestParam("sm_name") String sm_name) {
			return boardservice.nameCheck(sm_name);
		}
		
		@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
		@ResponseBody
		public int idCheck(@RequestParam("sm_id") String sm_id) {
			return boardservice.idCheck(sm_id);
		}
		
		@RequestMapping(value = "/password1Check", method = RequestMethod.POST)
		@ResponseBody
		public int password1Check(User user,@RequestParam("password1") String password1,@RequestParam("u_key") String u_key) {
			System.out.println("u_key:"+u_key);
			System.out.println("password1:"+password1);
			
			user = userservice.getUserdetail(u_key);   
			
			//입력한 현재비밀번호와 데이터베이스 현재비밀번호가 같다면
			if(passwordEncoder.matches(password1, user.getPassword())) {
				return 1;
			} else 
				return 0;
			
			
			
		}
		
		@RequestMapping(value = "/phoneCheck2", method = RequestMethod.POST)
		@ResponseBody
		public int phoneCheck2(@RequestParam("phone") String phone) {
			return boardservice.phoneCheck(phone);
		}
		
		
		@RequestMapping("/phonelogin")
	    public String phonelogin(Model model) {
	     
	        return "/phonelogin";
	    }
		
		@RequestMapping("/registerformMember")
	    public String registerformMember(Model model) {
	     
	        return "/registerformMember";
	    }
	
		@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
		@ResponseBody
		public String mailCheck(@RequestParam("sm_email") String sm_email) throws Exception{
		    int serti = (int)((Math.random()* (99999 - 10000 + 1)) + 10000);
		   
		    String from = "abcd@company.com";//보내는 이 메일주소
		    String to = sm_email;
		    System.out.println("이메일주소:"+to);
		    String title = "회원가입시 필요한 인증번호 입니다.";
		    String content = "[인증번호] "+ serti +" 입니다. <br/> 인증번호 확인란에 기입해주십시오.";
		    String num = "";
		    try {
		    	MimeMessage mail = mailSender.createMimeMessage();
		    	 System.out.println("mail:"+mail);
		        MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
		        
		        mailHelper.setFrom(from);
		        mailHelper.setTo(to);
		        mailHelper.setSubject(title);
		        mailHelper.setText(content, true);       
		        
		        mailSender.send(mail);
		        num = Integer.toString(serti);
		        
		    } catch(Exception e) {	
		        num = "error";
		    }
		    return num;
		}
		@RequestMapping("/trainerProfile")
	    public String trainerProfile(Model model,@RequestParam("u_key")String u_key) {
			
			 model.addAttribute("u_key",u_key);
	        return "/member/trainerProfile";
	    }
		
		@RequestMapping("/trainerProfileinsert") 
	    public String trainerProfileinsert(Model model,User user,MultipartHttpServletRequest mhsq,TrainerProfile trainerprofile) throws IllegalStateException, IOException {
			boardservice.trainerProfileinsert(trainerprofile);
			
			String tf_certificatetitle = trainerprofile.getTf_certificatetitle();
			System.out.println("2"+2);
			String[] tf_certificatetitle2 = tf_certificatetitle.split(",");
			System.out.println("3"+3);
			
		int tf_id = boardservice.gettf_id(trainerprofile);  
		
			System.out.println("tf_id"+tf_id);
			String realFolder = "c:/Users/조명현/zikgu2/zikgu/src/main/webapp/Img/";  //파일저장위치
			 File dir = new File(realFolder);
			   if (!dir.isDirectory()) {
				   dir.mkdirs();
			   }
			   //1번째 파일업로드
			   List<MultipartFile> mf = mhsq.getFiles("tf_photo1");
			   if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {
			   } else {
				   for (int i = 0; i < mf.size(); i++) {
					   // 파일 중복명 처리                
					   String genId = UUID.randomUUID().toString(); 
					   // 본래 파일명                
					   String originalfileName = mf.get(i).getOriginalFilename();
					 
					   
					   String saveFileName = genId + "." + originalfileName.substring(originalfileName.lastIndexOf(".") + 1);
					   // 저장되는 파일 이름                
					   String savePath = realFolder + saveFileName; 
					   // 저장 될 파일 경로                 
					   long fileSize = mf.get(i).getSize(); 	
					   // 파일 사이즈                
					   mf.get(i).transferTo(new File(savePath)); 	// 파일 저장                 
					   boardservice.fileUpload(originalfileName, saveFileName, fileSize,savePath,tf_id);
				   		}
			   	}
			   
			  
			   List<MultipartFile> mf2_1 = mhsq.getFiles("tf_cer_photo2");
			   System.out.println("testestest"+mhsq.getFiles("tf_cer_photo1"));
			   System.out.println("testestest2222"+mhsq.getFiles("tf_cer_photo2"));
			   int filecount = trainerprofile.getFilecount();     //자격항목 첨부사진 갯수
			   filecount +=1;
			   if(filecount == 1)
			   {
				   filecount =2;
			   }
			   System.out.println("파일갯수:"+filecount);
			   
			   for(int j=1; j<filecount;j++) { //2번째 파일업로드
			   List<MultipartFile> mf2_j = mhsq.getFiles("tf_cer_photo"+j);
			   if (mf2_j.size() == 1 && mf2_j.get(0).getOriginalFilename().equals("")) {
			   } else {
				   for (int i = 0; i < mf2_j.size(); i++) {
					   // 파일 중복명 처리                
					   String genId2 = UUID.randomUUID().toString(); 
					   // 본래 파일명                
					   String originalfileName = mf2_j.get(i).getOriginalFilename();
					 
					   
					   String saveFileName = genId2 + "." + originalfileName.substring(originalfileName.lastIndexOf(".") + 1);
					   // 저장되는 파일 이름                
					   String savePath = realFolder + saveFileName; 
					   // 저장 될 파일 경로                 
					   long fileSize = mf2_j.get(i).getSize(); 	
					   // 파일 사이즈                
					   mf2_j.get(i).transferTo(new File(savePath)); 	// 파일 저장                 
					   //boardservice.fileUpload2(originalfileName, saveFileName, fileSize,savePath,tf_id);
					    boardservice.fileUpload2_1(originalfileName, saveFileName, fileSize,savePath,tf_id,tf_certificatetitle2[j-1]);
				   		}
			   	}
			   }
			   //3번째 파일업로드
			   List<MultipartFile> mf3 = mhsq.getFiles("tf_photo3");
			   if (mf3.size() == 1 && mf3.get(0).getOriginalFilename().equals("")) {
			   } else {
				   for (int i = 0; i < mf3.size(); i++) {
					   // 파일 중복명 처리                
					   String genId3 = UUID.randomUUID().toString(); 
					   // 본래 파일명                
					   String originalfileName = mf3.get(i).getOriginalFilename();
					 
					   
					   String saveFileName = genId3 + "." + originalfileName.substring(originalfileName.lastIndexOf(".") + 1);
					   // 저장되는 파일 이름                
					   String savePath = realFolder + saveFileName; 
					   // 저장 될 파일 경로                 
					   long fileSize = mf3.get(i).getSize(); 	
					   // 파일 사이즈                
					   mf3.get(i).transferTo(new File(savePath)); 	// 파일 저장                 
					   boardservice.fileUpload3(originalfileName, saveFileName, fileSize,savePath,tf_id);
				   		}
			   	}
	    
			   String u_id =  trainerprofile.getU_id();   // 회원로그인ID
			   String u_name = boardservice.getU_name(u_id);
			   System.out.println("이름: "+u_name);
			   trainerprofile =  boardservice.trainerprofileDetail(tf_id);
			   model.addAttribute("u_name",u_name);
			   model.addAttribute("trainerprofile",trainerprofile);
	        return "/member/trainerProfileDetail";
	    }
	
		@RequestMapping("/trainerDetail")
	    public String trainerDetail(Model model,@RequestParam("u_key") int u_key,TrainerProfile trainerprofile) {
			trainerprofile = boardservice.trainerprofileDetail(u_key);
			String u_name = boardservice.getU_name2(u_key);
			
			String programsub = trainerprofile.getTf_programsub();
			String[] programsub2 = programsub.split(",");
			
			
			int tf_id = trainerprofile.getTf_id();
			List<FileDto> filelist = boardservice.gettf_FileList(tf_id,1);
			List<FileDto> filelist_2 = boardservice.gettf_FileList(tf_id,2);
			List<FileDto> filelist_3 = boardservice.gettf_FileList(tf_id,3);
			model.addAttribute("programsub",programsub2);
		
			model.addAttribute("trainerprofile",trainerprofile);
			model.addAttribute("u_name",u_name);
			model.addAttribute("filelist",filelist);
			model.addAttribute("filelist_2",filelist_2);
			model.addAttribute("filelist_3",filelist_3);
	        return "/member/trainerProfileDetail2";
	    }
		
		@RequestMapping("/centerinsert")
	    public String trainerDetail(Model model,@RequestParam("u_key") int u_key) {
			model.addAttribute("u_key",u_key);
	        return "/center/centerinsert";
	    }
		
		
		@RequestMapping("/centerinsertprocess")
	    public String centerinsertprocess(Center center,MultipartHttpServletRequest mhsq,@RequestParam("u_key") int u_key) throws IllegalStateException, IOException {
			boardservice.centerinsertprocess(center);
			String c_loadaddress =center.getC_loadaddress();
			int c_id = boardservice.getc_id();
			
			String realFolder = "c:/Users/조명현/zikgu2/zikgu/src/main/webapp/Img/";  //파일저장위치
				 File dir = new File(realFolder);
				   if (!dir.isDirectory()) {
					   dir.mkdirs();
				   }
				   List<MultipartFile> mf = mhsq.getFiles("uploadfile");
				   if (mf.size() == 1 && mf.get(0).getOriginalFilename().equals("")) {
				   } else {
					   for (int i = 0; i < mf.size(); i++) {
						   // 파일 중복명 처리                
						   String genId = UUID.randomUUID().toString(); 
						   // 본래 파일명                
						   String originalfileName = mf.get(i).getOriginalFilename();
						   String saveFileName = genId + "." + originalfileName.substring(originalfileName.lastIndexOf(".") + 1);
						   // 저장되는 파일 이름                
						   String savePath = realFolder + saveFileName; 
						   // 저장 될 파일 경로                 
						   long fileSize = mf.get(i).getSize(); 	
						   // 파일 사이즈                
						   mf.get(i).transferTo(new File(savePath)); 	// 파일 저장                 
						   boardservice.centerfileUpload(originalfileName, saveFileName, fileSize,savePath,c_id,u_key,c_loadaddress);
					   		}
				   	}
	        return "/center/centerDetail";
	    }
		
		@RequestMapping("/centerDetail")
	    public String centerDetail(Center center,Model model,@RequestParam("c_id") int c_id) {
			
			List<Center> list = boardservice.getcenterDetail(c_id);
			model.addAttribute("list",list);
			
			List<FileDto> filelist = boardservice.getcenterFileList(c_id);
			model.addAttribute("filelist",filelist);
			model.addAttribute("c_id",c_id);
			return "/center/centerDetail";
	    }
		
		@RequestMapping("/centerlist")
	    public String centerlist(Center center,Model model) {
			List<Center> list = boardservice.getcenterListALL();
			model.addAttribute("list",list);
			return "/center/centerlist";
	    }
		@RequestMapping("/centerconfirmlist")
	    public String centerconfirmlist(Center center,Model model,@RequestParam("u_key") int u_key) {
			List<Center> list = boardservice.getcenterListOne(u_key);
			model.addAttribute("list",list);
			return "/center/centerlist";
	    }
		
		
		@RequestMapping("/centerConfirm")
	    public String centerConfirm(Center center,Model model) {
			int c_id = center.getC_id();
			
			boardservice.centerConfirm(center);
			
			
			List<Center> list = boardservice.getcenterDetail(c_id);
			model.addAttribute("list",list);
			
			List<FileDto> filelist = boardservice.getcenterFileList(c_id);
			model.addAttribute("filelist",filelist);
			model.addAttribute("c_id",c_id);
			return "/center/centerDetail";
	    }
		
		@RequestMapping("/centerConfirmCancel")
	    public String centerConfirmCancel(Center center,Model model) {
			int c_id = center.getC_id();
			model.addAttribute("c_id",c_id);
			boardservice.centerConfirmCancel(c_id);
			
			List<Center> list = boardservice.getcenterDetail(c_id);
			model.addAttribute("list",list);
			
			List<FileDto> filelist = boardservice.getcenterFileList(c_id);
			model.addAttribute("filelist",filelist);
			
			return "/center/centerDetail";
	    }
		
		@RequestMapping("/trainerProfileDetail")
	    public String test(Model model,TrainerProfile trainerprofile,@RequestParam("u_key") int u_key) {
			
				trainerprofile = boardservice.trainerprofileDetail(u_key);
				String u_name = boardservice.getU_name2(u_key);
				
				String programsub = trainerprofile.getTf_programsub();
				String[] programsub2 = programsub.split(",");
				
				
				int tf_id = trainerprofile.getTf_id();
				List<FileDto> filelist = boardservice.gettf_FileList(tf_id,1);
				System.out.println(filelist.get(0).file_name);
				List<FileDto> filelist_2 = boardservice.gettf_FileList(tf_id,2);
				List<FileDto> filelist_3 = boardservice.gettf_FileList(tf_id,3);
				String tf_loadaddress = trainerprofile.getTf_loadaddress();
				System.out.println("u_key:"+u_key);
				model.addAttribute("programsub",programsub2);
				model.addAttribute("tf_loadaddress",tf_loadaddress);
				model.addAttribute("u_key",u_key);
				model.addAttribute("trainerprofile",trainerprofile);
				model.addAttribute("u_name",u_name);
				model.addAttribute("filelist",filelist);
				model.addAttribute("filelist_2",filelist_2);
				model.addAttribute("filelist_3",filelist_3);
		     	
				
				
				
				
			return "/member/trainerProfileDetail";
	    }
		@RequestMapping("/search_All")
	    public String search_All(Model model,@RequestParam("keyword") String keyword,TrainerProfile trainerprofile,FileDto filedto) {
			List<TrainerProfile> list = boardservice.search_All(keyword);
			int listlength = list.size();
			System.out.println("listlength:"+listlength);
			List<String> centernameList = new ArrayList<>();
			model.addAttribute("list",list);
			for (int i = 0; i < list.size(); i++) {
			    TrainerProfile trainerProfile = list.get(i);
			    String loadaddress =  trainerProfile.getTf_loadaddress();
			    Center center = boardservice.getcenterDetail2(loadaddress);
			    String centername = center.getC_name();
			    centernameList.add(centername);
			    // trainerProfile 변수를 이용해 해당 요소의 필드에 접근하고 작업을 수행합니다.
			}
			
			Map<String, List<FileDto>> fileListMap2 = new HashMap<>();
			List<Integer> tfIdList = new ArrayList<>();
			List<FileDto> filelistAll = new ArrayList<>();
			List<FileDto> centerfilelistAll = new ArrayList<>();
			for (TrainerProfile profile : list) {
				  int tfId = profile.getTf_id();
				  tfIdList.add(tfId);
				  List<FileDto> filelist  = boardservice.getprofileFileList2(profile.getTf_id());
				  List<FileDto> centerfilelist  = boardservice.getcenterFileList2(profile.getTf_loadaddress());
				  filelistAll.addAll(filelist);
				  centerfilelistAll.addAll(centerfilelist);
				  //centerfilelistAll.addAll(centerfilelist);
				  fileListMap2.put("filelistAll", filelistAll);
				  //fileListMap2.put("filelist", centerfilelist);
			}	
			System.out.println("list:"+list);
			System.out.println("filelistAll:"+filelistAll);
			
			Map<String, List<FileDto>> fileListMap = new HashMap<>();
			
			fileListMap.put("filelistAll", filelistAll);
			//fileListMap.put("centerfilelistAll", centerfilelistAll);

			model.addAttribute("filelistAll",filelistAll);
			model.addAttribute("listlength",listlength);
			model.addAttribute("fileListMap",fileListMap);
			model.addAttribute("keyword",keyword);
			model.addAttribute("centerfilelistAll",centerfilelistAll);
			model.addAttribute("centernameList",centernameList);
			System.out.println("centerfilelistAll:"+centerfilelistAll);
			
			return "/member/searchList";
	    }
		
		@RequestMapping("/aj-centerview")
	    public String centerview( Model model,Center center,@RequestParam("tf_loadaddress") String tf_loadaddress) {
			System.out.println("tf_loadaddress:"+tf_loadaddress);
			center = boardservice.getcenterDetail2(tf_loadaddress);
			int c_id = center.getC_id();
			String c_name = center.getC_name();
			List<FileDto> filelist = boardservice.getcenterFileList(c_id);
			model.addAttribute("center",center);
			model.addAttribute("filelist",filelist);
			model.addAttribute("c_id",c_id);
			model.addAttribute("c_name",c_name);
			model.addAttribute("tf_loadaddress",tf_loadaddress);
			List<Center> list = boardservice.getcenterDetail(c_id);
			model.addAttribute("list",list);
			return "/member/centerDetailmap";
	    }
		
		@RequestMapping("/aj-centerview2")
	    public String centerview2( Model model,Center center,@RequestParam("tf_loadaddress") String tf_loadaddress,@RequestParam("u_key") String u_key) {
			System.out.println("tf_loadaddress:"+tf_loadaddress);
			center = boardservice.getcenterDetail2(tf_loadaddress);
			int c_id = center.getC_id();
			
			String c_name = center.getC_name();
			List<FileDto> filelist = boardservice.getcenterFileList(c_id);
			model.addAttribute("center",center);
			model.addAttribute("filelist",filelist);
			model.addAttribute("c_id",c_id);
			model.addAttribute("c_name",c_name);
			model.addAttribute("u_key",u_key);
			model.addAttribute("tf_loadaddress",tf_loadaddress);
	
			System.out.println("tf_loadaddress:"+tf_loadaddress);
			List<Center> list = boardservice.getcenterDetail(c_id);
			model.addAttribute("list",list);
			return "/center/centermap";
	    }
		
		
		@RequestMapping("/memberProfile")
	    public String centerview( Model model,@RequestParam("u_key") String u_key) {
			model.addAttribute("u_key",u_key);
			return "/member/memberProfile";
	    }
		
		@RequestMapping("/imageslidetest")
	    public String imageslidetest( Model model) {
			
			return "/center/imageslidetest";
	    }
	
		
		
		@RequestMapping("/memberProfileinsert")
	    public String memberProfileinsert( Model model,User user,MemberProfile memberprofile) {
			boardservice.memberProfileinsert(memberprofile);
			int m_id = boardservice.getm_id(memberprofile); 
			memberprofile = boardservice.getmemberprofiledetail(String.valueOf(m_id));
			int u_key=memberprofile.getU_key();
			user =  userservice.getUserdetail(String.valueOf(u_key));
			String phone =  user.getPhone();
			model.addAttribute("phone",phone);
			model.addAttribute("memberprofile",memberprofile);
			return "/member/memberprofiledetail";
	    }
		
		@RequestMapping("/userpasswordmodify")
	    public String userpasswordmodify( Model model,User user,@RequestParam("newpassword1_1") String newpassword1_1,@RequestParam("newpassword2_1") String newpassword2_1,@RequestParam("password1_1") String password1_1,@RequestParam("u_key") String u_key) {
			System.out.println("newpassword1_1:" +newpassword1_1);
			System.out.println("newpassword2_1:" +newpassword2_1);
			System.out.println("password1_1:" +password1_1);
			System.out.println("u_key:" +u_key);
			user = userservice.getUserdetail(u_key);
			//현재비밀번호랑 변경할 비밀번호랑 비교
			if(passwordEncoder.matches(password1_1, user.getPassword())) {
				
				 String encodedPassword = new BCryptPasswordEncoder().encode(newpassword1_1);
				 System.out.println("encodedPassword:"+encodedPassword);
				user.setPassword(encodedPassword);
				userservice.updateUser(user);
			}
			user = userservice.getUserdetail(u_key);
			model.addAttribute("user",user);
			model.addAttribute("u_key",u_key);
			return "/member/user_info";
	    }
		
		@RequestMapping("/usernameModify")
	    public String usernameModify( Model model,User user,@RequestParam("username_1") String username_1, @RequestParam("u_key") String u_key) {
			
			System.out.println("u_key:" +u_key);
			System.out.println("username_1:" +username_1);
			user = userservice.getUserdetail(u_key);
			user.setuName(username_1);
			userservice.usernameModify(user);
			model.addAttribute("user",user);
			model.addAttribute("u_key",u_key);
			return "/member/user_info";
	    }
		
		@RequestMapping("/Withdrawal")
	    public String Withdrawal( Model model,User user,@RequestParam("Withdrawalpassword1_1") String Withdrawalpassword1_1, @RequestParam("u_key") String u_key) {
			
			System.out.println("u_key:22222" +u_key);
			
			
			
			user = userservice.getUserdetail(u_key);
			
			String u_id = user.getUsername();
			int u_key2 = Integer.parseInt(u_key);
			System.out.println("u_id:"+u_id);
			
			userservice.getUserdeleteAuth(u_id);
			userservice.getUserdelete(u_key2);
			
			
			model.addAttribute("user",user);
			model.addAttribute("u_key",u_key);
			SecurityContextHolder.clearContext();   //세션 강제 삭제 // 회원탈퇴후 로그아웃
			return "/member/deleteResult";
	    }
		
		@RequestMapping("/memberprofilelist")
	    public String memberprofilelist( Model model,MemberProfile memberprofile) {
			
			List<MemberProfile> list = boardservice.getmemberprofileListALL();
			
			model.addAttribute("list",list);
			
			return "/member/memberprofilelist";
	    }
		
		@RequestMapping("/memberprofiledetail")
	    public String memberprofiledetail(User user, Model model,MemberProfile memberprofile,@RequestParam("m_id") String m_id) {
			
			memberprofile = boardservice.getmemberprofiledetail(m_id);
			int u_key=memberprofile.getU_key();
			user =  userservice.getUserdetail(String.valueOf(u_key));
			String phone =  user.getPhone();
			
			model.addAttribute("memberprofile",memberprofile);
			model.addAttribute("phone",phone);
			
			
			
			return "/member/memberprofiledetail";
	    }
		
		@RequestMapping("/trainerprofilelist")
	    public String trainerprofilelist( Model model,TrainerProfile trainerprofile) {
			
			List<TrainerProfile> list = boardservice.gettrainerprofileListALL();
			
			model.addAttribute("list",list);
			
			return "/member/trainerprofilelist";
	    }
		
		
		@RequestMapping("/memberDetail")
	    public String memberDetail(TrainerProfile trainerprofile,User user, Model model,@RequestParam("memberprofile_u_key") int memberprofile_u_key,@RequestParam("trainerprofile_u_key") int trainerprofile_u_key, MemberProfile memberprofile) {
			
			System.out.println("trainerprofile_u_key:"+trainerprofile_u_key);
			System.out.println("memberprofile_u_key:"+memberprofile_u_key);
			int m_id = boardservice.getm_id2(memberprofile_u_key); 
			
			memberprofile = boardservice.getmemberprofiledetail(String.valueOf(m_id));
			if(trainerprofile_u_key!=0) {
			
			trainerprofile = boardservice.trainerprofileDetail(trainerprofile_u_key);
			model.addAttribute("trainerprofile",trainerprofile);
			}
			user =  userservice.getUserdetail(String.valueOf(memberprofile_u_key));
			String phone =  user.getPhone();
			model.addAttribute("phone",phone);
			
			model.addAttribute("memberprofile",memberprofile);
			
			return "/member/memberprofiledetail";
	    }
		
		
		
		
		@RequestMapping("/trainerprofilecheck")
	    public String trainerprofilecheck( Model model,TrainerProfile trainerprofile,@RequestParam("u_key") int u_key) {
			
			boardservice.trainerprofilecheck(u_key);
			
			
			trainerprofile = boardservice.trainerprofileDetail(u_key);
			String u_name = boardservice.getU_name2(u_key);
			
			String programsub = trainerprofile.getTf_programsub();
			String[] programsub2 = programsub.split(",");
			
			
			int tf_id = trainerprofile.getTf_id();
			List<FileDto> filelist = boardservice.gettf_FileList(tf_id,1);
			List<FileDto> filelist_2 = boardservice.gettf_FileList(tf_id,2);
			List<FileDto> filelist_3 = boardservice.gettf_FileList(tf_id,3);
			model.addAttribute("programsub",programsub2);
		
			model.addAttribute("trainerprofile",trainerprofile);
			model.addAttribute("u_name",u_name);
			model.addAttribute("filelist",filelist);
			model.addAttribute("filelist_2",filelist_2);
			model.addAttribute("filelist_3",filelist_3);
			
			return "/member/trainerProfileDetail";
	    }
		
		@RequestMapping("/trainerprofilecheckcancel")
	    public String trainerprofilecheckcancel( Model model,TrainerProfile trainerprofile,@RequestParam("u_key") int u_key) {
			
			boardservice.trainerprofilecheckcancel(u_key);
			trainerprofile = boardservice.trainerprofileDetail(u_key);
			String u_name = boardservice.getU_name2(u_key);
			
			String programsub = trainerprofile.getTf_programsub();
			String[] programsub2 = programsub.split(",");
			
			
			int tf_id = trainerprofile.getTf_id();
			List<FileDto> filelist = boardservice.gettf_FileList(tf_id,1);
			List<FileDto> filelist_2 = boardservice.gettf_FileList(tf_id,2);
			List<FileDto> filelist_3 = boardservice.gettf_FileList(tf_id,3);
			model.addAttribute("programsub",programsub2);
		
			model.addAttribute("trainerprofile",trainerprofile);
			model.addAttribute("u_name",u_name);
			model.addAttribute("filelist",filelist);
			model.addAttribute("filelist_2",filelist_2);
			model.addAttribute("filelist_3",filelist_3);
			
			return "/member/trainerProfileDetail";
	    }
		
		@RequestMapping("/profileconsultingcancel")
	    public String profileconsultingcancel(User user, Model model,@RequestParam("member_u_key") int member_u_key,@RequestParam("tf_id") int tf_id, @RequestParam("trainer_u_key") int trainer_u_key, MemberProfile memberprofile,TrainerProfile trainerprofile) {
			
			
			System.out.println("trainer_u_key: "+trainer_u_key);    //트레이너의 u_key
			System.out.println("member_u_key: "+member_u_key);    //상담요청자의 u_key
			System.out.println("tf_id:" +tf_id);   //트레이너프로필 tf_id
			trainerprofile = boardservice.trainerprofileDetail(trainer_u_key);
			
			memberprofile = boardservice.getmemberprofiledetail2(member_u_key);
			System.out.println("memberprofile.getM_consulting():"+memberprofile.getM_consulting());
			
			String tf_consulting = trainerprofile.getTf_consulting();
			String tf_consultingconfirm = trainerprofile.getTf_consultingconfirm();
			String m_consulting = memberprofile.getM_consulting();
			String m_consultingconfirm = memberprofile.getM_consultingconfirm();
		
			String delete_tf_consulting = tf_consulting.replace(Integer.toString(member_u_key)+"," ,"");
			String delete_tf_consultingconfirm = tf_consultingconfirm.replace(Integer.toString(member_u_key)+"," ,"");
			System.out.println("delete_tf_consulting: "+delete_tf_consulting);   
			trainerprofile.setTf_consulting(delete_tf_consulting);
			trainerprofile.setTf_consultingconfirm(delete_tf_consultingconfirm);
			boardservice.updateTf_consulting(trainerprofile);   
			
			
			String delete_m_consulting = m_consulting.replace(Integer.toString(tf_id)+"," ,"");
			String delete_m_consultingconfirm = m_consultingconfirm.replace(Integer.toString(tf_id)+"," ,"");
			System.out.println("delete_m_consulting: "+delete_m_consulting);   
			memberprofile.setM_consulting(delete_m_consulting);
			memberprofile.setM_consultingconfirm(delete_m_consultingconfirm);
			boardservice.updateM_consulting(memberprofile);   
			
			
			
			//int m_id = boardservice.getm_id2(u_key); 
			
			//memberprofile = boardservice.getmemberprofiledetail(String.valueOf(m_id));
			
			//user =  userservice.getUserdetail(String.valueOf(u_key));
			String phone =  user.getPhone();
			model.addAttribute("phone",phone);
			model.addAttribute("memberprofile",memberprofile);
			
			
			List<FileDto> filelist = boardservice.gettf_FileList(tf_id,1);
			List<FileDto> filelist_2 = boardservice.gettf_FileList(tf_id,2);
			List<FileDto> filelist_3 = boardservice.gettf_FileList(tf_id,3);
			
			
			model.addAttribute("trainerprofile",trainerprofile);
			
			model.addAttribute("filelist",filelist);
			model.addAttribute("filelist_2",filelist_2);
			model.addAttribute("filelist_3",filelist_3);
			
			return "/member/trainerProfileDetail";
	    }
		
		
		@RequestMapping("/profileconsultingcheck")
	    public String profileconsultingcheck(User user, Model model,@RequestParam("member_u_key") int member_u_key,@RequestParam("tf_id") int tf_id, @RequestParam("trainer_u_key") int trainer_u_key,MemberProfile memberprofile, TrainerProfile trainerprofile) {
			
			
			System.out.println("member_u_key:"+member_u_key);
			System.out.println("tf_id:"+tf_id);
			System.out.println("trainer_u_key:"+trainer_u_key);
			trainerprofile = boardservice.trainerprofileDetail(trainer_u_key);
			String tf_consulting = trainerprofile.getTf_consulting();
			String tf_consultingconfirm = trainerprofile.getTf_consultingconfirm();
			System.out.println("tf_consulting:"+tf_consulting);
			
			trainerprofile.setTf_consulting(tf_consulting+member_u_key+",");
			trainerprofile.setTf_consultingconfirm(tf_consultingconfirm+member_u_key+",");
			boardservice.updateTf_consulting2(trainerprofile);
			memberprofile = boardservice.getmemberprofiledetail2(member_u_key);
			
			String m_consulting = memberprofile.getM_consulting();
			String m_consultingconfirm = memberprofile.getM_consultingconfirm();
			
			memberprofile.setM_consulting(m_consulting+tf_id+",");
			memberprofile.setM_consultingconfirm(m_consultingconfirm+tf_id+",");
			
			boardservice.updateM_consulting2(memberprofile);
			
			List<FileDto> filelist = boardservice.gettf_FileList(tf_id,1);
			List<FileDto> filelist_2 = boardservice.gettf_FileList(tf_id,2);
			List<FileDto> filelist_3 = boardservice.gettf_FileList(tf_id,3);
			
			model.addAttribute("trainerprofile",trainerprofile);
		
			model.addAttribute("filelist",filelist);
			model.addAttribute("filelist_2",filelist_2);
			model.addAttribute("filelist_3",filelist_3);
			return "/member/trainerProfileDetail";
	    }
		
		
		@RequestMapping("/memberconsulting")
	    public String memberconsulting(User user, Model model,@RequestParam("u_key") int u_key,MemberProfile memberprofile,TrainerProfile trainerprofile) {
			
			
			List<TrainerProfile> list = boardservice.trainerprofileconsulting(u_key);
			model.addAttribute("u_key",u_key);
			model.addAttribute("list",list);
			return "/member/memberconsultinglist";
	    }
		
		@RequestMapping("/trainerconsultinglist")
	    public String trainerconsultinglist(User user, Model model,@RequestParam("u_key") int u_key,MemberProfile memberprofile,TrainerProfile trainerprofile) {
			
			trainerprofile = boardservice.trainerprofileDetail(u_key);
			trainerprofile.getTf_id();
			
			List<MemberProfile> list = boardservice.memberprofileconsulting(trainerprofile.getTf_id());
		
			model.addAttribute("u_key",u_key);
			model.addAttribute("trainerprofile",trainerprofile);
			model.addAttribute("list",list);
			return "/member/trainerconsultinglist";
	    }
		
		@RequestMapping("/consultingconfirm")
	    public String consultingconfirm(User user, Model model,@RequestParam("memberprofile_u_key") int memberprofile_u_key,@RequestParam("m_id") int m_id,@RequestParam("trainerprofile_u_key") int trainerprofile_u_key, MemberProfile memberprofile,TrainerProfile trainerprofile) {
		
			System.out.println("memberprofile_u_key:"+memberprofile_u_key);
			System.out.println("trainerprofile_u_key:"+trainerprofile_u_key);
			trainerprofile = boardservice.trainerprofileDetail(trainerprofile_u_key);
			String tf_consultingconfirm = trainerprofile.getTf_consultingconfirm();
			System.out.println("tf_consultingconfirm:"+tf_consultingconfirm);
			String delete_tf_consultingconfirm = tf_consultingconfirm.replace(Integer.toString(memberprofile_u_key)+"," ,"");
			System.out.println("delete_tf_consultingconfirm:"+delete_tf_consultingconfirm);
			trainerprofile.setTf_consultingconfirm(delete_tf_consultingconfirm);
			boardservice.updateTf_Consultingconfirm(trainerprofile);
			List<MemberProfile> list = boardservice.memberprofileconsulting(trainerprofile.getTf_id());
			model.addAttribute("list",list);
			int tf_id = trainerprofile.getTf_id();
			
			
			memberprofile = boardservice.getmemberprofiledetail(String.valueOf(m_id));
			int u_key=memberprofile.getU_key();
			user =  userservice.getUserdetail(String.valueOf(u_key));
			String phone =  user.getPhone();
			
			String m_consulting = memberprofile.getM_consulting();
			String m_consultingconfirm = memberprofile.getM_consultingconfirm();
			
			String delete_m_consultingconfirm = m_consultingconfirm.replace(Integer.toString(tf_id)+"," ,"");
			memberprofile.setM_consultingconfirm(delete_m_consultingconfirm);
			boardservice.updateM_consultingconfirm(memberprofile);
			model.addAttribute("memberprofile",memberprofile);
			model.addAttribute("phone",phone);
			trainerprofile = boardservice.trainerprofileDetail(trainerprofile_u_key);
			model.addAttribute("trainerprofile",trainerprofile);
			
			
			return "/member/memberprofiledetail";
	    }
		
		@RequestMapping("/consultingconfirmcancel")
	    public String consultingconfirmcancel(User user, Model model,@RequestParam("memberprofile_u_key") int memberprofile_u_key,@RequestParam("m_id") int m_id,@RequestParam("trainerprofile_u_key") int trainerprofile_u_key, MemberProfile memberprofile,TrainerProfile trainerprofile) {
		
			System.out.println("memberprofile_u_key:"+memberprofile_u_key);
			System.out.println("trainerprofile_u_key:"+trainerprofile_u_key);
			trainerprofile = boardservice.trainerprofileDetail(trainerprofile_u_key);
			String tf_consultingconfirm = trainerprofile.getTf_consultingconfirm();
			int tf_id = trainerprofile.getTf_id();
			System.out.println("tf_consultingconfirm:"+tf_consultingconfirm);
			
			String add_tf_consultingconfirm = tf_consultingconfirm+memberprofile_u_key+",";
			System.out.println("add_tf_consultingconfirm:"+add_tf_consultingconfirm);
			trainerprofile.setTf_consultingconfirm(add_tf_consultingconfirm);
			boardservice.updateTf_Consultingconfirm(trainerprofile);
			List<MemberProfile> list = boardservice.memberprofileconsulting(trainerprofile.getTf_id());
			model.addAttribute("list",list);
			memberprofile = boardservice.getmemberprofiledetail(String.valueOf(m_id));
			int u_key=memberprofile.getU_key();
			user =  userservice.getUserdetail(String.valueOf(u_key));
			String phone =  user.getPhone();
			
			model.addAttribute("memberprofile",memberprofile);
			model.addAttribute("phone",phone);
			
			trainerprofile = boardservice.trainerprofileDetail(trainerprofile_u_key);
			model.addAttribute("trainerprofile",trainerprofile);
			
			String m_consulting = memberprofile.getM_consulting();
			String m_consultingconfirm = memberprofile.getM_consultingconfirm();
			String add_m_consultingconfirm = m_consultingconfirm+tf_id+",";
			memberprofile.setM_consultingconfirm(add_m_consultingconfirm);
			boardservice.updateM_consultingconfirm(memberprofile);
			
			return "/member/memberprofiledetail";
	    }
		
	}
}