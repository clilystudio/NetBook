package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.util.List;

public class TweetCache extends Model {

    public static final String HOT_USER_ID = "zhuishushenqi_hot_user_id";
    public static final int TYPE_HOT = 2;
    public static final int TYPE_MY = 3;
    public static final int TYPE_TIMELINE = 1;
    private String content;
    private int type;
    private String userId;
// Error: Internal #201: 
// The following method may not be correct.

    public static void clear(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void delete(String String1, int int2) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List find(String String1, int int2) {
    }

    public static void save2DB(String String1, int int2, String String3) {
        TweetCache TweetCache4 = new TweetCache();

        TweetCache4.setUserId(String1);
        TweetCache4.setType(int2);
        TweetCache4.setContent(String3);
        TweetCache4.save();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String String1) {
        content = String1;
    }

    public int getType() {
        return type;
    }

    public void setType(int int1) {
        type = int1;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String String1) {
        userId = String1;
    }
}
