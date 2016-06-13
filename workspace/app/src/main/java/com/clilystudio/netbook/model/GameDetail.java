package com.clilystudio.netbook.model;

public class GameDetail {
    private Game game;
    private boolean ok;

    public Game getGame() {
        return this.game;
    }

    public void setGame(Game game) {
        this.game = game;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
