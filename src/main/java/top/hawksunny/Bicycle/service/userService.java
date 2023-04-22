package top.hawksunny.Bicycle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.User;

import java.util.List;

@Service
@Component
public class userService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    // 查询用户列表
    public List<User> getList() {
        String sql = "select * from User";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
    }

    // 新增用户
    public void add(User u) {
        String sql = "insert into User(UserName, Password, Telephone, IsStaff) values(?, ?, ?, ?)";
        jdbcTemplate.update(sql, u.getUserName(), u.getPassword(), u.getTelephone(), u.getIsStaff());
    }

    // 修改用户信息
    public void update(User u) {
        String sql = "update User set UserName = ?, Password = ?, Telephone = ? where UID = ?";
        jdbcTemplate.update(sql, u.getUserName(), u.getPassword(), u.getTelephone(), u.getUid());
    }

    // 删除用户
    public void delete(Integer uid) {
        String sql = "delete from User where UID = ?";
        jdbcTemplate.update(sql, uid);
    }
}
