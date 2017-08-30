

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <% String table  = (String)request.getAttribute("table"); %>
    <% ResultSet sp = (ResultSet)request.getAttribute("sp");  %>
    
    <body>
        <h1>Hello World!</h1>
        <%= table %>
        <br><br>
        
        <a href="add">Add loại sản phẩm</a>
        <a href="Search.jsp">Search Loai San Pham</a>
        
        <table border="1">
           
            <tr>
                <td>Mã loại</td>
                <td>Tên loại</td>
                <td>Mô tả</td>
                <td>Mã loại cha</td>
            </tr>
            
            <% while(sp.next()){ %>
            <tr>
                <td><%= sp.getInt("ma_loai")%></td>
                <td><%= sp.getString("ten_loai")%></td>
                <td><%= sp.getString("mo_ta")%></td>
                <td><%= sp.getInt("ma_loai_cha")%></td>
                <td><a href="update?ma_loai=<%= sp.getInt("ma_loai")%>">Update</a> <a href="delete?ma_loai=<%= sp.getInt("ma_loai")%>">Delete</a> </td>
            </tr>
            <%}%>
            
            
        </table>
        
    </body>
</html>
