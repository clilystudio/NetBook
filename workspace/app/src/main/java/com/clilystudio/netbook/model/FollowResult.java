package com.clilystudio.netbook.model;

public class FollowResult {
    private boolean followed;
    private boolean ok;

    public boolean isFollowed() {
        return this.followed;
    }

    public void setFollowed(boolean bl) {
        this.followed = bl;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
