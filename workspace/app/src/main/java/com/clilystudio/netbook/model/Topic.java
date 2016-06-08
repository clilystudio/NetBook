package com.clilystudio.netbook.model;

public class Topic {
    private boolean ok;
    private TopicPost[] posts;

    public TopicPost[] getPosts() {
        return this.posts;
    }

    public void setPosts(TopicPost[] paramArrayOfTopicPost) {
        this.posts = paramArrayOfTopicPost;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

