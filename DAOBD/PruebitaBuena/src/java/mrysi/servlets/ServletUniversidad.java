package mrysi.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import mrysi.beans.Universidad;
import mrysi.daos.UniversidadDAOImp;

public class ServletUniversidad extends HttpServlet {

    private UniversidadDAOImp universidadDAO;

    @Override
    public void init() throws ServletException {
        
        universidadDAO = new UniversidadDAOImp();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Universidad> listapersonas;
        try {
            
            listapersonas = universidadDAO.readAll();
            
            request.setAttribute("Listapersonas", listapersonas);
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw new ServletException("Error accediendo a la base de datos.", ex);
        }

        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}