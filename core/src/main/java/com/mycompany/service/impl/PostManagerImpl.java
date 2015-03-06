package com.mycompany.service.impl;

import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.dao.PostDao;
import com.mycompany.model.Post;
import com.mycompany.service.PostManager;
import com.mycompany.service.PostService;

/**
 * Implementation of UserManager interface.
 *
 * @author <a href="mailto:matt@raibledesigns.com">Matt Raible</a>
 */
@Service("postManager")
@WebService(serviceName = "PostService", endpointInterface = "com.mycompany.service.PostService")
public class PostManagerImpl extends GenericManagerImpl<Post, String> implements
		PostManager, PostService {
	private PostDao postDao;

	@Autowired
	public void setPostDao(PostDao postDao) {
		this.dao = postDao;
		this.postDao = postDao;
	}
}
