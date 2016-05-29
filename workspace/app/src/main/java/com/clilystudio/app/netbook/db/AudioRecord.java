package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;
import com.activeandroid.util.SQLiteUtils;
import com.ximalaya.ting.android.opensdk.model.album.Album;

import java.util.Date;
import java.util.List;

@Table(name = "AudioRecord")
public class AudioRecord extends Model {

    @Column(name = "bookId")
    private String bookId;

    @Column(name = "desc")
    private String desc;

    @Column(name = "imgUrl")
    private String imgUrl;

    @Column(name = "lastRead")
    private long lastRead;

    @Column(name = "lastUpdate")
    private long lastUpdate;

    @Column(name = "name")
    private String name;

    @Column(name = "top")
    private boolean top;

    @Column(name = "track")
    private int track;

    @Column(name = "updateReaded")
    private boolean updateReaded;

    @Column(name = "userId")
    private String userId;

    public static void cancelFollow(String paramString) {
        new Delete().from(AudioRecord.class).where(" bookId = ? ", new Object[]{paramString}).execute();
    }

    public static AudioRecord find(String paramString) {
        List localList = new Select().distinct().from(AudioRecord.class).where("bookId = ?", new Object[]{paramString}).execute();
        if (localList.size() > 0)
            return (AudioRecord) localList.get(0);
        return null;
    }

    public static List<AudioRecord> findAll() {
        return new Select().distinct().from(AudioRecord.class).execute();
    }

    public static boolean isFollowed(String paramString) {
        return new Select().from(AudioRecord.class).where(" bookId = ? ", new Object[]{paramString}).exists();
    }

    public static void save2DB(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, long paramLong) {
        AudioRecord localAudioRecord = new AudioRecord();
        localAudioRecord.setBookId(paramString1);
        localAudioRecord.setName(paramString2);
        localAudioRecord.setDesc(paramString3);
        localAudioRecord.setImgUrl(paramString4);
        localAudioRecord.setTrack(paramInt);
        localAudioRecord.setLastUpdate(paramLong);
        localAudioRecord.setLastRead(new Date().getTime());
        localAudioRecord.save();
    }

    public static void updateLastRead(String paramString) {
        new SQLiteUtils();
        SQLiteUtils.execSql("UPDATE AudioRecord SET lastRead = " + new Date().getTime() + " WHERE bookId =" + paramString);
    }

    public static void updateLastTime(String paramString, long paramLong) {
        new SQLiteUtils();
        SQLiteUtils.execSql("UPDATE AudioRecord SET lastUpdate =" + paramLong + " WHERE bookId =" + paramString);
    }

    public static void updateRecordRead(String paramString, boolean paramBoolean) {
        new SQLiteUtils();
        StringBuilder localStringBuilder = new StringBuilder("UPDATE AudioRecord SET updateReaded = ");
        if (paramBoolean) ;
        for (int i = 1; ; i = 0) {
            SQLiteUtils.execSql(i + " WHERE bookId =" + paramString);
            return;
        }
    }

    public static void updateTrack(String paramString, int paramInt) {
        new SQLiteUtils();
        SQLiteUtils.execSql("UPDATE AudioRecord SET track =" + paramInt + " WHERE bookId =" + paramString);
    }

    public Album convert2Album() {
        try {
            localAlbum = new Album();
            localAlbum.setId(Integer.parseInt(this.bookId));
            localAlbum.setAlbumTitle(this.name);
            localAlbum.setAlbumIntro(this.desc);
            localAlbum.setCoverUrlSmall(this.imgUrl);
            return localAlbum;
        } catch (Exception localException) {
            while (true)
                Album localAlbum = null;
        }
    }

    public String getBookId() {
        return this.bookId;
    }

    public String getDesc() {
        return this.desc;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public long getLastRead() {
        return this.lastRead;
    }

    public long getLastUpdate() {
        return this.lastUpdate;
    }

    public String getName() {
        return this.name;
    }

    public int getTrack() {
        return this.track;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isTop() {
        return this.top;
    }

    public boolean isUpdateReaded() {
        return this.updateReaded;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public void setDesc(String paramString) {
        this.desc = paramString;
    }

    public void setImgUrl(String paramString) {
        this.imgUrl = paramString;
    }

    public void setLastRead(long paramLong) {
        this.lastRead = paramLong;
    }

    public void setLastUpdate(long paramLong) {
        this.lastUpdate = paramLong;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public void setTop(boolean paramBoolean) {
        this.top = paramBoolean;
    }

    public void setTrack(int paramInt) {
        this.track = paramInt;
    }

    public void setUpdateReaded(boolean paramBoolean) {
        this.updateReaded = paramBoolean;
    }

    public void setUserId(String paramString) {
        this.userId = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.AudioRecord
 * JD-Core Version:    0.6.2
 */