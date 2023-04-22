package top.hawksunny.Bicycle.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class Payment {
    private Integer id;
    private Integer orderId;
    private Integer uid;
    private Integer bikeId;
    private Integer total;
    private String payMethod;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private Date payTime;
    private Integer status;
}
