
package com.clilystudio.netbook.model.mixtoc;

public class SgTocRoot {

    private SgTocBook book;
    private SgTocChapter[] chapter;

    public SgTocBook getBook()
    {
        return book;
    }

    public SgTocChapter[] getChapter()
    {
        return chapter;
    }

    public void setBook(SgTocBook SgTocBook1)
    {
        book = SgTocBook1;
    }

    public void setChapter(SgTocChapter[] SgTocChapter_1darray1)
    {
        chapter = SgTocChapter_1darray1;
    }
}
