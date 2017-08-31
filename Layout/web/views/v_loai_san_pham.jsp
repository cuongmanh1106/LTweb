<%-- 
    Document   : loai_san_pham
    Created on : Aug 30, 2017, 9:12:21 PM
    Author     : TienDinh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Loai san pham</title>
    </head>
    <body>
        <h1>Loai san pham</h1>
        <%ResultSet l = (ResultSet) request.getAttribute("sp");%>

        <div class="col-sm-7">
          <table class="table table-striped table-bordered table-hover">
            <thead class="thin-border-bottom">
              <tr>
                <th> Mã loại người dùng </th>
                <th> Tên loại người dùng</th>
              </tr>
            </thead>
            <tbody>
               <% while(l.next()){%>
              <tr>
                <td><%= l.getInt("ma_loai")%></td>    
                <td><%= l.getString("ten_loai")%></td>      
                <td> 
                   <a class="red" href="Delete_loai_san_pham?ma_loai=<%= l.getInt("ma_loai")%>" onclick="return confirm('Bạn có muốn xóa dòng này') " >
                       <img src="public/images/icons/cross_circle.png" /> 
                   </a>
                   
                   <a href="update_form?ma_loai=<%= l.getInt("ma_loai")%>" title="Edit" >
                    <img src="public/images/icons/pencil.png" alt="Edit" />
                   </a> 
                </td>
              </tr>
              <%}%>
            </tbody>
          </table>
        </div>

        <div class="col-sm-7">
                <button class="btn btn-primary" onclick="window.location='add_lsp'"> <i class="ace-icon glyphicon glyphicon-plus  align-top bigger-125"></i> Thêm loại người dùng </button>
            <button class="btn" type="button" onClick="window.location='read_lsp'"> <i class="ace-icon fa fa-undo bigger-110"></i> Quay lại </button>
        </div>
    </body>
</html>
