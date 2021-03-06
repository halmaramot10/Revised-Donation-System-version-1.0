package com.donate;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

public class Edit_Request extends HttpServlet {

    HttpSession session;
    int status,status2;
    Connection con;
    Statement st;
    ResultSet rs;
    PreparedStatement ps;
    String type,stat = "Pending",penum,requestby;
    String sql,sql2;
    RequestDispatcher rd = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
            type = request.getParameter("reqtype");
            penum = request.getParameter("reqnum");
            requestby = request.getParameter("reqby");
            
            session = request.getSession();
            con = DB.getConnection();
            
            sql = "INSERT INTO edit_request (type,invoicenum,daterequest) VALUES (?,?,?)";
            
            ps = con.prepareStatement(sql);
            
            ps.setString(1, type);
            ps.setString(2, penum);
            ps.setString(3, requestby);
            
            status = ps.executeUpdate();
                    
            if(status>0)
            {

                out.println("Edit Request Sent");
                response.sendRedirect("Home_Page");
                session.setAttribute("success","Edit Request Sent!");
            }
            else
            {

                out.println("Oops! Something went wrong...");
                session.setAttribute("error","Oops! Something went wrong...");
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