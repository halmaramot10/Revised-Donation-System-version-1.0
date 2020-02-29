
package com.donate;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 *
 * @author Hazel Anne
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    
    HttpSession session;
    int status=0;
    Connection con;
    Statement st;
    ResultSet rs;
    String uname= null, pass = null, id = null,role = null,stat=null,name=null;
    RequestDispatcher rd = null;
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            session=request.getSession();
            
            uname = request.getParameter("uname");
            pass = request.getParameter("pass");
            
            if(uname=="" || pass==""){
                String error="Please enter valid credentials!";
                session.setAttribute("error",error);
                rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
            }
            else{
                con=DB.getConnection();
                st = con.createStatement();
                String sql="select * from users where username='"+uname+"' and password='"+pass+"'";
                rs = st.executeQuery(sql);
                if(rs.next()){
                    id = rs.getString(1);
                    uname = rs.getString(2);
                    pass= rs.getString(3);
                    role = rs.getString(4);
                    stat = rs.getString(5);
                    name= rs.getString(6);
                    
                    switch(stat){
                    
                        case "Active":
                            switch(role){
                                case "Admin":
                                    session.setAttribute("uname",uname);
                                    session.setAttribute("name",name);
                                    session.setAttribute("id", id);
                                    rd = request.getRequestDispatcher("/home_admin.jsp");
                                    rd.forward(request,response);
                                    con.close();
                                break;
                                case "Owner":
                                    session.setAttribute("uname",uname);
                                    session.setAttribute("name",name);
                                    session.setAttribute("id", id);
                                    rd = request.getRequestDispatcher("/home_owner.jsp");
                                    rd.forward(request,response);
                                    con.close();
                                break;
                                case "User":
                                    session.setAttribute("uname",uname);
                                    session.setAttribute("name",name);
                                    session.setAttribute("id", id);
                                    rd = request.getRequestDispatcher("/home_user.jsp");
                                    rd.forward(request,response);
                                    con.close();
                                break;
                            }
                        break;
                        case "Inactive":
                            session.setAttribute("error", "The Account is Inactive. Please try again using an Active account.");
                            response.sendRedirect("index.jsp");
                        break;
                    }                    
                }
                else
                {
                    session.setAttribute("error", "Invalid Username or Password! Try again.");
                    response.sendRedirect("index.jsp");
                }
            }
            
        }catch(SQLException ex) { 
                   while (ex!=null) { 
                       System.out.println ("SQL Exception: " + ex.getMessage ()); 
                       ex = ex.getNextException(); 
                   } 
               } catch(java.lang.Exception ex) { 
                    System.out.println ("SQL Exception: " + ex.getMessage ()); 
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
