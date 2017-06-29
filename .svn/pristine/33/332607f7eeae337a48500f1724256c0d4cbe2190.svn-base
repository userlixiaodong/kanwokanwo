package cv.focus.core.domain.school.model.profile;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.UUID;

/**
 * Remark
 * 
 * @author liuruichao
 * Created on 2016-04-02 19:19
 */
@Table
@Entity
public class AdmissionRemark extends IdentifiedDomainObject implements ValueObject {
    @Column(length = 20)
    private String title;

    @Embedded
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "fromId")
    private AdmissionProfile from;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ownerId", nullable = false)
    private AdmissionProfile owner;

    public AdmissionRemark() {
    }


    public AdmissionRemark(String title, AdmissionProfile from, AdmissionProfile owner) {
        this.title = title;
        this.from = from;
        this.owner = owner;
        this.setDomainId(UUID.randomUUID().toString());
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public AdmissionProfile getFrom() {
        return from;
    }

    public void setFrom(AdmissionProfile from) {
        this.from = from;
    }

    public AdmissionProfile getOwner() {
        return owner;
    }

    public void setOwner(AdmissionProfile owner) {
        this.owner = owner;
    }
}