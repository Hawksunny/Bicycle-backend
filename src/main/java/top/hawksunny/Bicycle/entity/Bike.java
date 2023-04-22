package top.hawksunny.Bicycle.entity;

import lombok.Data;

@Data
public class Bike {
    Integer id;
    String brand;
    String type;
    String color;
    Integer status;
    Integer fromStation;
}
