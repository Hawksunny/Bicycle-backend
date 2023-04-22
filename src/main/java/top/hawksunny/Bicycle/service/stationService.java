package top.hawksunny.Bicycle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.Station;

import java.util.List;

@Service
@Component
public class stationService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Station> getList(Integer id) {
        String sql = "select * from Station";
        if (id != null)  sql = "select * from Station where id=" + id;
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Station.class));
    }

    public void add(Station s) {
        String sql = "insert into Station(StationName, Address, Capacity) values(?, ?, ?)";
        jdbcTemplate.update(sql, s.getStationName(), s.getAddress(), s.getCapacity());
    }

    public void update(Station s) {
        String sql = "update Station set StationName = ?, Address = ?, Capacity = ? where ID = ?";
        jdbcTemplate.update(sql, s.getStationName(), s.getAddress(), s.getCapacity(), s.getId());
    }

    public void delete(Integer id) {
        String sql = "delete from Station where ID = ?";
        jdbcTemplate.update(sql, id);
    }
}
