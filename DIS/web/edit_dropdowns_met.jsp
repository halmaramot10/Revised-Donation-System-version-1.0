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
	
	
        <script type="text/javascript" class="init">
            $(document).ready(function() {
                    $('#example').DataTable( {
                    } );
            } );
	</script>
    
    <title>Edit Payment Method</title>
</head>
<body class="body-bg">
    
    <%
    Connection con = null;
    Statement st = null, st2 = null;
    ResultSet rs = null;
    PreparedStatement ps = null, ps1 = null;
    %>

    <%
        int id = 0;
        Date today = new Date();
        Format formatter1;
        String tod1;
        formatter1 = new SimpleDateFormat("MM-dd-yyyy");
        tod1 = formatter1.format(today);

        String name = (String)session.getAttribute("name");
        String uname=(String)session.getAttribute("uname");
        id = Integer.parseInt(request.getParameter("id"));
        if(uname!=null){
    %>
    <%
            String met = null,pay = null;
            try{
            con = DB.getConnection();
            st = con.createStatement();
            ps = con.prepareStatement("select * from paymet where id = "+id+"");
            rs = ps.executeQuery();
            if(rs.next()){
                met = rs.getString("method");
                pay = rs.getString("met_name");
            }
            }catch(Exception e){
               out.println(e);
            }
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
                            <a href="Dashboard"><img src="assets/images/media/logo.png" alt="logo"></a>
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
                                    <li>
                                        <a href="Generate_Report"><i class="ti-file"></i><span>Generate Reports</span></a>
                                    </li>
                                    <li>
                                        <a href="Add_Users"><i class="ti-user"></i><span>Add User</span></a>
                                    </li>
                                    <li>
                                        <a href="Edit_Donations"><i class="ti-pencil"></i>Edit Donations</a>
                                    </li>
                                    <li class="active">
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
                                <h6 class="header-title" style="text-align: center">Update Payment Method Entry</h6>
                                <form action="Update_Payment" method="post">
                                    <div class ="row">
                                        <input type ="text" name="id" value="<%=id%>" style="display: none">
                                        <div class="form-group col-4">
                                            <select name="method" class="form-control form-control-sm">
                                                
                                                <option value="<%=met%>" selected="selected"><%=met%></option>
                                                <%
                                                    try{
                                                        con=DB.getConnection();
                                                        ps1 = con.prepareStatement("select * from method");
                                                        rs=ps1.executeQuery();
                                                        while(rs.next()){           
                                                %>
                                                    
                                                    <option value="<%=rs.getString("method") %>"><%=rs.getString("method") %></option>
                                                <%
                                                        }
                                                    }catch(Exception ex){
                                                        ex.printStackTrace();
                                                        out.println("Error: "+ex.getMessage());
                                                    }
                                                %>
                                            </select>
                                        </div>
                                        <div class="form-group col-4">
                                            <input type ="text" name="met_name" value="<%=pay%>" class="form-control form-control-sm">
                                        </div>
                                        <div class="form-group col-4">
                                            <button type="submit" class="btn btn-success btn-xs mb-3">Update</button>     
                                            <a href="Edit_Dropdowns"><button type= "button" class="btn btn-danger btn-xs mb-3">Cancel</button></a>
                                        </div> 
                                        
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
               
                 <div class="row">
                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h6>Payment Method</h6>
                                <br>
                                <div>
                                    <table id="examples" class="table table-striped table-bordered zero-configuration">
                                        <thead class="text-capitalize">
                                            <tr>
                                                <th>Method</th>
                                                <th>Bank/Application Name</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                               <%
                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM paymet";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            %>  
                                            
                                            <tr>
                                                <td><%=rs.getString("method") %></td>                                                
                                                <td><%=rs.getString("met_name") %></td>
                                                <td><a href="Edit_Method?id=<%=rs.getInt("id")%>"><i class="ti-pencil"></i> Edit</a></td>
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
    <script src="assets/js/custom4.js"></script>
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
