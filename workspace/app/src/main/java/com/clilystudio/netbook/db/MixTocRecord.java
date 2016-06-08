package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

@Table(name = "MixTocRecords")
public class MixTocRecord extends Model {

    @Column(name = "bookId")
    private String bookId;

    @Column(name = "chapterIndex")
    private int chapterIndex = -1;

    @Column(name = "chapterTitle")
    private String chapterTitle;

    @Column(name = "charIndex")
    private int charIndex = 0;

    @Column(name = "tocId", unique = true)
    private String tocId;

    public static MixTocRecord create(String paramString1, String paramString2, int paramInt1, int paramInt2) {
        MixTocRecord localMixTocRecord = new MixTocRecord();
        localMixTocRecord.setBookId(paramString1);
        localMixTocRecord.setTocId(paramString2);
        localMixTocRecord.setChapterIndex(paramInt1);
        localMixTocRecord.setCharIndex(paramInt2);
        localMixTocRecord.save();
        return localMixTocRecord;
    }

    public static void deleteByBookId(String paramString) {
        new Delete().from(MixTocRecord.class).where("bookId = ?", new Object[]{paramString}).execute();
    }

    public static MixTocRecord get(String paramString) {
        if (paramString == null)
            return null;
        return (MixTocRecord) new Select().from(MixTocRecord.class).where("tocId = ?", new Object[]{paramString}).executeSingle();
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public int getChapterIndex() {
        return this.chapterIndex;
    }

    public void setChapterIndex(int paramInt) {
        this.chapterIndex = paramInt;
    }

    public int getCharIndex() {
        return this.charIndex;
    }

    public void setCharIndex(int paramInt) {
        this.charIndex = paramInt;
    }

    public String getTocId() {
        return this.tocId;
    }

    public void setTocId(String paramString) {
        this.tocId = paramString;
    }
}

