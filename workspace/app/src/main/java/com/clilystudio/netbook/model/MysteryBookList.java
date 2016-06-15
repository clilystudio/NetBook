package com.clilystudio.netbook.model;

public class MysteryBookList {
    private MysteryBookRoot[] books;
    private boolean ok;

    public MysteryBookRoot[] getBooks() {
        return this.books;
    }

    public void setBooks(MysteryBookRoot[] mysteryBookRoots) {
        this.books = mysteryBookRoots;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
    public class MysteryBookRoot {
         private MysteryBook book;
        private MysteryToc toc;


        public MysteryBook getBook() {
            return this.book;
        }

        public void setBook(MysteryBook mysteryBook) {
            this.book = mysteryBook;
        }

        public MysteryToc getToc() {
            return this.toc;
        }

        public void setToc(MysteryToc mysteryToc) {
            this.toc = mysteryToc;
        }
    }

}
