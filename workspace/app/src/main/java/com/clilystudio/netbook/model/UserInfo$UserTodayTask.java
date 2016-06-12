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
        return comment;
    }

    public void setComment(boolean boolean1) {
        comment = boolean1;
    }

    public boolean isLaunch() {
        return launch;
    }

    public void setLaunch(boolean boolean1) {
        launch = boolean1;
    }

    public boolean isPost() {
        return post;
    }

    public void setPost(boolean boolean1) {
        post = boolean1;
    }

    public boolean isShare() {
        return share;
    }

    public void setShare(boolean boolean1) {
        share = boolean1;
    }

    public boolean isShare_book() {
        return share_book;
    }

    public void setShare_book(boolean boolean1) {
        share_book = boolean1;
    }

    public boolean isVote() {
        return vote;
    }

    public void setVote(boolean boolean1) {
        vote = boolean1;
    }
}
