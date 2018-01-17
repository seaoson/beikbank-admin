package com.beikbank.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.beikbank.bean.qo.UserListQO;
import com.beikbank.bean.vo.UserListVO;
import com.beikbank.service.BKUserService;
import com.beikbank.util.baseAction.BaseAction;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by wangzhanjin on 2018/1/16.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseAction{
    @Autowired
    private BKUserService bkUserService;


    @RequestMapping("/list.do")
    public String getUserList(){
        return "user/list.html";
    }


    @RequestMapping("/list/search.do")
    @ResponseBody
    @RequiresPermissions("bk:user:search")
    public Map<String, Object> getUserListSearch(){
        UserListQO userListQO = JSONObject.parseObject(jsonObj.toString(), UserListQO.class);
        List<UserListVO> userListVOlist = bkUserService.userListSearch(userListQO);
        Map<String,Object> maps=new JSONObject();
        maps.put("userListVOlist",userListVOlist);
        return maps;
    }

}
