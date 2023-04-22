package top.hawksunny.Bicycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.entity.Order;
import top.hawksunny.Bicycle.service.orderService;

import java.util.List;

@RestController
@RequestMapping("/order")
public class orderController {
    @Autowired
    private orderService service;
    @Autowired
    private Response res;

    @RequestMapping("/list")
    public @ResponseBody Response getOrderList() {
        List<Order> result = service.getList();

        res.setResult(result);
        res.setCode(200);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/add")
    public @ResponseBody Response addOrder(Order s) {
        service.add(s);
        res.setResult(s);
        res.setCode(200);
        res.setMsg("新增成功");

        return res;
    }

    @RequestMapping("/update")
    public @ResponseBody Response updateOrder(Order s) {
        service.update(s);

        res.setResult(s);
        res.setCode(200);
        res.setMsg("更新成功");

        return res;
    }

    @RequestMapping("/delete")
    public @ResponseBody Response deleteOrder(Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setCode(200);
        res.setMsg("删除成功");

        return res;
    }
}

