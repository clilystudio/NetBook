package com.clilystudio.netbook.model;

public class DiscussSummaryList {
    private boolean ok;
    private DiscussSummary[] posts;

    public DiscussSummary[] getPosts() {
        return this.posts;
    }

    public void setPosts(DiscussSummary[] arrdiscussSummary) {
        this.posts = arrdiscussSummary;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
