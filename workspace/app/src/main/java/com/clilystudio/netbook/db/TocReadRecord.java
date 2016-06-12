package com.clilystudio.netbook.db;

import com.activeandroid.Model;

public class TocReadRecord extends Model {

    private String book_id;
    private String chapter_title;
    private String toc_id;
    private String toc_name;
    private int chapter_num = -1;
    private int character_num = 0;

    public static void create(String String1, String String2, String String3, String String4, int int5, int int6) {
        TocReadRecord TocReadRecord7 = new TocReadRecord();

        TocReadRecord7.book_id = String1;
        TocReadRecord7.toc_id = String2;
        TocReadRecord7.toc_name = String3;
        TocReadRecord7.chapter_title = String4;
        TocReadRecord7.chapter_num = int5;
        TocReadRecord7.character_num = int6;
        TocReadRecord7.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void deleteByBookId(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static TocReadRecord get(String String1) {
    }

    public String getBookId() {
        return book_id;
    }

    public void setBookId(String String1) {
        book_id = String1;
    }

    public int getChapterIndex() {
        return chapter_num;
    }

    public void setChapterIndex(int int1) {
        chapter_num = int1;
    }

    public String getChapterTitle() {
        return chapter_title;
    }

    public void setChapterTitle(String String1) {
        chapter_title = String1;
    }

    public int getCharIndex() {
        return character_num;
    }

    public void setCharIndex(int int1) {
        character_num = int1;
    }

    public String getHost() {
        return toc_name;
    }

    public void setHost(String String1) {
        toc_name = String1;
    }

    public String getTocId() {
        return toc_id;
    }

    public void setTocId(String String1) {
        toc_id = String1;
    }
}
