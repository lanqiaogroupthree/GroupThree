<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/css/global_color.css" /> 
    </head>
    <body onload="initialYearAndMonth();">
        <!--Logo区域开始-->
        <div id="header">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="logo" class="left"/>
            <a href="${pageContext.request.contextPath}/WEB-INF/view/admin.jsp">[退出]</a>            
        </div>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="navi">                        
             <jsp:include  page="../header.jsp"/>    <!-- 显示头部信息  -->             
        </div>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">
            <form action="" method="">
                <!--查询-->
                <div class="search_add">                        
                    <div>账务账号：<span class="readonly width70">admin1</span></div>                            
                    <div>OS 账号：<span class="readonly width100">openlab1</span></div>
                    <div>服务器 IP：<span class="readonly width100">192.168.0.20</span></div>
                    <div>计费时间：<span class="readonly width70">2013年8月</span></div>
                    <div>费用：<span class="readonly width70">34.78</span></div>
                    <input type="button" value="返回" class="btn_add" onclick="location.href='bill_item.html';" />
                </div>  
                <!--数据区域：用表格展示数据-->     
                <div id="data">            
                    <table id="datalist">
                        <tr>
                            <th class="width150">客户登录 IP</th>
                            <th class="width150">登入时刻</th>
                            <th class="width150">登出时刻</th>
                            <th class="width100">时长（秒）</th>
                            <th class="width150">费用</th>
                            <th>资费</th>
                        </tr>
                        <tr>
                            <td>192.168.100.100</td>
                            <td>2013/01/01 12:12:12</td>
                            <td>2013/01/01 12:12:22</td>
                            <td>10</td>
                            <td>0</td>
                            <td>包 20 小时</td>
                        </tr>
                        <tr>
                            <td>192.168.100.100</td>
                            <td>2013/01/01 12:12:12</td>
                            <td>2013/01/01 12:12:22</td>
                            <td>10</td>
                            <td>0</td>
                            <td>包 20 小时</td>
                        </tr>
                        <tr>
                            <td>192.168.100.100</td>
                            <td>2013/01/01 12:12:12</td>
                            <td>2013/01/01 12:12:22</td>
                            <td>10</td>
                            <td>0</td>
                            <td>包 20 小时</td>
                        </tr>
                        <tr>
                            <td>192.168.100.100</td>
                            <td>2013/01/01 12:12:12</td>
                            <td>2013/01/01 12:12:22</td>
                            <td>10</td>
                            <td>0.45</td>
                            <td>包 20 小时</td>
                        </tr>
                    </table>
                </div>
                <!--分页-->
                <div id="pages">
        	        <a href="#">上一页</a>
                    <a href="#" class="current_page">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">下一页</a>
                </div>                    
            </form>
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>