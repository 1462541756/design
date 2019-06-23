package use;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/use/ChangeColorServlet")
public class ChangeColorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /* String color=request.getAttribute("color").toString();*/
        String color=request.getParameter("color");
        request.setAttribute("centerJsp",request.getAttribute("centerJsp"));

        if(color.equals("red")){
            request.setAttribute("topBackground","-webkit-linear-gradient(top,#FF0045,#FF2520,#FF7365)");
            request.setAttribute("bottomBackground","red");
            request.setAttribute("order","001");
            String className=request.getSession().getAttribute("className").toString();

            request.setAttribute("className",className);
        }else if(color.equals("green")){
            request.setAttribute("topBackground","-webkit-linear-gradient(top,#00BA40,#7CF26B,#82F285)");
            request.setAttribute("bottomBackground","green");
            request.setAttribute("order","010");
            String className=request.getSession().getAttribute("className").toString();

            request.setAttribute("className",className);
        }else if(color.equals("blue")){
            request.setAttribute("topBackground","-webkit-linear-gradient(top,#5404FF,#4C48FF,#7F7EFF)");
            request.setAttribute("bottomBackground","blue");
            request.setAttribute("order","100");
            String className=request.getSession().getAttribute("className").toString();

            request.setAttribute("className",className);
        }
        request.getRequestDispatcher("main.jsp").forward(request,response);
    }
}
