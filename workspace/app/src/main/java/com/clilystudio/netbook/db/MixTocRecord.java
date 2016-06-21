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
    @Column(name = "tocId")
    private String tocId;

    public static MixTocRecord create(String string, String string2, int n, int n2) {
        MixTocRecord mixTocRecord = new MixTocRecord();
        mixTocRecord.setBookId(string);
        mixTocRecord.setTocId(string2);
        mixTocRecord.setChapterIndex(n);
        mixTocRecord.setCharIndex(n2);
        mixTocRecord.save();
        return mixTocRecord;
    }

    public static void deleteByBookId(String string) {
        new Delete().from(MixTocRecord.class).where("bookId = ?", string).execute();
    }

    public static MixTocRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (MixTocRecord) new Select().from(MixTocRecord.class).where("tocId = ?", string).executeSingle();
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public int getChapterIndex() {
        return this.chapterIndex;
    }

    public void setChapterIndex(int n) {
        this.chapterIndex = n;
    }

    public int getCharIndex() {
        return this.charIndex;
    }

    public void setCharIndex(int n) {
        this.charIndex = n;
    }

    public String getTocId() {
        return this.tocId;
    }

    public void setTocId(String string) {
        this.tocId = string;
    }
}
