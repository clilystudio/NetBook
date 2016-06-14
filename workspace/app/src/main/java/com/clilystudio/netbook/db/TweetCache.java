package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;

import java.util.List;

@Table(name = "TweetCache")
public class TweetCache extends Model {
    public static final String HOT_USER_ID = "zhuishushenqi_hot_user_id";
    public static final int TYPE_HOT = 2;
    public static final int TYPE_MY = 3;
    public static final int TYPE_TIMELINE = 1;
    @Column(name = "content")
    private String content;
    @Column(name = "type")
    private int type;
    @Column(name = "userId")
    private String userId;

    public static void clear(String string) {
        new Delete().from(TweetCache.class).where(" userId = ? ", string).execute();
    }

    public static void delete(String string, int n) {
        From from = new Delete().from(TweetCache.class);
        Object[] arrobject = new Object[]{string, n};
        from.where(" userId = ? and type = ?", arrobject).execute();
    }

    public static List<TweetCache> find(String string, int n) {
        From from = new Select().from(TweetCache.class);
        Object[] arrobject = new Object[]{string, n};
        return from.where(" userId = ? and type = ? ", arrobject).orderBy(" id ").execute();
    }

    public static void save2DB(String string, int n, String string2) {
        TweetCache tweetCache = new TweetCache();
        tweetCache.setUserId(string);
        tweetCache.setType(n);
        tweetCache.setContent(string2);
        tweetCache.save();
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int n) {
        this.type = n;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String string) {
        this.userId = string;
    }
}
