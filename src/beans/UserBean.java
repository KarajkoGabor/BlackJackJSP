package beans;

import java.io.Serializable;
import java.util.List;

/**
 * Created by benti on 2015.11.11..
 */
public class UserBean implements Serializable {

    private String name;
    private int money;
    private int point;
    private List<Integer> cards;

    public UserBean() {

    }

    public UserBean(String name, int money, int point, List<Integer> cards) {

        this.name = name;
        this.money = money;
        this.point = point;
        this.cards = cards;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMoney() {
        return this.money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getPoint() {
        return this.point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public List<Integer> getCards() {
        return cards;
    }

    @Override
    public String toString() {
        return "UserBean{" +
                "name='" + name + '\'' +
                ", money=" + money +
                ", point=" + point +
                ", cards=" + cards +
                '}';
    }

    public void setCards(List<Integer> cards) {
        this.cards = cards;
    }
}
