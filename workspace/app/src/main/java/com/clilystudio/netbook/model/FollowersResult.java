
package com.clilystudio.netbook.model;

public class FollowersResult {

    private Follower[] followers;
    private boolean ok;

    public Follower[] getFollowers()
    {
        return followers;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setFollowers(Follower[] Follower_1darray1)
    {
        followers = Follower_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
