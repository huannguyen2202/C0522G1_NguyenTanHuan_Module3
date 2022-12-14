import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentServlet", urlPatterns = {"/student"})
public class StudentServlet extends HttpServlet {
    private static List<Student> studentList= new ArrayList<>();
    static {
        studentList.add(new Student(1,"chanh",true,"12-12-2022",5,"chanhtv1",1,"chanhtv@gmail.com"));
        studentList.add(new Student(2,"Tiên",false,"12-12-2022",7,"chanhtv3",2,"chanhtv@gmail.com"));
        studentList.add(new Student(3,"Ân",true,"12-12-2022",3,"chanhtv4",2,"chanhtv@gmail.com"));
        studentList.add(new Student(4,"Ái",false,"12-12-2022",8,"chanhtv4",2,"chanhtv@gmail.com"));
        studentList.add(new Student(5,"Bảo",true,"12-12-2022",6,"chanhtv5",1,"chanhtv@gmail.com"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher=request.getRequestDispatcher("/student/list.jsp");
        request.setAttribute("studentList",studentList);
        requestDispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
