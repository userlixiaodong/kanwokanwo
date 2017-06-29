package cv.focus.core.interfaces;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@Controller
public class HelloWorldController {
    private Random random = new Random();

    /*@RequestMapping("/testi18n")
    public String testi18n() {
        return "wechat/register";
    }*/

    @RequestMapping("/hello")
    public ModelAndView welcomeMessage(
            @RequestParam(value = "name", required = false) String name) {
        // Name of your jsp file as parameter
        ModelAndView view = new ModelAndView("oauth/callback");
        view.addObject("name", name);
        return view;
    }
    @RequestMapping("/marionette")
    public ModelAndView viewProfile() {
        // Name of your jsp file as parameter
        ModelAndView view = new ModelAndView("marionette/viewProfile");
//        view.addObject("name", name);
        return view;
    }

    @RequestMapping("/sendMobileRandomCode")
    public void sendMobileRandomCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("image/jpeg");
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        HttpSession session = request.getSession();

        int width = 85, height =28;

        BufferedImage image = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);


        // 获取图形上下文
        Graphics g = image.getGraphics();

        // 生成随机类

        // 设定背景色
        g.setColor(new Color(124,124,124,255));
        g.fillRect(0, 0, width, height);

        // 设定字体
        g.setFont(new Font("Times New Roman", Font.PLAIN, 27));

        // 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
        for (int i = 0; i < 155; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(12);
            int yl = random.nextInt(12);
            g.drawLine(x, y, x + xl, y + yl);
        }

        // 取随机产生的认证码(4位数字)
        String sRand = "";
        for (int i = 0; i < 4; i++) {
            String rand = String.valueOf(random.nextInt(10));
            sRand += rand;
            // 将认证码显示到图象中
            Random random1 = new Random();
            int ri=random1.nextInt(4);
            if(0==ri){

            g.setColor(new Color(162,162,162,255));
            }
            if(1==ri){
            	 g.setColor(new Color(56,56,56,255));
                }
            if(2==ri){
                g.setColor(new Color(255,255,255,255));
                }
            if(3==ri){
                g.setColor(new Color(56,56,56,255));
                }
            // 调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成
            g.drawString(rand, 16*i + 10, 23);
        }

        // 将认证码存入SESSION
        session.setAttribute("sendMobileVerify", sRand);
        //ActionContext.getContext().getSession().put(RandomCodeAction.RAND_CODE_NAME, sRand);

        // 图象生效
        g.dispose();

        ImageIO.write(image, "PNG", response.getOutputStream());
        response.getOutputStream().flush();
        response.getOutputStream().close();
    }
}