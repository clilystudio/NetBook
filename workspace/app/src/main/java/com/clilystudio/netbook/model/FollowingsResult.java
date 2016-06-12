package com.clilystudio.netbook.model;

public class FollowingsResult {

    private String code;
    private Follower[] followings;
    private boolean ok;

    public String getCode() {
        return code;
    }

    public void setCode(String String1) {
        code = String1;
    }

    public Follower[] getFollowings() {
        return followings;
    }

    public void setFollowings(Follower[] Follower_1darray1) {
        followings = Follower_1darray1;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean boolean1) {
        ok = boolean1;
    }
}
