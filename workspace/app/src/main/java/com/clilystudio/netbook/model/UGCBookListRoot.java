
package com.clilystudio.netbook.model;

public class UGCBookListRoot {

    private UGCBookListRoot$UGCBook[] bookLists;
    private boolean ok;

    public UGCBookListRoot$UGCBook[] getBookLists()
    {
        return bookLists;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBookLists(UGCBookListRoot$UGCBook[] UGCBook_1darray1)
    {
        bookLists = UGCBook_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
