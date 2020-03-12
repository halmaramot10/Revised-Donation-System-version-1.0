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
	
        
    
    <title>Generate Reports</title>
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
                            <a href="Home_Page"><img src="assets/images/media/cpelogo2.png" alt="logo"></a>
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
                                        <a href="Home_Page"><i class="ti-plus"></i><span>Add Donation</span></a>
                                    </li>
                                    <!--<li>
                                        <a href="upload_csv.jsp"><i class="ti-import"></i><span>Upload CSV</span></a>
                                    </li>-->
                                    <li class="active">
                                        <a href="Generate_Report_Page"><i class="ti-file"></i><span>Generate Reports</span></a>
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
                                    <select id ="tshows" name="types23" class="form-control form-control-sm" onchange="tableshow1()">
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
                                        <option value="All Donation Types">All Donation Types</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                  
                <div class="row" id="genrow" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">All Donation Types</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showgenrec()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showgenpen()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showgenrel()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showgenall()">All Statuses</button>
                                <br>
                                <div id="genall" style="display:">
                                    <table id="example" class="table table-striped table-bordered zero-configuration">
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
                                        </tbody>
                                    </table>
                                </div>
                             
                                <div id="genrec" style="display:none">
                                    <table id="example1" class="table table-striped table-bordered zero-configuration">
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
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation where stat='Received'";

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
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div id="genpen" style="display:none">
                                    <table id="example2" class="table table-striped table-bordered zero-configuration">
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
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation where stat='Pending'";

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
                                        </tbody>
                                    </table>
                                </div>         
                                
                                <div id="genrel" style="display:none">
                                    <table id="example3" class="table table-striped table-bordered zero-configuration">
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
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation where stat='Released'";

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
                                        </tbody>
                                    </table>
                                </div> 
                                        
                            </div>
                        </div>
                    </div>
                    <!-- Primary table end -->
                </div>                    
                  
                <div class="row" id="schrow" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">School Supplies Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showschrec()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showschpen()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showschrel()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showschall()">All Statuses</button>
                                <br>
                                <div id="schall" style="display:">
                                    <table id="example4" class="table table-striped table-bordered zero-configuration">
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
                             
                                <div id="schrec" style="display:none">
                                    <table id="example5" class="table table-striped table-bordered zero-configuration">
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
                                
                                <div id="schpen" style="display:none">
                                    <table id="example6" class="table table-striped table-bordered zero-configuration">
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
                                
                                <div id="schrel" style="display:none">
                                    <table id="example7" class="table table-striped table-bordered zero-configuration">
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
                                        
                <div class="row" id="foorow" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Food Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showfoorec()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showfoopen()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showfoorel()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showfooall()">All Statuses</button>
                                <br>
                                <div id="fooall" style="display:">
                                    <table id="example8" class="table table-striped table-bordered zero-configuration">
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
                             
                                <div id="foorec" style="display:none">
                                    <table id="example9" class="table table-striped table-bordered zero-configuration">
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
                                
                                <div id="foopen" style="display:none">
                                    <table id="example10" class="table table-striped table-bordered zero-configuration">
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
                                
                                <div id="foorel" style="display:none">
                                    <table id="example11" class="table table-striped table-bordered zero-configuration">
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
                                        
                <div class="row" id="othrow" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Other Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showothrec()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showothpen()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showothrel()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showothall()">All Statuses</button>
                                <br>
                                <div id="othall" style="display:">
                                    <table id="example12" class="table table-striped table-bordered zero-configuration">
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
                             
                                <div id="othrec" style="display:none">
                                    <table id="example13" class="table table-striped table-bordered zero-configuration">
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
                                
                                <div id="othpen" style="display:none">
                                    <table id="example14" class="table table-striped table-bordered zero-configuration">
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
                                
                                <div id="othrel" style="display:none">
                                    <table id="example15" class="table table-striped table-bordered zero-configuration">
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
                                        
                  <div class="row" id="monrow" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Money Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showmonrec()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showmonpen()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showmonrel()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showmonall()">All Statuses</button>
                                <br>
                                <div id="monall" style="display:">
                                    <table id="example16" class="table table-striped table-bordered zero-configuration">
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

                                <div id="monrec" style="display:none">
                                    <table id="example17" class="table table-striped table-bordered zero-configuration">
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

                                <div id="monpen" style="display:none">
                                    <table id="example18" class="table table-striped table-bordered zero-configuration">
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

                                <div id="monrel" style="display:none">
                                    <table id="example19" class="table table-striped table-bordered zero-configuration">
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
                
            <div class="row" id="clorow" style="display:none">
                    <!-- Primary table start -->
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Clothes Donations</h4>
                                <button type="button" class="btn btn-success mb-3" onclick="showclorec()">Received</button>                               
                                <button type="button" class="btn btn-info mb-3" onclick="showclopen()">Pending</button>
                                <button type="button" class="btn btn-danger mb-3" onclick="showclorel()">Released</button>
                                <button type="button" class="btn btn-primary mb-3" onclick="showcloall()">All Statuses</button>
                                <br>
                                <div id="cloall" style="display:">
                                    <table id="example20" class="table table-striped table-bordered zero-configuration">
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

                                <div id="clorec" style="display:none">
                                    <table id="example21" class="table table-striped table-bordered zero-configuration">
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

                                <div id="clopen" style="display:none">
                                    <table id="example22" class="table table-striped table-bordered zero-configuration">
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

                                <div id="clorel" style="display:none">
                                    <table id="example23" class="table table-striped table-bordered zero-configuration">
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
    
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
</body>

</html>
