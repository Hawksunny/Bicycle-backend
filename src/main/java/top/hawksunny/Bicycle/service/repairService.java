package top.hawksunny.Bicycle.service;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.Repair;

import java.util.List;

@Service
@Component
public class repairService {
    private final JdbcTemplate jdbcTemplate;

    public repairService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Repair> getList() {
        String sql = "select * from Repair";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Repair.class));
    }

    public void add(Repair r) {
        String sql = "insert into Repair(BikeID, ReportTime, Reporter, Status) values(?, ?, ?, ?)";
        jdbcTemplate.update(sql, r.getBikeId(), r.getReportTime(), r.getReporter(), r.getStatus());
    }

    public void update(Repair r) {
        String sql = "update Repair set BikeID = ?, ReportTime = ?, Reporter = ?, Status = ? where ID = ?";
        jdbcTemplate.update(sql, r.getBikeId(), r.getReportTime(), r.getReporter(), r.getStatus(), r.getId());
    }

    public void delete(Integer id) {
        String sql = "delete from Repair where ID = ?";
        jdbcTemplate.update(sql, id);
    }
}
