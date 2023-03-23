package com.zikgu.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zikgu.example.domain.Board;
import com.zikgu.example.domain.K1Image;
import com.zikgu.example.domain.News;
import com.zikgu.example.domain.Player;
import com.zikgu.example.domain.User;
import com.zikgu.example.service.AutoComService;
import com.zikgu.example.service.BoardService;
import com.zikgu.example.service.NewsService;
import com.zikgu.example.service.PlayerService;
import com.zikgu.example.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {

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
		return "/index";
	}

	@RequestMapping("/beforeSignup")
	public String beforeSignUp() {
		return "/signup";
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
	public String userInfo(Model model) {

		return "/user_info";
	}

	@RequestMapping(value = "/denied")
	public String denied(Model model) {
		return "/denied";
	}

	@RequestMapping("/game")
	public String game(Player player, Model model, HttpServletRequest request) {
		playCount = 0;
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
	
	@RequestMapping("/news")
	    public String news(Model model) throws Exception{
	        List<News> newsList = newsService.getNewsDatas();
	        model.addAttribute("news", newsList);
	        WebDriverUtil webDriverUtil = new WebDriverUtil();
	        webDriverUtil.useDriver("https://www.youtube.com/c/youtubekorea/videos");
	        return "/news";
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
			if(playCount>3)
			{
				System.out.println("playCount!" + playCount);
				model.addAttribute("playCount", playCount); 
				answerAll.add(insertPlayer);
				return "/solutionList";
				
			} else {
				answerAll.add(insertPlayer);
			} 
			playCount +=1;
			
			return "/solutionList";
			
		}
		
	}
}