package top.hawksunny.Bicycle.entity;

import lombok.Data;

@Data
public class User {
    private Integer uid;
    private  String userName;
    private  String password;
    private String telephone;
    private Boolean isStaff;
}
