package com.clilystudio.netbook.model;

import java.io.Serializable;

public class GameCat
        implements Serializable {
    private static final long serialVersionUID = -6787668753116463755L;
    private String _id;
    private Game[] games;

    public Game[] getGames() {
        return this.games;
    }

    public void setGames(Game[] paramArrayOfGame) {
        this.games = paramArrayOfGame;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

