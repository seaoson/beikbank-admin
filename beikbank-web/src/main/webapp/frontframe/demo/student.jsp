<%--
  Created by chenyi
  email: qq228112142@qq.com
  Date : 2017-11-07 14:58:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>子订单管理</title>
    <%@ include file="/common/jsp/resource.jsp" %>
    <script type="text/javascript" src="/frontframe/demo/js/list.js"></script>
</head>
<body>
<form class="layui-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">姓名:</label>
        <div class="layui-input-inline">
            <input type="text" name="nameVague" placeholder="请输入姓名" class="layui-input">
        </div>
        <label class="layui-form-label">年龄:</label>
        <div class="layui-input-inline">
            <input type="text" name="age" placeholder="请输入年龄" class="layui-input">
        </div>
        <label class="layui-form-label">地址:</label>
        <div class="layui-input-inline">
            <input type="text" name="addressVague" placeholder="请输入地址" class="layui-input">
        </div>
        <div class="layui-input-normal">
            <button class="layui-btn layui-btn-green" lay-submit="" lay-filter="moreSearch">
                <i class="fa fa-chevron-down">&nbsp;</i>更多
            </button>
            <button class="layui-btn search-btn" table-id="studentTable" lay-submit="" lay-filter="search">
                <i class="fa fa-search">&nbsp;</i>查询
            </button>
            <button type="reset" class="layui-btn layui-btn-primary"><i class="fa fa-refresh">&nbsp;</i>重置</button>
        </div>
    </div>

    <div class="layui-form-item more-search">
        <label class="layui-form-label">性别:</label>
        <div cyType="selectTool" cyProps="enumName:'SexEnum',search:'true'"
             name="sex" class="layui-input-inline">
        </div>
        <label class="layui-form-label">是否是应届:</label>
        <div cyType="selectTool" cyProps="codeName:'whether',search:'true'"
             name="yingjie" class="layui-input-inline">
        </div>
        <label class="layui-form-label">状态:</label>
        <div cyType="selectTool" cyProps="codeName:'state',search:'true'"
             name="state" class="layui-input-inline">
        </div>
    </div>
    <div class="layui-form-item more-search">
        <label class="layui-form-label">所属地区:</label>
        <div cyType="selectTool" cyProps="enumName:'ProvinceEnum',search:'true',filter:'demo'"
             name="theAreaArr[]" value="" class="layui-input-inline">
        </div>
        <label class="layui-form-label">提交时间:</label>
        <div class="layui-input-inline">
            <input readonly="readonly" type="text" name="startDate" id="startDate" maxlength="20" value=""
                   placeholder="请选择开始时间" class="layui-input Wdate"
                   onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,maxDate:'#F{$dp.$D(\'endDate\')}'})">
        </div>
        <div class="layui-input-inline">
            <input readonly="readonly" type="text" name="endDate" id="endDate" maxlength="20" value=""
                   placeholder="请选择截止时间" class="layui-input Wdate"
                   onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true,minDate:'#F{$dp.$D(\'startDate\')}'})">
        </div>
    </div>
</form>
<div class="layui-btn-group">
    <button class="layui-btn" onclick="Page.open('添加学生','/frontframe/demo/add.jsp')">
        <i class="fa fa-plus">&nbsp;</i>增加
    </button>
    <button class="layui-btn" onclick="Page.open('修改学生','/frontframe/demo/edit.jsp')">
        <i class="fa fa-pencil-square-o">&nbsp;</i>修改
    </button>
    <button class="layui-btn layui-btn-green" onclick="Msg.success('操作成功')">
        <i class="fa fa-check-square-o">&nbsp;</i>启用
    </button>
    <button class="layui-btn  layui-btn-danger" onclick="Msg.success('操作成功')">
        <i class="fa fa-expeditedssl">&nbsp;</i>禁用
    </button>
</div>
<div class="layui-form nowrap">
    <table class="layui-table" id="studentTable" cyType="pageGrid"
           cyProps="url:'/frontframe/json/student.json',checkbox:'true',pageColor:'#2991d9'">
        <thead>
        <tr>
            <!--复选框-->
            <th width="1%" param="{type:'checkbox'}">
                <input type="checkbox" lay-skin="primary" lay-filter="allChoose">
            </th>
            <!--isPrimary：是否是主键-->
            <th width="5%" param="{name:'stuId',isPrimary:'true',hide:'true'}">id</th>

            <th width="10%" param="{name:'name'}">姓名</th>

            <th width="5%" param="{name:'age'}">年龄</th>

            <th width="10%" param="{name:'address'}">地址</th>

            <th width="5%" param="{name:'sex',enumCode:'SexEnum'}">性别</th>

            <th width="5%" param="{name:'yingjie',codeName:'whether'}">是否是应届</th>

            <th width="5%" param="{name:'state',codeName:'state',render:'Render.customState'}">状态</th>

            <th width="10%" param="{name:'note'}">备注</th>


            <th width="10%" param="{operate:'true',buttons:'Render.state,Render.edit,Render.delete'}">
                操作
            </th>
        </tr>
        </thead>
    </table>
</div>

</body>
</html>