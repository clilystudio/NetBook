package com.clilystudio.netbook.model;

public class Topic {
    private boolean ok;
    private TopicPost[] posts;

    public TopicPost[] getPosts() {
        return this.posts;
    }

    public void setPosts(TopicPost[] arrtopicPost) {
        this.posts = arrtopicPost;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
