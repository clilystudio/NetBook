package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root {
    private List<GameLayoutRoot.ModuleLayout> layout;
    private Game promotion;
    private Game[] promotions;

    public List<GameLayoutRoot.ModuleLayout> getLayout() {
        return this.layout;
    }

    public void setLayout(List<GameLayoutRoot.ModuleLayout> paramList) {
        this.layout = paramList;
    }

    public Game getPromotion() {
        return this.promotion;
    }

    public void setPromotion(Game paramGame) {
        this.promotion = paramGame;
    }

    public Game[] getPromotions() {
        return this.promotions;
    }

    public void setPromotions(Game[] paramArrayOfGame) {
        this.promotions = paramArrayOfGame;
    }
}

