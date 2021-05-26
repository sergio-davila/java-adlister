import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "MarcoHelloWorld", urlPatterns = "/hello") // metadata to go along with our servlet
public class HelloWorldServlet extends HttpServlet{ //defining the class name / extending from HttpServlet
    // Put doGet and doPost methods in here
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.getWriter().println("<h1>Hello World!</h1>");
        response.getWriter().println("<h1>copacetic</h1>");

        String name = request.getParameter("name");

        if(name == null){
            name = "Hello world!";
        }

        response.getWriter().println("<h1>Hello " + name + "!" + "</h1>");

    }
}
