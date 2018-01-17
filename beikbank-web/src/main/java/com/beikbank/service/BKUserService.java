package com.beikbank.service;

import com.beikbank.bean.qo.UserListQO;
import com.beikbank.bean.vo.UserListVO;

import java.util.List;

/**
 * Created by wangzhanjin on 2018/1/16.
 */
public interface BKUserService {
    List<UserListVO> userListSearch(UserListQO userListQO);
}
