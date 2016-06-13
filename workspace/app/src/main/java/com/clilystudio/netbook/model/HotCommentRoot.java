package com.clilystudio.netbook.model;

public class HotCommentRoot {
    private PostComment[] comments;
    private boolean ok;

    public PostComment[] getComments() {
        return this.comments;
    }

    public void setComments(PostComment[] arrpostComment) {
        this.comments = arrpostComment;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
