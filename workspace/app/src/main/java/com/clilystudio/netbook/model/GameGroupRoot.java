package com.clilystudio.netbook.model;

public class GameGroupRoot extends Root {
    private GameGroupItem gameGroup;

    public GameGroupItem getGameGroup() {
        return this.gameGroup;
    }

    public void setGameGroup(GameGroupItem paramGameGroupItem) {
        this.gameGroup = paramGameGroupItem;
    }
}

