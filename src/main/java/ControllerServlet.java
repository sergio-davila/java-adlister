import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "ControllerServlet", urlPatterns = "/guess")
public class ControllerServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Random random = new Random();
        int randomNum = random.nextInt(3 + 1) + 1;
        String randomNumString = Integer.toString(randomNum);
        String guess = request.getParameter("guess");

        if(guess.equals(randomNumString)) {
            response.sendRedirect("/win");
        } else {
            response.sendRedirect("/loss");
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/guess.jsp");
    }
}
