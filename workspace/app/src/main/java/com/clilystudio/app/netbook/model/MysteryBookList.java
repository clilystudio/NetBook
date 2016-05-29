package com.clilystudio.app.netbook.model;

public class MysteryBookList {
    private MysteryBookList.MysteryBookRoot[] books;
    private boolean ok;

    public MysteryBookList.MysteryBookRoot[] getBooks() {
        return this.books;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setBooks(MysteryBookList.MysteryBookRoot[] paramArrayOfMysteryBookRoot) {
        this.books = paramArrayOfMysteryBookRoot;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.MysteryBookList
 * JD-Core Version:    0.6.2
 */