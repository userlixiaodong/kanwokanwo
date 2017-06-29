package cv.focus.core.application.impl;

import cv.focus.core.application.ReservationService;
import cv.focus.core.domain.user.model.Reservation;
import cv.focus.core.domain.user.model.ReservationRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/8/31.
 */
@Service
public class ReservationServiceImpl implements ReservationService {
    @Resource
    private ReservationRepository reservationRepositoryHibernateImpl;

    public Reservation createReservation(Integer userId, String userName, Integer tutorId, String tutorName, String tutorSchool,Date reservationTime, int reservationPeriod, String nickname, String mobile, String email, String comments, int state,Date insertTime,Integer cost){
        Reservation reservation = new Reservation(userId,userName,tutorId,tutorName,tutorSchool,reservationTime,reservationPeriod,nickname,mobile,email,comments,state,insertTime,cost);
        reservationRepositoryHibernateImpl.store(reservation);
        return  reservation;
    };

    public List<Reservation> findByTutorName(String tutorName){
        List<Reservation> list = reservationRepositoryHibernateImpl.findByTutorName(tutorName);
        return list;
    };

    public List<Reservation> findByTutorId(Integer tutorId){
        List<Reservation> list = reservationRepositoryHibernateImpl.findByTutorId(tutorId);
        return list;
    }


    public List<Reservation> findByUserId(Integer userId){
        List<Reservation> list = reservationRepositoryHibernateImpl.findByUserId(userId);
        return list;
    }
    public List<Reservation> findCurrentListByTutorId(Integer tutorId){
        List<Reservation> list = reservationRepositoryHibernateImpl.findCurrentListByTutorId(tutorId);
        return list;
    }


    public List<Reservation> findCurrentListByUserId(Integer userId){
        List<Reservation> list = reservationRepositoryHibernateImpl.findCurrentListByUserId(userId);
        return list;
    }

    public List<Reservation> findHistoryListByTutorId(Integer tutorId){
        List<Reservation> list = reservationRepositoryHibernateImpl.findHistoryListByTutorId(tutorId);
        return list;
    }


    public List<Reservation> findHistoryListByUserId(Integer userId){
        List<Reservation> list = reservationRepositoryHibernateImpl.findHistoryListByUserId(userId);
        return list;
    }
}
