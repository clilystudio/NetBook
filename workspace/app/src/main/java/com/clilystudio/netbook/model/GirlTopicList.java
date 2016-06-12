package com.clilystudio.netbook.model;

public class GirlTopicList {

    private boolean ok;
    private GirlTopicSummary[] posts;

    public GirlTopicSummary[] getPosts() {
        return posts;
    }

    public void setPosts(GirlTopicSummary[] GirlTopicSummary_1darray1) {
        posts = GirlTopicSummary_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
