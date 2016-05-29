package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;

@Table(name = "SourceWebReadRecord")
public class SourceWebReadRecord extends Model {

    @Column(name = "_id", unique = true)
    private String _id;

    @Column(name = "bookId")
    private String bookId;

    @Column(name = "chapterIndex")
    private int chapterIndex;

    @Column(name = "cmd")
    private String cmd;

    @Column(name = "readMode")
    private int readMode = -1;

    public static void create(String paramString, int paramInt1, int paramInt2) {
        SourceWebReadRecord localSourceWebReadRecord = new SourceWebReadRecord();
        localSourceWebReadRecord.bookId = paramString;
        localSourceWebReadRecord.readMode = paramInt1;
        localSourceWebReadRecord.chapterIndex = paramInt2;
        localSourceWebReadRecord.save();
    }

    public static void create(String paramString1, int paramInt, String paramString2) {
        SourceWebReadRecord localSourceWebReadRecord = new SourceWebReadRecord();
        localSourceWebReadRecord.bookId = paramString1;
        localSourceWebReadRecord.readMode = paramInt;
        localSourceWebReadRecord.cmd = paramString2;
        localSourceWebReadRecord.save();
    }

    public static SourceWebReadRecord get(String paramString, int paramInt) {
        if (paramString == null)
            return null;
        From localFrom = new Select().from(SourceWebReadRecord.class);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString;
        arrayOfObject[1] = Integer.valueOf(paramInt);
        return (SourceWebReadRecord) localFrom.where("(bookId = ?) AND (readMode = ?)", arrayOfObject).executeSingle();
    }

    public String getBookId() {
        return this.bookId;
    }

    public int getChapterIndex() {
        return this.chapterIndex;
    }

    public String getCmd() {
        return this.cmd;
    }

    public int getReadMode() {
        return this.readMode;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public void setChapterIndex(int paramInt) {
        this.chapterIndex = paramInt;
    }

    public void setCmd(String paramString) {
        this.cmd = paramString;
    }

    public void setReadMode(int paramInt) {
        this.readMode = paramInt;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.SourceWebReadRecord
 * JD-Core Version:    0.6.2
 */