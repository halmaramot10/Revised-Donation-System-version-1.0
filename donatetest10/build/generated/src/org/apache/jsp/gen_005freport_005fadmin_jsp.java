package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.*;
import java.sql.*;
import com.donate.DB;

public final class gen_005freport_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html class=\"no-js\" lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("    \n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/png\" href=\"assets/images/icon/favicon.ico\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/themify-icons.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/metisMenu.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/owl.carousel.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/slicknav.min.css\">\n");
      out.write("    <!-- amcharts css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://www.amcharts.com/lib/3/plugins/export/export.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("    <!-- Start datatable css -->\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css\">\n");
      out.write("    <!-- style css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/typography.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/default-css.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/styles.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/responsive.css\">\n");
      out.write("    <!-- modernizr css -->\n");
      out.write("    <script src=\"assets/js/vendor/modernizr-2.8.3.min.js\"></script>\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/buttons/1.6.1/css/buttons.dataTables.min.css\">\n");
      out.write("\t<style type=\"text/css\" class=\"init\">\n");
      out.write("\t\n");
      out.write("\t</style>\n");
      out.write("  \n");
      out.write("\t<script type=\"text/javascript\" src=\"/media/js/site.js?_=a64810efc82bfd3b645784011efa5963\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"/media/js/dynamic.php?comments-page=extensions%2Fbuttons%2Fexamples%2Fhtml5%2Fsimple.html\" async></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"../../../../examples/resources/demo.js\"></script>\n");
      out.write("\t\n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <title>Generate Reports</title>\n");
      out.write("</head>\n");
      out.write("<body class=\"body-bg\">\n");
      out.write("    \n");
      out.write("    ");

    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
      out.write("\n");
      out.write("\n");
      out.write("    ");

        String name = (String)session.getAttribute("name");
        String uname=(String)session.getAttribute("uname");
        String id=null;
        if(uname!=null){
    
      out.write("\n");
      out.write("    \n");
      out.write("    <div class=\"horizontal-main-wrapper\">\n");
      out.write("        \n");
      out.write("         <!--[if lt IE 8]>\n");
      out.write("            <p class=\"browserupgrade\">You are using an <strong>outdated</strong> browser. Please <a href=\"http://browsehappy.com/\">upgrade your browser</a> to improve your experience.</p>\n");
      out.write("        <![endif]-->\n");
      out.write("    <!-- preloader area start -->\n");
      out.write("    <div id=\"preloader\">\n");
      out.write("        <div class=\"loader\"></div>\n");
      out.write("    </div>\n");
      out.write("    <!-- preloader area end -->\n");
      out.write("    <!-- main wrapper start -->\n");
      out.write("        <!-- main header area start -->\n");
      out.write("             \n");
      out.write("        <div class=\"mainheader-area\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row align-items-center\">\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <div class=\"logo\">\n");
      out.write("                            <a href=\"home_user.jsp\"><img src=\"assets/images/media/cpelogo2.png\" alt=\"logo\"></a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- profile info & task notification -->\n");
      out.write("                    <div class=\"col-md-9 clearfix text-right\">\n");
      out.write("                        <div class=\"d-md-inline-block d-block mr-md-4\">                            \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clearfix d-md-inline-block d-block\">\n");
      out.write("                            <div class=\"user-profile m-0\">\n");
      out.write("                                <img class=\"avatar user-thumb\" src=\"assets/images/author/avatar.png\" alt=\"avatar\">\n");
      out.write("                                <h4 class=\"user-name dropdown-toggle\" data-toggle=\"dropdown\">");
      out.print(uname);
      out.write("<i class=\"fa fa-angle-down\"></i></h4>\n");
      out.write("                                <div class=\"dropdown-menu\">\n");
      out.write("                                    <a class=\"dropdown-item\" href=\"logout.jsp\">Log Out</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- main header area end -->\n");
      out.write("        \n");
      out.write("        <!-- header area start -->\n");
      out.write("        <div class=\"header-area header-bottom\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row align-items-center\">\n");
      out.write("                    <div class=\"col-lg-9  d-none d-lg-block\">\n");
      out.write("                        <div class=\"horizontal-menu\">\n");
      out.write("                            <nav>\n");
      out.write("                                <ul id=\"nav_menu\">\n");
      out.write("                                    <li class=\"active\">\n");
      out.write("                                        <a href=\"home_admin.jsp\"><i class=\"ti-plus\"></i><span>Add Donation</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"upload_csv.jsp\"><i class=\"ti-import\"></i><span>Upload CSV</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"gen_report_admin.jsp\"><i class=\"ti-file\"></i><span>Generate Reports</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"user_add.jsp\"><i class=\"ti-user\"></i><span>Add User</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"edit_type_table.jsp\"><i class=\"ti-pencil\"></i>Edit Donations</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"edit_item_category.jsp\"><i class=\"ti-pencil\"></i>Edit Dropdowns</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- header area end -->\n");
      out.write("        \n");
      out.write("        <div class=\"main-content-inner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("  \n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <div class=\"form-group col-3\" id=\"typeforms\">\n");
      out.write("                                    <label for=\"cond\">Condition</label>                                           \n");
      out.write("                                    <select id =\"tshows\" name=\"types23\" class=\"form-control form-control-sm\" onchange=\"tableshow1()\">\n");
      out.write("                                        <option value=\"Select One\">Select One</option>\n");
      out.write("                                        ");

                                            try{
                                                con=DB.getConnection();
                                                st=con.createStatement();
                                                rs=st.executeQuery("select * from category");
                                                while(rs.next()){           
                                        
      out.write("\n");
      out.write("                                                    \n");
      out.write("                                                <option value=\"");
      out.print(rs.getString("cat_name"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("cat_name"));
      out.write("</option>\n");
      out.write("                                        ");

                                                }
                                            }catch(Exception ex){
                                                ex.printStackTrace();
                                                out.println("Error: "+ex.getMessage());
                                            }                                                  
                                        
      out.write("\n");
      out.write("                                        <option value=\"All Donation Types\">All Donation Types</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                  \n");
      out.write("                <div class=\"row\" id=\"genrow\" style=\"display:none\">\n");
      out.write("                    <!-- Primary table start -->\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"header-title\">All Donation Types</h4>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success mb-3\" onclick=\"showgenrec01()\">Received</button>                               \n");
      out.write("                                <button type=\"button\" class=\"btn btn-info mb-3\" onclick=\"showgenpen01()\">Pending</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger mb-3\" onclick=\"showgenrel01()\">Released</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary mb-3\" onclick=\"showgenall01()\">All Statuses</button>\n");
      out.write("                                <br>\n");
      out.write("                                <div id=\"genall\" style=\"display:\">\n");
      out.write("                                    <table id=\"example\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Donation Type</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("type") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                             \n");
      out.write("                                <div id=\"genrec\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example1\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Donation Type</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("type") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div id=\"genpen\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example2\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Donation Type</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("type") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>         \n");
      out.write("                                \n");
      out.write("                                <div id=\"genrel\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example3\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Donation Type</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM donation where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("type") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div> \n");
      out.write("                                        \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Primary table end -->\n");
      out.write("                </div>                    \n");
      out.write("                  \n");
      out.write("                <div class=\"row\" id=\"schrow\" style=\"display:none\">\n");
      out.write("                    <!-- Primary table start -->\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"header-title\">School Supplies Donations</h4>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success mb-3\" onclick=\"showschrec()\">Received</button>                               \n");
      out.write("                                <button type=\"button\" class=\"btn btn-info mb-3\" onclick=\"showschpen()\">Pending</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger mb-3\" onclick=\"showschrel()\">Released</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary mb-3\" onclick=\"showschall()\">All Statuses</button>\n");
      out.write("                                <br>\n");
      out.write("                                <div id=\"schall\" style=\"display:\">\n");
      out.write("                                    <table id=\"example4\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                             \n");
      out.write("                                <div id=\"schrec\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example5\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div id=\"schpen\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example6\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>         \n");
      out.write("                                \n");
      out.write("                                <div id=\"schrel\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example7\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                               \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM school_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div> \n");
      out.write("                                        \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Primary table end -->\n");
      out.write("                </div>                       \n");
      out.write("                                        \n");
      out.write("                <div class=\"row\" id=\"foorow\" style=\"display:none\">\n");
      out.write("                    <!-- Primary table start -->\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"header-title\">Food Donations</h4>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success mb-3\" onclick=\"showfoorec()\">Received</button>                               \n");
      out.write("                                <button type=\"button\" class=\"btn btn-info mb-3\" onclick=\"showfoopen()\">Pending</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger mb-3\" onclick=\"showfoorel()\">Released</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary mb-3\" onclick=\"showfooall()\">All Statuses</button>\n");
      out.write("                                <br>\n");
      out.write("                                <div id=\"fooall\" style=\"display:\">\n");
      out.write("                                    <table id=\"example8\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Expiration Date</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("exp") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                             \n");
      out.write("                                <div id=\"foorec\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example9\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Expiration Date</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("exp") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div id=\"foopen\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example10\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Expiration Date</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("exp") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>         \n");
      out.write("                                \n");
      out.write("                                <div id=\"foorel\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example11\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                               \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Expiration Date</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM foods_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("exp") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div> \n");
      out.write("                                        \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Primary table end -->\n");
      out.write("                </div>                        \n");
      out.write("                                        \n");
      out.write("                <div class=\"row\" id=\"othrow\" style=\"display:none\">\n");
      out.write("                    <!-- Primary table start -->\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"header-title\">Other Donations</h4>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success mb-3\" onclick=\"showothrec()\">Received</button>                               \n");
      out.write("                                <button type=\"button\" class=\"btn btn-info mb-3\" onclick=\"showothpen()\">Pending</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger mb-3\" onclick=\"showothrel()\">Released</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary mb-3\" onclick=\"showothall()\">All Statuses</button>\n");
      out.write("                                <br>\n");
      out.write("                                <div id=\"othall\" style=\"display:\">\n");
      out.write("                                    <table id=\"example12\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                             \n");
      out.write("                                <div id=\"othrec\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example13\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>\n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("                                \n");
      out.write("                                <div id=\"othpen\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example14\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>         \n");
      out.write("                                \n");
      out.write("                                <div id=\"othrel\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example15\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                               \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                                \n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM others_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){
                                                    
                                            
      out.write("  \n");
      out.write("                                            \n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("                                            \n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div> \n");
      out.write("                                        \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Primary table end -->\n");
      out.write("                </div>                        \n");
      out.write("                                        \n");
      out.write("                  <div class=\"row\" id=\"monrow\" style=\"display:none\">\n");
      out.write("                    <!-- Primary table start -->\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"header-title\">Money Donations</h4>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success mb-3\" onclick=\"showmonrec()\">Received</button>                               \n");
      out.write("                                <button type=\"button\" class=\"btn btn-info mb-3\" onclick=\"showmonpen()\">Pending</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger mb-3\" onclick=\"showmonrel()\">Released</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary mb-3\" onclick=\"showmonall()\">All Statuses</button>\n");
      out.write("                                <br>\n");
      out.write("                                <div id=\"monall\" style=\"display:\">\n");
      out.write("                                    <table id=\"example16\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Amount</th>\n");
      out.write("                                                <th>Payment Through</th>\n");
      out.write("                                                <th>Reference Number</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("pays") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("refno") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div id=\"monrec\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example17\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Amount</th>\n");
      out.write("                                                <th>Payment Through</th>\n");
      out.write("                                                <th>Reference Number</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate where stat = 'Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("pays") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("refno") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div id=\"monpen\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example18\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Amount</th>\n");
      out.write("                                                <th>Payment Through</th>\n");
      out.write("                                                <th>Reference Number</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("pays") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("refno") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>         \n");
      out.write("\n");
      out.write("                                <div id=\"monrel\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example19\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Amount</th>\n");
      out.write("                                                <th>Payment Through</th>\n");
      out.write("                                                <th>Reference Number</th>\n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM money_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("pays") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("refno") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div> \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Primary table end -->\n");
      out.write("                </div>                      \n");
      out.write("                \n");
      out.write("            <div class=\"row\" id=\"clorow\" style=\"display:none\">\n");
      out.write("                    <!-- Primary table start -->\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h4 class=\"header-title\">Money Donations</h4>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-success mb-3\" onclick=\"showclorec()\">Received</button>                               \n");
      out.write("                                <button type=\"button\" class=\"btn btn-info mb-3\" onclick=\"showclopen()\">Pending</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-danger mb-3\" onclick=\"showclorel()\">Released</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-primary mb-3\" onclick=\"showcloall()\">All Statuses</button>\n");
      out.write("                                <br>\n");
      out.write("                                <div id=\"cloall\" style=\"display:\">\n");
      out.write("                                    <table id=\"example20\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>Size</th>                                               \n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("size") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div id=\"clorec\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example21\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>Size</th>                                               \n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate where stat='Received'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("size") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div id=\"clopen\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example22\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>Size</th>                                               \n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate where stat='Pending'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("size") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div>         \n");
      out.write("\n");
      out.write("                                <div id=\"clorel\" style=\"display:none\">\n");
      out.write("                                    <table id=\"example23\" class=\"table table-striped table-bordered zero-configuration\">\n");
      out.write("                                        <thead class=\"text-capitalize\">\n");
      out.write("                                            <tr>\n");
      out.write("                                                <th>Invoice No</th>                                                \n");
      out.write("                                                <th>Item Category</th>\n");
      out.write("                                                <th>Description</th>\n");
      out.write("                                                <th>Quantity</th>\n");
      out.write("                                                <th>Condition</th>\n");
      out.write("                                                <th>Size</th>                                               \n");
      out.write("                                                <th>From</th>\n");
      out.write("                                                <th>To</th>\n");
      out.write("                                                <th>Status</th>\n");
      out.write("                                                <th>Date</th>\n");
      out.write("\n");
      out.write("                                            </tr>\n");
      out.write("                                        </thead>\n");
      out.write("                                        <tbody>\n");
      out.write("                                               ");

                                                try{ 
                                                con = DB.getConnection();
                                                st= con.createStatement();
                                                String sql ="SELECT * FROM clothes_donate where stat='Released'";

                                                rs = st.executeQuery(sql);
                                                while(rs.next()){

                                            
      out.write("  \n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>");
      out.print(rs.getString("invoicenum") );
      out.write("</td>                                                \n");
      out.write("                                                <td>");
      out.print(rs.getString("item") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("des") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("qty") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("cond") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("size") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("fr") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("donto") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("stat") );
      out.write("</td>\n");
      out.write("                                                <td>");
      out.print(rs.getString("date") );
      out.write("</td>                                               \n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                             ");
 
                                                }

                                                } catch (Exception e) {
                                                e.printStackTrace();
                                                }
                                            
      out.write("                                          \n");
      out.write("                                        </tbody>\n");
      out.write("                                    </table>\n");
      out.write("                                </div> \n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <!-- Primary table end -->\n");
      out.write("                </div>\n");
      out.write("                                                    \n");
      out.write("                                        \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    ");

        }else{
            response.sendRedirect("index.jsp");
        }
    
      out.write("                 \n");
      out.write("    \n");
      out.write("    <!--Custom Script-->\n");
      out.write("    <script src=\"assets/js/custom1.js\"></script>\n");
      out.write("    <script src=\"assets/js/custom2.js\"></script>\n");
      out.write("    <script src=\"assets/js/custom3.js\"></script>\n");
      out.write("    <!-- jquery latest version -->\n");
      out.write("    <script src=\"assets/js/vendor/jquery-2.2.4.min.js\"></script>\n");
      out.write("    <!-- bootstrap 4 js -->\n");
      out.write("    <script src=\"assets/js/popper.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/metisMenu.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.slimscroll.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery.slicknav.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Start datatable js -->\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js\"></script>\n");
      out.write("    <!-- others plugins -->\n");
      out.write("    <script src=\"assets/js/plugins.js\"></script>\n");
      out.write("    <script src=\"assets/js/scripts.js\"></script>\n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\" language=\"javascript\" src=\"https://code.jquery.com/jquery-3.3.1.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" language=\"javascript\" src=\"https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
