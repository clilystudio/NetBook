package com.clilystudio.app.netbook.model.mixtoc;

public class SgTocRoot {
    private SgTocBook book;
    private SgTocChapter[] chapter;

    public SgTocBook getBook() {
        return this.book;
    }

    public SgTocChapter[] getChapter() {
        return this.chapter;
    }

    public void setBook(SgTocBook paramSgTocBook) {
        this.book = paramSgTocBook;
    }

    public void setChapter(SgTocChapter[] paramArrayOfSgTocChapter) {
        this.chapter = paramArrayOfSgTocChapter;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.mixtoc.SgTocRoot
 * JD-Core Version:    0.6.2
 */