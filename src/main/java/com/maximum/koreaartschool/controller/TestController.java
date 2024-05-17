package com.maximum.koreaartschool.controller;

import com.maximum.koreaartschool.dao.TestDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {
    @Autowired
    private TestDAO testDAO;

    @RequestMapping("/")
    public @ResponseBody String root() throws Exception{
        return "테스트용";
    }

    //@GetMapping("/main")
    @RequestMapping(value="/main")
    public String mainPage(){
        return "main";
    }

    //@GetMapping("/apply")
    @RequestMapping(value="/apply")
    public String applyPage(){
        return "apply";
    }



}
