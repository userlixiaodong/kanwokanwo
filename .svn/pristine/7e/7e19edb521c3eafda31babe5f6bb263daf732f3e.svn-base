package cv.focus.core.infrastructure.util;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;
import org.apache.commons.lang3.StringUtils;

/**
 * 汉语拼音工具类
 * 
 * @author liuruichao
 * Created on 2016-06-13 12:50
 */
public final class PinYinUtil {
    /**
     * 中文转为拼音(每个汉字首字母)
     * @param chinese 中文
     * @return 拼音
     * @throws BadHanyuPinyinOutputFormatCombination
     */
    public static String chineseToPinyin(String chinese) throws BadHanyuPinyinOutputFormatCombination {
        StringBuilder sbu = new StringBuilder();

        if (StringUtils.isNotBlank(chinese)) {
            HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
            format.setCaseType(HanyuPinyinCaseType.LOWERCASE);
            format.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
            format.setVCharType(HanyuPinyinVCharType.WITH_U_UNICODE);
            char[] input = chinese.toCharArray();
            for (char n : input) {
                String[] temp = PinyinHelper.toHanyuPinyinStringArray(n, format);
                if (temp != null && temp.length > 0) {
                    String t = temp[0];
                    sbu.append(t.charAt(0));
                } else {
                    sbu.append(n);
                }
            }
        }

        return sbu.toString();
    }
}
