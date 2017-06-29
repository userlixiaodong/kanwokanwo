package cv.focus.common.infrastructure.util;

import java.util.Random;

/**
 * Created by Administrator on 2017/4/21.
 */
public class UtilNumber {
    /**
     * 产生随机的N位数
     *
     * @return
     */
    public static String getRandomN(int N) {
        Random rad = new Random();
        return rad.nextInt(10 * N) + "";
    }

    /**
     * 将元数据前补零，补后的总长度为指定的长度，以字符串的形式返回
     * @param sourceData
     * @param formatLength
     * @return 重组后的数据
     */
    public static String frontCompWithZero(int sourceData,int formatLength)
    {
  /*
   * 0 指前面补充零
   * formatLength 字符总长度为 formatLength
   * d 代表为正数。
   */
        String newString = String.format("%0"+formatLength+"d", sourceData);
        return  newString;
    }

}
