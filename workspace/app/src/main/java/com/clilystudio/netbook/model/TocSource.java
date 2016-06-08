package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.Date;

public class TocSource
        implements Serializable {
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

    public void setBook(String paramString) {
        this.book = paramString;
    }

    public int getChapterCount() {
        return this.chapterCount;
    }

    public void setChapterCount(int paramInt) {
        this.chapterCount = paramInt;
    }

    public String getFullSource() {
        return this.source + ".com";
    }

    public String getId() {
        return this._id;
    }

    public void setId(String paramString) {
        this._id = paramString;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String paramString) {
        this.lastChapter = paramString;
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

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public boolean isPriority() {
        return this.priority;
    }

    public void setPriority(boolean paramBoolean) {
        this.priority = paramBoolean;
    }
}

