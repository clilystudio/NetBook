package com.clilystudio.netbook.model;

public class DiscussSummaryList {
    private boolean ok;
    private DiscussSummary[] posts;

    public DiscussSummary[] getPosts() {
        return this.posts;
    }

    public void setPosts(DiscussSummary[] paramArrayOfDiscussSummary) {
        this.posts = paramArrayOfDiscussSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

