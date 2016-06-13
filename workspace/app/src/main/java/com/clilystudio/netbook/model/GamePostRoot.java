package com.clilystudio.netbook.model;

public class GamePostRoot {
    private boolean ok;
    private GamePostRoot$GamePost[] posts;

    public GamePostRoot$GamePost[] getPosts() {
        return this.posts;
    }

    public void setPosts(GamePostRoot$GamePost[] arrgamePostRoot$GamePost) {
        this.posts = arrgamePostRoot$GamePost;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
