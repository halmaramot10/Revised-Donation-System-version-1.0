package com.donate;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

public class Update_Deactivate extends HttpServlet {

    HttpSession session;
    int status;
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    RequestDispatcher rd = null;
    
    String inid=null,stats = "Inactive";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            inid = request.getParameter("inid");
            session = request.getSession();
            con = DB.getConnection();
            
            String sql = "UPDATE users SET status = ? where id = ? ";
            ps = con.prepareStatement(sql);
            ps.setString(1, stats);
            ps.setString(2, inid);
            status = ps.executeUpdate();
            if(status>0)
            {

                out.println("Entry Updated uccessfully!");
                response.sendRedirect("Add_Users");
                session.setAttribute("success","User Updated Successfully!");
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