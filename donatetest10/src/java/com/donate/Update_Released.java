package com.donate;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 *
 * @author Hazel Anne
 */
public class Update_Released extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    HttpSession session;
    int status,status2;
    Connection con;
    Statement st;
    ResultSet rs;
    String type,stat = "Released",penum;
    String sql,sql2;
    RequestDispatcher rd = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            type = request.getParameter("rels");
            penum = request.getParameter("relums");
            
            SimpleDateFormat sdf= new SimpleDateFormat("MM-dd-yyyy");
            String today = sdf.format(new java.util.Date());
            
            session = request.getSession();
            con = DB.getConnection();
            
            switch(type){
                case "Others":
                    st = con.createStatement();
                        sql = "UPDATE others_donate SET "
                            + "stat = '"+stat+"'"
                            + ",datemod = '"+today+"'"
                           
                           + "WHERE invoicenum = '"+penum+"'";
                    status=st.executeUpdate(sql);
                    sql2 = "UPDATE donation SET "
                           + "stat = '"+stat+"'"
                           + ",datemod = '"+today+"'"                          
                           + "WHERE invoicenum = '"+penum+"'";
                    status2=st.executeUpdate(sql2);
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Entry Updated uccessfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                case "Food":
                    st = con.createStatement();
                        sql = "UPDATE foods_donate SET "
                            + "stat = '"+stat+"'"
                            + ",datemod = '"+today+"'"
                           
                           + "WHERE invoicenum = '"+penum+"'";
                    status=st.executeUpdate(sql);
                    sql2 = "UPDATE donation SET "
                           + "stat = '"+stat+"'"
                           + ",datemod = '"+today+"'"                          
                           + "WHERE invoicenum = '"+penum+"'";
                    status2=st.executeUpdate(sql2);
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Entry Updated uccessfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                    case "Clothes":
                    st = con.createStatement();
                        sql = "UPDATE clothes_donate SET "
                            + "stat = '"+stat+"'"
                            + ",datemod = '"+today+"'"
                           
                           + "WHERE invoicenum = '"+penum+"'";
                    status=st.executeUpdate(sql);
                    sql2 = "UPDATE donation SET "
                           + "stat = '"+stat+"'"
                           + ",datemod = '"+today+"'"                          
                           + "WHERE invoicenum = '"+penum+"'";
                    status2=st.executeUpdate(sql2);
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Entry Updated uccessfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                    case "Money":
                    st = con.createStatement();
                        sql = "UPDATE money_donate SET "
                            + "stat = '"+stat+"'"
                            + ",datemod = '"+today+"'"
                           
                           + "WHERE invoicenum = '"+penum+"'";
                    status=st.executeUpdate(sql);
                    sql2 = "UPDATE donation SET "
                           + "stat = '"+stat+"'"
                           + ",datemod = '"+today+"'"                          
                           + "WHERE invoicenum = '"+penum+"'";
                    status2=st.executeUpdate(sql2);
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Entry Updated uccessfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                    case "School Supplies":
                    st = con.createStatement();
                        sql = "UPDATE school_donate SET "
                            + "stat = '"+stat+"'"
                            + ",datemod = '"+today+"'"
                           
                           + "WHERE invoicenum = '"+penum+"'";
                    status=st.executeUpdate(sql);
                    sql2 = "UPDATE donation SET "
                           + "stat = '"+stat+"'"
                           + ",datemod = '"+today+"'"                          
                           + "WHERE invoicenum = '"+penum+"'";
                    status2=st.executeUpdate(sql2);
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Entry Updated uccessfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
            }
        }catch(SQLException ex) { 
                   while (ex!=null) { 
                       System.out.println ("SQL Exception: " + ex.getMessage ()); 
                       ex = ex.getNextException(); 
                   } 
               } catch(java.lang.Exception ex) { 
                    System.out.println ("SQL Exception: " + ex.getMessage ()); 
                   ex.printStackTrace(); 
               }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}