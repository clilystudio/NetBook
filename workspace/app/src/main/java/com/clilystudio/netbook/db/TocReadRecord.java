package com.clilystudio.netbook.db;

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
    @Column(name = "toc_id", unique = 1)
    private String toc_id;
    @Column(name = "toc_name")
    private String toc_name;

    public static void create(String string, String string2, String string3, String string4, int n, int n2) {
        TocReadRecord tocReadRecord = new TocReadRecord();
        tocReadRecord.book_id = string;
        tocReadRecord.toc_id = string2;
        tocReadRecord.toc_name = string3;
        tocReadRecord.chapter_title = string4;
        tocReadRecord.chapter_num = n;
        tocReadRecord.character_num = n2;
        tocReadRecord.save();
    }

    public static void deleteByBookId(String string) {
        new Delete().from(TocReadRecord.class).where("book_id = ?", string).execute();
    }

    public static TocReadRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (TocReadRecord) new Select().from(TocReadRecord.class).where("toc_id = ?", string).executeSingle();
    }

    public String getBookId() {
        return this.book_id;
    }

    public void setBookId(String string) {
        this.book_id = string;
    }

    public int getChapterIndex() {
        return this.chapter_num;
    }

    public void setChapterIndex(int n) {
        this.chapter_num = n;
    }

    public String getChapterTitle() {
        return this.chapter_title;
    }

    public void setChapterTitle(String string) {
        this.chapter_title = string;
    }

    public int getCharIndex() {
        return this.character_num;
    }

    public void setCharIndex(int n) {
        this.character_num = n;
    }

    public String getHost() {
        return this.toc_name;
    }

    public void setHost(String string) {
        this.toc_name = string;
    }

    public String getTocId() {
        return this.toc_id;
    }

    public void setTocId(String string) {
        this.toc_id = string;
    }
}
