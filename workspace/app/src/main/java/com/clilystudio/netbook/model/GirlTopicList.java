package com.clilystudio.netbook.model;

public class GirlTopicList {
    private boolean ok;
    private GirlTopicSummary[] posts;

    public GirlTopicSummary[] getPosts() {
        return this.posts;
    }

    public void setPosts(GirlTopicSummary[] paramArrayOfGirlTopicSummary) {
        this.posts = paramArrayOfGirlTopicSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

