/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
@WebServlet(name = "CareerCode", urlPatterns = {"/CareerCode"})
@MultipartConfig
public class CareerCode extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CareerCode</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CareerCode at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
        //processRequest(request, response);
        try
        {
          String name=request.getParameter("name");
          String gender=request.getParameter("gender");
          String address=request.getParameter("address");
          String contactno=request.getParameter("contactno");
          String emailaddress=request.getParameter("emailaddress");
          String qualification=request.getParameter("qualification");
          String experience=request.getParameter("experience");
          String keyskills=request.getParameter("keyskills");
          Part p=   request.getPart("cv");
          String filename=p.getSubmittedFileName();
          InputStream is=p.getInputStream();
          DbManager db=new DbManager();
          String query="insert into carrier values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+qualification+"','"+experience+"','"+keyskills+"','"+(emailaddress+filename)+"','"+db.getDate()+"')";
          if(db.nonQuery(query)==true)
          {
              File f=new File(request.getRealPath("/upload"),(emailaddress+filename));
              Files.copy(is, f.toPath());
              response.getWriter().print("success");
          }
          else
          {
            response.getWriter().print("not");  
          }
          
          
          
        }
     catch(Exception e)  
             {
               response.getWriter().print("ex"+e.getMessage());  
             }
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
