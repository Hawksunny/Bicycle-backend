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
    private final bikeService service;
    private final Response res;

    public bikeController(bikeService service, Response res) {
        this.service = service;
        this.res = res;
    }

    @RequestMapping("/list_all")
    public @ResponseBody Response getAllBikes() {
        List<Bike> result = service.getAllBike();

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/list_by_sid")
    public @ResponseBody Response getBikeListBySid(@RequestParam Integer sid) {
        List<Bike> result = service.getListBySid(sid);

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/list_by_id")
    public @ResponseBody Response getBikeListById(@RequestParam Integer id) {
        Bike result = service.getListById(id);

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addBike(@RequestBody Bike b) {
        service.add(b);

        res.setResult(b);
        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updateBike(@RequestBody Bike b) {
        service.update(b);

        res.setResult(b);
        res.setSuccess(true);
        res.setMsg("更新成功");

        return res;
    }

    @GetMapping("/delete")
    public @ResponseBody Response deleteBike(@RequestParam Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }
}
