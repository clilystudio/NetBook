package com.clilystudio.netbook.db;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

import java.util.Iterator;
import java.util.List;

@Table(name = "RetweenRecord")
public class RetweenRecord
        extends Model {
    @Column(name = "tweetId")
    private String tweetId;
    @Column(name = "userId")
    private String userId;

    public static void cancelRetween(String string, String string2) {
        new Delete().from(RetweenRecord.class).where(" userId = ? and tweetId = ? ", string, string2).execute();
    }

    public static void clear(String string) {
        new Delete().from(RetweenRecord.class).where(" userId = ? ", string).execute();
    }

    public static List<RetweenRecord> findAll(String string) {
        return new Select().distinct().from(RetweenRecord.class).where(" userId = ? ").execute();
    }

    public static boolean isRetweened(String string, String string2) {
        return new Select().from(RetweenRecord.class).where(" userId = ? and tweetId = ?", string, string2).exists();
    }

    public static void save2DB(String string, String string2) {
        RetweenRecord retweenRecord = new RetweenRecord();
        retweenRecord.setUserId(string);
        retweenRecord.setTweetId(string2);
        retweenRecord.save();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static void save2DB(List<RetweenRecord> list) {
        ActiveAndroid.beginTransaction();
        try {
            Iterator<RetweenRecord> iterator = list.iterator();
            while (iterator.hasNext()) {
                iterator.next().save();
            }
            ActiveAndroid.setTransactionSuccessful();
            return;
        } finally {
            ActiveAndroid.endTransaction();
        }
    }

    public String getTweetId() {
        return this.tweetId;
    }

    public void setTweetId(String string) {
        this.tweetId = string;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String string) {
        this.userId = string;
    }
}
