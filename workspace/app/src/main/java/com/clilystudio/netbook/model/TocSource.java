package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.Date;

public class TocSource implements Serializable {
    private static final long serialVersionUID = -2930289815391625653L;
    private String _id;
    private String book;
    private int chapterCount;
    private String lastChapter;
    private boolean priority;
    private String source;
    private String sourceId;
    private Date updated;

    public String getBook() {
        return this.book;
    }

    public void setBook(String string) {
        this.book = string;
    }

    public int getChapterCount() {
        return this.chapterCount;
    }

    public void setChapterCount(int n) {
        this.chapterCount = n;
    }

    public String getFullSource() {
        return this.source + ".com";
    }

    public String getId() {
        return this._id;
    }

    public void setId(String string) {
        this._id = string;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String string) {
        this.lastChapter = string;
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

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public boolean isPriority() {
        return this.priority;
    }

    public void setPriority(boolean bl) {
        this.priority = bl;
    }
}
