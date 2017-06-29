package cv.focus.core.domain.user.model;

import java.util.List;

/**
 * InformationRepository
 * 
 * @author liuruichao
 * Created on 2016-05-23 13:08
 */
public interface InformationRepository {

    void store(Information information);


    Information findById(Integer informationId);

    InformationFavor findFavor(Integer informationId, Integer userId);

    void storeFavor(InformationFavor favor);

    void delFavor(InformationFavor favor);

    List<Information> findInformationByUserId(Integer userId, Integer startIndex, Integer maxResulte);

    Integer queryMsgBySenderAndReciverCount(Integer userId);

    List<Information> findInformationByFollowSchool(Integer userId, Integer startIndex, Integer pageSize);

    Integer queryCountByFollowSchool(Integer userId);
}
