package com.clilystudio.netbook.model;

public class MysteryBookList {
    private MysteryBookList.MysteryBookRoot[] books;
    private boolean ok;

    public MysteryBookList.MysteryBookRoot[] getBooks() {
        return this.books;
    }

    public void setBooks(MysteryBookList.MysteryBookRoot[] paramArrayOfMysteryBookRoot) {
        this.books = paramArrayOfMysteryBookRoot;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

