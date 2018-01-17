package com.beikbank.dao;

import com.beikbank.bean.qo.UserListQO;
import com.beikbank.bean.vo.UserListVO;

import java.util.List;

/**
 * Created by wangzhanjin on 2018/1/16.
 */
public interface BKUserDao {

    /**
     * 用户控制查询返回
     * @param userListQO
     * @return
     */
    List<UserListVO> userListSearch(UserListQO userListQO);
}
