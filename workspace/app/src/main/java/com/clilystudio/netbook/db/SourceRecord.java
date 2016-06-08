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

    public static void create(String paramString1, String paramString2, String paramString3) {
        SourceRecord localSourceRecord = new SourceRecord();
        localSourceRecord.bookId = paramString1;
        localSourceRecord.source = paramString2;
        localSourceRecord.sourceId = paramString3;
        localSourceRecord.save();
    }

    public static void create(String paramString1, String paramString2, String paramString3, String paramString4) {
        SourceRecord localSourceRecord = new SourceRecord();
        localSourceRecord.bookId = paramString1;
        localSourceRecord.source = paramString2;
        localSourceRecord.sourceId = paramString3;
        localSourceRecord.sogouMd = paramString4;
        localSourceRecord.save();
    }

    public static void delete(String paramString) {
        new Delete().from(SourceRecord.class).where("bookId = ?", new Object[]{paramString}).execute();
    }

    public static SourceRecord get(String paramString1, String paramString2) {
        if ((paramString1 == null) || (paramString2 == null))
            return null;
        return (SourceRecord) new Select().from(SourceRecord.class).where("bookId = ? AND source = ?", new Object[]{paramString1, paramString2}).executeSingle();
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public String getSogouMd() {
        return this.sogouMd;
    }

    public void setSogouMd(String paramString) {
        this.sogouMd = paramString;
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String paramString) {
        this.source = paramString;
    }

    public String getSourceId() {
        return this.sourceId;
    }

    public void setSourceId(String paramString) {
        this.sourceId = paramString;
    }
}

