
package com.donate;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(name = "Add_Donation_Admin", urlPatterns = {"/Add_Donation_Admin"})
public class Add_Donation_Admin extends HttpServlet {

    HttpSession session;
    int status=0 ,status2 = 0, status3=0;
    Connection con;
    Statement st,st1;
    ResultSet rs;
    RequestDispatcher rd = null;
    PreparedStatement ps,ps1,ps2;
    //for common inputs
    String date = null, type = null,des = null, qty = null, fr = "Anonymous", donto = null, stat = null,datemod = "00/00/0000",addedby=null,invoicenum=null;
    
    //for others only
    String cond = null;
    
    //for foods
    String exp=null;
    
    //for clothes
    String size=null,color=null, gender=null,age=null,cond01=null;
    
    // for money
    String met=null,others = null, bank=null, online=null,refnum=null,newba=null;
    
    
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
            met = request.getParameter("method");
            others = request.getParameter("others1");
            bank = request.getParameter("pay1");
            online = request.getParameter("pay2");
            refnum = request.getParameter("refno");
            newba = request.getParameter("newba");
            
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
                            String sql = "insert into others_donate (date,type,item,des,qty,cond,fr,donto,stat,datemod,addedby,invoicenum) values (?,?,?,?,?,?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, item1);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, cond);
                            ps.setString(7, fr);
                            ps.setString(8, donto);
                            ps.setString(9, stat);
                            ps.setString(10, datemod);
                            ps.setString(11, addedby);
                            ps.setString(12, invoicenum);
                            
                            status=ps.executeUpdate();
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("Home");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        else if(newtype !=null || newtype != ""){
                            
                            String sql = "insert into others_donate (date,type,item,des,qty,cond,fr,donto,stat,datemod,addedby,invoicenum) values (?,?,?,?,?,?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, newtype);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, cond);
                            ps.setString(7, fr);
                            ps.setString(8, donto);
                            ps.setString(9, stat);
                            ps.setString(10, datemod);
                            ps.setString(11, addedby);
                            ps.setString(12, invoicenum);
                                                        
                            String sql2 = "insert into item_category(category,item_name) values(?,?)";
                            ps1 = con.prepareStatement(sql2);
                            
                            ps1.setString(1, type);
                            ps1.setString(2, newtype);
                            status2 = ps1.executeUpdate();
                            status=ps.executeUpdate();                        
                            if(status>0)
                            {
                            
                            out.println("Donation Entry Added Successfully!");
                            response.sendRedirect("Home");
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
                            String sql = "insert into school_donate (date,type,item,des,qty,fr,donto,stat,datemod,addedby,invoicenum) values (?,?,?,?,?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, item5);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, fr);
                            ps.setString(7, donto);
                            ps.setString(8, stat);
                            ps.setString(9, datemod);
                            ps.setString(10, addedby);
                            ps.setString(11, invoicenum);
                            
                            status=ps.executeUpdate();
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("Home");
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
                            String sql = "insert into school_donate (date,type,item,des,qty,fr,donto,stat,datemod,addedby,invoicenum) values (?,?,?,?,?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, newtype);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, fr);
                            ps.setString(7, donto);
                            ps.setString(8, stat);
                            ps.setString(9, datemod);
                            ps.setString(10, addedby);
                            ps.setString(11, invoicenum);
                            
                            
                            String sql2 = "insert into item_category(category,item_name) values(?,?)";
                            ps1 = con.prepareStatement(sql2);
                            
                            ps1.setString(1, type);
                            ps1.setString(2, newtype);
                            status2 = ps1.executeUpdate(); 
                            status=ps.executeUpdate();
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("Home");
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
                case "Food":
                {
                    if (newtype == "" || newtype == null){
                        
                            String sql = "insert into foods_donate (date,type,item,des,qty,exp,fr,donto,stat,datemod,addedby,invoicenum) values (?,?,?,?,?,?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, item2);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, exp);
                            ps.setString(7, fr);
                            ps.setString(8, donto);
                            ps.setString(9, stat);
                            ps.setString(10, datemod);
                            ps.setString(11, addedby);
                            ps.setString(12, invoicenum);
                            
                            status=ps.executeUpdate();
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("Home");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        else if(newtype !=null || newtype != ""){
                            
                            String sql = "insert into foods_donate (date,type,item,des,qty,exp,fr,donto,stat,datemod,addedby,invoicenum) values (?,?,?,?,?,?,?,?,?,?,?,?)";
                            
                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, newtype);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, exp);
                            ps.setString(7, fr);
                            ps.setString(8, donto);
                            ps.setString(9, stat);
                            ps.setString(10, datemod);
                            ps.setString(11, addedby);
                            ps.setString(12, invoicenum);
                            
                            String sql2 = "insert into item_category(category,item_name) values(?,?)";
                            ps1 = con.prepareStatement(sql2);
                            
                            ps1.setString(1, type);
                            ps1.setString(2, newtype);
                            status2 = ps1.executeUpdate(); 
                            status=ps.executeUpdate();
                            if(status>0)
                            {
                            
                            out.println("Donation Entry Added Successfully!");
                            response.sendRedirect("Home");
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
                case "Clothes":
                {
                    if (newtype == "" || newtype == null){
                        
                            String sql = "insert into clothes_donate (date,type,item,des,qty,cond,size,color,gender,age,fr,donto,stat,datemod,addedby,invoicenum) values "
                                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, item3);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, cond);
                            ps.setString(7, size);
                            ps.setString(8, color);
                            ps.setString(9, gender);
                            ps.setString(10, age);
                            ps.setString(11, fr);
                            ps.setString(12, donto);
                            ps.setString(13, stat);
                            ps.setString(14, datemod);
                            ps.setString(15, addedby);
                            ps.setString(16, invoicenum);
                            
                            status=ps.executeUpdate();
                            if(status>0)
                            {

                                out.println("Donation Entry Added Successfully!");
                                response.sendRedirect("Home");
                                session.setAttribute("success","Record Added Successfully!");
                            }
                            else
                            {

                                out.println("Oops! Something went wrong...");
                                session.setAttribute("error","Oops! Something went wrong...");
                            }
                        }
                        else if(newtype !=null || newtype != ""){
                            String sql = "insert into clothes_donate (date,type,item,des,qty,cond,size,color,gender,age,fr,donto,stat,datemod,addedby,invoicenum) values "
                                    + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                            ps = con.prepareStatement(sql);
                            
                            ps.setString(1, date);
                            ps.setString(2, type);
                            ps.setString(3, newtype);
                            ps.setString(4, des);
                            ps.setString(5, qty);
                            ps.setString(6, cond);
                            ps.setString(7, size);
                            ps.setString(8, color);
                            ps.setString(9, gender);
                            ps.setString(10, age);
                            ps.setString(11, fr);
                            ps.setString(12, donto);
                            ps.setString(13, stat);
                            ps.setString(14, datemod);
                            ps.setString(15, addedby);
                            ps.setString(16, invoicenum);
                            
                            
                            
                            String sql2 = "insert into item_category(category,item_name) values(?,?)";
                            ps1 = con.prepareStatement(sql2);
                            
                            ps1.setString(1, type);
                            ps1.setString(2, newtype);
                            status2 = ps1.executeUpdate(); 
                            status=ps.executeUpdate();
                            if(status>0)
                            {
                            
                            out.println("Donation Entry Added Successfully!");
                            response.sendRedirect("Home");
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
                case "Money":
                {
                    if(newtype == null || newtype == ""){
                        switch(met){
                            case "Bank":
                                if(newba == "" || newba == null){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, item4);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, bank);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);

                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                }
                                else if(newba !=null || newba != ""){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, item4);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, newba);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);


                                    String sql3 = "insert into paymet(method,met_name) values(?,?)";
                                    ps2 = con.prepareStatement(sql3);                          
                                    ps2.setString(1, met);
                                    ps2.setString(2, newba);
                                    status3 = ps2.executeUpdate();
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                
                                }
                            break;

                            case "Online":
                                if(newba == "" || newba == null){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, item4);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, online);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);

                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                }
                                else if(newba !=null || newba != ""){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, item4);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, newba);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);


                                    String sql3 = "insert into paymet(method,met_name) values(?,?)";
                                    ps2 = con.prepareStatement(sql3);                          
                                    ps2.setString(1, met);
                                    ps2.setString(2, newba);
                                    status3 = ps2.executeUpdate();
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                
                                }
                            break;
                            case "Other":
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, item4);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, others);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);

                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                            break;                          
                        }
                    }
                    else if(newtype != null || newtype != ""){
                        switch(met){
                            case "Bank":
                                if(newba == "" || newba == null){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, newtype);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, bank);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);
                                    
                                    String sql2 = "insert into item_category(category,item_name) values(?,?)";
                                    ps1 = con.prepareStatement(sql2);

                                    ps1.setString(1, type);
                                    ps1.setString(2, newtype);
                                    status2 = ps1.executeUpdate(); 
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                }
                                else if(newba !=null || newba != ""){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, newtype);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, newba);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);
                                    
                                    String sql2 = "insert into item_category(category,item_name) values(?,?)";
                                    ps1 = con.prepareStatement(sql2);

                                    ps1.setString(1, type);
                                    ps1.setString(2, newtype);
                                    status2 = ps1.executeUpdate(); 
                                    
                                    String sql3 = "insert into paymet(method,met_name) values(?,?)";
                                    ps2 = con.prepareStatement(sql3);                          
                                    ps2.setString(1, met);
                                    ps2.setString(2, newba);
                                    status3 = ps2.executeUpdate();
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                
                                }
                            break;

                            case "Online":
                                if(newba == "" || newba == null){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, newtype);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, online);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);
                                    
                                    String sql2 = "insert into item_category(category,item_name) values(?,?)";
                                    ps1 = con.prepareStatement(sql2);

                                    ps1.setString(1, type);
                                    ps1.setString(2, newtype);
                                    status2 = ps1.executeUpdate(); 
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                }
                                else if(newba !=null || newba != ""){
                                    
                                    String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, newtype);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, newba);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);
                                    
                                    String sql2 = "insert into item_category(category,item_name) values(?,?)";
                                    ps1 = con.prepareStatement(sql2);

                                    ps1.setString(1, type);
                                    ps1.setString(2, newtype);
                                    status2 = ps1.executeUpdate(); 
                                    
                                    String sql3 = "insert into paymet(method,met_name) values(?,?)";
                                    ps2 = con.prepareStatement(sql3);                          
                                    ps2.setString(1, met);
                                    ps2.setString(2, newba);
                                    status3 = ps2.executeUpdate();
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                                
                                }
                            break;
                            case "Other":
                                
                                String sql = "insert into money_donate (date,type,item,des,qty,met,pays,refno,fr,donto,stat,datemod,addedby,invoicenum) values "
                                            + "(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

                                    ps = con.prepareStatement(sql);

                                    ps.setString(1, date);
                                    ps.setString(2, type);
                                    ps.setString(3, newtype);
                                    ps.setString(4, des);
                                    ps.setString(5, qty);
                                    ps.setString(6, met);
                                    ps.setString(7, others);
                                    ps.setString(8, refnum);
                                    ps.setString(9, fr);
                                    ps.setString(10, donto);
                                    ps.setString(11, stat);
                                    ps.setString(12, datemod);
                                    ps.setString(13, addedby);
                                    ps.setString(14, invoicenum);
                                    
                                    String sql2 = "insert into item_category(category,item_name) values(?,?)";
                                    ps1 = con.prepareStatement(sql2);

                                    ps1.setString(1, type);
                                    ps1.setString(2, newtype);
                                    status2 = ps1.executeUpdate(); 
                                    
                                    status=ps.executeUpdate();
                                    if(status>0)
                                    {

                                        out.println("Donation Entry Added Successfully!");
                                        response.sendRedirect("Home");
                                        session.setAttribute("success","Record Added Successfully!");
                                    }
                                    else
                                    {

                                        out.println("Oops! Something went wrong...");
                                        session.setAttribute("error","Oops! Something went wrong...");
                                    }
                            break;                          
                        }
                    }
                    break;
                }
                    
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