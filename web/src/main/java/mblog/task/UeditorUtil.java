package mblog.task;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public   class UeditorUtil {
	private static final Pattern p_html = Pattern.compile("<[a-zA-z]{1,9}((?!>).)*>", Pattern.CASE_INSENSITIVE);
	 
    private static final Pattern t_html = Pattern.compile("</[a-zA-z]{1,9}>", Pattern.CASE_INSENSITIVE);
 
    public static String getTextByHtml(String html){
 
        Matcher m_script = p_html.matcher(html);
 
        html = m_script.replaceAll("");
 
        Matcher l_script = t_html.matcher(html);
 
        return l_script.replaceAll("");
 
    }


}
