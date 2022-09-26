import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet", value = "/Servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("description");
            float price = Float.parseFloat(request.getParameter("listPrice"));
            float discount = Float.parseFloat(request.getParameter("discountPercent"));
            float dAmount = (float) (price * discount*0.01);
            float dcPrice = price - dAmount;

            RequestDispatcher rd = request.getRequestDispatcher("showResult.jsp");
            response.setContentType("text/html;charset=UTF-8");
            request.setAttribute("name",name);
            request.setAttribute("price",price);
            request.setAttribute("discount",discount);
            request.setAttribute("dAmount",dAmount);
            request.setAttribute("dcPrice",dcPrice);
            rd.forward(request,response);
        }catch (Exception e){
            String err = e.getMessage();
            RequestDispatcher rd = request.getRequestDispatcher("showResult.jsp");
            request.setAttribute("err",err);
            rd.forward(request,response);
        }

    }
}
