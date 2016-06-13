package com.clilystudio.netbook.model;

public class UGCBookListRoot {
    private UGCBookListRoot$UGCBook[] bookLists;
    private boolean ok;

    public UGCBookListRoot$UGCBook[] getBookLists() {
        return this.bookLists;
    }

    public void setBookLists(UGCBookListRoot$UGCBook[] arruGCBookListRoot$UGCBook) {
        this.bookLists = arruGCBookListRoot$UGCBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
