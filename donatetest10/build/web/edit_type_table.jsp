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
    
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css">
	<style type="text/css" class="init">
	
	</style>
  
	<script type="text/javascript" src="/media/js/site.js?_=a64810efc82bfd3b645784011efa5963"></script>
	<script type="text/javascript" src="/media/js/dynamic.php?comments-page=extensions%2Fbuttons%2Fexamples%2Fhtml5%2Fsimple.html" async></script>
	<script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
	<script type="text/javascript" language="javascript" src="../../../../examples/resources/demo.js"></script>
	
        
    
    <title>Edit Donations</title>
</head>
<body class="body-bg">
    
    <%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    %>

    <%
        String name = (String)session.getAttribute("name");
        String uname=(String)session.getAttribute("uname");
        String id=null;
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
                            <a href="Home"><img src="assets/images/media/logo.png" alt="logo"></a>
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
                                    <a class="dropdown-item" href="Add_Users">User Accounts</a>
                                    <a class="dropdown-item" href="Login_Page">Log Out</a>
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
                                    <li>
                                        <a href="Dashboard"><i class="ti-dashboard"></i><span>Dashboard</span></a>
                                    </li>
                                    <li>
                                        <a href="Home"><i class="ti-plus"></i><span>Add Donation</span></a>
                                    </li>
                                    <!--<li>
                                        <a href="upload_csv.jsp"><i class="ti-import"></i><span>Upload CSV</span></a>
                                    </li>-->
                                    <li>
                                        <a href="Generate_Report"><i class="ti-file"></i><span>Generate Reports</span></a>
                                    </li>
                                    <li>
                                        <a href="Add_Users"><i class="ti-user"></i><span>User Accounts</span></a>
                                    </li>
                                    <li class="active">
                                        <a href="Edit_Donations"><i class="ti-pencil"></i>Edit Donations</a>
                                    </li>
                                    <li>
                                        <a href="Edit_Dropdowns"><i class="ti-pencil"></i>Edit Dropdowns</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header area end -->
        
        <div class="main-content-inner">
            <div class="container">
  
                <div class="row">
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <div class="form-group col-3" id="typeforms">
                                    <label for="cond">Donation Types</label>                                           
                                    <select id ="tshows01" name="types23" class="form-control form-control-sm" onchange="tableshow01()">
                                        <option value="Select One">Select One</option>
                                        <%
                                            try{
                                                con=DB.getConnection();
                                                st=con.createStatement();
                                                rs=st.executeQuery("select * from category");
                                                while(rs.next()){           
                                        %>
                                                    
                                                <option value="<%=rs.getString("cat_name")%>"><%=rs.getString("cat_name")%></option>
                                        <%
                                                }
                                            }catch(Exception ex){
                                                ex.printStackTrace();
                                                out.println("Error: "+ex.getMessage());
                                            }                                                  
                                        %>
                                        
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                  
                    
                  
                <div class="row" id="schrow01" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">School Supplies Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showschrec01()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showschpen01()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showschrel01()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showschall01()">All Statuses</button>
                                <br>
                                <div id="schall01" style="display:">
                                    <table id="example04" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_School?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>
                             
                                <div id="schrec01" style="display:none">
                                    <table id="example05" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_School?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div id="schpen01" style="display:none">
                                    <table id="example06" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_School?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>         
                                
                                <div id="schrel01" style="display:none">
                                    <table id="example07" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                               
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_School?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div> 
                                        
                            </div>
                        </div>
                    </div>
                    <!-- Primary table end -->
                </div>                       
                                        
                <div class="row" id="foorow01" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Food Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showfoorec01()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showfoopen01()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showfoorel01()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showfooall01()">All Statuses</button>
                                <br>
                                <div id="fooall01" style="display:">
                                    <table id="example08" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Expiration Date</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("exp") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Food?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>
                             
                                <div id="foorec01" style="display:none">
                                    <table id="example09" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Expiration Date</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("exp") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Food?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div id="foopen01" style="display:none">
                                    <table id="example010" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Expiration Date</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("exp") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Food?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>         
                                
                                <div id="foorel01" style="display:none">
                                    <table id="example011" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                               
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Expiration Date</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("exp") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Food?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div> 
                                        
                            </div>
                        </div>
                    </div>
                    <!-- Primary table end -->
                </div>                        
                                        
                <div class="row" id="othrow01" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Other Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showothrec01()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showothpen01()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showothrel01()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showothall01()">All Statuses</button>
                                <br>
                                <div id="othall01" style="display:">
                                    <table id="example012" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td> 
                                                <td><a href="Edit_Others?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>
                             
                                <div id="othrec01" style="display:none">
                                    <table id="example013" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Others?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div id="othpen01" style="display:none">
                                    <table id="example014" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Others?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>         
                                
                                <div id="othrel01" style="display:none">
                                    <table id="example015" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                               
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Others?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>
                                            
                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div> 
                                        
                            </div>
                        </div>
                    </div>
                    <!-- Primary table end -->
                </div>                        
                                        
                  <div class="row" id="monrow01" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Money Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showmonrec01()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showmonpen01()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showmonrel01()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showmonall01()">All Statuses</button>
                                <br>
                                <div id="monall01" style="display:">
                                    <table id="example016" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Amount</th>
                                                <th>Payment Through</th>
                                                <th>Reference Number</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("pays") %></td>
                                                <td><%=rs.getString("refno") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Money?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div id="monrec01" style="display:none">
                                    <table id="example017" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Amount</th>
                                                <th>Payment Through</th>
                                                <th>Reference Number</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate where stat = 'Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("pays") %></td>
                                                <td><%=rs.getString("refno") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Money?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div id="monpen01" style="display:none">
                                    <table id="example018" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Amount</th>
                                                <th>Payment Through</th>
                                                <th>Reference Number</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("pays") %></td>
                                                <td><%=rs.getString("refno") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Money?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>         

                                <div id="monrel01" style="display:none">
                                    <table id="example019" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Amount</th>
                                                <th>Payment Through</th>
                                                <th>Reference Number</th>
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("pays") %></td>
                                                <td><%=rs.getString("refno") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>    
                                                <td><a href="Edit_Money?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div> 
                            </div>
                        </div>
                    </div>
                    <!-- Primary table end -->
                </div>                      
                
            <div class="row" id="clorow01" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Clothes Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showclorec01()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showclopen01()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showclorel01()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showcloall01()">All Statuses</button>
                                <br>
                                <div id="cloall01" style="display:">
                                    <table id="example020" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>Size</th>                                               
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("size") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Clothes?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div id="clorec01" style="display:none">
                                    <table id="example021" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>Size</th>                                               
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("size") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Clothes?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div id="clopen01" style="display:none">
                                    <table id="example022" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>Size</th>                                               
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("size") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td> 
                                                <td><a href="Edit_Clothes?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
                                        </tbody>
                                    </table>
                                </div>         

                                <div id="clorel01" style="display:none">
                                    <table id="example023" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Invoice No</th>                                                
                                                <th>Item Category</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Condition</th>
                                                <th>Size</th>                                               
                                                <th>From</th>
                                                <th>To</th>
                                                <th>Status</th>
                                                <th>Date</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            %>  

                                            <tr>
                                                <td><%=rs.getString("invoicenum") %></td>                                                
                                                <td><%=rs.getString("item") %></td>
                                                <td><%=rs.getString("des") %></td>
                                                <td><%=rs.getString("qty") %></td>
                                                <td><%=rs.getString("cond") %></td>
                                                <td><%=rs.getString("size") %></td>
                                                <td><%=rs.getString("fr") %></td>
                                                <td><%=rs.getString("donto") %></td>
                                                <td><%=rs.getString("stat") %></td>
                                                <td><%=rs.getString("date") %></td>
                                                <td><a href="Edit_Clothes?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
                                            </tr>

                                             <% 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            %>                                          
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
            response.sendRedirect("Login_Page");
        }
    %>                 
    
    <!--Custom Script-->
    <script src="assets/js/custom1.js"></script>
    <script src="assets/js/custom3.js"></script>
    
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
    
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
</body>

</html>
