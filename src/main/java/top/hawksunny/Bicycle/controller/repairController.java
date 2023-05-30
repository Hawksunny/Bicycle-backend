package top.hawksunny.Bicycle.controller;

import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Repair;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.service.repairService;

import java.util.List;

@RestController
@RequestMapping("/repair")
public class repairController {
    private final repairService service;
    private final Response res;

    public repairController(repairService service, Response res) {
        this.service = service;
        this.res = res;
    }

    @GetMapping("/list")
    public @ResponseBody Response getRepairList() {
        List<Repair> result = service.getList();

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addRepair(@RequestBody Repair s) {
        service.add(s);

        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updateRepair(Repair s) {
        service.update(s);

        res.setResult(s);
        res.setSuccess(true);
        res.setMsg("更新成功");

        return res;
    }

    @PostMapping("/delete")
    public @ResponseBody Response deleteRepair(Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }
}
