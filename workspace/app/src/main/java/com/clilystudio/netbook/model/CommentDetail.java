package com.clilystudio.netbook.model;

public class CommentDetail {
    private PostComment comment;
    private boolean ok;

    public PostComment getComment() {
        return this.comment;
    }

    public void setComment(PostComment paramPostComment) {
        this.comment = paramPostComment;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

