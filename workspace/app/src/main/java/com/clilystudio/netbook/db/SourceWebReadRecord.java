package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;

@Table(name = "SourceWebReadRecord")
public class SourceWebReadRecord extends Model {
    @Column(name = "_id")
    private String _id;
    @Column(name = "bookId")
    private String bookId;
    @Column(name = "chapterIndex")
    private int chapterIndex;
    @Column(name = "cmd")
    private String cmd;
    @Column(name = "readMode")
    private int readMode = -1;

    public static void create(String string, int n, int n2) {
        SourceWebReadRecord sourceWebReadRecord = new SourceWebReadRecord();
        sourceWebReadRecord.bookId = string;
        sourceWebReadRecord.readMode = n;
        sourceWebReadRecord.chapterIndex = n2;
        sourceWebReadRecord.save();
    }

    public static void create(String string, int n, String string2) {
        SourceWebReadRecord sourceWebReadRecord = new SourceWebReadRecord();
        sourceWebReadRecord.bookId = string;
        sourceWebReadRecord.readMode = n;
        sourceWebReadRecord.cmd = string2;
        sourceWebReadRecord.save();
    }

    public static SourceWebReadRecord get(String string, int n) {
        if (string == null) {
            return null;
        }
        From from = new Select().from(SourceWebReadRecord.class);
        Object[] arrobject = new Object[]{string, n};
        return (SourceWebReadRecord) from.where("(bookId = ?) AND (readMode = ?)", arrobject).executeSingle();
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

    public String getCmd() {
        return this.cmd;
    }

    public void setCmd(String string) {
        this.cmd = string;
    }

    public int getReadMode() {
        return this.readMode;
    }

    public void setReadMode(int n) {
        this.readMode = n;
    }
}
