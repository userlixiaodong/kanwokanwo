package cv.focus.core.domain.user.model;

import java.util.List;

/**
 * Created by song on 16/1/25.
 */
public interface UserRepository {
    User findByEmail(String email);
    void store(User user);

    List<User> findByUserName(String userName);

    User findOnlyUserByUserName(String userName);

    void update(User user);

    User findByMobile(String mobile);

    User findById(Integer userId);

    User findByActiveCode(String activeCode);

    void storeFollow(UserFollow follow);

    UserFollow findByFromIdAndOwnerId(Integer fromId, Integer ownerId);

    void delFollow(UserFollow follow);

    int queryFollowCount(Integer userId);

    List<UserFollow> findUserByFollowUser(Integer userId);

}
