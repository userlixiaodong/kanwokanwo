package cv.focus.common.infrastructure.util.alipay;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *版本：3.4
 *修改日期：2016-03-08
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

	// ↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串，查看地址：https://b.alipay.com/order/pidAndKey.htm
	public static String partner = "2088421887970170";

	// 收款支付宝账号，以2088开头由16位纯数字组成的字符串，一般情况下收款账号就是签约账号
	public static String seller_id = partner;

	// 商户的私钥,需要PKCS8格式，RSA公私钥生成：https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.nBDxfy&treeId=58&articleId=103242&docType=1
	//public static String private_key = "";
	
	  public static String private_key =
	  "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDJJ84dS8iAFDEpwXM6NDugVTrD+xzhd5Yw4IZ2VT1roYT2V7FOS2p8lUcDSCx7g94UB4nihIxx6jp5"+
	  "6lPdfVL/qnI8HlR73NoN631Mwd8+gEGODiD6T5A1JVKH8AIiRx2cecqlKV3nocT5l+e/Xuge7wIOG498RYh5C/wJUbU4M9MWGCcOiNbrNZk5f21MZqmcVIOOYyOiHwsj"+
	 "l9ynMSOpfggyxSFuK0UcnjCPSIZZ6kqriFXsM2X3ilEx+bWwf8lGBVs0zFJS5hxOf2dNFYPXuN1wCzJIU+6c+d0zrqUkbJl06wvuCE6LmZb67Hbfx9X2JOQtBMF2w7Ki"+
	  "RlGvYPsdAgMBAAECggEAc73olei+BBwaMalysKHPUTDZMFzzwDO8AoGePMZNIfn89HV+ussgCXEnPBcyKRu2E5ZG20RjP0SDwxR2jvIGaL9dHYRiHib0fJ/sJ9dBqcfI"+
	 "cIFmrkBLfJjuBPOvdqOuwRM+64uC0b2+BdNG8FEehHYHm7B1/g5QOT4RFheiiyQY4lDwTok7mbLPx50U/gZnCj3eKw0HMhnOD8Ee2zICjBGJYh9xyyjfcs42TQh7nKaS"+
	  "pB5aHcdSNH3B7cjQHYD1y6UAZG5X77fTRVcY4lg96zsGIW6Pp63wEf1OcDJqhrQ0AokAKSSTgyfIbjALMr/mxjE/CWg6jMbuVMnMXGl/bQKBgQDzOAydIEbf2n8GV2BP"+
	  "Glkzzg5kpv4Ut3OLc6fznuS2idtsMvEIC1zyS4wLnI7F8xeBjtjL2beNQKLKgpFSicyC6VbLmPjsplWrkzpU6OWIfp5rkbOeYiROVksECmpZoEK3zYCh98aqcHMM4sWT"+
	  "dYcHr9oe9zAxNn0wA/wKeY/uqwKBgQDTueOTVHrvoAy7/lm3C5kULZHAllP4F31hkzLkOwaM8vbQoO93K2eSB5gifucfrNlSPeIUoZ+QDFCfAz6p8WTVrUs4Qrsf5eeA"+
	  "Ga34qJ/xAWYXHMK9I8G3dCNxi/GDjOqOpFVe3/M5wQpXaL0oDu3bNOfefoX4MCKW/JmF7kidVwKBgAL4/2Z4O4WG5SCNttagqtBwR0rBo79bEqV0r2vR2FfGzZC/+qQv"+
	 "h15KwBZwPmp68yGZPlsXeR/X12WEPQR2PLKo6W+pmflCey+SqBbbldqaOZN0/24DIxB2C4qsGeqog8g9UcIpBhuVLkLNDr8jo5fbdV4FhWhEkzkgA1eZbsHrAoGBAM8U"+
	  "mgxIbXEfhjT84fyRIGjG5S6LGZemSeB8myL0xERpgpOtRGm3DzaZrOfYXO/zHB8/HXd2WN0H3naYMtr+mdQQCWj+g40ATPtSooB5VO3go1xpqeJaLabjtaLh8BbtZaCc"+
	  "BE+mFHthXl79tzyN1YA3760C7L9BPSOV7gY7d9RDAoGBALfXeQUJfJ5pnDZ+bNKkY1gHIfppKWrn9nrAUrnh3o7pFlROvSpnWWhCB1g8RRKChPFXj7q4x8e0mP1E8i3W"+
	  "rZ3wHcY5TJ9k170da1WogdURo3HQ2tSlbRdc7Hf2NNtqk5dw7S+DqU4uNMj/Y1zDWx3IT+0W50iMUIi011NLK6wZ";
	 

	// 支付宝的公钥,查看地址：https://b.alipay.com/order/pidAndKey.htm
	 public static String alipay_public_key ="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB";
	//public static String alipay_public_key = "";
	// 服务器异步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String notify_url = "http://www.kanwokanwo.com/notify_url"; 线上
    //本地
	public static String notify_url = "http://localhost:8080/notify_url";
	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//public static String return_url = "http://www.kanwokanwo.com/return_url"; 线上
	//本地
	public static String return_url = "http://localhost:8080/pay/return_url";
	// 签名方式
	public static String sign_type = "RSA";

	// 调试用，创建TXT日志文件夹路径，见AlipayCore.java类中的logResult(String sWord)打印方法。
	//public static String log_path = "C:\\";

	// 字符编码格式 目前支持 gbk 或 utf-8
	public static String input_charset = "utf-8";

	// 支付类型 ，无需修改
	public static String payment_type = "1";

	// 调用的接口名，无需修改
	public static String service = "create_direct_pay_by_user";

	// ↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

	// ↓↓↓↓↓↓↓↓↓↓ 请在这里配置防钓鱼信息，如果没开通防钓鱼功能，为空即可 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 防钓鱼时间戳 若要使用请调用类文件submit中的query_timestamp函数
	public static String anti_phishing_key = "";

	// 客户端的IP地址 非局域网的外网IP地址，如：221.0.0.1
	public static String exter_invoke_ip = "";

	// ↑↑↑↑↑↑↑↑↑↑请在这里配置防钓鱼信息，如果没开通防钓鱼功能，为空即可 ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

}
