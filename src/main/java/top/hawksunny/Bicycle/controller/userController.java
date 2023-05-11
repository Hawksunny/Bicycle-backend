package top.hawksunny.Bicycle.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.entity.User;
import top.hawksunny.Bicycle.service.userService;
import top.hawksunny.Bicycle.utils.JwtUtils;
import top.hawksunny.Bicycle.utils.RedisUtils;

import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/user")
public class userController {
    @Autowired
    private userService service;

    @Autowired
    private Response res;

    @Autowired
    private RedisUtils redisUtils;

    @RequestMapping("/list")
    public @ResponseBody Response getUserList() {
        List<User> result = service.getList();

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/add")
    public @ResponseBody Response addUser(User u) {
        service.add(u);

        res.setResult(u);
        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @RequestMapping("/update")
    public @ResponseBody Response updateUser(User u) {
        service.update(u);

        res.setResult(u);
        res.setSuccess(true);
        res.setMsg("更新成功");

        return res;
    }

    @RequestMapping("/delete")
    public @ResponseBody Response deleteUser(Integer uid) {
        service.delete(uid);

        res.setResult(uid);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }

    @RequestMapping("/login")
    public @ResponseBody Response login(@RequestBody User form, HttpServletResponse response) {
        String username = form.getUsername();
        String password = form.getPassword();

        // 根据用户名查询数据库中有没有该用户
        User user = service.getUserByUsername(username);
        if (user == null) {
            res.setSuccess(false);
            res.setMsg("用户不存在，请注册！");
        } else {
            String password_ = user.getPassword();
            if (Objects.equals(password_, password)) {
                // 生成token并存入redis中，初始有效时间设置为10分钟
                String token = JwtUtils.createToken(username);
                redisUtils.set(token, user, 10L, TimeUnit.MINUTES);
                // 响应体
                response.addCookie(new Cookie("token", token));
                res.setResult(token);
                res.setMsg("登陆成功");
                res.setSuccess(true);
            } else {
                res.setMsg("密码错误！");
                res.setSuccess(false);
            }
        }

        return res;
    }
}
