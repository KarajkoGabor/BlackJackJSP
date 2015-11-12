import beans.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by benti on 2015.11.10..
 */
@WebServlet(name = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static String user;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");

        HttpSession session = request.getSession();
        List<Integer> userCards = new ArrayList<Integer>();
        List<Integer> npcCards = new ArrayList<Integer>();
        UserBean user = new UserBean(name,1000,0, userCards);
        UserBean userNPC = new UserBean("NPC",1000,0, npcCards);
        session.setAttribute("user", user);
        session.setAttribute("npc", userNPC);
        session.setMaxInactiveInterval(30*60);
        response.sendRedirect("IndexServlet");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
