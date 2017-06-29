package cv.focus.core.domain.material;

import javax.persistence.Entity;

/**
 * Created by song on 16/1/23.
 */
@Entity
public final class Image extends Material{
    public Image(String materialSrc, MaterialStatus status){
        super(materialSrc, status, MaterialType.IMG);
        if(getStatus()==null)
            setStatus(MaterialStatus.NORMAL);
    }
    public Image(){}

}
