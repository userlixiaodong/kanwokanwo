package cv.focus.core.domain.user.model;

import cv.focus.core.domain.shared.IdentifiedDomainObject;
import cv.focus.core.domain.shared.ValueObject;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.UUID;

/**
 * 每人只能赞一次
 * 
 * @author liuruichao
 * Created on 2016-05-22 14:26
 */
@Entity
@Table
public class InformationFavor extends IdentifiedDomainObject implements ValueObject {

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "informationId", nullable = false)
    private Information information;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userId", nullable = false)
    private User user;

    public InformationFavor() {
        setDomainId(UUID.randomUUID().toString());
    }

    public Information getInformation() {
        return information;
    }

    public void setInformation(Information information) {
        this.information = information;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public boolean sameValueAs(Object other) {
        return false;
    }
}
