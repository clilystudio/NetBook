package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Toc
        implements Serializable {
    private static final long serialVersionUID = -3277489999990478661L;
    private String _id;
    private ChapterLink[] chapters;
    private String host;
    private String name;
    private boolean realChapter = true;

    public ChapterLink[] getChapters() {
        return this.chapters;
    }

    public void setChapters(ChapterLink[] paramArrayOfChapterLink) {
        this.chapters = paramArrayOfChapterLink;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String paramString) {
        this.host = paramString;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isRealChapter() {
        return this.realChapter;
    }

    public void setRealChapter(boolean paramBoolean) {
        this.realChapter = paramBoolean;
    }
}

