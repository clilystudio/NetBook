package com.clilystudio.netbook.model.mixtoc;

public class SgTocRoot {
    private SgTocBook book;
    private SgTocChapter[] chapter;

    public SgTocBook getBook() {
        return this.book;
    }

    public void setBook(SgTocBook paramSgTocBook) {
        this.book = paramSgTocBook;
    }

    public SgTocChapter[] getChapter() {
        return this.chapter;
    }

    public void setChapter(SgTocChapter[] paramArrayOfSgTocChapter) {
        this.chapter = paramArrayOfSgTocChapter;
    }
}

