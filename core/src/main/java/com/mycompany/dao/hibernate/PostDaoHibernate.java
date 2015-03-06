package com.mycompany.dao.hibernate;

import org.springframework.stereotype.Repository;

import com.mycompany.dao.PostDao;
import com.mycompany.model.Post;

@Repository("postDao")
public class PostDaoHibernate extends GenericDaoHibernate<Post, String> implements
		PostDao {

	public PostDaoHibernate() {
		super(Post.class);
	}

}
