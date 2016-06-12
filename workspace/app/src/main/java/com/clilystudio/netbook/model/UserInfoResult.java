package com.clilystudio.netbook.model;

public class UserInfoResult extends User {

    private int followers;
    private int followings;

    public int getFollowers() {
        return followers;
    }

    public void setFollowers(int int1) {
        followers = int1;
    }

    public int getFollowings() {
        return followings;
    }

    public void setFollowings(int int1) {
        followings = int1;
    }
}
