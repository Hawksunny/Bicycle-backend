package top.hawksunny.Bicycle.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Timestamp;

@Data
public class Repair {
    private Integer id;
    private Integer bikeId;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private Timestamp reportTime;
    private Integer reporter;
    private Boolean status;
}
