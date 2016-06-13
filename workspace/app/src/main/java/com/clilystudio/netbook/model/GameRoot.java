package com.clilystudio.netbook.model;

public class GameRoot {
    private Game[] games;
    private boolean ok;

    public Game[] getGames() {
        return this.games;
    }

    public void setGames(Game[] arrgame) {
        this.games = arrgame;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
