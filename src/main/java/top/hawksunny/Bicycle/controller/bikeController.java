package top.hawksunny.Bicycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Bike;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.service.bikeService;

import java.util.List;

@RestController
@RequestMapping("/bike")
public class bikeController {
    @Autowired
    private bikeService service;
    @Autowired
    private Response res;

    @RequestMapping("/list")
    public @ResponseBody Response getBikeList(Integer id) {
        List<Bike> result = service.getList(id);

        res.setResult(result);
        res.setCode(200);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addBike(Bike b) {
        service.add(b);

        res.setResult(b);
        res.setCode(200);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updateBike(Bike b) {
        service.update(b);

        res.setResult(b);
        res.setCode(200);
        res.setMsg("更新成功");

        return res;
    }

    @PostMapping("/delete")
    public @ResponseBody Response deleteBike(Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setCode(200);
        res.setMsg("删除成功");

        return res;
    }
}
