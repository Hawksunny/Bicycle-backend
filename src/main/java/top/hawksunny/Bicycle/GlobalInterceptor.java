package top.hawksunny.Bicycle;


import com.alibaba.fastjson.JSON;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.utils.RedisUtils;

import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

@Component
public class GlobalInterceptor implements HandlerInterceptor {
    @Autowired
    private RedisUtils redisUtils;

    @Autowired
    private Response res;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 获取请求cookie中的token
        String token = null;
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("token".equals(cookie.getName())) {
                    token = cookie.getValue();
                    break;
                }
            }
        }

        // 如果token没过期，则延长过期时间
        if (token != null) {
            Object obj = redisUtils.get(token);
            if (obj != null) {
                redisUtils.set(token, obj, 3L, TimeUnit.MINUTES);
                return true;
            }
        }

        // 处理token所有不合法情况
        res.setMsg("用户未登陆或登陆状态已过期");
        res.setSuccess(false);
        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        response.setContentType("application/json;charset=utf-8");
        PrintWriter responseBody = response.getWriter();
        responseBody.write(JSON.toJSONString(res));
        responseBody.flush();

        return false;
    }
}
