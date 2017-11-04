package Servlets;

import Bussines.SubsidyBussines;
import Entidades.EntSubsidies;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Jeison Goinzález Cifuentes
 */

public class SubsidiosServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            SubsidyBussines subsidyBussines = new SubsidyBussines();
            EntSubsidies subsidy = new EntSubsidies();
            
            if (request.getParameter("action") != null && !request.getParameter("action").isEmpty() && !request.getParameter("action").equalsIgnoreCase("listar")) {
                subsidy.setIdSybsudy(Integer.parseInt(request.getParameter("idSybsudy")));
                subsidy.setEndDate(Date.valueOf(request.getParameter("endDate")));
                subsidy.setStartDate(Date.valueOf(request.getParameter("startDate")));
                subsidy.setName(request.getParameter("name"));
                subsidy.setDescription(request.getParameter("description"));
                subsidy.setExpectedEnergyValue(Double.parseDouble(request.getParameter("expectedEnergyValue")));
                subsidy.setExpectedNaturalGasValue(Double.parseDouble(request.getParameter("expectedNaturalGasValue")));
                subsidy.setExpectedWaterValue(Double.parseDouble(request.getParameter("expectedWaterValue")));
                Integer type = null;
                while (type != null) {
                    int i = 1;
                    if (!request.getParameter("type_"+i).equalsIgnoreCase("0") && i == 3) {
                        type = Integer.parseInt(request.getParameter("type_"+i));
                    }
                    i++;
                }
                subsidy.setType(type);

                switch(request.getParameter("action")){
                    case "Guardar" :
                        break;
                    case "Eliminar" :
                        break;
                }
            }
            try {
                request.setAttribute("list", subsidyBussines.subsidiesList(subsidy));
            } catch (NumberFormatException e) {
                System.out.println("Error listando subsidios : " + e.getMessage());
            }
        } catch (Exception e) {
            System.out.println("Error general : " + e.getMessage());
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
