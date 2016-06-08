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

    public class MysteryBookRoot {
        private MysteryBook book;
        private MysteryToc toc;

        public MysteryBookRoot(MysteryBookList paramMysteryBookList) {
        }

        public MysteryBook getBook() {
            return this.book;
        }

        public void setBook(MysteryBook paramMysteryBook) {
            this.book = paramMysteryBook;
        }

        public MysteryToc getToc() {
            return this.toc;
        }

        public void setToc(MysteryToc paramMysteryToc) {
            this.toc = paramMysteryToc;
        }
    }

}

