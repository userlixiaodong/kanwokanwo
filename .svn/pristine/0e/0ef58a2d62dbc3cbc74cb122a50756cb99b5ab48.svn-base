//package cv.focus.core.application.impl;
//
//import cv.focus.core.application.StudentProfileService;
//import cv.focus.core.domain.student.model.material.*;
//import cv.focus.core.domain.student.model.profile.*;
//import cv.focus.core.domain.user.model.Role;
//import cv.focus.core.domain.user.model.User;
//import junit.framework.TestCase;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//import java.util.ArrayList;
//import java.util.Collections;
//import java.util.List;
//import java.util.UUID;
//
//public class StudentProfileServiceImplTest extends TestCase {
//
//    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
//    StudentProfileRepository studentProfileRepository = (StudentProfileRepository) applicationContext.getBean("studentProfileRepositoryHibernateImpl");
//    StudentProfileService studentProfileService = (StudentProfileService) applicationContext.getBean("studentProfileServiceImpl");
//
//    public void testCreateStudentProfile(){
//        User user = new User("test@qq.com","song","song", Role.STUDENT);
//        StudentProfile studentProfile = studentProfileService.createStudentProfile(user);
////添加mystory
//        MyStory myStory = new MyStory();
//        myStory.setDescription("这是我的故事");
//
//       /* for(int i = 0; i < 2; i++){
//            Material material = new Material(new MaterialId(UUID.randomUUID().toString()));
//            material.setMaterialSrc("12306"+i);
////            if(myStory.getMaterialCollection() == null)
////                myStory.createMaterialCollection();
////            myStory.getMaterialCollection().addMaterial(material);
//        }
//        studentProfile.setMyStory(myStory);*/
////添加introduction
//        Video introduction = new Video();
//        introduction.setMaterialSrc("baidu.com");
//        studentProfileService.addProfileMaterial("lcq@qq.com", MaterialModule.MYSTORY, introduction);
//    }
//
//    public void testCreateStudentProfile2(){
//        //测试生成链接地址
//        User user1 = new User("blilll","szj","pwd", Role.STUDENT);
//        StudentProfile studentProfile = user1.createStudentProfile(studentProfileRepository.nextId());
//        studentProfileRepository.store(studentProfile);
//    }
//
//    public void testGenStudentProfileUri() throws Exception {
//        //测试生成链接地址
//        User user1 = new User("lalallalalal","szj","pwd", Role.STUDENT);
//        studentProfileService.createStudentProfile(user1);
//    }
//
//    public void testAddRemark(){
//        StudentProfile fromUser = new StudentProfile();
//        fromUser.setStudentProfileId(new StudentProfileId("b8452536-d701-490e-8480-b85f8c661ca5"));
//
//        StudentProfile toUser = new StudentProfile();
//        toUser.setStudentProfileId(new StudentProfileId("15c7d8ec-0250-43a8-a3ce-914d0234df03"));
//        String content = "碉堡啦";
//        Remark remark = studentProfileService.addRemark(fromUser,toUser,content);
//        System.out.println(remark);
//    }
//
//    public void testFindRemark(){
//        StudentProfile sp = studentProfileService.findStudentProfileById(new StudentProfileId("15c7d8ec-0250-43a8-a3ce-914d0234df03"));
//        System.out.println(sp.getRemarkList().size());
//    }
//
//    public void testAddActivity() throws Exception {
//
//    }
//
//    public void testAddPersonalDescription() throws Exception {
//
//    }
//
//    public void testAddActivityMaterial() throws Exception {
//
//    }
//
//    public void testFindStudentProfileByPublicUri() throws Exception {
//        StudentProfile studentProfile = studentProfileService.findStudentProfileByPublicUri("song");
//        System.out.println(studentProfile.getMyStory().getDescription());
//
//    }
//}