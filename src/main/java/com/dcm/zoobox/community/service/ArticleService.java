package com.dcm.zoobox.community.service;

import com.dcm.zoobox.community.model.Article;

public interface ArticleService {


	int insertArticle(Article article);

	Article getArticle(int articleId);


}
