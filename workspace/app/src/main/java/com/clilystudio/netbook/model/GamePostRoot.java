package com.clilystudio.netbook.model;

public class GamePostRoot {

    private boolean ok;
    private GamePostRoot$GamePost[] posts;

    public GamePostRoot$GamePost[] getPosts() {
        return posts;
    }

    public void setPosts(GamePostRoot$GamePost[] GamePost_1darray1) {
        posts = GamePost_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
