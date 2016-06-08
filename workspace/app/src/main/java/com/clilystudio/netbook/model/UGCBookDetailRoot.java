package com.clilystudio.netbook.model;

public class UGCBookDetailRoot {
    private UGCBookDetail bookList;
    private boolean ok;

    public UGCBookDetail getBookList() {
        return this.bookList;
    }

    public void setBookList(UGCBookDetail paramUGCBookDetail) {
        this.bookList = paramUGCBookDetail;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

