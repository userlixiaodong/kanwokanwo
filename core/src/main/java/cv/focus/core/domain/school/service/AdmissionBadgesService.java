package cv.focus.core.domain.school.service;

import cv.focus.core.domain.school.model.profile.AdmissionProfile;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.interfaces.school.dto.AdActivityDTO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * BadgesService
 * 
 * @author liuruichao
 * Created on 2016-04-04 18:08
 */
@Service
public class AdmissionBadgesService {
    public List<Badge> generateBadges(AdmissionProfile admissionProfile, List<AdActivityDTO> activityList) {
        List<Badge> badges = new ArrayList<Badge>();
        badges.add(new Badge("avatar", admissionProfile.getBiography().getAvatar() != null
                && !admissionProfile.getBiography().getAvatar().trim().equals("")));//头像
        badges.add(new Badge("biography", admissionProfile.hasFinishBiography()));//个人信息
        badges.add(new Badge("introductionVideo", admissionProfile.getIntroductionVideo() != null));//学校视频
        badges.add(new Badge("myschool", admissionProfile.hasMySchool()));//我的故事
        badges.add(new Badge("activity", activityList != null && activityList.size() > 0));
        return badges;
    }

    public int calculateCompletion(List<Badge> badges){
        int score = 0;
        for(Badge badge : badges){
            String title = badge.getTitle();
            boolean status = badge.isStatus();
            if(!status){
                continue;
            }
            switch (title) {
                case "avatar":
                    score += 10;
                    break;
                case "biography":
                case "activity":
                case "myschool":
                    score += 20;
                    break;
                case "introductionVideo":
                    score += 30;
                    break;
            }
        }
        return score;
    }
}
