package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root {

    private List layout;
    private Game promotion;
    private Game[] promotions;

    public List getLayout() {
        return layout;
    }

    public void setLayout(List List1) {
        layout = List1;
    }

    public Game getPromotion() {
        return promotion;
    }

    public void setPromotion(Game Game1) {
        promotion = Game1;
    }

    public Game[] getPromotions() {
        return promotions;
    }

    public void setPromotions(Game[] Game_1darray1) {
        promotions = Game_1darray1;
    }
}
