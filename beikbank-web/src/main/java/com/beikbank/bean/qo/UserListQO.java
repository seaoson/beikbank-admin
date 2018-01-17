package com.beikbank.bean.qo;
import lombok.Data;

/**
 * Created by wangzhanjin on 2018/1/16.
 */
@Data
public class UserListQO {
    private String userCode;//用户编码
    private String realName;//姓名
    private String idNumber;//身份证号
    private String phoneNumber;//注册手机
    private String registerTimeStart;//注册时间起
    private String registerTimeEnd;//注册时间
    private String bindingStatus;
    private String accNumber;
    private String amountSumStart;
    private String amountSumEnd;
}
