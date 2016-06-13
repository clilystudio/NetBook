package com.clilystudio.netbook.model;

public class UGCBookDetailRoot {
    private UGCBookDetail bookList;
    private boolean ok;

    public UGCBookDetail getBookList() {
        return this.bookList;
    }

    public void setBookList(UGCBookDetail uGCBookDetail) {
        this.bookList = uGCBookDetail;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
