package cv.focus.core.application;

import cv.focus.core.domain.user.model.Reservation;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/8/31.
 */
public interface ReservationService {
    Reservation createReservation(Integer userId, String userName, Integer tutorId, String tutorName, String tutorSchool,Date reservationTime, int reservationPeriod, String nickname, String mobile, String email, String comments, int state, Date insertTime,Integer cost);

    List<Reservation> findByTutorName(String tutorName);

    List<Reservation> findByTutorId(Integer tutorId);

    List<Reservation> findByUserId(Integer userId);

    List<Reservation> findCurrentListByTutorId(Integer tutorId);

    List<Reservation> findCurrentListByUserId(Integer userId);

    List<Reservation> findHistoryListByTutorId(Integer tutorId);

    List<Reservation> findHistoryListByUserId(Integer userId);
}
