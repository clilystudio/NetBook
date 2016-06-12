
package com.clilystudio.netbook.model;

public class UGCBookDetailRoot {

    private UGCBookDetail bookList;
    private boolean ok;

    public UGCBookDetail getBookList()
    {
        return bookList;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBookList(UGCBookDetail UGCBookDetail1)
    {
        bookList = UGCBookDetail1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
