package top.hawksunny.Bicycle;

import com.alibaba.fastjson.JSON;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import top.hawksunny.Bicycle.entity.Response;

import java.io.IOException;
import java.io.PrintWriter;

@ControllerAdvice
public class GlobalExceptionHandler {
    private final Response res;

    public GlobalExceptionHandler(Response res) {
        this.res = res;
    }

    @ExceptionHandler(value = Exception.class)
    public Response exceptionHandler(HttpServletResponse r, Exception e) throws IOException {
        // 控制台打印异常信息
        e.printStackTrace();
        // 设置浏览器响应码为 500
        r.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        // 返回异常信息
        res.setMsg("服务器异常: " + e.getMessage());
        res.setSuccess(false);
        res.setResult(new Object());
        PrintWriter rb = r.getWriter();
        rb.write(JSON.toJSONString(res));
        rb.flush();

        return res;
    }

}
