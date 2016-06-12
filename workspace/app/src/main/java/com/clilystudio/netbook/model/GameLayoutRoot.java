
package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root {

    private List layout;
    private Game promotion;
    private Game[] promotions;

    public List getLayout()
    {
        return layout;
    }

    public Game getPromotion()
    {
        return promotion;
    }

    public Game[] getPromotions()
    {
        return promotions;
    }

    public void setLayout(List List1)
    {
        layout = List1;
    }

    public void setPromotion(Game Game1)
    {
        promotion = Game1;
    }

    public void setPromotions(Game[] Game_1darray1)
    {
        promotions = Game_1darray1;
    }
}
