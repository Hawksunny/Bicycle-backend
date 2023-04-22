package top.hawksunny.Bicycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.entity.Station;
import top.hawksunny.Bicycle.service.stationService;

import java.util.List;

@RestController
@RequestMapping("/station")
public class stationController {
    @Autowired
    private stationService service;
    @Autowired
    private Response res;

    @RequestMapping("/list")
    public @ResponseBody Response getStationList(Integer id) {
        List<Station> result = service.getList(id);

        res.setResult(result);
        res.setCode(200);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addStation(Station s) {
        service.add(s);

        res.setResult(s);
        res.setCode(200);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updateStation(Station s) {
        service.update(s);

        res.setResult(s);
        res.setCode(200);
        res.setMsg("更新成功");

        return res;
    }

    @PostMapping("/delete")
    public @ResponseBody Response deleteStation(Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setCode(200);
        res.setMsg("删除成功");

        return res;
    }
}
