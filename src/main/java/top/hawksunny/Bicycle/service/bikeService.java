package top.hawksunny.Bicycle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.Bike;
import java.util.List;

@Service
@Component
public class bikeService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Bike> getList(Integer id) {
        String sql;
        if (id != null) {
            sql = "select * from Bike " + "where id=" + id;
        } else {
            sql = "select * from Bike";
        }
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Bike.class));
    }

    public void add(Bike b) {
        String sql = "insert into Bike(Brand, Type, Color, Status, FromStation) values(?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, b.getBrand(), b.getType(), b.getColor(), b.getStatus(), b.getFromStation());
    }

    public void update(Bike b) {
        String sql = "update Bike set Brand = ?, Type = ?, Color = ?, Status = ?, FromStation = ? where ID = ?";
        jdbcTemplate.update(sql, b.getBrand(), b.getType(), b.getColor(), b.getStatus(), b.getFromStation(), b.getId());
    }

    public void delete(Integer id) {
        String sql = "delete from Bike where ID = ?";
        jdbcTemplate.update(sql, id);
    }
}
