package com.clilystudio.netbook.model.mixtoc;

public class SgTocRoot {
    private SgTocBook book;
    private SgTocChapter[] chapter;

    public SgTocBook getBook() {
        return this.book;
    }

    public void setBook(SgTocBook sgTocBook) {
        this.book = sgTocBook;
    }

    public SgTocChapter[] getChapter() {
        return this.chapter;
    }

    public void setChapter(SgTocChapter[] arrsgTocChapter) {
        this.chapter = arrsgTocChapter;
    }
}
