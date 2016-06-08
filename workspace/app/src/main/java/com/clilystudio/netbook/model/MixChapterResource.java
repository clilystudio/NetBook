package com.clilystudio.netbook.model;

public class MixChapterResource {
    private ChapterLink chapter;
    private String host;
    private String source;

    public ChapterLink getChapter() {
        return this.chapter;
    }

    public void setChapter(ChapterLink paramChapterLink) {
        this.chapter = paramChapterLink;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String paramString) {
        this.host = paramString;
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String paramString) {
        this.source = paramString;
    }
}

