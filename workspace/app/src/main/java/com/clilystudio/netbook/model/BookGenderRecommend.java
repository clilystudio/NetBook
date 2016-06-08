package com.clilystudio.netbook.model;

public class BookGenderRecommend {
    private BookGenderRecommend.RecommendBook[] books;
    private boolean ok;

    public BookGenderRecommend.RecommendBook[] getBooks() {
        return this.books;
    }

    public void setBooks(BookGenderRecommend.RecommendBook[] paramArrayOfRecommendBook) {
        this.books = paramArrayOfRecommendBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

