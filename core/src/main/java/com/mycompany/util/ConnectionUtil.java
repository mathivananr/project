package com.mycompany.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.mycompany.Constants;

public class ConnectionUtil {
	private static Log log = LogFactory.getLog(DateUtil.class);

	/**
	 * Default constructor
	 * 
	 */
	public ConnectionUtil() {

	}

	/**
	 * get HTTPS request
	 * 
	 * @param urlString
	 * @param headers
	 * @return
	 */
	public static String getHttpsRequest(String urlString,
			Map<String, String> headers) {
		URL url;
		HttpsURLConnection connection = null;
		try {
			// Create connection
			url = new URL(urlString);
			connection = (HttpsURLConnection) url.openConnection();
			connection.setRequestMethod(Constants.REQUEST_GET);
			for (String key : headers.keySet()) {
				connection.setRequestProperty(key, headers.get(key));
			}
			// Get Response
			InputStream is = connection.getInputStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(is));
			String line;
			StringBuffer response = new StringBuffer();
			while ((line = rd.readLine()) != null) {
				response.append(line);
				response.append('\r');
			}
			rd.close();
			return response.toString();
		} catch (IOException e) {
			log.error(e.getMessage(), e);
			return null;
		} finally {

			if (connection != null) {
				connection.disconnect();
			}
		}
	}
}
