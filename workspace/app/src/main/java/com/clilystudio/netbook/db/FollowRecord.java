package com.clilystudio.netbook.db;

import android.support.design.widget.am;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.Model;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.User;

import java.util.List;

public class FollowRecord extends Model {

    private String followedId;
    private String userId;
// Error: Internal #201: 
// The following method may not be correct.

    public static void cancelFollow(String String1, String String2) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void clear(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List findAll(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean isFollowed(String String1, String String2) {
    }

    public static void save2DB(String String1, String String2) {
        FollowRecord FollowRecord3 = new FollowRecord();

        FollowRecord3.setUserId(String1);
        FollowRecord3.setFollowedId(String2);
        FollowRecord3.save();
    }

    public static void save2DB(Follower[] Follower_1darray1) {
        User User2 = am.e().getUser();
        int int4;
        int int5;

        ActiveAndroid.beginTransaction();
        try {
            int4 = Follower_1darray1.length;
        } finally {
            ActiveAndroid.endTransaction();
            throw Object3;
        }
        for (int5 = 0; int5 < int4; ++int5) {
            try {
                Follower Follower6 = Follower_1darray1[int5];
                FollowRecord FollowRecord7 = new FollowRecord();

                FollowRecord7.setUserId(User2.getId());
                FollowRecord7.setFollowedId(Follower6.get_id());
                FollowRecord7.save();
            } finally {
                ActiveAndroid.endTransaction();
                throw Object3;
            }
        }
        try {
            ActiveAndroid.setTransactionSuccessful();
        } finally {
            ActiveAndroid.endTransaction();
            throw Object3;
        }
        ActiveAndroid.endTransaction();
    }

    public String getFollowedId() {
        return followedId;
    }

    public void setFollowedId(String String1) {
        followedId = String1;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String String1) {
        userId = String1;
    }
}
