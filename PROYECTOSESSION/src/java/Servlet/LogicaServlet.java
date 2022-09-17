package Servlet;

import Bean.UsuarioBen;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogicaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        UsuarioBen objeto = new UsuarioBen();
        if (usuario.equals("cesar") && clave.equals("123")) {
            HttpSession session = request.getSession();
            objeto.setUsuario(usuario);
            objeto.setClave(clave);
            session.setAttribute("datos", objeto);
            getServletContext().getRequestDispatcher("/menu.jsp").forward(request, response);

        } else {
            request.setAttribute("datos", "datos incorrectos");
            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }

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
