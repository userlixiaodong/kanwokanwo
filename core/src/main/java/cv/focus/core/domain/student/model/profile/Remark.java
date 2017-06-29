package cv.focus.core.domain.student.model.profile;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.*;
import java.util.UUID;

/**
 * Created by song on 16/1/31.
 */
@Table
@Entity
public class Remark extends IdentifiedDomainObject implements ValueObject {

    @Column(length = 20)
    private String title;

    @Embedded
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "fromId")
    private StudentProfile from;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ownerId", nullable = false)
    private StudentProfile owner;


    public Remark() {
    }



    public Remark(String title, StudentProfile from, StudentProfile owner) {
        this.title = title;
        this.from = from;
        this.owner = owner;
        this.setDomainId(UUID.randomUUID().toString());
    }

    public String getTitle() {
        return title;
    }

    public StudentProfile getFrom() {
        return from;
    }


    public StudentProfile getOwner() {
        return owner;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
