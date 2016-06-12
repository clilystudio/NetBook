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
        return book;
    }

    public void setBook(String String1) {
        book = String1;
    }

    public int getChapterCount() {
        return chapterCount;
    }

    public void setChapterCount(int int1) {
        chapterCount = int1;
    }

    public String getFullSource() {
        return new StringBuilder().append(source).append(".com").toString();
    }

    public String getId() {
        return _id;
    }

    public void setId(String String1) {
        _id = String1;
    }

    public String getLastChapter() {
        return lastChapter;
    }

    public void setLastChapter(String String1) {
        lastChapter = String1;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String String1) {
        source = String1;
    }

    public String getSourceId() {
        return sourceId;
    }

    public void setSourceId(String String1) {
        sourceId = String1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public boolean isPriority() {
        return priority;
    }

    public void setPriority(boolean boolean1) {
        priority = boolean1;
    }
}
