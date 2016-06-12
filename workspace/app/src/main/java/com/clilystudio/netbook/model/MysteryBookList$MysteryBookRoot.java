
package com.clilystudio.netbook.model;

public class MysteryBookList$MysteryBookRoot {

    public MysteryBookList$MysteryBookRoot(MysteryBookList MysteryBookList1)
    {
        this$0 = MysteryBookList1;
    }

    private MysteryBook book;
    MysteryBookList this$0;     // final access specifier removed
    private MysteryToc toc;

    public MysteryBook getBook()
    {
        return book;
    }

    public MysteryToc getToc()
    {
        return toc;
    }

    public void setBook(MysteryBook MysteryBook1)
    {
        book = MysteryBook1;
    }

    public void setToc(MysteryToc MysteryToc1)
    {
        toc = MysteryToc1;
    }
}
