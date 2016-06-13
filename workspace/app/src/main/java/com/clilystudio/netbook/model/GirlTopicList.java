package com.clilystudio.netbook.model;

public class GirlTopicList {
    private boolean ok;
    private GirlTopicSummary[] posts;

    public GirlTopicSummary[] getPosts() {
        return this.posts;
    }

    public void setPosts(GirlTopicSummary[] arrgirlTopicSummary) {
        this.posts = arrgirlTopicSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
