package com.clilystudio.netbook.model;

import java.io.Serializable;

public class GameCat implements Serializable {

    private static final long serialVersionUID = -6787668753116463755L;
    private String _id;
    private Game[] games;

    public Game[] getGames() {
        return games;
    }

    public void setGames(Game[] Game_1darray1) {
        games = Game_1darray1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }
}
