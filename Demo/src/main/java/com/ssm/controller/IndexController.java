package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("toSubHome")
    public String toSubHomePage(){

        return "subHome";
    }
}
