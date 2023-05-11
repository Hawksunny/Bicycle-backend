package top.hawksunny.Bicycle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.hawksunny.Bicycle.entity.Response;
import top.hawksunny.Bicycle.entity.Payment;
import top.hawksunny.Bicycle.service.paymentService;

import java.util.List;

@RestController
@RequestMapping("/payment")
public class paymentController {
    @Autowired
    private paymentService service;
    @Autowired
    private Response res;

    @GetMapping("/list")
    public @ResponseBody Response getPaymentList() {
        List<Payment> result = service.getList();

        res.setResult(result);
        res.setSuccess(true);
        res.setMsg("查询成功");

        return res;
    }

    @PostMapping("/add")
    public @ResponseBody Response addPayment(Payment s) {
        service.add(s);

        res.setResult(s);
        res.setSuccess(true);
        res.setMsg("新增成功");

        return res;
    }

    @PostMapping("/update")
    public @ResponseBody Response updatePayment(Payment s) {
        service.update(s);

        res.setResult(s);
        res.setSuccess(true);
        res.setMsg("更新成功");

        return res;
    }

    @PostMapping("/delete")
    public @ResponseBody Response deletePayment(Integer id) {
        service.delete(id);

        res.setResult(id);
        res.setSuccess(true);
        res.setMsg("删除成功");

        return res;
    }
}
