package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$UserTodayTask
        implements Serializable {
    private static final long serialVersionUID = 327955040176412798L;
    private boolean comment;
    private boolean launch;
    private boolean post;
    private boolean share;
    private boolean share_book;
    private boolean vote;

    public boolean isComment() {
        return this.comment;
    }

    public void setComment(boolean paramBoolean) {
        this.comment = paramBoolean;
    }

    public boolean isLaunch() {
        return this.launch;
    }

    public void setLaunch(boolean paramBoolean) {
        this.launch = paramBoolean;
    }

    public boolean isPost() {
        return this.post;
    }

    public void setPost(boolean paramBoolean) {
        this.post = paramBoolean;
    }

    public boolean isShare() {
        return this.share;
    }

    public void setShare(boolean paramBoolean) {
        this.share = paramBoolean;
    }

    public boolean isShare_book() {
        return this.share_book;
    }

    public void setShare_book(boolean paramBoolean) {
        this.share_book = paramBoolean;
    }

    public boolean isVote() {
        return this.vote;
    }

    public void setVote(boolean paramBoolean) {
        this.vote = paramBoolean;
    }
}

