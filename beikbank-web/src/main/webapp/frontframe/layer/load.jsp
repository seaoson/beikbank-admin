<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/8
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>加载层</title>
    <%@ include file="/common/jsp/resource.jsp" %>
</head>
<body>
<div class="layui-input-inline">
    <button class="layui-btn" onclick="submitCode()">提交代码</button>
</div>
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">编写代码</li>
        <li id="showResult">查看效果</li>
        <li>参数详解</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <textarea class="layui-textarea" rows="28" class="layui-code">

             <button class="layui-btn" onclick="Loading.open(0,false)">加载层0</button> </br></br>

             <button class="layui-btn" onclick="Loading.open(1,true)">加载层1</button> </br></br>

             <button class="layui-btn" onclick="Loading.open(2,false)">加载层2</button> </br></br>

             <button class="layui-btn" onclick="Loading.msg('加载中...')">自定义消息加载层</button> </br></br>

             <button class="layui-btn" onclick="closeLoad()">两秒后关闭加载层</button> </br></br>

                <script>
                     function closeLoad() {
                         var index=Loading.open(0,true);
                         var t=setTimeout(function () {
                             Loading.close(index);
                         },2000);
                     }
                </script>

           </textarea>

        </div>

        <div class="layui-tab-item" id="result">

            <button class="layui-btn" onclick="Loading.open(0,true)">加载层0</button> </br></br>

            <button class="layui-btn" onclick="Loading.open(1,true)">加载层1</button> </br></br>

            <button class="layui-btn" onclick="Loading.open(2,false)">加载层2</button> </br></br>

            <button class="layui-btn" onclick="Loading.msg('加载中...')">自定义消息加载层</button> </br></br>

            <button class="layui-btn" onclick="closeLoad()">两秒后关闭加载层</button> </br></br>

            <script>
                function closeLoad() {
                    var index=Loading.open(0,true);
                    var t=setTimeout(function () {
                        Loading.close(index);
                    },2000);
                }
            </script>
        </div>

        <div class="layui-tab-item">
            <table class="layui-table">
                <thead>
                <tr>
                    <th>方法</th>
                    <th>参数</th>
                    <th>代码示例</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>弹出加载层</td>
                    <td>type：类型0-2</td>
                    <td>Loading.open(type,shade) </td>
                </tr>
                <tr>
                    <td>弹出加载层</td>
                    <td>shade：是否打开遮罩</td>
                    <td>Loading.open(type,shade) </td>
                </tr>
                <tr>
                    <td>关闭加载层</td>
                    <td>index：返回值用于关闭遮罩</td>
                    <td>  var index=Loading.load(type,shade)    Loading.close(index) </td>
                </tr>
                </tbody>
            </table>

        </div>
    </div>
</div>


</body>
<script>
    layui.use('element', function () {
    });

    function submitCode() {
        var code = $("textarea").val();
        $("#result").html(code);
        Msg.success("代码提交成功,请查看效果!");
        Tips.info("点此查看效果",$("#showResult"));
    }


</script>
</html>
