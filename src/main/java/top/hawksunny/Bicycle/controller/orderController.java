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
    private final orderService service;
    private final Response res;

    public orderController(orderService service, Response res) {
        this.service = service;
        this.res = res;
    }

    @RequestMapping("/list_by_uid")
    public @ResponseBody Response getOrderListByUid(@RequestParam Integer uid) {
        List<Order> result = service.getListByUid(uid);

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @RequestMapping("/add")
    public @ResponseBody Response addOrder(@RequestBody Order o) {
        service.add(o);
        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @RequestMapping("/update")
    public @ResponseBody Response updateOrder(Order s) {
        service.update(s);

        res.setResult(s);
        res.setSuccess(true);
        res.setMsg("更新成功");

        return res;
    }

    @RequestMapping("/delete")
    public @ResponseBody Response deleteOrder(@RequestParam Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }
}

