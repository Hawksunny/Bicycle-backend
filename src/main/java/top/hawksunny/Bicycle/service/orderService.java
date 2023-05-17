package top.hawksunny.Bicycle.service;

import org.apache.ibatis.ognl.ObjectElementsAccessor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import top.hawksunny.Bicycle.entity.Order;
import java.util.List;

@Service
@Component
public class orderService {
    private final JdbcTemplate jdbcTemplate;

    public orderService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<Order> getListByUid(Integer uid) {
        String sql = "select * from `Order` where UID = ?";
        return jdbcTemplate.query(sql, new Object[]{uid}, new BeanPropertyRowMapper<>(Order.class));
    }

    public void add(Order o) {
        String sql = "insert into `Order`(PaymentID, UID, BikeID, RentalTime, RentalStation, BackTime, BackStation, Fee) values(?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sql, o.getPaymentId(), o.getUid(), o.getBikeId(), o.getRentalTime(), o.getRentalStation(), o.getBackTime(), o.getBackStation(), o.getFee());
    }

    public void update(Order o) {
        String sql = "update `Order` set PaymentID = ?, UID = ?, BikeID = ?, RentalTime = ?, RentalStation = ?, BackTime = ?, BackStation = ?, Fee = ? where ID = ?";
        jdbcTemplate.update(sql, o.getPaymentId(), o.getUid(), o.getBikeId(), o.getRentalTime(), o.getRentalStation(), o.getBackTime(), o.getBackStation(), o.getFee(), o.getId());
    }

    public void delete(Integer id) {
        String sql = "delete from `Order` where ID = ?";
        jdbcTemplate.update(sql, id);
    }
}
