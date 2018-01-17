package com.beikbank.service.impl;

import com.beikbank.bean.qo.UserListQO;
import com.beikbank.bean.vo.UserListVO;
import com.beikbank.dao.BKUserDao;
import com.beikbank.service.BKUserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by wangzhanjin on 2018/1/16.
 */
@Service
public class BKUserServiceImpl implements BKUserService {

    private Logger log = Logger.getLogger(this.getClass());
    @Autowired
    private BKUserDao bkUserDao;


    /**
     * 用户控制查询返回
     * @param userListQO
     * @return
     */
    @Override
    public List<UserListVO> userListSearch(UserListQO userListQO){
        List<UserListVO> list = null;
        try {
            list = bkUserDao.userListSearch(userListQO);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list==null?null:list;
    }
}
