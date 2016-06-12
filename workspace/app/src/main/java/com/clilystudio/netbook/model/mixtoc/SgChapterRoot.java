
package com.clilystudio.netbook.model.mixtoc;

public class SgChapterRoot {

    private SgChapterBook book;
    private SgMixChapter[] content;

    public SgChapterBook getBook()
    {
        return book;
    }

    public SgMixChapter[] getContent()
    {
        return content;
    }

    public void setBook(SgChapterBook SgChapterBook1)
    {
        book = SgChapterBook1;
    }

    public void setContent(SgMixChapter[] SgMixChapter_1darray1)
    {
        content = SgMixChapter_1darray1;
    }
}
