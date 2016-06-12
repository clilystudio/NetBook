package com.clilystudio.netbook.model;

public class Topic {

    private boolean ok;
    private TopicPost[] posts;

    public TopicPost[] getPosts() {
        return posts;
    }

    public void setPosts(TopicPost[] TopicPost_1darray1) {
        posts = TopicPost_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
