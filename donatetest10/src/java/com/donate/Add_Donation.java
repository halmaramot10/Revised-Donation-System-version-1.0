/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
@WebServlet(name = "Add_Money", urlPatterns = {"/Add_Money"})
public class Add_Donation extends HttpServlet {

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
    int status=0 ,status2 = 0;
    Connection con;
    Statement st,st1;
    ResultSet rs;
    
    //for common inputs
    String date = null, type = null,des = null, qty = null, fr = null, donto = null, stat = null,datemod = "00/00/0000",addedby=null,invoicenum=null;
    
    //for others only
    String cond = null;
    
    //for foods
    String exp=null;
    
    //for clothes
    String size=null,color=null, gender=null,age=null,cond01=null;
    
    // for money
    String method=null,otherss = null, bank=null, online=null,refno=null;
    RequestDispatcher rd = null;
    
    //for new item type
    String newtype=null;
    
    //for item types
    String item1,item2,item3,item4,item5;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            session = request.getSession();
            
            //common inputs
            date = request.getParameter("date");
            type = request.getParameter("type");            
            des = request.getParameter("des");
            qty = request.getParameter("qty");
            fr = request.getParameter("fr");
            donto = request.getParameter("donto");
            stat = request.getParameter("stat");
            datemod = "00/00/0000";
            addedby = request.getParameter("addedby");
            invoicenum = "lalala";
            
            //for others only
            cond = request.getParameter("cond");
            
            //for clothes only
            size = request.getParameter("size");
            color = request.getParameter("color");
            gender = request.getParameter("gender");
            age = request.getParameter("age");
            cond01 = request.getParameter("cond01");
            
            //for food
            exp = request.getParameter("exp");
            
            //for money
            method = request.getParameter("method");
            otherss = request.getParameter("otherss");
            bank = request.getParameter("bank");
            online = request.getParameter("online");
            refno = request.getParameter("refno");
            
            //for new item type
            newtype = request.getParameter("newtype");
            
            //for item types
            item1 = request.getParameter("item1"); //others
            item2 = request.getParameter("item2"); //food
            item3 = request.getParameter("item3"); //clothes
            item4 = request.getParameter("item4"); //money
            item5 = request.getParameter("item5"); //school supplies
                       
            con = DB.getConnection();
                
            switch (type) {
                case "Others":
                    {
                        if (newtype == "" || newtype == null){
                            st = con.createStatement();
                            String sql = "insert into others_donate (date,type,item,des,qty,cond,fr,donto,stat,datemod,addedby,invoicenum) values "
                                    + "('"+date+"',"
                                    + "'"+type+"',"
                                    + "'"+item1+"',"
                                    + "'"+des+"',"
                                    + "'"+qty+"',"
                                    + "'"+cond+"',"
                                    + "'"+fr+"',"
                                    + "'"+donto+"',"
                                    + "'"+stat+"',"
                                    + "'"+datemod+"',"
                                    + "'"+addedby+"',"
                                    + "'"+invoicenum+"')";
                            status=st.executeUpdate(sql);
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        else if(newtype !=null || newtype != ""){
                            st = con.createStatement();
                            st1 = con.createStatement();
                            String sql = "insert into others_donate (date,type,item,des,qty,cond,fr,donto,stat,datemod,addedby,invoicenum) values "
                                + "('"+date+"',"
                                + "'"+type+"',"
                                + "'"+newtype+"',"
                                + "'"+des+"',"
                                + "'"+qty+"',"
                                + "'"+cond+"',"
                                + "'"+fr+"',"
                                + "'"+donto+"',"
                                + "'"+stat+"',"
                                + "'"+datemod+"',"
                                + "'"+addedby+"',"
                                + "'"+invoicenum+"')";
                            
                            String sql2 = "insert into item_category(category,item_name) values('"+type+"','"+newtype+"')";
                            status2 = st.executeUpdate(sql2);
                            status=st.executeUpdate(sql);                        
                            if(status>0)
                            {
                            
                            out.println("Donation Entry Added Successfully!");
                            response.sendRedirect("home_user.jsp");
                            session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        break;
                    }
                case "School Supplies":
                    {
                        if (newtype == "" || newtype == null){
                            st = con.createStatement();
                            String sql = "insert into school_donate(date,type,item,des,qty,fr,donto,stat,datemod,addedby,invoicenum) values "
                                    + "('"+date+"',"
                                    + "'"+type+"',"
                                    + "'"+item5+"',"
                                    + "'"+des+"',"
                                    + "'"+qty+"',"
                                    + "'"+fr+"',"
                                    + "'"+donto+"',"
                                    + "'"+stat+"',"
                                    + "'"+datemod+"',"
                                    + "'"+addedby+"',"
                                    + "'"+invoicenum+"')";
                            status=st.executeUpdate(sql);
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }                           
                        }
                        else if(newtype !=null || newtype != ""){
                            st = con.createStatement();
                            String sql = "insert into school_donate(date,type,item,des,qty,fr,donto,stat,datemod,addedby,invoicenum) values "
                                    + "('"+date+"',"
                                    + "'"+type+"',"
                                    + "'"+newtype+"',"
                                    + "'"+des+"',"
                                    + "'"+qty+"',"
                                    + "'"+fr+"',"
                                    + "'"+donto+"',"
                                    + "'"+stat+"',"
                                    + "'"+datemod+"',"
                                    + "'"+addedby+"',"
                                    + "'"+invoicenum+"')";
                            
                            String sql2 = "insert into item_category(category,item_name) values('"+type+"','"+newtype+"')";
                            status2 = st.executeUpdate(sql2);                        
                            status=st.executeUpdate(sql);
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        break;
                    }
                /*case "Food":
                {
                    if (newtype == "" || newtype == null){
                            st = con.createStatement();
                            String sql = "insert into others_donate (date,type,item,des,qty,cond,fr,donto,stat,datemod,addedby,invoicenum) values "
                                    + "('"+date+"',"
                                    + "'"+type+"',"
                                    + "'"+item1+"',"
                                    + "'"+des+"',"
                                    + "'"+qty+"',"
                                    + "'"+cond+"',"
                                    + "'"+fr+"',"
                                    + "'"+donto+"',"
                                    + "'"+stat+"',"
                                    + "'"+datemod+"',"
                                    + "'"+addedby+"',"
                                    + "'"+invoicenum+"')";
                            status=st.executeUpdate(sql);
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("home_user.jsp");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        else if(newtype !=null || newtype != ""){
                            st = con.createStatement();
                            st1 = con.createStatement();
                            String sql = "insert into others_donate (date,type,item,des,qty,cond,fr,donto,stat,datemod,addedby,invoicenum) values "
                                + "('"+date+"',"
                                + "'"+type+"',"
                                + "'"+newtype+"',"
                                + "'"+des+"',"
                                + "'"+qty+"',"
                                + "'"+cond+"',"
                                + "'"+fr+"',"
                                + "'"+donto+"',"
                                + "'"+stat+"',"
                                + "'"+datemod+"',"
                                + "'"+addedby+"',"
                                + "'"+invoicenum+"')";
                            
                            String sql2 = "insert into item_category(category,item_name) values('"+type+"','"+newtype+"')";
                            status2 = st.executeUpdate(sql2);
                            status=st.executeUpdate(sql);                        
                            if(status>0)
                            {
                            
                            out.println("Donation Entry Added Successfully!");
                            response.sendRedirect("home_user.jsp");
                            session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                    break;
                }*/
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