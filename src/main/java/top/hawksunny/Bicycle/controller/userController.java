package top.hawksunny.Bicycle.controller;

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
    private final userService service;

    private final Response res;

    private final RedisUtils redisUtils;

    public userController(Response res, userService service, RedisUtils redisUtils) {
        this.res = res;
        this.service = service;
        this.redisUtils = redisUtils;
    }

    @RequestMapping("/list")
    public @ResponseBody Response getUserList(Integer pageNumber, Integer pageSize) {
        List<User> result = service.getList(pageNumber, pageSize);

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/add")
    public @ResponseBody Response addUser(@RequestBody User u) {
        service.add(u);

        res.setResult(null);
        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @RequestMapping("/delete")
    public @ResponseBody Response deleteUser(Integer uid) {
        service.delete(uid);

        res.setResult(null);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }

    @RequestMapping("/login")
    public @ResponseBody Response login(@RequestBody User form) {
        Integer uid = form.getUid();
        String password = form.getPassword();

        // 根据用户名查询数据库中有没有该用户
        User user = service.getUserByUid(uid);
        if (user == null) {
            res.setResult(null);
            res.setMsg("用户不存在，请注册！");
            res.setSuccess(false);
        } else {
            String password_ = user.getPassword();
            if (Objects.equals(password_, password)) {
                // 生成token并存入redis中，并设置初始有效时间
                String token = JwtUtils.createToken(String.valueOf(uid));
                redisUtils.set(token, user, 30L, TimeUnit.MINUTES);
                // 响应体
                res.setResult(user);
                res.setMsg(token);
                res.setSuccess(true);
            } else {
                res.setResult(null);
                res.setMsg("密码错误！");
                res.setSuccess(false);
            }
        }

        return res;
    }

    @GetMapping("/auth")
    public @ResponseBody Response auth(@RequestParam String token) {
        Object obj = redisUtils.get(token);
        if (obj != null) {
            redisUtils.set(token, obj, 30L, TimeUnit.MINUTES);
            res.setSuccess(true);
            res.setMsg("token未过期，且已为期延长过期时间");
            res.setResult(null);
        } else {
            res.setSuccess(false);
            res.setMsg("token已过期，请重新登录");
            res.setResult(null);
        }

        return res;
    }

    @GetMapping("/modify_base")
    public @ResponseBody Response modifyBase(@RequestParam String username, @RequestParam String telephone, @RequestParam Integer uid) {
        service.updateBaseInfo(username, telephone, uid);
        res.setSuccess(true);
        res.setMsg("成功更新" + username + "的基本信息");
        res.setResult(null);

        return res;
    }

    @PostMapping("/modify_passwd")
    public @ResponseBody Response modifyBase(@RequestBody User u) {
        service.updatePasswd(u.getPassword(), u.getUid());
        res.setSuccess(true);
        res.setMsg("成功修改密码");
        res.setResult(null);

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response update(@RequestBody User u) {
        service.update(u);
        res.setSuccess(true);
        res.setMsg("更新成功");
        res.setResult(null);

        return res;
    }
}
