package com.clilystudio.netbook.model;

import java.util.List;

public class GameGroupItem {
    private String _id;
    private List<Game> games;
    private String name;

    public List<Game> getGames() {
        return this.games;
    }

    public void setGames(List<Game> paramList) {
        this.games = paramList;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public int getRowCount() {
        if (this.games.size() % 3 == 0)
            return this.games.size() / 3;
        return 1 + this.games.size() / 3;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

