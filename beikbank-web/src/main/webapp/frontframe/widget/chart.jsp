<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/9/4
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <%@ include file="/common/jsp/resource.jsp" %>
    <script>
        var index=Loading.open(1,false);
    </script>
    <!-- 引入 ECharts 文件 -->
    <script src="/statics/plugins/echarts/echarts.js"></script>



</head>

<body>
<fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 600px;height:300px;display: inline-block"></div>

    <!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main2" style="width: 600px;height:300px;display: inline-block"></div>
</fieldset>
<a class="click-span ft-20" href="http://echarts.baidu.com/" target="_blank"> &gt;&gt;&gt; ECharts官网入口</a>
<pre class="layui-code">
    <!-- 1.引入 ECharts 文件 -->
    <script src="/statics/plugins/echarts/echarts.js"></script>

    <!-- 2.为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 900px;height:600px;"></div>

    <!-- 3.创建echarts -->
    <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据

    var option = {
        title: {
            text: '登陆统计'
        },
        color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: [
            {
                type: 'category',
                data: ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期七'],
                axisTick: {
                    alignWithLabel: true
                }
            }
        ],
        yAxis: [
            {
                type: 'value'
            }
        ],
        series: [
            {
                name: '当前数量',
                type: 'bar',
                barWidth: '60%',
                data: [8459, 4845, 5486, 8974, 6584, 1536, 3654]
            }
        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</pre>

</body>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main2'));

    // 指定图表的配置项和数据

    option = {
        title : {
            text: '某站点用户访问来源',
            subtext: '纯属虚构',
            x:'center'
        },
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
        },
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius : '55%',
                center: ['50%', '60%'],
                data:[
                    {value:335, name:'直接访问'},
                    {value:310, name:'邮件营销'},
                    {value:234, name:'联盟广告'},
                    {value:135, name:'视频广告'},
                    {value:1548, name:'搜索引擎'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
<script>
    layui.use('code', function () { //加载code模块
        layui.code({encode: true}); //引用code方法
    });

    $(document).ready(function () {
        Loading.close(index);
    })

</script>
</html>
