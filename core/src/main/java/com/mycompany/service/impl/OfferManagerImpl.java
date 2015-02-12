package com.mycompany.service.impl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.velocity.app.VelocityEngine;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.mycompany.dao.OfferDao;
import com.mycompany.model.Offer;
import com.mycompany.service.OfferManager;
import com.mycompany.util.ConnectionUtil;

@Service("offerManager")
public class OfferManagerImpl extends GenericManagerImpl<Offer, String>
		implements OfferManager {

	@Autowired
	private OfferDao offerDao;
	@Autowired
	private VelocityEngine velocityEngine;

	@Autowired
	public OfferManagerImpl(OfferDao offerDao) {
		super(offerDao);
		this.offerDao = offerDao;
	}

	public String getMerchantOffers(String merchantName) {
		Map<String, Object> model = new HashMap<String, Object>();
		try {
			model.put("offerList", getOffers(merchantName));
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String result = VelocityEngineUtils.mergeTemplateIntoString(
				velocityEngine, "offers.vm", "UTF-8", model);
		log.info(result);
		return result;
	}

	public List<Offer> getOffers(String merchantName) throws JsonParseException, JsonMappingException, IOException, ParseException {
		Map<String, String> headers = new HashMap<String, String>();
		headers.put("Content-Type", "application/json");
		headers.put("Fk-Affiliate-Id", "mathivana");
		headers.put("Fk-Affiliate-Token", "e74d18aa9b8a4a11b6eae359819cdc65");
		String offersString = ConnectionUtil
				.getHttpsRequest(
						"https://affiliate-api.flipkart.net/affiliate/offers/v1/top/json",
						headers);
		log.info("response-----" + offersString);
		return getOffersFromJsonString(offersString);
	}

	public List<Offer> getOffersFromJsonString(String offersString) throws JsonParseException, JsonMappingException, IOException, ParseException {
		JSONObject jsonObj = (JSONObject) new JSONParser().parse(offersString
				.toString());
		ObjectMapper mapper = new ObjectMapper();
		mapper.configure(
				DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		// List<Offer> myObjects =
		// mapper.readValue(jsonObj.get("topOffersList").toString(),
		// mapper.getTypeFactory().constructCollectionType(List.class,
		// Offer.class));
		List<Map> myObjects = Arrays.asList(mapper.readValue(
				jsonObj.get("topOffersList").toString().toString(),
				Map[].class));
		List<Offer> offers = new ArrayList<Offer>();
		for(Map offerMap : myObjects){
			System.out.println();
			Offer offer = new Offer();
			offer.setTitle(offerMap.get("title").toString());
			offer.setDescription(offerMap.get("title").toString());
			offer.setImageURL(offerMap.get("imageUrls").toString());
			save(offer);
			offers.add(offer);
		}
		return offers;
	}
}
