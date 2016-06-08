package com.clilystudio.netbook.model;

public class UserInfoResult extends User {
    private int followers;
    private int followings;

    public int getFollowers() {
        return this.followers;
    }

    public void setFollowers(int paramInt) {
        this.followers = paramInt;
    }

    public int getFollowings() {
        return this.followings;
    }

    public void setFollowings(int paramInt) {
        this.followings = paramInt;
    }
}

