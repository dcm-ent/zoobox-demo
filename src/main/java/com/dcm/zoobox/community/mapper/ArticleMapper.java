package com.dcm.zoobox.community.mapper;

import com.dcm.zoobox.community.model.Article;

public interface ArticleMapper {

	void insertArticle(Article article);

	Article getArticle(int articleId);


}
