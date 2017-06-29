package cv.focus.core.domain.material;

import javax.persistence.Entity;

/**
 * Created by song on 16/1/23.
 */
@Entity
public final class Document extends Material{
    //包括 txt、pdf、doc等
    public Document(String materialSrc, MaterialStatus status){
        super(materialSrc, status, MaterialType.DOC);
        if(getStatus()==null)
            setStatus(MaterialStatus.NORMAL);
    }
    public Document(){}
}
