package com.clilystudio.netbook.model;

public class MixChapterResource {
    private ChapterLink chapter;
    private String host;
    private String source;

    public ChapterLink getChapter() {
        return this.chapter;
    }

    public void setChapter(ChapterLink chapterLink) {
        this.chapter = chapterLink;
    }

    public String getHost() {
        return this.host;
    }

    public void setHost(String string) {
        this.host = string;
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String string) {
        this.source = string;
    }
}
