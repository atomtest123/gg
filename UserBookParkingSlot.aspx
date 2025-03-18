<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserBookParkingSlot.aspx.cs" Inherits="UserBookParkingSlot" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>EDine Hotel</title>
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
          <a class="navbar-brand brand-logo" href="index.html">
        <%--    <img src="temp1/images/logo.svg" alt="logo" class="logo-dark" />--%>
          </a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="temp1/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center flex-grow-1">
          <h5 class="mb-0 font-weight-medium d-none d-lg-flex">Welcome Hotel dashboard!</h5>
          <ul class="navbar-nav navbar-nav-right ml-auto">
            
            <li class="nav-item dropdown language-dropdown d-none d-sm-flex align-items-center">
              <a class="nav-link d-flex align-items-center dropdown-toggle" id="LanguageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              
                <span class="profile-text font-weight-normal">English</span>
              </a>
             
            </li>
            <li class="nav-item dropdown d-none d-xl-inline-flex user-dropdown">
              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <img class="img-xs rounded-circle ml-2" src="temp1/images/faces/face8.jpg" alt="Profile image"> <span class="font-weight-normal"> Hotel </span></a>
             
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
                  <p class="designation">Customer</p>
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
              <a class="nav-link" href="UserHomepage.aspx">
                <span class="menu-title">Dashboard</span>
                <i class="icon-screen-desktop menu-icon"></i>
              </a>
            </li>
            <li class="nav-item nav-category"><span class="nav-link">Activities</span></li>
            
             <li class="nav-item">
              <a class="nav-link" href="UserBookParkingSlot.aspx">
                <span class="menu-title">Book Parking Slot</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="UserViewHotelMenu1.aspx">
                <span class="menu-title">View Top Food Items</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="UserViewHotelMenu2.aspx">
                <span class="menu-title">Search Food Items</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="UserSearchHotel.aspx">
                <span class="menu-title">Search Rating</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="UserOrderHistory.aspx">
                <span class="menu-title">Review Food</span>
                <i class="icon-globe menu-icon"></i>
              </a>
            </li>
            
           
            <li class="nav-item nav-category"><span class="nav-link">Mailing</span></li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="UserSendCompalints.aspx" aria-expanded="false" aria-controls="auth">
                <span class="menu-title">Send Complaints</span>
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
              <%--<div class="col-12 stretch-card grid-margin">
                <div class="card card-secondary">--%>
                  <span class="card-body d-lg-flex align-items-center">
                   <form id="form1" runat="server">
                    <div>
                     
                            <div style="Width:1000px;text-align:left;padding-left: 20px;">
     
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Parking ID:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;<br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Select Hotel:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList7_SelectedIndexChanged" >
                           </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>&nbsp;&nbsp; 
             <br />
         <br />
          <asp:Label ID="Label6" runat="server" Text="Vehicle Type:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                           </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>&nbsp;&nbsp; 
             <br />
                  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              <asp:Label ID="Label7" runat="server" Text="Time:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList2_SelectedIndexChanged1" >
                           </asp:DropDownList>&nbsp;  <asp:Label ID="Label8" runat="server" 
                                    Text="Maximum Time allowed 3 hours" Font-Names="Arial Narrow" 
             Font-Size="Small" ForeColor="Red"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          <asp:Label ID="Label18" runat="server" Text="UserName:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <asp:TextBox 
                                  ID="TextBox12" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> 
                              <br />
         <br />      
          <asp:Label ID="Label5" runat="server" Text="BookSlot:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox 
                                  ID="TextBox2" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> 
                              <br />
         <br />      
         <asp:Label ID="Label2" runat="server" Text="Date:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox3" runat="server" Height="26px" Width="225px"></asp:TextBox> 
                  </span>
                           &nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" class="btn btn-outline-danger btn-fw" runat="server" Height="40px" Text="Book" onclick="Button1_Click"  
        Width="225px"/> &nbsp;&nbsp;<br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
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
           <%-- <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>--%>
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
