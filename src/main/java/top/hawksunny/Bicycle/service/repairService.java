package top.hawksunny.Bicycle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.Repair;
import java.util.List;

@Service
@Component
public class repairService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Repair> getList() {
        String sql = "select * from Repair";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Repair.class));
    }

    public void add(Repair r) {
        String sql = "insert into Repair(BikeID, ReportTime, ReporterID, IsRepaired) values(?, ?, ?, ?)";
        jdbcTemplate.update(sql, r.getBikeId(), r.getReportTime(), r.getReporterId(), r.getIsRepaired());
    }

    public void update(Repair r) {
        String sql = "update Repair set BikeID = ?, ReportTime = ?, ReporterID = ?, IsRepaired = ? where ID = ?";
        jdbcTemplate.update(sql, r.getBikeId(), r.getReportTime(), r.getReporterId(), r.getIsRepaired(), r.getId());
    }

    public void delete(Integer id) {
        String sql = "delete from Repair where ID = ?";
        jdbcTemplate.update(sql, id);
    }
}
