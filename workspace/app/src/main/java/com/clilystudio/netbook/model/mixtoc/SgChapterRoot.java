package com.clilystudio.netbook.model.mixtoc;

public class SgChapterRoot {
    private SgChapterBook book;
    private SgMixChapter[] content;

    public SgChapterBook getBook() {
        return this.book;
    }

    public void setBook(SgChapterBook sgChapterBook) {
        this.book = sgChapterBook;
    }

    public SgMixChapter[] getContent() {
        return this.content;
    }

    public void setContent(SgMixChapter[] arrsgMixChapter) {
        this.content = arrsgMixChapter;
    }
}
