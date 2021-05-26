import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "MarcoCount", urlPatterns = "/count") // metadata to go along with our servlet

public class Count extends HttpServlet {
    int count = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        count++;

        String reset = request.getParameter("reset");

        if(reset != null) {
            count = 0;
        }

        response.setContentType("text/html");
        response.getWriter().println("<h2>You are the " + count + " visitor to this site!</h2>");
    }
}
