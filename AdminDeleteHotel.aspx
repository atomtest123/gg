<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDeleteHotel.aspx.cs" Inherits="AdminDeleteHotel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Stellar Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="temp1/vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="temp1/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="temp1/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="./temp1/vendors/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="./temp1/vendors/chartist/chartist.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="./temp1/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="./temp1/images/favicon.png" />
</head>
<body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="navbar-brand-wrapper d-flex align-items-center">
          <a class="navbar-brand brand-logo" href="Homepage1.aspx">
        <%--    <img src="temp1/images/logo.svg" alt="logo" class="logo-dark" />--%>
          </a>
          <a class="navbar-brand brand-logo-mini" href="Homepage1.aspx"><img src="temp1/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center flex-grow-1">
          <h5 class="mb-0 font-weight-medium d-none d-lg-flex">Administrator Delete Hotel</h5>
          <ul class="navbar-nav navbar-nav-right ml-auto">
            
            <li class="nav-item dropdown language-dropdown d-none d-sm-flex align-items-center">
              <a class="nav-link d-flex align-items-center dropdown-toggle" id="LanguageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              
                <span class="profile-text font-weight-normal">English</span>
              </a>
             
            </li>
            <li class="nav-item dropdown d-none d-xl-inline-flex user-dropdown">
              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <img class="img-xs rounded-circle ml-2" src="temp1/images/faces/face8.jpg" alt="Profile image"> <span class="font-weight-normal"> Administrator </span></a>
             
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="icon-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
       <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="profile-image">
                  <img class="img-xs rounded-circle" src="temp1/images/faces/face8.jpg" alt="profile image">
                  <div class="dot-indicator bg-success"></div>
                </div>
                <div class="text-wrapper">
              <%--    <p class="profile-name">Allen Moreno</p>--%>
                  <p class="designation">Administrator</p>
                </div>
                <div class="icon-container">
                  <i class="icon-bubbles"></i>
                  <div class="dot-indicator bg-danger"></div>
                </div>
              </a>
            </li>
            <li class="nav-item nav-category">
              <span class="nav-link">Dashboard</span>
            </li>
            <li class="nav-item">
               <a class="nav-link" href="AdminHomepage.aspx">
                <span class="menu-title">Dashboard</span>
                <i class="icon-screen-desktop menu-icon"></i>
              </a>
            </li>
            <li class="nav-item nav-category"><span class="nav-link">Activities</span></li>
            
             <li class="nav-item">
              <a class="nav-link" href="AdminApproveHotel.aspx">
                <span class="menu-title">Approve Hotel</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AdminDeleteHotel.aspx">
                <span class="menu-title">Delete Hotel</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AdminViewHotel.aspx">
                <span class="menu-title">View Hotel</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AdminAddUser.aspx">
                <span class="menu-title">Approve Users</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="AdminDeleteUser.aspx">
                <span class="menu-title">Delete Users</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="AdminViewUser.aspx">
                <span class="menu-title">View Users</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AdminAddMenu.aspx">
                <span class="menu-title">Add Menu</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="AdminDeleteMenu.aspx">
                <span class="menu-title">Delete Menu</span>
                <i class="icon-chart menu-icon"></i>
              </a>
            </li>
            <li class="nav-item nav-category"><span class="nav-link">Mailing</span></li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="AdminSendMessage.aspx" aria-expanded="false" aria-controls="auth">
                <span class="menu-title">Send Message</span>
                <i class="icon-doc menu-icon"></i>
              </a>
             
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="AdminReplyComplaints.aspx" aria-expanded="false" aria-controls="auth">
                <span class="menu-title">Reply Compaints</span>
                <i class="icon-doc menu-icon"></i>
              </a>
             
            </li>
            <li class="nav-item pro-upgrade">
              <span class="nav-link">
                <a class="btn btn-block px-0 btn-rounded btn-upgrade" href="Homepage1.aspx" target="_blank"> <i class="icon-badge mx-2"></i> Sign Out</a>
              </span>
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row purchace-popup">
              <div class="col-12 stretch-card grid-margin">
                <div class="card card-secondary">
                  <span class="card-body d-lg-flex align-items-center">
                   <form id="form1" runat="server">
                    <div>
                         <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                  <%--  <h4 class="card-title">Bordered table</h4>
                    <p class="card-description"> Add class <code>.table-bordered</code>
                    </p>--%>
                    
                    <asp:DataList ID="DataList1" runat="server" OnEditCommand="DataList1_EditCommand"      
        OnCancelCommand="DataList1_CancelCommand" DataKeyField="hid" onselectedindexchanged="DataList1_SelectedIndexChanged" >
       
            <HeaderTemplate>
                     <table class="table table-bordered">
                      <thead>
                        <tr>
                     <th>
                        HotelID
                     </th>
                     <th>
                        Hotel Username
                     </th>
                     <th>
                        Hotel Name
                     </th>
                     <th>
                       Email
                     </th>
                      <th>
                      Location
                     </th>
                     <th>
                       Owner Name
                     </th>
                     <th>
                       Contact
                     </th>
                   <%--  <th>
                      Starting Date
                     </th>--%>
                     <th>
                       Website
                     </th>
                    <%-- <th>
                        Reg No
                     </th>--%>
                      <th>
                        Status
                     </th>
                  </tr>
                  </thead>
            </HeaderTemplate>
            <ItemTemplate>
                     
                     <%-- <tbody>--%>
                        <tr >
               <td>
                 <%# Eval("hid")%>
               </td>
               <td>
                <%# Eval("huname")%>
               </td>
               <td>
                <%# Eval("hname")%> 
               </td>
               <td>
                <%# Eval("email")%>
               </td>
               <td>
                <%# Eval("location")%>
               </td>
               <td>
                <%# Eval("oname")%>
               </td>
                <td>
                <%# Eval("contact")%>
               </td>
               <%--<td>
                <%# Eval("dstart")%>
               </td>--%>
               <td>
                <%# Eval("website")%>
               </td>
             <%--  <td>
                <%# Eval("regno")%>
               </td>--%>
                             
               <td>
               <asp:Button class="btn btn-outline-danger btn-fw" ID="btn1"  runat="server" CommandName="Select"  Text="Delete" /> 
               </td>
            </tr>
       
        
                     <%-- </tbody>--%>
                       </ItemTemplate>
      
        </asp:DataList>
               </table>      
                   
                  </div>
                </div>
              </div>


                      </div>
                     </form>
                  </span>
                </div>
              </div>
            </div>
      
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="./vendors/chart.js/Chart.min.js"></script>
    <script src="./vendors/moment/moment.min.js"></script>
    <script src="./vendors/daterangepicker/daterangepicker.js"></script>
    <script src="./vendors/chartist/chartist.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="./js/dashboard.js"></script>
    <!-- End custom js for this page -->

</body>
</html>
