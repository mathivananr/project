package com.mycompany.dao.hibernate;

import org.springframework.stereotype.Repository;

import com.mycompany.dao.OfferDao;
import com.mycompany.model.Offer;

@Repository("offerDao")
public class OfferDaoHibernate extends GenericDaoHibernate<Offer, String>
		implements OfferDao {

	public OfferDaoHibernate() {
		super(Offer.class);
	}

}
