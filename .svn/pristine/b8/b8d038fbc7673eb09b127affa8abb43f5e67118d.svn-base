package cv.focus.core.domain.student.service;

import cv.focus.core.domain.student.model.activity.Activity;
import cv.focus.core.domain.student.model.Badge;
import cv.focus.core.domain.student.model.profile.StudentProfile;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 规则具体参考prd
 * Created by song on 16/1/29.
 */
@Service
public class BadgesService {
    //觉得应该用领域服务来计算徽章，因为对他影响的有StudentProfile对象，Activity对象，后面可能还会有其他的聚合

//    int TOTAL_BADGES = 10;
    public List<Badge> generateBadges(StudentProfile studentProfile, List<Activity> activityList){
        List<Badge> badges = new ArrayList<Badge>();
        badges.add(new Badge("avatar",studentProfile.getBiography().getAvatar() != null && !studentProfile.getBiography().getAvatar().trim().equals("")));//头像
        badges.add(new Badge("biography",studentProfile.hasFinishBiography()));//个人信息
        badges.add(new Badge("examRecord",studentProfile.getExamRecordList() != null && studentProfile.getExamRecordList().size() > 0));//个人成绩
        badges.add(new Badge("introductionVideo",studentProfile.getIntroductionVideo() != null));//个人视频
        badges.add(new Badge("mystory",studentProfile.hasMyStory()));//我的故事
        badges.add(new Badge("honor",studentProfile.hasHonor()));//奖励
        badges.add(new Badge("activity",activityList != null && activityList.size() > 0));
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
            if(title.equals("avatar") || title.equals("biography") || title.equals("examRecord") || title.equals("honor"))
                score += 10;
            else if (title.equals("introductionVideo") || title.equals("mystory") || title.equals("activity"))
                score += 20;
        }
        return score;
    }

}
