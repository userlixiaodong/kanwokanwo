package cv.focus.core.domain.shared;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/1/30.
 */
@javax.persistence.Entity
@Inheritance(strategy= InheritanceType.TABLE_PER_CLASS)
public abstract class IdentifiedDomainObject implements Serializable {
    @Id
//    @GeneratedValue
    private String domainId ;

    public String getDomainId() {
        return domainId;
    }

    public void setDomainId(String domainId) {
        this.domainId = domainId;
    }

    public IdentifiedDomainObject(){

    }
}
