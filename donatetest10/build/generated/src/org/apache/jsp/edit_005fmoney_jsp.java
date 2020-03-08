package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Date;
import java.text.*;
import java.sql.*;
import com.donate.DB;

public final class edit_005fmoney_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\n");
      out.write("        <script type=\"text/javascript\" class=\"init\">\n");
      out.write("            $(document).ready(function() {\n");
      out.write("                    $('#example').DataTable( {\n");
      out.write("                    } );\n");
      out.write("            } );\n");
      out.write("\t</script>\n");
      out.write("    \n");
      out.write("    <title>Add Donation Entry</title>\n");
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

        Date today = new Date();
        Format formatter1;
        String tod1;
        formatter1 = new SimpleDateFormat("MM-dd-yyyy");
        tod1 = formatter1.format(today);

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
      out.write("        <!-- page title area end -->\n");
      out.write("        <div class=\"main-content-inner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12 mt-5\">\n");
      out.write("                        <div class=\"card\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <b style=\"font-weight:bolder; color:green;\">\n");
      out.write("                                ");

                                    try{
                                        String success= session.getAttribute("success").toString();
                                        out.println(success);
                                        session.removeAttribute("success");
                                    }catch(Exception er){

                                    }

                                
      out.write("\n");
      out.write("                                </b>\n");
      out.write("                                <h6 class=\"header-title\" style=\"text-align: center\">Add Donation Entry</h6>\n");
      out.write("                                <form action=\"Add_Donation\" method=\"post\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"form-group col-3\">\n");
      out.write("                                            <label for=\"addedby\">Added By</label>\n");
      out.write("                                            <input type=\"text\" id=\"addedby\" class=\"form-control form-control-sm\" readonly name=\"addedby\" value=\"");
      out.print(name);
      out.write("\">                                          \n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                                        <div class=\"form-group col-3\">\n");
      out.write("                                            <label for=\"date\">Date</label>\n");
      out.write("                                            <input type=\"text\" id=\"date\" class=\"form-control form-control-sm\" name=\"date\" readonly value=\"");
      out.print(tod1);
      out.write("\">                                      \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group col-3\" id=\"item4\" style=\"display:none\">\n");
      out.write("                                            <label for=\"item\">Item Type</label>\n");
      out.write("                                            <select name=\"item4\" class=\"form-control form-control-sm\" id=\"item04\" onchange=\"shows2()\">\n");
      out.write("                                                ");

                                            try{
                                                con=DB.getConnection();
                                                st=con.createStatement();
                                                rs=st.executeQuery("select * from item_category where category = 'Money'");
                                                while(rs.next()){           
                                        
      out.write("\n");
      out.write("                                                    \n");
      out.write("                                                    <option value=\"");
      out.print(rs.getString("item_name") );
      out.write('"');
      out.write('>');
      out.print(rs.getString("item_name") );
      out.write("</option>\n");
      out.write("                                        ");

                                                }
                                            }catch(Exception ex){
                                                ex.printStackTrace();
                                                out.println("Error: "+ex.getMessage());
                                            }
                                        
      out.write("\n");
      out.write("                                                <option>Add New Item</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group col-3\" onchange = \"shows2()\" id=\"qtyform\">\n");
      out.write("                                            <label for=\"qty\" id=\"qtytxt\">Amount</label>                                           \n");
      out.write("                                            <input type=\"text\" id = \"qty\" name=\"qty\" class=\"form-control form-control-sm\">\n");
      out.write("                                        </div>                                               \n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"form-group col-4\" id=\"frform\">\n");
      out.write("                                            <label for=\"from\">From</label>\n");
      out.write("                                            <input type=\"text\" id=\"from\" name=\"fr\" class=\"form-control form-control-sm\">\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group col-4\" id=\"toform\">\n");
      out.write("                                            <label for=\"donto\">To</label>\n");
      out.write("                                            <input type=\"text\" id=\"donto\" name=\"donto\" class=\"form-control form-control-sm\">                                      \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group col-4\" id=\"statform\">\n");
      out.write("                                            <label for=\"stat\">Status</label>\n");
      out.write("                                            <input type=\"text\" id=\"stat\" class=\"form-control form-control-sm\" readonly name=\"stat\" value=\"Received\">                                      \n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"form-group col-4\" id=\"metform\">\n");
      out.write("                                            <label for=\"metform\">Method</label>\n");
      out.write("                                            <select id=\"method\" name=\"method\" class=\"form-control form-control-sm\" onchange =\"shows3()\">\n");
      out.write("                                                <option>Select One</option>\n");
      out.write("                                                <option value=\"Bank\">Bank</option>\n");
      out.write("                                                <option value=\"Online\">Online</option>\n");
      out.write("                                                <option value=\"Other\">Other</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"form-group col-4\" style=\"display:none\" id=\"olform\">\n");
      out.write("                                            <label for=\"payapp\">Payment Through</label>\n");
      out.write("                                            <select id=\"pay2\" name=\"pay2\" class=\"form-control form-control-sm\" onchange=\"shows4()\">\n");
      out.write("                                                ");

                                            try{
                                                con=DB.getConnection();
                                                st=con.createStatement();
                                                rs=st.executeQuery("select * from paymet");
                                                while(rs.next()){           
                                        
      out.write("\n");
      out.write("                                                    \n");
      out.write("                                                    <option value=\"");
      out.print(rs.getString("met_name") );
      out.write('"');
      out.write('>');
      out.print(rs.getString("met_name") );
      out.write("</option>\n");
      out.write("                                        ");

                                                }
                                            }catch(Exception ex){
                                                ex.printStackTrace();
                                                out.println("Error: "+ex.getMessage());
                                            }
                                        
      out.write("\n");
      out.write("                                                <option>Add New Application</option>\n");
      out.write("                                            </select>\n");
      out.write("                                        </div> \n");
      out.write("                                        \n");
      out.write("                                        <div class=\"form-group col-4\" id=\"reform\">\n");
      out.write("                                            <label for=\"reference\">Reference No</label>\n");
      out.write("                                            <input type=\"text\" id=\"reference\" name=\"refno\" class=\"form-control form-control-sm\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"form-group col-3\">\n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-success mb-3\">Add Entry</button>\n");
      out.write("                                        </div> \n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
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
      out.write("    \n");
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
