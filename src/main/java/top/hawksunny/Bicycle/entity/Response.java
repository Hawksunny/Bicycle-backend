package top.hawksunny.Bicycle.entity;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class Response {
    private String msg;
    private Boolean success;
    private Object result;
}
