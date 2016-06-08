package com.clilystudio.netbook.model;

public class FollowersResult {
    private Follower[] followers;
    private boolean ok;

    public Follower[] getFollowers() {
        return this.followers;
    }

    public void setFollowers(Follower[] paramArrayOfFollower) {
        this.followers = paramArrayOfFollower;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

