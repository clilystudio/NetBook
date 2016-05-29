package com.clilystudio.app.netbook.model;

public class UGCBookListRoot {
    private UGCBookListRoot.UGCBook[] bookLists;
    private boolean ok;

    public UGCBookListRoot.UGCBook[] getBookLists() {
        return this.bookLists;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setBookLists(UGCBookListRoot.UGCBook[] paramArrayOfUGCBook) {
        this.bookLists = paramArrayOfUGCBook;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.UGCBookListRoot
 * JD-Core Version:    0.6.2
 */