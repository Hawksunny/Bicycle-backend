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
    private final stationService service;
    private final Response res;

    public stationController(stationService service, Response res) {
        this.service = service;
        this.res = res;
    }

    @RequestMapping("/list")
    public @ResponseBody Response getStationList(@RequestParam Integer pageNumber, @RequestParam Integer pageSize) {
        List<Station> result = service.getList(pageNumber, pageSize);

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/list_by_id")
    public @ResponseBody Response getStationById(@RequestParam Integer id) {
        Station result = service.getStationById(id);

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addStation(@RequestBody Station s) {
        service.add(s);

        res.setResult(null);
        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updateStation(@RequestBody Station s) {
        service.update(s);

        res.setResult(null);
        res.setSuccess(true);
        res.setMsg("更新成功");

        return res;
    }

    @GetMapping("/delete")
    public @ResponseBody Response deleteStation(@RequestParam Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }
}
