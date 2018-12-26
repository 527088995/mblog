package mblog.base.oauth.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.apache.commons.lang.StringUtils;

public class HttpKit
{
  private static final String DEFAULT_CHARSET = "UTF-8";
  private static final String _GET = "GET";
  private static final String _POST = "POST";
  
  private static HttpURLConnection initHttp(String url, String method, Map<String, String> headers)
    throws IOException
  {
    URL _url = new URL(url);
    HttpURLConnection http = (HttpURLConnection)_url.openConnection();
    
    http.setConnectTimeout(25000);
    
    http.setReadTimeout(25000);
    http.setRequestMethod(method);
    http.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
    http.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.146 Safari/537.36");
    
    if ((headers != null) && (!headers.isEmpty())) {
      for (Entry entry : headers.entrySet()) {
        http.setRequestProperty((String)entry.getKey(), (String)entry.getValue());
      }
    }
    http.setDoOutput(true);
    http.setDoInput(true);
    http.connect();
    return http;
  }
  
  private static HttpsURLConnection initHttps(String url, String method, Map<String, String> headers)
    throws IOException, NoSuchAlgorithmException, NoSuchProviderException, KeyManagementException
  {
    TrustManager[] tm = { new MyX509TrustManager() };
    SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");
    sslContext.init(null, tm, new SecureRandom());
    
    SSLSocketFactory ssf = sslContext.getSocketFactory();
    URL _url = new URL(url);
    HttpsURLConnection http = (HttpsURLConnection)_url.openConnection();
    http.setHostnameVerifier(new TrustAnyHostnameVerifier());
    
    http.setConnectTimeout(25000);
    
    http.setReadTimeout(25000);
    http.setRequestMethod(method);
    http.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
    http.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.146 Safari/537.36");
    
    if ((headers != null) && (!headers.isEmpty())) {
      for (Entry entry : headers.entrySet()) {
        http.setRequestProperty((String)entry.getKey(), (String)entry.getValue());
      }
    }
    http.setSSLSocketFactory(ssf);
    http.setDoOutput(true);
    http.setDoInput(true);
    http.connect();
    return http;
  }
  
  public static String get(String url, Map<String, String> params, Map<String, String> headers) {
    StringBuffer bufferRes = null;
    try {
      HttpURLConnection http = null;
      if (isHttps(url)) {
        http = initHttps(initParams(url, params), "GET", headers);
      } else {
        http = initHttp(initParams(url, params), "GET", headers);
      }
      InputStream in = http.getInputStream();
      BufferedReader read = new BufferedReader(new InputStreamReader(in, "UTF-8"));
      String valueString = null;
      bufferRes = new StringBuffer();
      while ((valueString = read.readLine()) != null) {
        bufferRes.append(valueString);
      }
      in.close();
      if (http != null) {
        http.disconnect();
      }
      return bufferRes.toString();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }
  
  public static String get(String url) {
    return get(url, null);
  }
  
  public static String get(String url, Map<String, String> params) {
    return get(url, params, null);
  }
  
  public static String post(String url, String params, Map<String, String> headers) {
    StringBuffer bufferRes = null;
    try {
      HttpURLConnection http = null;
      if (isHttps(url)) {
        http = initHttps(url, "POST", headers);
      } else {
        http = initHttp(url, "POST", headers);
      }
      OutputStream out = http.getOutputStream();
      out.write(params.getBytes("UTF-8"));
      out.flush();
      out.close();
      
      InputStream in = http.getInputStream();
      BufferedReader read = new BufferedReader(new InputStreamReader(in, "UTF-8"));
      String valueString = null;
      bufferRes = new StringBuffer();
      while ((valueString = read.readLine()) != null) {
        bufferRes.append(valueString);
      }
      in.close();
      if (http != null) {
        http.disconnect();
      }
      return bufferRes.toString();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return null;
  }
  
  public static String post(String url, Map<String, String> params) throws UnsupportedEncodingException {
    return post(url, map2Url(params), null);
  }
  
  public static String post(String url, Map<String, String> params, Map<String, String> headers) throws UnsupportedEncodingException
  {
    return post(url, map2Url(params), headers);
  }
  
  public static String initParams(String url, Map<String, String> params) throws UnsupportedEncodingException {
    if ((params == null) || (params.isEmpty())) {
      return url;
    }
    StringBuilder sb = new StringBuilder(url);
    if (url.indexOf("?") == -1) {
      sb.append("?");
    }
    sb.append(map2Url(params));
    return sb.toString();
  }
  
  public static String map2Url(Map<String, String> paramToMap) throws UnsupportedEncodingException {
    if ((paramToMap == null) || (paramToMap.isEmpty())) {
      return null;
    }
    StringBuffer url = new StringBuffer();
    boolean isfist = true;
    for (Entry entry : paramToMap.entrySet()) {
      if (isfist) {
        isfist = false;
      } else {
        url.append("&");
      }
      url.append((String)entry.getKey()).append("=");
      String value = (String)entry.getValue();
      if (StringUtils.isNotEmpty(value)) {
        url.append(URLEncoder.encode(value, "UTF-8"));
      }
    }
    return url.toString();
  }
  
  private static boolean isHttps(String url) {
    return url.startsWith("https");
  }
}
