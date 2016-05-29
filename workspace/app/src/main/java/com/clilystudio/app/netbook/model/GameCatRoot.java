package com.clilystudio.app.netbook.model;

public class GameCatRoot {
    private GameCat[] games;
    private boolean ok;

    public GameCat[] getGames() {
        return this.games;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setGames(GameCat[] paramArrayOfGameCat) {
        this.games = paramArrayOfGameCat;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GameCatRoot
 * JD-Core Version:    0.6.2
 */