package com.donate;

import java.io.*;
import java.sql.*;
import java.text.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet(name = "Update_Others", urlPatterns = {"/Update_Others"})
public class Update_Others extends HttpServlet {

    HttpSession session;
    int status,status2,id;
    Connection con;
    Statement st;
    ResultSet rs;
    String date,item,des,qty,cond,fr,donto,stat,addedby,invoicenum,datemod;
    RequestDispatcher rd = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            id=Integer.parseInt(request.getParameter("id"));
            date = request.getParameter("date");
            item = request.getParameter("item");
            des = request.getParameter("des");
            qty = request.getParameter("qty");
            cond = request.getParameter("cond");
            
            fr = request.getParameter("fr");
            donto = request.getParameter("donto");
            stat = request.getParameter("stat");
            addedby = request.getParameter("addedby");
            invoicenum = request.getParameter("invoicenum");
            
            SimpleDateFormat sdf= new SimpleDateFormat("MM-dd-yyyy");
            datemod = sdf.format(new java.util.Date());
            
            session = request.getSession();
            con = DB.getConnection();
            st = con.createStatement();
             String sql = "UPDATE others_donate SET "
                           + "date = '"+date+"'"
                           + ",item = '"+item+ "'"
                           + ",des = '"+des+"'"                           
                           + ",qty = '"+qty+"'"
                           + ",cond = '"+cond+"'"
                           + ",fr = '"+fr+"'"
                           + ",donto = '"+donto+"'"
                           + ",stat = '"+stat+"'"
                           + ",datemod = '"+datemod+"'"
                           + "WHERE id = '"+id+"'";
                        String sql2 = "UPDATE donation SET "
                           + "date = '"+date+"'"                   
                           + ",item = '"+item+ "'"
                           + ",des = '"+des+"'"                           
                           + ",qty = '"+qty+"'"
                           + ",fr = '"+fr+"'"
                           + ",donto = '"+donto+"'"
                           + ",stat = '"+stat+"'"
                           + ",datemod = '"+datemod+"'"
                           + "WHERE invoicenum = '"+invoicenum+"'";
            status2 = st.executeUpdate(sql2);
            status=st.executeUpdate(sql);
            if(status>0)
                {
                    
                    out.println("Donation Entry Updated Successfully!");
                    response.sendRedirect("Edit_Others?id="+id);
                    session.setAttribute("success","Donation Entry Updated Successfully!");
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
