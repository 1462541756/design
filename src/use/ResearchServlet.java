package use;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/use/ResearchServlet")
public class ResearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("centerJsp","research.jsp");
        String topBackground=request.getSession().getAttribute("topBackground").toString();
        String bottomBackground = request.getSession().getAttribute("bottomBackground").toString();
        String order=request.getSession().getAttribute("order").toString();
        String className=request.getSession().getAttribute("className").toString();

        request.setAttribute("className",className);
        request.setAttribute("order",order);
        request.setAttribute("topBackground",topBackground);
        request.setAttribute("bottomBackground",bottomBackground);
        request.getRequestDispatcher("main.jsp").forward(request,response);
    }
}
