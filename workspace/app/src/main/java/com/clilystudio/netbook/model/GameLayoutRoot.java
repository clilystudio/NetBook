package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root {
    private List<ModuleLayout> layout;
    private Game promotion;
    private Game[] promotions;

    public List<ModuleLayout> getLayout() {
        return this.layout;
    }

    public void setLayout(List<ModuleLayout> list) {
        this.layout = list;
    }

    public Game getPromotion() {
        return this.promotion;
    }

    public void setPromotion(Game game) {
        this.promotion = game;
    }

    public Game[] getPromotions() {
        return this.promotions;
    }

    public void setPromotions(Game[] arrgame) {
        this.promotions = arrgame;
    }
}
