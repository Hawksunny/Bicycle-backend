package top.hawksunny.Bicycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.entity.User;
import top.hawksunny.Bicycle.service.userService;

import java.util.List;

@RestController
@RequestMapping("/user")
public class userController {
    @Autowired
    private userService service;
    @Autowired
    private Response res;

    @RequestMapping("/list")
    public @ResponseBody Response getUserList() {
        List<User> result = service.getList();

        res.setResult(result);
        res.setCode(200);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/add")
    public @ResponseBody Response addUser(User u) {
        service.add(u);

        res.setResult(u);
        res.setCode(200);
        res.setMsg("新增成功");

        return res;
    }

    @RequestMapping("/update")
    public @ResponseBody Response updateUser(User u) {
        service.update(u);

        res.setResult(u);
        res.setCode(200);
        res.setMsg("更新成功");

        return res;
    }

    @RequestMapping("/delete")
    public @ResponseBody Response deleteUser(Integer uid) {
        service.delete(uid);

        res.setResult(uid);
        res.setCode(200);
        res.setMsg("删除成功");

        return res;
    }
}
