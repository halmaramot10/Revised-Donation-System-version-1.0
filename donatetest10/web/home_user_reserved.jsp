<%@page import = "java.util.Date"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.donate.DB"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amcharts css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    <title>Add Donation Entry</title>
</head>
<body class="body-bg">
    
    
        <%
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        %>
        
        <%
            Date today = new Date();
            Format formatter1;
            String tod1;
            formatter1 = new SimpleDateFormat("MM-dd-yyyy");
            tod1 = formatter1.format(today);
            
            String name = (String)session.getAttribute("name");
            String uname=(String)session.getAttribute("uname");
            if(uname!=null){
        %>
    
    <div class="horizontal-main-wrapper">
        
         <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- main wrapper start -->
<!-- main header area start -->
        
       
        <div class="mainheader-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="home_user.jsp"><img src="assets/images/icon/logo2.png" alt="logo"></a>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-9 clearfix text-right">
                        <div class="d-md-inline-block d-block mr-md-4">                            
                        </div>
                        <div class="clearfix d-md-inline-block d-block">
                            <div class="user-profile m-0">
                                <img class="avatar user-thumb" src="assets/images/author/avatar.png" alt="avatar">
                                <h4 class="user-name dropdown-toggle" data-toggle="dropdown"><%=uname%><i class="fa fa-angle-down"></i></h4>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="logout.jsp">Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- main header area end -->
        
        <!-- header area start -->
        <div class="header-area header-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-9  d-none d-lg-block">
                        <div class="horizontal-menu">
                            <nav>
                                <ul id="nav_menu">
                                    <li class="active">
                                        <a href="home_user.jsp"><i class="ti-plus"></i><span>Add Donation</span></a>
                                    </li>
                                    <li>
                                        <a href="upload_csv.jsp"><i class="ti-import"></i><span>Upload CSV</span></a>
                                    </li>
                                    <li>
                                        <a href="gen_report.jsp"><i class="ti-file"></i><span>Generate Reports</span></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header area end -->
                
        <!-- page title area end -->
        <div class="main-content-inner">
            <div class="container">
                <div class="row">
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <b style="font-weight:bolder; color:green;">
                                <%
                                    try{
                                        String success= session.getAttribute("success").toString();
                                        out.println(success);
                                        session.removeAttribute("success");
                                    }catch(Exception er){

                                    }

                                %>
                                </b>
                                <h6 class="header-title" style="text-align: center">Add Donation Entry</h6>
                                <form action="Add_Donation" method="post">
                                    <div class="row">
                                        <div class="form-group col-3">
                                            <label for="addedby">Added By</label>
                                            <input type="text" id="addedby" class="form-control form-control-sm" readonly name="addedby" value="<%=name%>">                                          
                                        </div>
                                        <div class="form-group col-3">
                                            <label for="date">Date</label>
                                            <input type="text" id="date" class="form-control form-control-sm" name="date" readonly value="<%=tod1%>">                                      
                                        </div>
                                        <div class="form-group col-3">
                                            <label for="type">Donation Type</label>
                                            <select id="type" name="type" class="form-control form-control-sm" onchange = "shows()">
                                                <%
                                                        try{
                                                            con=DB.getConnection();
                                                            st=con.createStatement();
                                                            rs=st.executeQuery("select * from category");
                                                            while(rs.next()){           
                                                    %>
                                                    
                                                            <option value="<%=rs.getString("cat_name") %>"><%=rs.getString("cat_name") %></option>
                                                    <%
                                                            }
                                                        }catch(Exception ex){
                                                            ex.printStackTrace();
                                                            out.println("Error: "+ex.getMessage());
                                                        }                                                  
                                                    %>
                                                    
                                            </select>
                                        </div>
                                        <div class="form-group col-3">
                                            <label for="item">Item Type</label>
                                            <select name="item" class="form-control form-control-sm" id="item1" onchange="shows2()">
                                                <%
                                            try{
                                                con=DB.getConnection();
                                                st=con.createStatement();
                                                rs=st.executeQuery("select * from item_category");
                                                while(rs.next()){           
                                        %>
                                                    
                                                    <option value="<%=rs.getString("item_name") %>"><%=rs.getString("item_name") %></option>
                                        <%
                                                }
                                            }catch(Exception ex){
                                                ex.printStackTrace();
                                                out.println("Error: "+ex.getMessage());
                                            }
                                        %>
                                                <option>Add New Item</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-3" style="display:none" id="ntform">
                                            <label for="newtype">Add New Type</label>                                           
                                            <input type="text" id = "newtype"  name="newtype" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-9" onchange="shows2()" id="descform">
                                            <label for="desc">Description</label>                                           
                                            <input type="text" id = "desc" name="des" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-3" onchange = "shows2()" id="qtyform">
                                            <label for="qty" id="qtytxt">Quantity</label>                                           
                                            <input type="text" id = "qty" name="qty" class="form-control form-control-sm">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="form-group col-3" style="display:none" id="expform">
                                            <label for="exp">Expiration Date</label>                                           
                                            <input type="text" id ="exp" name="exp" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-3" id="condform">
                                            <label for="cond">Condition</label>                                           
                                            <select id ="cond" name="cond" class="form-control form-control-sm">
                                                <option value="New">New</option>
                                                <option value="Used">Used</option>
                                                <option value="Slightly Damaged">Slightly Damaged</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-3" style="display:none" id="sizeform">
                                            <label for="size">Size</label>                                           
                                            <input type="text" id ="size" name="size" class="form-control form-control-sm">
                                        </div>
                                        <!--Constant Forms-->
                                        <div class="form-group col-3" id="frform">
                                            <label for="from">From</label>
                                            <input type="text" id="from" name="fr" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-3" id="toform">
                                            <label for="donto">To</label>
                                            <input type="text" id="donto" name="donto" class="form-control form-control-sm">                                      
                                        </div>
                                        <div class="form-group col-3" id="statform">
                                            <label for="stat">Status</label>
                                            <input type="text" id="stat" class="form-control form-control-sm" readonly name="stat" value="Received">                                      
                                        </div>
                                        <!--Constant Forms-->
                                    </div>
                                    <div class="row" style="display:none" id="clform">
                                        
                                        <div class="form-group col-3">
                                            <label for="condi">Condition</label>                                           
                                            <select id ="condi" name="condi" class="form-control form-control-sm">
                                                <option value="New">New</option>
                                                <option value="Used">Used</option>
                                                <option value="Slightly Damaged">Slightly Damaged</option>
                                            </select>
                                        </div>                                       
                                        <div class="form-group col-3">
                                            <label for="color">Color</label>
                                            <input type="text" id="color" name="color" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-3">
                                            <label for="genderform">Gender</label>
                                            <select id="gender" name="gender" class="form-control form-control-sm">
                                                <option>Male</option>
                                                <option>Female</option>
                                                <option>Unisex</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-3">
                                            <label for="age">Age</label>
                                            <select id="age" name="age" class="form-control form-control-sm">
                                                <option>Infant</option>
                                                <option>Kid</option>
                                                <option>Teen</option>
                                                <option>Adult</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="row" style="display:none" id="moneysss">
                                        
                                        <div class="form-group col-6" >
                                            <label for="method">Method</label>
                                            <select id="method" name="method" class="form-control form-control-sm" onchange ="shows3()">
                                                <option>Select One</option>
                                                <option value="Bank">Bank</option>
                                                <option value="Online">Online</option>
                                                <option value="Others">Others</option>
                                            </select>
                                        </div>
                                                                              
                                        <div class="form-group col-4" style="display:none" id="otherss">
                                            <label for="omethod">If Others, please specify</label>
                                            <input type="text" id="omethod" name="otherss" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-4" style="display:none" id="bnkform">
                                            <label for="bank">Bank</label>
                                            <select id="bank" name="bank" class="form-control form-control-sm">
                                                <option>Bank</option>
                                                <option>Online</option>
                                                <option>Others</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-4" style="display:none" id="olform">
                                            <label for="payapp">Payment App</label>
                                            <select id="payapp" name="online" class="form-control form-control-sm">
                                                <option>Bank</option>
                                                <option>Online</option>
                                                <option>Others</option>
                                            </select>
                                        </div>                                      
                                        
                                        <div class="form-group col-6" id="reform">
                                            <label for="reference">Reference No</label>
                                            <input type="text" id="reference" name="refno" class="form-control form-control-sm">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-3">
                                            <button type="submit" class="btn btn-success mb-3">Add Entry</button>
                                        </div>
                                        
                                    </div>                                  
                                </form>
                            </div>
                        </div>
                    </div>    
                </div>
                <div class="row">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Data Table Primary</h4>
                                <div class="data-tables datatable-primary">
                                    <table id="dataTable2" class="text-center">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>
                                                <th>Donation Type</th>
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                            %>  
                                            
                                            <tr>
                                                
                                                <td><%=rs.getString("invoicenum") %></td>
                                                <td><%=rs.getString("type") %></td>
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                
                                                
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>
                                            </tr>                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Primary table end -->
                </div>
                
            </div>
        </div>
    </div>
    <%
        }else{
            response.sendRedirect("index.jsp");
        }
    %>                 
    
    <!--Custom Script-->
    <!--<script src="assets/js/custom1.js"></script>-->
    <script src="assets/js/custom2.js"></script>
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>