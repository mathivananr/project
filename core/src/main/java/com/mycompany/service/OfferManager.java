package com.mycompany.service;

import com.mycompany.model.Offer;

public interface OfferManager extends GenericManager<Offer, String>{

	String getMerchantOffers(String merchantName);
	
}
