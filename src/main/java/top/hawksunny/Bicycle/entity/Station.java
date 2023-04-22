package top.hawksunny.Bicycle.entity;

import lombok.Data;

@Data
public class Station {
    private Integer id;
    private String stationName;
    private String address;
    private Integer capacity;
}
