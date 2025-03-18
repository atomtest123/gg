<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserSearchHotel.aspx.cs" Inherits="UserSearchHotel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
    <link href="restoran/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&family=Pacifico&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="restoran/lib/animate/animate.min.css" rel="stylesheet">
    <link href="restoran/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="restoran/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="restoran/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="restoran/css/bootstrap.min.css" rel="stylesheet">

  <style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 800px;
  padding: 10px;
  height: 850px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>

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
              <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
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
              <div class="col-12 stretch-card grid-margin">
              <%--  <div class="card card-secondary">--%>
                  <span class="card-body d-lg-flex align-items-center">
                   <form id="form1" runat="server">
                    
         <br />
          <div class="container-xxl py-5">
            <div class="container">
 
                    <div class="row">

                    <div class="column" >
                    
                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-6">
                                        <asp:DataList ID="DataList2" runat="server" DataKeyField="hid" 
                                            style="width: 800px;" onselectedindexchanged="DataList2_SelectedIndexChanged">
                                          <ItemTemplate>
                                          <br />
                                          <br />
                                    <div class="d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid rounded" src='<%# Eval("himg") %>' alt="" style="width: 250px;height:250px;">
                                        <div class="w-100 d-flex flex-column text-start ps-4">
                                            <h4 class="d-flex justify-content-between border-bottom pb-2">
                                                <span><%# Eval("hname") %></span>
                                                <span class="text-primary"> Rating: <%# Eval("rating") %>/5</span></h4> <h6>  <span> Total Reviewers: <%# Eval("treview") %></span></h6>
                                            <small class="fst-normal">Username: <%# Eval("huname") %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Location: <%# Eval("location") %></small>
                                             <small class="fst-normal">Contact: <%# Eval("contact") %></small>
                                               <small class="fst-normal">Website: <%# Eval("website") %></small> 
                                                <small class="fst-normal">Email: <%# Eval("email") %></small>
                                            <%--<asp:Button class="btn btn-outline-danger btn-fw" ID="btn1"  runat="server" CommandName="Select"  Text="Book Now" style="width: 20px;"/> --%>
                                            <a class="btn btn-outline-danger btn-fw" href='UserBookParkingSlot.aspx' style="width: 20px;">Book Now</a>
                                            <td>
                                            
                                            </td>
                                        </div>
                                    </div>
                                       </ItemTemplate>
                                     </asp:DataList>
                                </div>    
                            </div>
                        </div>
                    </div>
                     </div>
                     <div class="column" >

                     </div>
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
          <footer class="footer">
            <%--<div class="d-sm-flex justify-content-center justify-content-sm-between">
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
