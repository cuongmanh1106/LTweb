<%
    String view = "";
    view = (String) request.getAttribute("view");
    
    if(view =="views/v_loai_san_pham.jsp")
    {
        
    
        
%>
<%@include file="../views/v_loai_san_pham.jsp" %>

<%
    }
    else if(view == "views/v_them_loai_san_pham.jsp")
    {
%>
    <%@include file="../views/v_them_loai_san_pham.jsp" %>

<%
    }
    else if(view == "views/v_sua_loai_san_pham.jsp")
    {
%>
    <%@include file="../views/v_sua_loai_san_pham.jsp" %>
<%
    }
%>
