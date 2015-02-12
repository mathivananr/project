package com.mycompany.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.service.OfferManager;

/**
 * Implementation of <strong>OfferController</strong> that interacts with the
 * {@link OfferrManager} to retrieve/persist values to the database.
 * 
 * <p>
 * <a href="OfferController.java.html"><i>View Source</i></a>
 * 
 * @author <a href="mailto:mathivanan18@gmail.com">Mathivanan</a>
 */
@Controller
public class OfferController extends BaseFormController {

	@Autowired
	private OfferManager offerManager;

	public OfferController() {
		setCancelView("redirect:/home");
		setSuccessView("redirect:/offers");
	}

	@RequestMapping(value = "/merchant/{merchantName}", method = RequestMethod.GET)
	public @ResponseBody String getMerchant(
			@PathVariable("merchantName") String merchantName,
			HttpServletRequest request) throws Exception {
		System.out.println(merchantName);
		return offerManager.getMerchantOffers(merchantName);
	}
}
