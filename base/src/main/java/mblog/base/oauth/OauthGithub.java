package mblog.base.oauth;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import mblog.base.oauth.utils.OathConfig;
import mblog.base.oauth.utils.TokenUtil;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;

public class OauthGithub
  extends Oauth
{
  private static final Logger LOGGER = Logger.getLogger(OauthGithub.class);
  private static final String AUTH_URL = "https://github.com/login/oauth/authorize";
  private static final String TOKEN_URL = "https://github.com/login/oauth/access_token";
  private static final String USER_INFO_URL = "https://api.github.com/user";
  
  public static OauthGithub me()
  {
    return new OauthGithub();
  }
  
  public OauthGithub() {
    setClientId(OathConfig.getValue("openid_github"));
    setClientSecret(OathConfig.getValue("openkey_github"));
    setRedirectUri(OathConfig.getValue("redirect_github"));
  }
  
  public String getAuthorizeUrl(String state)
    throws UnsupportedEncodingException
  {
    Map params = new HashMap();
    params.put("response_type", "code");
    params.put("client_id", getClientId());
    params.put("redirect_uri", getRedirectUri());
    if (StringUtils.isNotBlank(state)) {
      params.put("state", state);
    }
    return super.getAuthorizeUrl("https://github.com/login/oauth/authorize", params);
  }
  
  public String getTokenByCode(String code)
    throws IOException, KeyManagementException, NoSuchAlgorithmException, NoSuchProviderException
  {
    Map params = new HashMap();
    params.put("code", code);
    params.put("client_id", getClientId());
    params.put("client_secret", getClientSecret());
    params.put("grant_type", "authorization_code");
    params.put("redirect_uri", getRedirectUri());
    String token = TokenUtil.getAccessToken(super.doPost("https://github.com/login/oauth/access_token", params));
    LOGGER.debug(token);
    return token;
  }
  
  public JSONObject getUserInfo(String accessToken)
    throws IOException, KeyManagementException, NoSuchAlgorithmException, NoSuchProviderException
  {
    Map params = new HashMap();
    params.put("Authorization", "token " + accessToken);
    String userInfo = super.doGetWithHeaders("https://api.github.com/user", params);
    JSONObject dataMap = JSON.parseObject(userInfo);
    LOGGER.debug(dataMap.toJSONString());
    return dataMap;
  }
  
  public JSONObject getUserInfoByCode(String code)
    throws IOException, KeyManagementException, NoSuchAlgorithmException, NoSuchProviderException
  {
    String accessToken = getTokenByCode(code);
    if (StringUtils.isBlank(accessToken)) {
      return null;
    }
    JSONObject dataMap = getUserInfo(accessToken);
    dataMap.put("access_token", accessToken);
    LOGGER.debug(dataMap);
    return dataMap;
  }
}
