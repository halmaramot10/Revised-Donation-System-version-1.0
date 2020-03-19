package com.donate;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

public class Update_Pending extends HttpServlet {

    HttpSession session;
    int status,status2;
    Connection con;
    Statement st;
    PreparedStatement ps,ps1;
    ResultSet rs;
    String type,stat = "Pending",penum;
    String sql,sql2;
    RequestDispatcher rd = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            type = request.getParameter("pen");
            penum = request.getParameter("penum");
            
            SimpleDateFormat sdf= new SimpleDateFormat("MM-dd-yyyy");
            String today = sdf.format(new java.util.Date());
            
            session = request.getSession();
            con = DB.getConnection();
            
            switch(type){
                case "Others":
                    
                    sql = "UPDATE others_donate SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps = con.prepareStatement(sql);
                    ps.setString(1, stat);
                    ps.setString(2, today);
                    ps.setString(3, penum);
            
                    status = ps.executeUpdate();
                    
                    sql2 = "UPDATE donation SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps1 = con.prepareStatement(sql2);
                    ps1.setString(1, stat);
                    ps1.setString(2, today);
                    ps1.setString(3, penum);
            
                    status2 = ps1.executeUpdate();
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("Home_Page");
                                session.setAttribute("success","Entry Updated Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                case "Food":
                    sql = "UPDATE foods_donate SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps = con.prepareStatement(sql);
                    ps.setString(1, stat);
                    ps.setString(2, today);
                    ps.setString(3, penum);
            
                    status = ps.executeUpdate();
                    
                    sql2 = "UPDATE donation SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps1 = con.prepareStatement(sql2);
                    ps1.setString(1, stat);
                    ps1.setString(2, today);
                    ps1.setString(3, penum);
            
                    status2 = ps1.executeUpdate();
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("Home_Page");
                                session.setAttribute("success","Entry Updated Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                    case "Clothes":
                    sql = "UPDATE clothes_donate SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps = con.prepareStatement(sql);
                    ps.setString(1, stat);
                    ps.setString(2, today);
                    ps.setString(3, penum);
            
                    status = ps.executeUpdate();
                    
                    sql2 = "UPDATE donation SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps1 = con.prepareStatement(sql2);
                    ps1.setString(1, stat);
                    ps1.setString(2, today);
                    ps1.setString(3, penum);
            
                    status2 = ps1.executeUpdate();
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("Home_Page");
                                session.setAttribute("success","Entry Updated Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                    case "Money":
                    sql = "UPDATE money_donate SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps = con.prepareStatement(sql);
                    ps.setString(1, stat);
                    ps.setString(2, today);
                    ps.setString(3, penum);
            
                    status = ps.executeUpdate();
                    
                    sql2 = "UPDATE donation SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps1 = con.prepareStatement(sql2);
                    ps1.setString(1, stat);
                    ps1.setString(2, today);
                    ps1.setString(3, penum);
            
                    status2 = ps1.executeUpdate();
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("Home_Page");
                                session.setAttribute("success","Entry Updated Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                    break;
                    case "School Supplies":
                    sql = "UPDATE school_donate SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps = con.prepareStatement(sql);
                    ps.setString(1, stat);
                    ps.setString(2, today);
                    ps.setString(3, penum);
            
                    status = ps.executeUpdate();
                    
                    sql2 = "UPDATE donation SET stat = ?,datemod = ? where invoicenum = ?";
            
                    ps1 = con.prepareStatement(sql2);
                    ps1.setString(1, stat);
                    ps1.setString(2, today);
                    ps1.setString(3, penum);
            
                    status2 = ps1.executeUpdate();
                    if(status>0)
                            {

                                out.println("Entry Updated uccessfully!");
                                response.sendRedirect("Home_Page");
                                session.setAttribute("success","Entry Updated Successfully!");
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