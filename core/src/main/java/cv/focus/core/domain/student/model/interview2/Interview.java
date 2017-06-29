package cv.focus.core.domain.student.model.interview2;

import cv.focus.core.domain.material.Image;
import cv.focus.core.domain.material.Video;
import cv.focus.core.domain.shared.Entity;

import javax.persistence.*;
import java.util.UUID;

/**
 * Created by song on 16/5/5.
 */
@javax.persistence.Entity
@Table
public class Interview implements Entity {
    @Id @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    public Long getId() { return id; }
    @Column
    private String password;

    @OneToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private Video video;

    @OneToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL)
    private Image image;

    @Column
    private Integer userId;


    @Column
    private String publicUrl;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Override
    public boolean sameIdentityAs(Object other) {
        return false;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public void genPassword(){
        this.setPassword(UUID.randomUUID().toString().substring(0,4));
    }

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public String getPublicUrl() {
        return publicUrl;
    }

    public void setPublicUrl(String publicUrl) {
        this.publicUrl = publicUrl;
    }
}
