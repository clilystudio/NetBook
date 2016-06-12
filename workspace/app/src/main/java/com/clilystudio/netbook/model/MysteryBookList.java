
package com.clilystudio.netbook.model;

public class MysteryBookList {

    private MysteryBookList$MysteryBookRoot[] books;
    private boolean ok;

    public MysteryBookList$MysteryBookRoot[] getBooks()
    {
        return books;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBooks(MysteryBookList$MysteryBookRoot[] MysteryBookRoot_1darray1)
    {
        books = MysteryBookRoot_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
