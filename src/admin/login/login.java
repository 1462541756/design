package admin.login;

import dao.MyDao;
import entity.Function;
import entity.Operator;
import factory.Factory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/adminLogin")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String account= request.getParameter("account");
       String password=request.getParameter("password");
       String verify=request.getParameter("verify");
       String verify_text=request.getParameter("verify-text");
       if(verify.equals(verify_text)) {
           MyDao myDao = Factory.getInstance().getDao();
           Operator operator = myDao.getOperatorEntity(account, password);
           Factory.operator = operator;
           if (Factory.operator == null) {
               request.setAttribute("prompt1","");
               request.getRequestDispatcher("index.jsp").forward(request, response);
           } else if (Factory.operator.user != null) {

               request.getRequestDispatcher("frame/frame.jsp").forward(request, response);
           }
       }
       else {
           request.setAttribute("prompt2","");
           request.getRequestDispatcher("index.jsp").forward(request, response);
       }
    }
}
