package cv.focus.core.infrastructure.persistence.hibernate.impl;

import cv.focus.core.domain.user.model.Reservation;
import cv.focus.core.domain.user.model.ReservationRepository;
import cv.focus.core.infrastructure.persistence.hibernate.HibernateRepository;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/8/31.
 */
@Repository
public class ReservationRepositoryHibernateImpl extends HibernateRepository implements ReservationRepository{

   public void store(Reservation reservation){
       getSession().saveOrUpdate(reservation);
   };

    public List<Reservation> findByTutorName(String tutorName){
        Query query = getSession().createQuery("from Reservation where tutorName = :tutorName order by reservationTime");
        query.setParameter("tutorName",tutorName);
        List<Reservation> list = query.list();
        return list;
    };

    public List<Reservation> findByTutorId(Integer tutorId){
        Query query = getSession().createQuery("from Reservation where tutorId = :tutorId order by reservationTime ");
        query.setParameter("tutorId",tutorId);
        List<Reservation> list = query.list();
        return list;
    };

    public List<Reservation> findByUserId(Integer userId){
        Query query = getSession().createQuery("from Reservation where userId = :userId order by reservationTime ");
        query.setParameter("userId",userId);
        List<Reservation> list = query.list();
        return list;
    };

    public List<Reservation> findCurrentListByUserId(Integer userId){
        Query query = getSession().createQuery("from Reservation where userId = :userId and reservationTime >= NOW() order by reservationTime ");
        query.setParameter("userId",userId);
        List<Reservation> list = query.list();
        return list;
    };

    public List<Reservation> findHistoryListByUserId(Integer userId){
        Query query = getSession().createQuery("from Reservation where userId = :userId and reservationTime < NOW() order by reservationTime desc ");
        query.setParameter("userId",userId);
        List<Reservation> list = query.list();
        return list;
    };

    public List<Reservation> findCurrentListByTutorId(Integer tutorId){
        Query query = getSession().createQuery("from Reservation where tutorId = :tutorId and reservationTime >= NOW() order by reservationTime ");
        query.setParameter("tutorId",tutorId);
        List<Reservation> list = query.list();
        return list;
    };

    public List<Reservation> findHistoryListByTutorId(Integer tutorId){
        Query query = getSession().createQuery("from Reservation where tutorId = :tutorId and reservationTime < NOW() order by reservationTime desc ");
        query.setParameter("tutorId",tutorId);
        List<Reservation> list = query.list();
        return list;
    };


}
