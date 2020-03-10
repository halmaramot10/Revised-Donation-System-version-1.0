package com.donate;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "Update_User", urlPatterns = {"/Update_User"})
public class Update_User extends HttpServlet {

    HttpSession session;
    int status,id;
    Connection con;
    Statement st;
    ResultSet rs;
    String username,password,role,stat,name,contact,email;
    RequestDispatcher rd = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            id=Integer.parseInt(request.getParameter("id"));
            username = request.getParameter("username");
            password = request.getParameter("password");
            role = request.getParameter("role");
            stat = request.getParameter("status");
            
            name = request.getParameter("name");
            contact = request.getParameter("contact");
            email = request.getParameter("email");

            
            session = request.getSession();
            con = DB.getConnection();
            st = con.createStatement();
             String sql = "UPDATE users SET "
                           + "username = '"+username+"'"
                           + ",password = '"+password+ "'"
                           + ",role = '"+role+"'"                           
                           + ",status = '"+stat+"'"
                           + ",name = '"+name+"'"
                           + ",contact = '"+contact+"'"
                           + ",email = '"+email+"'"
                           + "WHERE id = '"+id+"'";
            
            status=st.executeUpdate(sql);
            if(status>0)
                {
                    
                    out.println("User Account Updated Successfully!");
                    response.sendRedirect("./user_edit.jsp?id="+id);
                    session.setAttribute("success","User Account Updated Successfully!");
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
