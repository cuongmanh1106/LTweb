<%@include  file ="head.jsp" %>
<div id="body-wrapper">
<!-- Wrapper for the radial gradient background -->
<div id="sidebar">
  <div id="sidebar-wrapper" class="print"> <!-- Sidebar with logo and menu --> 
    <%@include  file ="logo_profile.jsp" %>
    <%@include  file ="nav.jsp" %>
    <%@include  file ="messages.jsp" %>
  </div>
</div>
<!-- End #sidebar -->
<div id="main-content">
<!-- Main Content Section with everything -->
<!-- Page Head --> 
<div class="print">
 <%@include  file ="pageHead.jsp" %>   
</div>
<div class="clear"></div> <!-- End .clear --> 
<!-- End Page Head --> 
<!-- Content --> 
<%@include  file ="content.jsp" %> 
<!-- end Content -->
<div class="clear"></div>
<!-- Start Notifications --> 
<%@include  file ="notification.jsp" %> 
<!-- End Notifications -->
<div class="print"> 
<%@include  file ="footer.jsp" %>
</div>