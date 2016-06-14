package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.Select;

@Table(name = "SourceRecord")
public class SourceRecord extends Model {
    @Column(name = "bookId")
    private String bookId;
    @Column(name = "sogouMd")
    private String sogouMd;
    @Column(name = "source")
    private String source;
    @Column(name = "sourceId")
    private String sourceId;

    public static void create(String string, String string2, String string3) {
        SourceRecord sourceRecord = new SourceRecord();
        sourceRecord.bookId = string;
        sourceRecord.source = string2;
        sourceRecord.sourceId = string3;
        sourceRecord.save();
    }

    public static void create(String string, String string2, String string3, String string4) {
        SourceRecord sourceRecord = new SourceRecord();
        sourceRecord.bookId = string;
        sourceRecord.source = string2;
        sourceRecord.sourceId = string3;
        sourceRecord.sogouMd = string4;
        sourceRecord.save();
    }

    public static void delete(String string) {
        new Delete().from(SourceRecord.class).where("bookId = ?", string).execute();
    }

    public static SourceRecord get(String string, String string2) {
        if (string == null || string2 == null) {
            return null;
        }
        return (SourceRecord) new Select().from(SourceRecord.class).where("bookId = ? AND source = ?", string, string2).executeSingle();
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public String getSogouMd() {
        return this.sogouMd;
    }

    public void setSogouMd(String string) {
        this.sogouMd = string;
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String string) {
        this.source = string;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public void setSourceId(String string) {
        this.sourceId = string;
    }
}
