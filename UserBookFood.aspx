<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserBookFood.aspx.cs" Inherits="UserBookFood" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>EDine User</title>
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
          <a class="navbar-brand brand-logo" href="#">
        <%--    <img src="temp1/images/logo.svg" alt="logo" class="logo-dark" />--%>
          </a>
          <a class="navbar-brand brand-logo-mini" href="#"><img src="temp1/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center flex-grow-1">
          <h5 class="mb-0 font-weight-medium d-none d-lg-flex">Welcome Customer dashboard!</h5>
          <ul class="navbar-nav navbar-nav-right ml-auto">
            
            <li class="nav-item dropdown language-dropdown d-none d-sm-flex align-items-center">
              <a class="nav-link d-flex align-items-center dropdown-toggle" id="LanguageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              
                <span class="profile-text font-weight-normal">English</span>
              </a>
             
            </li>
            <li class="nav-item dropdown d-none d-xl-inline-flex user-dropdown">
              <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <img class="img-xs rounded-circle ml-2" src="temp1/images/faces/face8.jpg" alt="Profile image"> <span class="font-weight-normal"> Customer </span></a>
             
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
             <%-- <div class="col-12 stretch-card grid-margin">--%>
          <%--      <div class="card card-secondary">--%>
                  <span class="card-body d-lg-flex align-items-center">
                   <form id="form1" runat="server">
                    <div>
                     <div style="Width:1000px;text-align:left;padding-left: 20px;">
     
         
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
         <br />
          <asp:Label ID="Label3" runat="server" Text="Parking ID:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox1" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label8" runat="server" Text="Hotel Name:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox4" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox><br />
         <br />
         <asp:Label ID="Label1" runat="server" Text="Time Slot:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox5" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label4" runat="server" Text="Username:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox6" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox><br />
         <br />
         <asp:Label ID="Label9" runat="server" Text="Parking Slot:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox7" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label10" runat="server" Text="Table Name:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox8" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox><br />
         <br />
         <asp:Label ID="Label12" runat="server" Text="Date:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox9" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                              &nbsp;&nbsp;&nbsp;  <asp:Label ID="Label13" runat="server" Text="Floor:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                                  ID="TextBox10" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox><br />
         <br />
        <asp:Label ID="Label14" runat="server" Text="Food Type:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList7" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList7_SelectedIndexChanged" >
                           </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>&nbsp;&nbsp; 
             <br />
         <br />
          <asp:Label ID="Label6" runat="server" Text="Dish Type:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                           </asp:DropDownList>&nbsp;&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                 ErrorMessage="*" ForeColor="#FF5050" ControlToValidate="TextBox10"></asp:RegularExpressionValidator>--%>&nbsp;&nbsp; 
             <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              <asp:Label ID="Label7" runat="server" Text="Food Name:" Font-Names="Arial" 
             Font-Size="Medium"></asp:Label>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList2" 
                 runat="server" Width="225px" Height="29px" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList2_SelectedIndexChanged1" >
                           </asp:DropDownList> 
                           &nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          <asp:Label ID="Label18" runat="server" Text="Price:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox 
                                  ID="TextBox12" runat="server" Height="26px" Width="225px" Enabled="False"></asp:TextBox> 
                              <br />
         <br />      
          <asp:Label ID="Label5" runat="server" Text="No of items:" Font-Bold="False" 
             Font-Names="Arial" Font-Size="Medium"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                         <asp:TextBox 
                                  ID="TextBox2" runat="server" Height="26px" Width="225px"></asp:TextBox> 
                              <br />
         <br />      
       
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                 ID="Button3" class="btn btn-outline-danger btn-fw" runat="server" Height="40px" 
                             Text="Add Items" onclick="Button1_Click"  
        Width="225px"/> &nbsp;&nbsp;<asp:Button 
                 ID="Button10" class="btn btn-outline-danger btn-fw" runat="server" Height="40px" 
                             Text="ViewCart" onclick="Button10_Click"  
        Width="225px"/><br />
        <br />
         <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
          </div>

              <%--</div>--%>
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
          
   
</body>
</html>
