package com.zikgu.example.service;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.zikgu.example.domain.News;

@Service
public class NewsService {
    private static String News_URL = "https://data.kleague.com";
    private static String News_URL2 = "https://www.hkbs.co.kr/news/articleList.html?sc_section_code=S1N1&view_type=sm";
    @PostConstruct
    public List<News> getNewsDatas() throws IOException {
        List<News> newsList = new ArrayList<>();
        Document document = Jsoup.connect(News_URL).get();
        Document document1 = Jsoup.connect(News_URL2).get();

        Elements contents = document.select("section div.sub-menu");
        Elements contents1 = document1.select("section ul.type2 li");
        for (Element content : contents) {
            News news = News.builder()
                    .image(content.select("div img").attr("abs:src")) // 이미지
                    //.subject(content.select("h4 a").text())		// 제목
                    //.url(content.select("a").attr("abs:href"))		// 링크
                    .build();
            newsList.add(news);
        
        }
        System.out.println("contents:" +contents);
        //System.out.println("contents1:" +contents1);
        return newsList;
    }
}