package com.beikbank.bean.vo;

import lombok.Data;

/**
 * Created by wangzhanjin on 2017/9/21.
 */
@Data
public class UserListVO {
    private String userCode;
    private String registerTime;
    private String phoneNumber;
    private String idNumber;
    private String realNameTime;
    private String realName;
    private String bankName;
    private String bindingStatus;
    private String accNumber;
    private String lastLoginTime;
    private String amountSum;
}