package com.clilystudio.netbook.model;

public class MysteryBookList {
    private MysteryBookList$MysteryBookRoot[] books;
    private boolean ok;

    public MysteryBookList$MysteryBookRoot[] getBooks() {
        return this.books;
    }

    public void setBooks(MysteryBookList$MysteryBookRoot[] arrmysteryBookList$MysteryBookRoot) {
        this.books = arrmysteryBookList$MysteryBookRoot;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
