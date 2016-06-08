package com.clilystudio.netbook.model;

public class PostDetail {
    private boolean ok;
    private Post post;

    public Post getPost() {
        return this.post;
    }

    public void setPost(Post paramPost) {
        this.post = paramPost;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

