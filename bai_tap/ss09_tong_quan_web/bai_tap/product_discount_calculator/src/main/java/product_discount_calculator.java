import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "product_discount_calculator", value = "/discount")
public class product_discount_calculator extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String product = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        double percent = Double.parseDouble(request.getParameter("percent"));
        double discountAmount = price * percent * 0.01;
        double discountPrice = price - discountAmount;
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("result.jsp");
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);
        requestDispatcher.forward(request,response);


    }
}
