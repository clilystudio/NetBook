package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$UserTodayTask implements Serializable {
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

    public void setComment(boolean bl) {
        this.comment = bl;
    }

    public boolean isLaunch() {
        return this.launch;
    }

    public void setLaunch(boolean bl) {
        this.launch = bl;
    }

    public boolean isPost() {
        return this.post;
    }

    public void setPost(boolean bl) {
        this.post = bl;
    }

    public boolean isShare() {
        return this.share;
    }

    public void setShare(boolean bl) {
        this.share = bl;
    }

    public boolean isShare_book() {
        return this.share_book;
    }

    public void setShare_book(boolean bl) {
        this.share_book = bl;
    }

    public boolean isVote() {
        return this.vote;
    }

    public void setVote(boolean bl) {
        this.vote = bl;
    }
}
