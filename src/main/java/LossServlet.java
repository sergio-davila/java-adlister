import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "LossServlet", urlPatterns = "/loss")
public class LossServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Random random = new Random();
//        int randomNum = random.nextInt(3 + 1) + 1;
//        String randomNumString = Integer.toString(randomNum);
//        String guess = request.getParameter("guess");
//
//        if(guess.equals(randomNumString)) {
//            response.sendRedirect("/.jsp");
//        } else {
//            response.sendRedirect("/guess.jsp");
//        }
        request.setAttribute("outcome", "Ya lost haha");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/outcome.jsp");
    }
}

