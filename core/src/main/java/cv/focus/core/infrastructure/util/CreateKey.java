package cv.focus.core.infrastructure.util;

import java.util.Random;

public class CreateKey {

	public static String createRandomKey() {
		Random r = new Random();
		// 取随机产生的认证码(6位数字)
		String sRand = "";
		for (int i = 0; i < 6; i++) {
			String rand = String.valueOf(r.nextInt(10));
			sRand += rand;
		}
		if(sRand.length()!=6){
			sRand = createRandomKey();
		}
		return sRand;
	}
	
	/**
	 * 产生随即数
	 * @author ZhengHongChen
	 *         Email:zhc_59@yahoo.cn
	 * @param length 随机数个数
	 * @return
	 */
	public static String createRandom(int length) {
		Random r = new Random();
		// 取随机产生的认证码(6位数字)
		String sRand = "";
		for (int i = 0; i < length; i++) {
			String rand = String.valueOf(r.nextInt(10));
			sRand += rand;
		}
		if(sRand.length()!=length){
			sRand = createRandomKey();
		}
		return sRand;
	}
	
}
