<!--
* 修改页面
* @author chenyi
* @email qq228112142@qq.com
* @date 2017-11-06 14:49:28
*-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/common/jsp/resource.jsp" %>
</head>
<body>
<div class="layui-field-box">
    <form class="layui-form" action="">
        <%@ include file="common.jsp" %>
        <input type="hidden" name="paraId" value="${model.paraId}">
        <div class="page-footer">
            <div class="btn-list">
                <div class="btnlist">
                    <button class="layui-btn" lay-submit="" lay-filter="submit" data-url="/commpara/update"><i class="fa fa-floppy-o">&nbsp;</i>保存</button>
                    <button class="layui-btn" onclick="$t.closeWindow();"><i class="fa fa-undo">&nbsp;</i>返回</button>
                </div>
            </div>
        </div>
    </form>
</div>

</body>
</html>

