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
    public class MysteryBookList$MysteryBookRoot {
        final /* synthetic */ MysteryBookList this$0;
        private MysteryBook book;
        private MysteryToc toc;

        public MysteryBookList$MysteryBookRoot(MysteryBookList mysteryBookList) {
            this.this$0 = mysteryBookList;
        }

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
