package com.donate;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

public class Update_Item extends HttpServlet {

    HttpSession session;
    int status;
    Connection con;
    Statement st;
    ResultSet rs;
    RequestDispatcher rd = null;
    
    String id,category,item_name;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            id = request.getParameter("id");
            category = request.getParameter("category");
            item_name = request.getParameter("item_name");
            session = request.getSession();
            con = DB.getConnection();
            st = con.createStatement();
            
            String sql = "UPDATE item_category SET "
                    + "category = '"+category+"'"
                    + ",item_name = '"+item_name+"'"
                    + "where id = '"+id+"'";
            status = st.executeUpdate(sql);
            if(status>0)
            {

                out.println("Entry Updated uccessfully!");
                response.sendRedirect("Edit_Item?id="+id);
                session.setAttribute("success","Item Updated Successfully!");
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