package com.clilystudio.netbook.db;

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

    public static void cancelFollow(String string) {
        new Delete().from(AudioRecord.class).where(" bookId = ? ", string).execute();
    }

    public static AudioRecord find(String string) {
        List list = new Select().distinct().from(AudioRecord.class).where("bookId = ?", string).execute();
        if (list.size() > 0) {
            return (AudioRecord) list.get(0);
        }
        return null;
    }

    public static List<AudioRecord> findAll() {
        return new Select().distinct().from(AudioRecord.class).execute();
    }

    public static boolean isFollowed(String string) {
        return new Select().from(AudioRecord.class).where(" bookId = ? ", string).exists();
    }

    public static void save2DB(String string, String string2, String string3, String string4, int n, long l) {
        AudioRecord audioRecord = new AudioRecord();
        audioRecord.setBookId(string);
        audioRecord.setName(string2);
        audioRecord.setDesc(string3);
        audioRecord.setImgUrl(string4);
        audioRecord.setTrack(n);
        audioRecord.setLastUpdate(l);
        audioRecord.setLastRead(new Date().getTime());
        audioRecord.save();
    }

    public static void updateLastRead(String string) {
        new SQLiteUtils();
        SQLiteUtils.execSql("UPDATE AudioRecord SET lastRead = " + new Date().getTime() + " WHERE bookId =" + string);
    }

    public static void updateLastTime(String string, long l) {
        new SQLiteUtils();
        SQLiteUtils.execSql("UPDATE AudioRecord SET lastUpdate =" + l + " WHERE bookId =" + string);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void updateRecordRead(String string, boolean bl) {
        new SQLiteUtils();
        StringBuilder stringBuilder = new StringBuilder("UPDATE AudioRecord SET updateReaded = ");
        int n = bl ? 1 : 0;
        SQLiteUtils.execSql(stringBuilder.append(n).append(" WHERE bookId =").append(string).toString());
    }

    public static void updateTrack(String string, int n) {
        new SQLiteUtils();
        SQLiteUtils.execSql("UPDATE AudioRecord SET track =" + n + " WHERE bookId =" + string);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public Album convert2Album() {
        Album album;
        try {
            album = new Album();
        } catch (Exception var2_2) {
            album = null;
        }
        album.setId(Integer.parseInt(this.bookId));
        album.setAlbumTitle(this.name);
        album.setAlbumIntro(this.desc);
        album.setCoverUrlSmall(this.imgUrl);
        return album;
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String string) {
        this.desc = string;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String string) {
        this.imgUrl = string;
    }

    public long getLastRead() {
        return this.lastRead;
    }

    public void setLastRead(long l) {
        this.lastRead = l;
    }

    public long getLastUpdate() {
        return this.lastUpdate;
    }

    public void setLastUpdate(long l) {
        this.lastUpdate = l;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String string) {
        this.name = string;
    }

    public int getTrack() {
        return this.track;
    }

    public void setTrack(int n) {
        this.track = n;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String string) {
        this.userId = string;
    }

    public boolean isTop() {
        return this.top;
    }

    public void setTop(boolean bl) {
        this.top = bl;
    }

    public boolean isUpdateReaded() {
        return this.updateReaded;
    }

    public void setUpdateReaded(boolean bl) {
        this.updateReaded = bl;
    }
}
