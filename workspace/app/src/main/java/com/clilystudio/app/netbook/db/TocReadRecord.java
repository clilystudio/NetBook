package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

@Table(name = "TocReadRecords")
public class TocReadRecord extends Model {

    @Column(name = "book_id")
    private String book_id;

    @Column(name = "chapter_num")
    private int chapter_num = -1;

    @Column(name = "chapter_title")
    private String chapter_title;

    @Column(name = "character_num")
    private int character_num = 0;

    @Column(name = "toc_id", unique = true)
    private String toc_id;

    @Column(name = "toc_name")
    private String toc_name;

    public static void create(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2) {
        TocReadRecord localTocReadRecord = new TocReadRecord();
        localTocReadRecord.book_id = paramString1;
        localTocReadRecord.toc_id = paramString2;
        localTocReadRecord.toc_name = paramString3;
        localTocReadRecord.chapter_title = paramString4;
        localTocReadRecord.chapter_num = paramInt1;
        localTocReadRecord.character_num = paramInt2;
        localTocReadRecord.save();
    }

    public static void deleteByBookId(String paramString) {
        new Delete().from(TocReadRecord.class).where("book_id = ?", new Object[]{paramString}).execute();
    }

    public static TocReadRecord get(String paramString) {
        if (paramString == null)
            return null;
        return (TocReadRecord) new Select().from(TocReadRecord.class).where("toc_id = ?", new Object[]{paramString}).executeSingle();
    }

    public String getBookId() {
        return this.book_id;
    }

    public int getChapterIndex() {
        return this.chapter_num;
    }

    public String getChapterTitle() {
        return this.chapter_title;
    }

    public int getCharIndex() {
        return this.character_num;
    }

    public String getHost() {
        return this.toc_name;
    }

    public String getTocId() {
        return this.toc_id;
    }

    public void setBookId(String paramString) {
        this.book_id = paramString;
    }

    public void setChapterIndex(int paramInt) {
        this.chapter_num = paramInt;
    }

    public void setChapterTitle(String paramString) {
        this.chapter_title = paramString;
    }

    public void setCharIndex(int paramInt) {
        this.character_num = paramInt;
    }

    public void setHost(String paramString) {
        this.toc_name = paramString;
    }

    public void setTocId(String paramString) {
        this.toc_id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.TocReadRecord
 * JD-Core Version:    0.6.2
 */