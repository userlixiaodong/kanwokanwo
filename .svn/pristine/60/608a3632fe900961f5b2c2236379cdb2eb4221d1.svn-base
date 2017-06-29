package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.material.Image;
import cv.focus.core.domain.material.MaterialStatus;
import cv.focus.core.domain.material.Video;
import cv.focus.core.domain.student.model.interview2.Interview;
import cv.focus.core.domain.student.model.interview2.InterviewRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"/applicationContext.xml"})
@TransactionConfiguration(defaultRollback = false)
@Transactional
public class InterviewRepositoryHibernateImplTest {
    @Resource
    InterviewRepository interviewRepository;

    @Test
    public void testStore() throws Exception {
        Interview interview = new Interview();
        interview.genPassword();
        interview.setPublicUrl("lcq");
        Video video = new Video();
        Video introVideo = new Video("interview/image/NatGeo1711289994868026.jpg", "interview/video/订单.mp4", MaterialStatus.NORMAL, "");
        Image image = new Image();
        image.setMaterialSrc("interview/image/");
        introVideo.setTitle("test");
        interview.setVideo(introVideo);
        interviewRepository.store(interview);
    }
    @Test
    public void testDelete() throws Exception{
        interviewRepository.deleteByPublicUrl("lcq");
    }

    @Test
    public void testFind() throws Exception{
        Interview interview = interviewRepository.findByPublicUrl("lcq");

        System.out.println(interview.getVideo().getTitle());
        System.out.println(interview.getVideo().getMaterialSrc());
        System.out.println(interview.getPassword());
    }

    @Test
    public void testFindByPublicUrlAndPassword() throws Exception {
        Interview interview = interviewRepository.findByPublicUrlAndPassword("lcq", "6841");
        System.out.println(interview.getPassword());
    }
}