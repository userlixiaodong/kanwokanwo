package cv.focus.core.domain.student.model.profile;

import java.util.List;

/**
 * Created by song on 16/1/23.
 */
public interface StudentProfileRepository {
    StudentProfileId nextId();
    List<StudentProfile> findByOrigPublicUri(String uri);
    List<StudentProfile> findByPublicUri(String uri);
    void store(StudentProfile studentProfile);

    StudentProfile findById(StudentProfileId studentProfileId);

    StudentProfile findByEmail(String email);

    void del(Object obj);

    List<Remark> findRemarksById(String studentProfileId);
}
