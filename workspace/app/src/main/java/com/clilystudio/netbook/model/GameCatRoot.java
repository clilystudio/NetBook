package com.clilystudio.netbook.model;

public class GameCatRoot {
    private GameCat[] games;
    private boolean ok;

    public GameCat[] getGames() {
        return this.games;
    }

    public void setGames(GameCat[] paramArrayOfGameCat) {
        this.games = paramArrayOfGameCat;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

