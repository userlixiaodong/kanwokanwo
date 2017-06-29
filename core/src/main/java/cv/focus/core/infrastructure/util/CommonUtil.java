package cv.focus.core.infrastructure.util;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.json.JSONObject;

import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;


public final class CommonUtil {
	public static String getErrorStr(Exception e) {
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		e.printStackTrace(pw);
		return sw.toString();
	}
	
	/**
	 * xml转为obj
	 * @param xmlStr
	 * @return
	 */
	public static JSONObject xmlStrToObj(String xmlStr) {
		JSONObject obj = new JSONObject();
		try {
			Document document = DocumentHelper.parseText(xmlStr);
			// 获取根节点
	        Element rootElement = document.getRootElement();
	        Iterator<?> rootIterator = rootElement.elementIterator();
	        Element ele = null;
	        String key = null;
	        String value = null;
	        while(rootIterator.hasNext()) {
	        		ele = (Element) rootIterator.next();
	        		key = ele.getName();
	        		value = ele.getText();
	        		obj.put(key, value);
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
        return obj;
	}
	
	/**
	 * 输入流转换为String
	 * @param inputStream
	 * @return
	 */
	public static String streamToString(InputStream inputStream, String encoding) throws Exception {
		StringBuffer sbu = new StringBuffer();
		
		byte[] b = new byte[1024];
		int len = -1;
		while((len = inputStream.read(b)) != -1) {
			sbu.append(new String(b, 0, len, encoding));
		}
		return sbu.toString();
	}
	
	/**
	 * 二分查找
	 * @param list
	 * @param key
	 * @return
	 */
	/*public static School schoolSearch(List<School> list, int key) {
		int start = 0;
		int end = list.size() - 1;
		School school = null;
		while (start <= end) {
			int middle = (start + end) / 2;
			if (key < list.get(middle).getId().intValue()) {
				end = middle - 1;
			} else if (key >  list.get(middle).getId().intValue()) {
				start = middle + 1;
			} else {
				school = list.get(middle);
				break;
			}
		}
		return school;
	}*/
}
