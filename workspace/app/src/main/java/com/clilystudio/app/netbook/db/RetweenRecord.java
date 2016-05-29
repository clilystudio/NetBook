package com.clilystudio.app.netbook.db;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

import java.util.Iterator;
import java.util.List;

@Table(name = "RetweenRecord")
public class RetweenRecord extends Model {

    @Column(name = "tweetId")
    private String tweetId;

    @Column(name = "userId")
    private String userId;

    public static void cancelRetween(String paramString1, String paramString2) {
        new Delete().from(RetweenRecord.class).where(" userId = ? and tweetId = ? ", new Object[]{paramString1, paramString2}).execute();
    }

    public static void clear(String paramString) {
        new Delete().from(RetweenRecord.class).where(" userId = ? ", new Object[]{paramString}).execute();
    }

    public static List<RetweenRecord> findAll(String paramString) {
        return new Select().distinct().from(RetweenRecord.class).where(" userId = ? ").execute();
    }

    public static boolean isRetweened(String paramString1, String paramString2) {
        return new Select().from(RetweenRecord.class).where(" userId = ? and tweetId = ?", new Object[]{paramString1, paramString2}).exists();
    }

    public static void save2DB(String paramString1, String paramString2) {
        RetweenRecord localRetweenRecord = new RetweenRecord();
        localRetweenRecord.setUserId(paramString1);
        localRetweenRecord.setTweetId(paramString2);
        localRetweenRecord.save();
    }

    public static void save2DB(List<RetweenRecord> paramList) {
        ActiveAndroid.beginTransaction();
        try {
            Iterator localIterator = paramList.iterator();
            while (localIterator.hasNext())
                ((RetweenRecord) localIterator.next()).save();
        } finally {
            ActiveAndroid.endTransaction();
        }
        ActiveAndroid.setTransactionSuccessful();
        ActiveAndroid.endTransaction();
    }

    public String getTweetId() {
        return this.tweetId;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setTweetId(String paramString) {
        this.tweetId = paramString;
    }

    public void setUserId(String paramString) {
        this.userId = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.RetweenRecord
 * JD-Core Version:    0.6.2
 */