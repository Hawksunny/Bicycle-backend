package top.hawksunny.Bicycle.service;

import ch.qos.logback.core.rolling.SizeAndTimeBasedRollingPolicy;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import top.hawksunny.Bicycle.entity.User;

import java.util.List;

@Service
@Component
public class userService {
    private final JdbcTemplate jdbcTemplate;

    public userService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // 查询用户列表
    public List<User> getList(@RequestParam int pageNumber, @RequestParam int pageSize) {
        int startIndex = (pageNumber - 1) * pageSize;
        String sql = "SELECT * FROM user LIMIT ?, ?";
        return jdbcTemplate.query(sql, new Object[]{startIndex, pageSize}, new BeanPropertyRowMapper<>(User.class));
    }

    // 新增用户
    public void add(User u) {
        String sql = "insert into User(UserName, Password, Telephone, IsStaff) values(?, ?, ?, ?)";
        jdbcTemplate.update(sql, u.getUsername(), u.getPassword(), u.getTelephone(), u.getIsStaff());
    }

    // 修改用户信息
    public void update(User u) {
        Integer uid = u.getUid();
        String username = u.getUsername();
        String password = u.getPassword();
        String telephone = u.getTelephone();
        Boolean isStaff = u.getIsStaff();
        String sql = "update User set UserName = ?, Password = ?, Telephone = ?, IsStaff = ? where UID = ?";
        jdbcTemplate.update(sql, username, password, telephone, isStaff, uid);
    }

    public void updateBaseInfo(String username, String telephone, Integer uid) {
        String sql = "update User set UserName = ?, Telephone = ? where UID = ?";
        jdbcTemplate.update(sql, username, telephone, uid);
    }

    public void updatePasswd(String password, Integer uid) {
        String sql = "update User set Password = ? where UID = ?";
        jdbcTemplate.update(sql, password, uid);
    }

    // 删除用户
    public void delete(Integer uid) {
        String sql = "delete from User where UID = ?";
        jdbcTemplate.update(sql, uid);
    }

    // 根据UID查询用户
    public User getUserByUid(Integer uid) {
        try {
            String sql = "SELECT * FROM User WHERE uid = ?";
            return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), uid);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
}
