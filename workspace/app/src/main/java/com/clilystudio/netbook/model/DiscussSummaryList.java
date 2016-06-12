package com.clilystudio.netbook.model;

public class DiscussSummaryList {

    private boolean ok;
    private DiscussSummary[] posts;

    public DiscussSummary[] getPosts() {
        return posts;
    }

    public void setPosts(DiscussSummary[] DiscussSummary_1darray1) {
        posts = DiscussSummary_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
