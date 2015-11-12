import beans.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Random;

/**
 * Created by benti on 2015.11.12..
 */
@WebServlet("/GameServlet")
public class GameServlet extends HttpServlet {

    private static final String DRAW_CARD_BTN_ID="drawCard";
    private static final String STOP_GAME_BTN_ID="stop";

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String buttonId = request.getParameter("buttonID");
        UserBean user = (UserBean) session.getAttribute("user");
        UserBean userNPC = (UserBean) session.getAttribute("npc");
        int money = user.getMoney();


        if (buttonId.equals(DRAW_CARD_BTN_ID)) {

            user.getCards().add(drawCard());
            userNPC.getCards().add(drawCard());

            response.getWriter().write("Actual cards " + user.getCards());

            if(!checkCardSumIsUnder21(user.getCards())){

                response.getWriter().write("LOSE " + user );
                response.getWriter().write("LOSE " + userNPC );

                user.setMoney(money -= 50);
                user.getCards().clear();
                userNPC.getCards().clear();

            }else if(!checkCardSumIsUnder21(userNPC.getCards())){

                response.getWriter().write("WIN " + user);
                response.getWriter().write("WIN " + userNPC);

                user.setMoney(money += 50);
                user.getCards().clear();
                userNPC.getCards().clear();

            }
        }else if(buttonId.equals(STOP_GAME_BTN_ID)){
            if(isUserWinner(user.getCards(),userNPC.getCards())){

                response.getWriter().write("WIN " + user);
                response.getWriter().write("WIN " + userNPC);

                user.setMoney(money += 50);
                user.getCards().clear();
                userNPC.getCards().clear();

            }else{

                response.getWriter().write("LOSE " + user );
                response.getWriter().write("LOSE " + userNPC );

                user.setMoney(money -= 50);
                user.getCards().clear();
                userNPC.getCards().clear();
            }
        }

    }

    // Method to handle POST method request.
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }


    private int drawCard() {
        Random rand = new Random();

        int  n = rand.nextInt(11) + 1;

        return n;

    }

    private boolean checkCardSumIsUnder21(List<Integer> cards) {
        if(doSum(cards) > 21){
            return false;
        }
        return true;
    }

    private boolean isUserWinner(List<Integer> userCards, List<Integer> npcCards){
        if((doSum(userCards) > doSum(npcCards)) && doSum(userCards) <=21){
            return true;
        }
        return false;
    }

    private int doSum(List<Integer> cards){
        int sum = 0;
        for (int i = 0; i < cards.size(); i++) {
            sum += cards.get(i);
        }
        return sum;
    }

}
