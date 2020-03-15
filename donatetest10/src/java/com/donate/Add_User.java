package com.donate;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(name = "Add_User", urlPatterns = {"/Add_User"})
public class Add_User extends HttpServlet {

    HttpSession session;
    int status=0;
    Connection con;
    Statement st,st1;
    PreparedStatement ps;
    ResultSet rs;
    RequestDispatcher rd = null;
    
    String username,password,role,stat,name,contact,email;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            username = request.getParameter("username");
            password = request.getParameter("password");
            role = request.getParameter("role");
            stat = request.getParameter("status");
            name = request.getParameter("name");
            contact = request.getParameter("contact");
            email = request.getParameter("email");
            
            session = request.getSession();
            con = DB.getConnection();
            String sql = "insert into users (username,password,role,status,name,contact,email) values (?,?,?,?,?,?,?)";
            
            ps = con.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, role);
            ps.setString(4, stat);
            ps.setString(5, name);
            ps.setString(6, contact);
            ps.setString(7, email);
            
            status = ps.executeUpdate();
             
            if(status>0)
            {

                out.println("User Added Successfully!");
                response.sendRedirect("Add_Users");
                session.setAttribute("success","User Added Successfully!");
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