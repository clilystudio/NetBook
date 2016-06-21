package com.clilystudio.netbook.db;

import com.clilystudio.netbook.am;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.model.User;

import java.util.List;

@Table(name = "FollowRecord")
public class FollowRecord extends Model {
    @Column(name = "followedId")
    private String followedId;
    @Column(name = "userId")
    private String userId;

    public static void cancelFollow(String string, String string2) {
        new Delete().from(FollowRecord.class).where(" userId = ? and followedId = ? ", string, string2).execute();
    }

    public static void clear(String string) {
        new Delete().from(FollowRecord.class).where(" userId = ? ", string).execute();
    }

    public static List<FollowRecord> findAll(String string) {
        return new Select().distinct().from(FollowRecord.class).where(" userId = ? ").execute();
    }

    public static boolean isFollowed(String string, String string2) {
        return !new Select().from(FollowRecord.class).where(" userId = ? and followedId = ?", string, string2).execute().isEmpty();
    }

    public static void save2DB(String string, String string2) {
        FollowRecord followRecord = new FollowRecord();
        followRecord.setUserId(string);
        followRecord.setFollowedId(string2);
        followRecord.save();
    }

    public static void save2DB(Follower[] arrfollower) {
        User user = am.e().getUser();
        ActiveAndroid.beginTransaction();
        int n = arrfollower.length;
        for (int i = 0; i < n; ++i) {
            Follower follower = arrfollower[i];
            FollowRecord followRecord = new FollowRecord();
            followRecord.setUserId(user.getId());
            followRecord.setFollowedId(follower.get_id());
            followRecord.save();
        }
        try {
            ActiveAndroid.setTransactionSuccessful();
            return;
        } catch (Throwable var2_6) {
            throw var2_6;
        } finally {
            ActiveAndroid.endTransaction();
        }
    }

    public String getFollowedId() {
        return this.followedId;
    }

    public void setFollowedId(String string) {
        this.followedId = string;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String string) {
        this.userId = string;
    }
}
