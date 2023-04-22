package top.hawksunny.Bicycle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.Payment;
import java.util.List;

@Service
@Component
public class paymentService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Payment> getList() {
        String sql = "select * from Payment";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Payment.class));
    }

    public void add(Payment p) {
        String sql = "insert into Payment(OrderID, UID, BikeID, Total, PayMethod, PayTime, Status) values(?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, p.getOrderId(), p.getUid(), p.getBikeId(), p.getTotal(), p.getPayMethod(), p.getPayTime(), p.getStatus());
    }

    public void update(Payment p) {
        String sql = "update Payment set OrderID = ?, UID = ?, BikeID = ?, Total = ?, PayMethod = ?, PayTime = ?, Status = ? where ID = ?";
        jdbcTemplate.update(sql, p.getOrderId(), p.getUid(), p.getBikeId(), p.getTotal(), p.getPayMethod(), p.getPayTime(), p.getStatus(), p.getId());
    }

    public void delete(Integer id) {
        String sql = "delete from Payment where ID = ?";
        jdbcTemplate.update(sql, id);
    }
}
