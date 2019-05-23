package com.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.pojo.User;
import com.ssm.service.UserService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    //注入
    @Autowired
    private UserService userService;
    /**
     * 登录
     */

    /**
     * 查询所有用户

    @RequestMapping(value = "/getAll",method = RequestMethod.GET)
    public String getAll(Model model){
        List<User> list = userService.getAll();
        model.addAttribute("list",list);
        return "list";
    }*/
    /**
     * 跳转到添加页面
     */
    @RequestMapping(value = "/insertUserPage",method = RequestMethod.GET)
    public String insertUserPage(){
        return "save";
    }
    /**
     * 插入
     */
    @RequestMapping(value = "/insertUser",method = RequestMethod.POST)
    public String insertUser(User user){
        userService.insertUser(user);
        return "redirect:/getAll";
    }
    /***
     * 删除
     */

    /***
     * 跳转添加页面
     */
    @RequestMapping("toAddUser")
    public String toAddUser(){
        return "addUser";
    }
    @RequestMapping("addUser")
    public String addUser(Model model,User user){
        if (user != null){
            userService.saveUser(user);
        }
        return "redirect:/user/userInfo";
    }

    /***
     * 更新用户
     * @param user
     * @param model
     * @return
     */
    @ApiOperation(value = "更新用户" ,httpMethod = "POST")
    @RequestMapping("updateUser")
    public String updateUser(User user,Model model){
        if (userService.updateUser(user)){
            user = userService.findUserById(user.getId());
            model.addAttribute("user",user);
            return "redirect:/user/userInfo";
        }
        return "error";
    }
    /***
     * 查询所用用户
     */
    @RequestMapping("getAllUser")
    public String getAllUser(Model model){
        List<User> user = userService.findAll();
        model.addAttribute("userList",user);
        return "/index.jsp";
    }
    /***
     * 查询单个用户
     */
    @RequestMapping("/getUser")
    public String getUser(Model model,int id){
        model.addAttribute("user",userService.findUserById(id));
        return "editUser";
    }
    /**
     * 根据id删除用户
     */
    @RequestMapping("/delUser")
    public String deleteUser( int id,Model model){
        model.addAttribute("user",userService.deleteUser(id));
        return "redirect:/user/userInfo";
    }
    /**
     * 分页查询
     */
    @RequestMapping("userInfo")
    public String getUsers(@RequestParam(value = "pn",defaultValue = "1")
                           Integer pn,Model model){
        PageHelper.startPage(pn,5);
        List<User> users = userService.findAll();
        PageInfo page  = new PageInfo(users,5);
        model.addAttribute("pageInfo",page);
        return "allUser";
    }
    /**
     * 检查登录
     */
    @RequestMapping("login")
    @ResponseBody
    public String login(String  loginname ,User user){
        User u3= userService.selectUserByLoginname(user.getLoginname());
        if (u3 !=null && u3.getPassword().equals(user.getPassword())){
               return  "success";
        }
        return "error";
    }
    }
