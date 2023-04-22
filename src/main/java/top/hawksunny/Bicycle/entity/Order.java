package top.hawksunny.Bicycle.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.Date;

@Data
public class Order {
    private Integer id;
    private Integer paymentId;
    private Integer uid;
    private Integer bikeId;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private Date rentalTime;
    private Integer rentalStation;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private Date backTime;
    private Integer backStation;
    private Integer fee;
}
