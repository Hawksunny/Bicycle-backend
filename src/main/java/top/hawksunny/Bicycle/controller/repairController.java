package top.hawksunny.Bicycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.entity.Repair;
import top.hawksunny.Bicycle.service.repairService;

import java.util.List;

@RestController
@RequestMapping("/repair")
public class repairController {
    @Autowired
    private repairService service;
    @Autowired
    private Response res;

    @GetMapping("/list")
    public @ResponseBody Response getRepairList() {
        List<Repair> result = service.getList();

        res.setResult(result);
        res.setCode(200);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addRepair(Repair s) {
        service.add(s);

        res.setResult(s);
        res.setCode(200);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updateRepair(Repair s) {
        service.update(s);

        res.setResult(s);
        res.setCode(200);
        res.setMsg("更新成功");

        return res;
    }

    @PostMapping("/delete")
    public @ResponseBody Response deleteRepair(Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setCode(200);
        res.setMsg("删除成功");

        return res;
    }
}
