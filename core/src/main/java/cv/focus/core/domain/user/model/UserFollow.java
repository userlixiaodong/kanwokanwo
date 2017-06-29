package cv.focus.core.domain.user.model;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.util.UUID;

/**
 * 用户关注
 * 
 * @author liuruichao
 * Created on 2016-05-22 14:06
 */
@Entity
@Table
public class UserFollow extends IdentifiedDomainObject implements ValueObject {

    @OneToOne(fetch= FetchType.LAZY)
    @JoinColumn(name = "fromId", nullable = false)
    private User from;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ownerId", nullable = false)
    private User owner;

    public UserFollow() {
        this.setDomainId(UUID.randomUUID().toString());
    }

    public User getFrom() {
        return from;
    }

    public void setFrom(User from) {
        this.from = from;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
