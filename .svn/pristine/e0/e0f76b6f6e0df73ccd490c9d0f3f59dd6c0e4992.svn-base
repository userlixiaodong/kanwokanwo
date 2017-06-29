//package cv.focus.core.domain.student.model.material;
//
//import cv.focus.core.application.StudentProfileService;
//import cv.focus.core.domain.student.model.profile.StudentProfile;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.test.context.transaction.TransactionConfiguration;
//import org.springframework.transaction.annotation.Transactional;
//
//import javax.annotation.Resource;
//import javax.persistence.InheritanceType;
//
//import static org.junit.Assert.*;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations={"/applicationContext.xml"})
//@TransactionConfiguration(defaultRollback = false)
//@Transactional
//public class MaterialFactoryTest {
//
//    @Resource
//    StudentProfileService studentProfileService;
//
//    @Test
//    public void testCreateMaterial() throws Exception {
//        Material material = MaterialFactory.createMaterial(MaterialType.DOC, "title","aa", MaterialStatus.NORMAL);
//        System.out.println(material instanceof  Image);
//        System.out.println(material instanceof  Document);
//        System.out.println(material instanceof  Video);
//
//    }
//
//    @Test
//    public void testCreateMaterial1() throws Exception {
//        Material material = MaterialFactory.createMaterial("title", "aa", "aa", MaterialStatus.NORMAL, MaterialType.DOC, "");
//
//        System.out.println(material instanceof  Image);
//        System.out.println(material instanceof  Document);
//        System.out.println(material instanceof  Video);
//
//    }
//    @Test
//    public void testVideoType(){
//        StudentProfile studentProfile = studentProfileService.findByEmail("lcq@qq.com");
//        for(Material ma : studentProfile.getMyStory().getMaterials()){
//            System.out.println(ma.getType());
//            if(ma instanceof Video){
//                System.out.println(1111);
//            }
//        }
//
//    }
//}