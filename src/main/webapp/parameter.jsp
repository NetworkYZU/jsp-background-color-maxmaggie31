<%-- 
    Document   : random
    Created on : Sep 23, 2018, 8:44:44 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="refresh" content="1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" integrity="sha256-46qynGAkLSFpVbEBog43gvNhfrOj+BmwXdxFgVK/Kvc=" crossorigin="anonymous" />
    </head>
    <%
        String color="blue";//從 request.getParameter("...") 取得 color 參數
        String[] colors=new String[]{
            "Red","Orange","Yellow","Olive","Green","Fuchsia","Lime","Teal","Aqua","skyBlue","Gray","Silver"
        };
        String[] icons=new String[]{
            "fa-angle-double-up","fa-angle-double-down","fa-angle-double-left","fa-angle-double-right","fa-angle-up","fa-angle-down","fa-angle-left","fa-angle-right"
        };
        String parameter=request.getParameter("color");
        String icon = icons[(int)(Math.random()*1000%icons.length)];
        if(parameter!=null){
            color=parameter;
        }else{
            color=colors[(int)(Math.random()*1000%colors.length)];
        }
// 額外：若 user 沒輸入參數，就隨機抓顏色
    %>
    <body bgcolor="<%=color%>">
        <span class="fa <%=icon%>"></span>
    </body>
</html>
