package com.clilystudio.netbook.model;

public class FollowingsResult {
    private String code;
    private Follower[] followings;
    private boolean ok;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public Follower[] getFollowings() {
        return this.followings;
    }

    public void setFollowings(Follower[] paramArrayOfFollower) {
        this.followings = paramArrayOfFollower;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

