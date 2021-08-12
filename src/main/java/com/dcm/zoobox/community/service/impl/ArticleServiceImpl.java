package com.dcm.zoobox.community.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dcm.zoobox.community.mapper.ArticleMapper;
import com.dcm.zoobox.community.model.Article;
import com.dcm.zoobox.community.service.ArticleService;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ArticleServiceImpl implements ArticleService {
	
	@Autowired
	private ArticleMapper articleMapper;
	

	@Override
	public int insertArticle(Article article) {
		articleMapper.insertArticle(article);
		return article.getArticleId();
	}


	@Override
	public Article getArticle(int articleId) {
		return articleMapper.getArticle(articleId);
	}



}
