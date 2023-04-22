package top.hawksunny.Bicycle;

import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import top.hawksunny.Bicycle.entity.Response;

@ControllerAdvice
public class GlobalExceptionHandler {
    @Autowired
    private Response res;

    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public Response exceptionHandler(HttpServletResponse r, Exception e) {
        // 控制台打印异常信息
        e.printStackTrace();
        // 设置浏览器响应码为 500
        r.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        // 返回异常信息
        res.setMsg("服务器异常: " + e.getMessage());
        res.setCode(500);
        res.setResult(new Object());
        return res;
    }

}
