package com.clilystudio.netbook.model;

public class FollowingsResult {
    private String code;
    private Follower[] followings;
    private boolean ok;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public Follower[] getFollowings() {
        return this.followings;
    }

    public void setFollowings(Follower[] arrfollower) {
        this.followings = arrfollower;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
