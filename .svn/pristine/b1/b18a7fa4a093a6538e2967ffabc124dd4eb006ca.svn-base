//package cv.focus.core.infrastructure.persistence.hibernate.impl;
//
//import cv.focus.core.domain.student.model.material.*;
//import cv.focus.core.domain.student.model.profile.*;
//import junit.framework.TestCase;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.ClassPathXmlApplicationContext;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.UUID;
//
//public class StudentProfileRepositoryHibernateImplTest extends TestCase {
//
//    ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
//    StudentProfileRepository studentProfileRepository = (StudentProfileRepository) applicationContext.getBean("studentProfileRepositoryHibernateImpl");
//
//    public void testFindByPublicUri() throws Exception {
////        StudentProfile studentProfile = studentProfileRepository.findById(new StudentProfileId("a8bf2e4f-cf37-451d-8d59-d25efbdbd5a6"));
////        System.out.println(studentProfile.getMyStory().getMaterialCollection().getMaterials().get(0).getMaterialSrc());
////        System.out.println(studentProfile.getPortfolio().getMaterialCollection().getMaterials().get(0).getMaterialSrc());
//    }
//
//    public void testSaveIntroduction() {
////        StudentProfile studentProfile = studentProfileRepository.findById(new StudentProfileId("59fce7f8-6ed7-4180-9bb7-1feb92a9103b"));
////        Material material = new Material(new MaterialId(UUID.randomUUID().toString()));
////        material.setType(MaterialType.DOC);
////        material.setMaterialSrc("jjj.com");
////        studentProfile.setIntroductionVideo(material);
////        studentProfileRepository.store(studentProfile);
//
//
//    }
//
//    public void testSave() throws Exception {
//        StudentProfile studentProfile = new StudentProfile(new StudentProfileId("110"), "szj");
//        MyStory myStory = new MyStory();
//
//
//        myStory.setDescription("aaaa");
//        List<Material> list = new ArrayList<Material>();
//        List<Material> list1 = new ArrayList<>();
//        for (int i = 0; i < 10; i++) {
//            Material material = new Material(new MaterialId(UUID.randomUUID().toString()));
//            material.setType(MaterialType.VIDEO);
//            material.setMaterialSrc("baidu.com"+i);
//            list = MaterialListUtil.addMaterial(list,material);
//            material = new Material(new MaterialId(UUID.randomUUID().toString()));
//            material.setType(MaterialType.VIDEO);
//            material.setMaterialSrc("google.com"+i);
//            list1 = MaterialListUtil.addMaterial(list1,material);
//        }
//
//        myStory.setMaterials(list);
//        studentProfile.setMyStory(myStory);
//
//        Portfolio portfolio = new Portfolio();
//        portfolio.setMaterials(list1);
//        studentProfile.setPortfolio(portfolio);
//        studentProfileRepository.store(studentProfile);
//
//    }
//
//    public void testSortList() throws Exception {
//        testSave();
//        StudentProfile studentProfile = studentProfileRepository.findById(new StudentProfileId("110"));
//        List list = studentProfile.getMyStory().getMaterials();
//        list = MaterialListUtil.exchangeMaterialLocation(list, 0, 5);
//        studentProfile.getMyStory().setMaterials(list);
//        studentProfileRepository.store(studentProfile);
//    }
//}