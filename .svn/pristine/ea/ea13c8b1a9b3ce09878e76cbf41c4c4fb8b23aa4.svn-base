package cv.focus.core.domain.user.model;

import java.util.List;

/**
 * Created by Administrator on 2016/8/31.
 */
public interface ReservationRepository {
    void store(Reservation reservation);

    List<Reservation> findByTutorName(String tutorName);

    List<Reservation> findByTutorId(Integer tutorId);

    List<Reservation> findByUserId(Integer userId);

    List<Reservation> findCurrentListByUserId(Integer userId);

    List<Reservation> findHistoryListByUserId(Integer userId);

    List<Reservation> findCurrentListByTutorId(Integer tutorId);

    List<Reservation> findHistoryListByTutorId(Integer tutorId);
}
